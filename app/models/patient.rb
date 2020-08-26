require pry
class Patient
    attr_accessor :name :age
    def intialize (name, age)
        @name = name
        @age = age
    end



steven = Patient.new ("Steven", "42")  


binding.pry
