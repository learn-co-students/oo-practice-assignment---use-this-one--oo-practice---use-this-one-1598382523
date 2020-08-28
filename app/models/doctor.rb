class Doctor

    attr_accessor :name, :years, :patient, :doctor # CARYN SAYS: both patient and doctor should not be here; they are not instance variables
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
        # CARYN SAYS: good!
        self.all.select do |doctor|
            doctor.specialty == specialty
        end
    end

    def patients
        # CARYN SAYS: good! 
        Patient.all.select do |patient|
            patient.doctor == self
        end
    end

    def discharge_patient(patient)
        if patient.doctor == self
            patient.doctor = nil
            "It's not you, it's me." # CARYN SAYS: hahahahaha
        else
            "This is not your patient to dismiss!"
        end
    end

    def transfer_patient(patient)
        if patient.doctor == self
            patient.doctor = Doctor.all.sample # CARYN SAYS: I like this solve! I was thinking the method would accept a new_doc but I'm not mad at your solution
            # CARYN SAYS:  only thing you solution would then need to figure out is making sure the sample didn't get back the same doc
        end
        # CARYN SAYS: NIIIIICE!
        print "#{self.name}: Hey, #{patient.doctor.name}, #{patient.name} is your new patient."
        print "\n#{patient.doctor.name}: Thanks #{self.name}! #{patient.name}, I will be seeing you now."
        print "\n#{patient.name}: Cool."
    end

end