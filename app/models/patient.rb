class Patient
    def initialize(name, age)
        @name = name
        @age = age.to_i
    end  
    
    attr_accessor :name, :age
    
end    