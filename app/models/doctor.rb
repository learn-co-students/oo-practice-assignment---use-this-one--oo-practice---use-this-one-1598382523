class Doctor
    attr_accessor :name, :years
    attr_reader :speciality
    @@all = [] 

    def initialize(name, speciality, years=1)
        @name = name 
        @speciality = speciality
        @years = years
        @@all << self
    end  

    def self.all
        @@all 
 end 
 

def greet
     puts "Hello and welcome, how can we help you today?"
end 

def self.find_by_specialty(speciality)
self.all filter do |doctor|
    doctor.speciality == speciality
        end 
    end 
end 



#Doctor
#Doctor.all: should return a list of all doctor instances
#Doctor#greet: should print a greeting that would make any patient feel welcomed! 
#Doctor.find_by_speciality: should take a specialty string as an argument and return a list of the doctors who have that specialty 

 #attr_accessor -> get && set
 #attr_reader -> get 
 #attr_writer -> set 
 #refer to meowing cat lab 