class Doctor
    def initialize(name, specialty, years=1)
        @name = name 
        @speciality = speciality
        @years = years
    end 
    attr_accessor :name
    attr_reader :speciality
    attr_accessor :years
 end 

 #attr_accessor -> get && set
 #attr_reader -> get 
 #attr_writer -> set 
 #refer to meowing cat lab 