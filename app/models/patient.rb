require 'pry'

class Patient
    attr_accessor :name, :age
    def initialize(name, age)
        @name=name
        @age=age
    end
end

binding.pry





#Patient#initialize: should initialize with a name (string) and age (integer) done
#Patient#name: should return the Patient’s name and should be able to change its name after creation done
#Patient#age: should return the Patient’s age and should be able to change its age after creation done