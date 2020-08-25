require 'pry'

# Patient
# Patient#initialize: should initialize with a name (string) and age (integer)
# Patient#name: should return the Patient’s name and should be able to change its name after creation
# Patient#age: should return the Patient’s age and should be able to change its age after creation

class Patient

    attr_accessor :name, :age
    
    def initialize(name, age)

        @name = name.to_s
        @age = age.to_i

    end

end

jacob = Patient.new("Jacob", 33)

jacob.name
jacob.age














