class Patient 

    attr_accessor :name, :age 
     def initialize(name, age)
       @name = name 
       @age = age
     end
end
   
patient = Patient.new("Ash", 31)

patient.name
patient.age