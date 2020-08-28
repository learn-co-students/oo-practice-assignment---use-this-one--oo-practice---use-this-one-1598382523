class Doctor
    # CARYN SAYS: beautiful!! *claps*
    attr_accessor :name, :years
    attr_reader :specialty

    @@all = []
    
    def initialize (name, specialty, years = 1)
        @name = name
        @specialty = specialty
        @years = years.to_i
        @@all << self
    end

    def self.all
        @@all
    end
    
    def self.find_by_specialty(specialty)
        self.all.select {|doc| doc.specialty == specialty}
    end
    
    def greet
        puts "Hello there! Everything's going to be fine."
    end

    def patients
        Patient.all.filter {|patient| patient.doctor == self}
    end

    def discharge_patient(patient)
        patient.doctor = nil if patient.doctor == self
    end

    def transfer_patient(patient, new_doctor)
        patient.doctor = new_doctor if patient.doctor == self
    end

end    