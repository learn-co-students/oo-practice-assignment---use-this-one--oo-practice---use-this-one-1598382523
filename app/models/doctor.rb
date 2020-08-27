require 'pry'



#$$$$$$$$$$$$$$$$$$
#NOTICE: for OO Part 3 I was not able to get pry to load despite my best efforts. 
#$$$$$$$$$$$$$$$$$$$$$$$$
#$$$$$$$$$$$$$$$$$$$$$$$$







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

    def patients
        Patient.all.select {|patient| patient.has_doctor == self} #Here im trying to select for the patients that this instance of the doctor has out of patients_all and based out of the attr_accessor has_doctor I created.
    end

    def discharge_patient(patient)
        if patient.has_doctor == self
            patient.has_doctor = nil
        end
    end
    
    
    
    
    def transfer_patient
        if patient.has_doctor == self
            patient.has_doctor = Doctor.all.find {|doc| doc.specialty != self } #Here Im trying to use the .find enumerable to select the first doctor that does not have the same specialty as the one that self is recording an instance of.
        end
    end


    





end








# james = Doctor.new("Dr. Benning", "Neuroseurgeon", "60")

# carl = Doctor.new("Dr.Schraeder", "Physician", "56")

# sandra = Doctor.new("Dr.Kurra", "Pediatrician", "47")





 
#  Doctor.find_by_specialty("Pediatrician")



