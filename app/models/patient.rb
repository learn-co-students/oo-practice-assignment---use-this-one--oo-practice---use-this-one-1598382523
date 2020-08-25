class Patient
    def initialize(name, age)
        @name = name
        @age = age.to_i
    end

    attr_accessor :name
    attr_accessor :age

end


sean = Patient.new("Sean D", "25")


puts sean.age

sean.name = "Desperado"

puts sean.name
