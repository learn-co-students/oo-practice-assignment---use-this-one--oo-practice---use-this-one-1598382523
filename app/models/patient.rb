# Patient
# Patient#initialize: should initialize with a name (string) and age (integer)
# Patient#name: should return the Patient’s name and should be able to change its name after creation
# Patient#age: should return the Patient’s age and should be able to change its age after creation

#pcode
# attaer_accessor - write and change
# initialized?



# class Patient ("name", age)
#     attr_accessor :name, : age



#     def initialize (name, number)

#     @name = "name"
#     @age = age

#     end
# end


class Patient
    attr_accessor :name, : age

    def initialize(name, age)
        @name = name
        @age = age
end

patient = Patient.new
patient.name = "chloe"
patient.age = 29

