class Doctor
    attr_accessor :name, :years
    attr_reader :specialty
    @@all = []

    def initialize(name, specialty, years)
        @name = name
        @specialty = specialty
        @years = years
        @@all << self 
    end

    def self.all
        @@all
    end
    
    def patients
        Patient.all.select {|patient| patient.doctor == self}
    end

    def discharge_patient(patient)
        if patient == patients
            patient.doctor = nil
        end
    end

    def transfer_patient(patient, doctor)
        if patient == patients
            patient.change_doctor(doctor)
        end
    end

    def greet
        puts "Welcome to Flatiron Hospital! My name is #{self.name}."
    end

    def self.find_by_specialty(specialty)
        self.all.filter {|doctor| doctor.specialty == specialty}
    end
    
end
