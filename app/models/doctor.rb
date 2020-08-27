class Doctor
    @@all = []

    attr_accessor :name, :years
    attr_reader :specialty

    def self.all
        @@all
    end
    
    def greet
        puts "Please feel welcomed patient"
    end
    
    def self.find_by_specialty(specialty)
        self.all.select{|doctor| doctor.specialty == specialty}
    end
    
    def initialize (name, specialty, years)
        @name= name
        @specialty = specialty
        @years = years
        
    end
    
    def patients
        Patient.all.select{|p| p.doctor == self}
    end

    def discharge_patient(patient)
        if patients.include?(patient)
            patient.doctor = nill
        end
    end

    def transfer_patient(patient,doc2)
        if patients.include?(patient)
            patient.doctor = doc2
        end
    end
end
