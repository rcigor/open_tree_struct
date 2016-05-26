require 'ostruct'

class OpenTreeStruct < OpenStruct
  def initialize(hash={})
    hash.each_pair do |k,v|
      hash[k] = self.class.new(v) if v.is_a?(Hash)
    end if hash.is_a?(Hash)

    super
  end
end
