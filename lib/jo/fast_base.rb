module Jo
  class FastBase
    [:id, :type].each do |method|
      undef_method method
    end

    def initialize(objects = {})
      @attributes = objects
    end

    def method_missing(method)
      @attributes[method]
    end
  end
end