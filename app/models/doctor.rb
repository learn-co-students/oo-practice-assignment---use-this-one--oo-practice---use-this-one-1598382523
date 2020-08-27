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
    
    def patients
        Patient.all.filter{|patient| patient.doctor == self }
    end

    def discharge_patient(patient) 
        if patient.doctor == self
            patient.doctor = nil
        end
    end
    def transfer_patient(patient_name, new_doc)
        self.patients.each{|patient| patient.doctor = new_doc if patient.name == patient_name }
    end

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