class AttrAccessorObject
  def self.my_attr_accessor(*names)
    names.each do |name|
        # getter
      define_method(name) { instance_variable_get("@#{name}") }
        # setter
      define_method("#{name}=") { |val| instance_variable_set("@#{name}", val) }    
    end
  end
end


