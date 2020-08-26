require 'pry'
class Doctor
    attr_writer :speciality , :year
    attr_accessor :name

    def initialize (name, speciality, year=1)
        @name = name
        @speciality = speciality
        @year = year
        @@all << self
    end

    def view_profile
        puts "You are #{@self.ame}. You are a #{@self.speciality} for #{@self.year}."
    end

    def self.all
        @@all
    end

    def greet(name)
        puts "Hello, #{@self.name}, welcome to our hospital!"
    end

    def find_by_speciality
       

    end

    

end

michael = Doctor.new("Michael", "Psychologist") 
peter = Doctor.new("Peter","Physician")

binding.pry