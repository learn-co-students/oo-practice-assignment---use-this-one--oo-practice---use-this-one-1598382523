require 'pry'

class Patient
    
    attr_accessor :name, :age

    def initialize(patient_name, patient_age)
        @patient_name = patient_name
        @patient_age = patient_age
    end

    def patient_profile
        puts "You are #{@patient_name} and #{@patient_age} years old."

    binding.pry

end

Cynthia = patient_name.new("Cynthia", 32)