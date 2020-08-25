require 'pry'
class Patient

    attr_accessor :name, :age 

    def initialize(name, age)
        @name = name
        @age = age


    end 

    def say_name 
       puts  "{#@name}"
    end 

    def age
        @age
    end 



end    

joe = Patient.new("Joe", 45)

joe.name

binding.pry 