
class Doctor

    attr_reader :specialty
    attr_accessor :name, :years
    @@all = []

    def initialize(name, specialty, years=1)
        @name = name
        @specialty = specialty
        @years = years
        @@all << self
    end

    def greet
        puts "Welcome, it's great to see you!"
    end

    def self.all
        @@all
    end

    def patients
        Patient.all.filter {|patient| patient.doctor == self}
    end

    def self.find_by_specialty(specialty)  
        self.all.filter {|doc| doc.specialty == specialty}
    end

    def discharge_patient(patient)
        if patient.doctor == self
            patient.doctor = nil
        end
    end

    def transfer_patient(patient, new_doctor)
        if patient.doctor == self
            patient.doctor = new_doctor
        end
    end

end