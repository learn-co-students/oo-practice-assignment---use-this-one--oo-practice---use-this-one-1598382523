# Patient
class Patient
# Patient#name: should return the Patient’s name and 
# should be able to change its name after creation

# Patient#age: should return the Patient’s age and should 
# be able to change its age after creation
    attr_accessor :name, :age

# Patient#initialize: should initialize with a name (string) and age (integer)

    def initialize(name, age)
        @name = name
        @age = age
    end

end