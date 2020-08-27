class Doctor

    attr_accessor :name, :years, :patient, :doctor
    attr_reader :specialty

    @@all = []

    def initialize(name, specialty, years=1)
        @name = name
        @specialty = specialty
        @years = years
        @@all << self
    end

    def self.all
        @@all
    end

    def greet
        print "Welcome to my family clinic! I am interested in spending time with you to diagnose your condition!"
    end

    def self.find_by_specialty(specialty)
        self.all.select do |doctor|
            doctor.specialty == specialty
        end
    end

    def patients
        Patient.all.select do |patient|
            patient.doctor == self
        end
    end

    def discharge_patient(patient)
        if patient.doctor == self
            patient.doctor = nil
            "It's not you, it's me."
        else
            "This is not your patient to dismiss!"
        end
    end

    def transfer_patient(patient)
        if patient.doctor == self
            patient.doctor = Doctor.all.sample
        end
        print "#{self.name}: Hey, #{patient.doctor.name}, #{patient.name} is your new patient."
        print "\n#{patient.doctor.name}: Thanks #{self.name}! #{patient.name}, I will be seeing you now."
        print "\n#{patient.name}: Cool."
    end

end