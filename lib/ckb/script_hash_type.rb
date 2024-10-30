# frozen_string_literal: true

module CKB
  module ScriptHashType
    TYPES = [DATA = "data", TYPE = "type", DATA1 = "data1", DATA2 = "data2"].freeze
    TYPES_WITH_INDEX = {
      0 => "data", 
      1 => "type",
      2 => "data1", 
      4 => "data2" 
    }.freeze
  end
end
