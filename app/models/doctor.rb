require 'pry'



class Doctor
    attr_accessor :name
    attr_accessor :years
    
    @@doctors = []
    
    def initialize(name, specialty, years)
        @name = name
        @specialty = specialty
        @years = years.to_i

        @@doctors << self
    end

    def greeting(patient)
        puts "Hi #{patient.name}! Thank you for being so patient! Pun very much intended! How are you feeling? What can I do to help?"
    end

    def specialty
        @specialty
    end

    def self.find_by_specialty(specialty)
        doctor_with_specialty = []
        
        
        @@doctors.find do |doctor|
            
            if doctor.specialty == specialty
                doctor_with_specialty << doctor.name
            end
            
        end

            print doctor_with_specialty
            
    end



    def self.all
        @@doctors
    end




end








james = Doctor.new("Dr. Benning", "Neuroseurgeon", "60")

carl = Doctor.new("Dr.Schraeder", "Physician", "56")

sandra = Doctor.new("Dr.Kurra", "Pediatrician", "47")





 
 Doctor.find_by_specialty("Pediatrician")



