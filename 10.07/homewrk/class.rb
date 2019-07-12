class A
    def self.my_setter(*args)
      args.each do |mets|
        define_method("#{mets}=") do |arg|
          instance_variable_set("@#{mets}", arg)
        end
      end
    end
  
    def self.my_getter(*args)
      args.each do |mets|
        define_method("#{mets}") do
          instance_variable_get("@#{mets}")
        end
      end
    end
  
    def self.my_accessor(*args)
      args.each do |mets|
        define_method("#{mets}=") do |arg|
          instance_variable_set("@#{mets}", arg)
        end
        define_method(mets) do
          instance_variable_get("@#{mets}")
        end
      end
    end
  end
  
  class A
    my_getter("foo")
    my_setter("foo")
    my_accessor(:fooooo, :baaaaar)
  end
  