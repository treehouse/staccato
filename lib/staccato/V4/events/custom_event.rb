module Staccato::V4
  class ViewItemList
    FIELDS = [
    ]


    def name(name='custom_event')
      word = name
      # word.gsub!(/::/, '/')
      word.gsub!(/([A-Z]+)([A-Z][a-z])/,'\1_\2')
      word.gsub!(/([a-z\d])([A-Z])/,'\1_\2')
      word.tr!("-", "_")
      word.downcase!
      word.to_sym
    end

    def fields(fields=nil)
      return fields.to_a
    end

    include Event
  end
end
