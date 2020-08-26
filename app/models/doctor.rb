require 'pry'

class Doctor
    attr_accessor :name, :years
    attr_reader :speciality
    @@all = []
    
    def initialize(name, speciality, years =1)
        @name = name
        @speciality = speciality
        @years = years.to_i
        @@all << self
    end

    def greet
        "welcome amazing patient"
    end
    
    def self.find_by_speciality(speciality)
        @@all.filter{ |doctor|
        doctor.speciality == speciality
    } 
    
    end
end
ß
mamadou = Doctor.new('mamadou', 'heart surgeons', 20)

binding.pry