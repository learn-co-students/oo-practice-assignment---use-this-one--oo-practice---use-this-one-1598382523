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
        # CARYN SAYS:  good! 
        Patient.all.select {|patient| patient.doctor == self}
    end

    def discharge_patient(patient)
        if patient == patients # CARYN SAYS:  patients is an array, so you need to check if the patient is inside of that array 
            patient.doctor = nil
        end
    end

    def transfer_patient(patient, doctor)
        if patient == patients # CARYN SAYS: see note in discharge_patient 
            patient.change_doctor(doctor) # CARYN SAYS: ohhhhhhhhhhhhhhhh i love that you used the patient method!!!! Just make sure you call it right (change_doctors)
        end
    end

    def greet
        puts "Welcome to Flatiron Hospital! My name is #{self.name}."
    end

    def self.find_by_specialty(specialty)
        # CARYN SAYS:  good! 
        self.all.filter {|doctor| doctor.specialty == specialty}
    end
    
end
