#- Copyright 2013-2017 VMware, Inc.  All rights reserved.
#- SPDX-License-Identifier: MIT


# Adds Json Conversion Capability to vApi Data Value
module VAPI::Data

    class DataValue
        def as_json(*a)
            value
=begin
            {
                :type => type,
                :value => value
            }
=end
        end

        def to_json(*a)
            as_json.to_json(*a)
        end

        def self.json_create(o)
            obj = new(o['type'], o['value'])
            obj
        end
    end

    class PrimitiveValue < DataValue
    end

    class IntegerValue < PrimitiveValue
        def self.json_create(o)
            obj = new(o['value'])
            obj
        end
    end

    class DoubleValue < PrimitiveValue
        def self.json_create(o)
            obj = new(o['value'])
            obj
        end
    end

    class BooleanValue < PrimitiveValue
        def self.json_create(o)
            obj = new(o['value'])
            obj
        end
    end

    class StringValue < PrimitiveValue
        # def self.from_json(o)
        #   new(o['value'])
        # end
        def self.json_create(o)
            obj = new(o['value'])
            obj
        end
    end

    class BlobValue < PrimitiveValue
        def as_json(*a)
            {
                'BINARY' => value
            }
        end

        def self.json_create(o)
            obj = new(o['value'])
            obj
        end
    end

    class SecretValue < PrimitiveValue
        def as_json(*a)
            {
                'SECRET' => value
            }
        end

        def self.json_create(o)
            {
                'SECRET' => value
            }
        end
    end

    class VoidValue < DataValue
        def self.json_create(o)
            obj = new
            obj
        end
    end

    class OptionalValue < DataValue
        def as_json(*a)
            {
                'OPTIONAL' => value
            }
        end

        def self.json_create(o)
            obj = new(o['value'])
            obj
        end
    end

    class ListValue < DataValue
        def self.json_create(o)
            obj = new
            val = o['value']
            val.each do |v|
                obj.add(v)
            end
            obj
        end
    end

    class StructValue < DataValue
        def as_json(*a)
            {
                'STRUCTURE' => {
                    name => value
                }
            }
        end

        def self.json_create(o)
            val = o['value']
            obj = new(o['name'], val.keys)
            val.each do |k,v|
                obj.set_field(k,v)
            end
            obj
        end
    end

    class ErrorValue < StructValue
        def as_json(*a)
            {
                'ERROR' => {
                    name => value
                }
            }
        end

        def self.json_create(o)
            obj = new(o['name'],o['value'])
            obj
        end
    end

end
