require 'spec_helper'

describe VSphereAutomation::ApiClient do
  describe '.default' do
    it 'returns the same instance every time' do
      first_instance  = VSphereAutomation::ApiClient.default
      second_instance = VSphereAutomation::ApiClient.default
      third_instance  = VSphereAutomation::ApiClient.default
      expect(first_instance).to be(second_instance)
      expect(first_instance).to be(third_instance)
    end
  end

  describe '#build_collection_param' do
    context 'when called with format :multi' do
      it 'returns the collection' do
        params = { foo: 'bar', baz: 'quux' }
        expect(subject.build_collection_param(params, :multi)).to eq(params)
      end
    end
  end

  describe '#call_api' do
    let(:host) { 'example.com' }
    let(:config) do
      VSphereAutomation::Configuration.new.tap do |c|
        c.scheme = 'https'
        c.host = host
      end
    end
    let(:url) { 'https://example.com/rest/test' }
    subject { VSphereAutomation::ApiClient.new(config) }

    it 'adds headers to request' do
      headers = { 'foo' => 'bar' }
      stub_request(:get, url).with(headers: headers)

      subject.call_api(:GET, '/test', header_params: headers)

      expect(a_request(:get, url).with(headers: headers)).to have_been_made
    end

    it 'adds query parameters to request' do
      query_params = { 'foo' => 'bar' }
      stub_request(:get, url).with(query: query_params)

      subject.call_api(:GET, '/test', query_params: query_params)

      expect(a_request(:get, url).with(query: query_params)).to have_been_made
    end

    it 'adds form parameters to the request body' do
      form_params = { 'foo' => 'bar' }
      body = form_params.to_a.map { |e| e.join('=') }.join('&')
      stub_request(:get, url).with(body: body)

      subject.call_api(:GET, '/test', form_params: form_params)

      expect(a_request(:get, url).with(body: body)).to have_been_made
    end

    it 'uses basic auth information from configuration' do
      auth_name = 'basic_auth'
      auth_header = { config.auth_settings[auth_name][:key] =>
                      config.auth_settings[auth_name][:value] }
      stub_request(:get, url).with(headers: auth_header)

      subject.call_api(:GET, '/test', auth_names: [auth_name])

      expect(a_request(:get, url)
               .with(headers: auth_header)).to have_been_made
    end

    it 'use API key information from configuration' do
      auth_name = 'api_key'
      config.api_key[config.auth_settings[auth_name][:key]] = 'foo'
      auth_header = { config.auth_settings[auth_name][:key] =>
                      config.auth_settings[auth_name][:value] }
      stub_request(:get, url).with(headers: auth_header)

      subject.call_api(:GET, '/test', auth_names: [auth_name])

      expect(a_request(:get, url)
               .with(headers: auth_header)).to have_been_made
    end

    it 'updates api_key from responses with set-cookie header' do
      key = config.auth_settings['api_key'][:key]
      value = 'foo'
      cookie = "#{key}=#{value};Path=/rest;Secure;HttpOnly"
      set_cookie_header = { 'set-cookie' => cookie }
      auth_header = { key => value }
      stub_request(:get, url + '1').to_return(headers: set_cookie_header)
      stub_request(:get, url + '2').with(headers: auth_header)

      subject.call_api(:GET, '/test1')
      subject.call_api(:GET, '/test2', auth_names: ['api_key'])

      expect(a_request(:get, url + '1')).to have_been_made
      expect(a_request(:get, url + '2')
               .with(headers: auth_header)).to have_been_made
    end

    it 'updates api_key from responses with api_key header' do
      key = config.auth_settings['api_key'][:key]
      value = 'foo'
      auth_header = { key => value }

      stub_request(:get, url + '1').to_return(headers: auth_header)
      stub_request(:get, url + '2').with(headers: auth_header)

      subject.call_api(:GET, '/test1')
      subject.call_api(:GET, '/test2', auth_names: ['api_key'])

      expect(a_request(:get, url + '1')).to have_been_made
      expect(a_request(:get, url + '2')
               .with(headers: auth_header)).to have_been_made
    end

    it 'adds the body to requests when available' do
      body = { foo: 'bar' }.to_json
      stub_request(:post, url).with(body: body)

      subject.call_api(:POST, '/test', body: body)

      expect(a_request(:post, url).with(body: body)).to have_been_made
    end

    it 'sets the Content-Type on requests when available' do
      content_type = { 'Content-Type' => 'application/json' }
      body = { foo: 'bar' }.to_json

      stub_request(:post, url).with(body: body, headers: content_type)

      subject.call_api(:POST, '/test', body: body, header_params: content_type)

      expect(a_request(:post, url)
               .with(body: body, headers: content_type)).to have_been_made
    end
  end

  describe '#object_to_http_body' do
    context 'when given nil' do
      it 'returns the object as is' do
        expect(subject.object_to_http_body(nil)).to be_nil
      end
    end

    context 'when given a string' do
      it 'returns the object as is' do
        expect(subject.object_to_http_body('asdf')).to eq('asdf')
      end
    end

    context 'when given an object that responds to `to_hash`' do
      it 'returns that object as JSON' do
        obj = OpenStruct.new(foo: 'bar', baz: 'quux')
        obj.to_hash = obj.to_h
        json = obj.to_hash.to_json

        expect(subject.object_to_http_body(obj)).to eq(json)
      end
    end

    context 'when given an array' do
      it 'returns a JSON array of objects' do
        obj = OpenStruct.new(foo: 'bar', baz: 'quux')
        obj.to_hash = obj.to_h
        json = obj.to_hash.to_json

        expect(subject.object_to_http_body([obj])).to eq([json])
      end
    end
  end

  describe '#select_header_accept' do
    context 'when given anything other than an array' do
      it 'returns application/json as a default' do
        expect(subject.select_header_accept(nil)).to eq('application/json')
        expect(subject.select_header_accept('')).to eq('application/json')
        expect(subject.select_header_accept(1)).to eq('application/json')
      end
    end

    context 'when given a list of types' do
      context 'that includes a JSON type' do
        it 'returns the first type containing JSON' do
          xml = 'application/xml'
          json = 'application/json'

          expect(subject.select_header_accept([xml, json])).to eq(json)
        end
      end

      context 'that does not include a JSON type' do
        it 'returns the all of the types' do
          xml = 'application/xml'
          html = 'text/html'
          result = [xml, html].join(', ')

          expect(subject.select_header_accept([xml, html])).to eq(result)
        end
      end
    end
  end

  describe '#select_header_content_type' do
    context 'when given anything other than an array' do
      it 'returns application/json as a default' do
        expect(subject.select_header_content_type(nil)).to eq('application/json')
        expect(subject.select_header_content_type('')).to eq('application/json')
        expect(subject.select_header_content_type(1)).to eq('application/json')
      end
    end

    context 'when given a list of types' do
      context 'that includes a JSON type' do
        it 'returns the first type containing JSON' do
          xml = 'application/xml'
          json = 'application/json'

          expect(subject.select_header_content_type([xml, json])).to eq(json)
        end
      end

      context 'that does not include a JSON type' do
        it 'returns the first type' do
          xml = 'application/xml'
          html = 'text/html'

          expect(subject.select_header_content_type([xml, html])).to eq(xml)
        end
      end
    end
  end
end
