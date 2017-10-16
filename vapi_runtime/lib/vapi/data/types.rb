#- Copyright 2013-2017 VMware, Inc.  All rights reserved.
#- SPDX-License-Identifier: MIT


module VAPI::Data
    # Constants to define vAPI Type Codes
    VOID = 0
    INTEGER = 1
    DOUBLE = 2
    BOOLEAN = 3
    BINARY = 4
    STRING = 5
    ERROR = 6
    OPTIONAL = 7
    LIST = 8
    STRUCTURE = 9
    OPAQUE = 10
    SECRET = 11
    STRUCTURE_REF = 12
    DYNAMIC_STRUCTURE = 13
    ANY_ERROR = 14

    #return a string representing class of passed in type_code
    def self.look_up(type_code)
      constant = constants.find { |e| const_get(e) == type_code }
      raise TypeError.new("data type corresponding to #{type_code} not found.") if constant.nil?
      "VAPI::Data::%sValue" % constant.to_s.capitalize
    end
end
