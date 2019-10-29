# frozen_string_literal: true

task(default: ['install:all', 'test:all'])

# Components are in this order due to the order they need to be installed.
# Runtime must be installed before CIS and CIS must be installed before the
# other components.
COMPONENTS = %w[runtime cis appliance content vapi vcenter].freeze

# Bundle install tasks for each component and an additional one to do all. This
# installs the required dependencies for the specified component(s).
namespace(:install) do
  COMPONENTS.each do |component|
    desc("Install #{component} component")
    task(component) do
      dir = File.expand_path(component, __dir__)
      Bundler.with_clean_env do
        exit(1) unless system('bundle', 'install', chdir: dir)
      end
    end
  end

  desc('Install all components')
  task(all: COMPONENTS.map(&:to_sym))
end

# Bundle RSpec tasks for each component and an additional one to do all. This
# runs the RSpec suite for the specified component(s).
namespace(:test) do
  COMPONENTS.each do |component|
    desc("Run all tests for #{component} component")
    task(component) do
      dir = File.expand_path(component, __dir__)
      Bundler.with_clean_env do
        exit(1) unless system('bundle', 'exec', 'rake', 'spec', chdir: dir)
      end
    end
  end

  desc('Run all tests for all components')
  task(all: COMPONENTS.map(&:to_sym))
end

# Generate tasks for each component and an additional one to do all. This will
# generate the SDK binding for the specified component(s).
namespace(:generate) do
  COMPONENTS.each do |component|
    desc("Generate #{component} component")
    task(component) do
      openapi_generator?
      exit(1) unless system(generate_env, generate_command(component))
    end
  end

  desc('Generate bindings for all components')
  task(all: COMPONENTS.map(&:to_sym))
end

# The rest of the code is used to generate the SDK bindings. It should probably
# be moved out into it's own Rake library, but at the moment will stay here

def generate_command(component)
  cmd = 'openapi-generator generate '\
        '--generator-name ruby '\
        "--input-spec #{spec_dir}/#{component}.json "\
        "--config #{config_dir}/#{component}.json "\
        "--template-dir #{template_dir} "\
        "--output #{output_dir}/#{component} "\
        '--skip-validate-spec '\
        "--additional-properties='is-#{component}=true'"
  cmd << ' -DsupportingFiles' if component == :runtime
  cmd
end

def generate_env
  return {} unless exe_exists?('rubocop')

  { 'RUBY_POST_PROCESS_FILE' => 'rubocop -a' }
end

def exe_exists?(exe)
  ENV['PATH'].split(':').any? do |path|
    begin
      File.stat("#{path}/#{exe}")
    rescue Errno::ENOENT, Errno::ENOTDIR
      false
    end
  end
end

def openapi_generator?
  name = 'openapi-generator'
  raise("#{name} must be installed") unless exe_exists?(name)
end

def root_dir
  @root_dir ||= Dir.pwd
end

def openapi_dir
  @openapi_dir ||= File.join(Dir.pwd, '.openapi')
end

def config_dir
  @config_dir ||= File.join(openapi_dir, 'configurations')
end

def spec_dir
  @spec_dir ||= File.join(openapi_dir, 'specs')
end

def template_dir
  @template_dir ||= File.join(openapi_dir, 'templates')
end

def output_dir
  @output_dir ||= ENV.fetch('RUBY_AUTOMATION_SDK_OUTPUT_DIR', Dir.pwd)
end
