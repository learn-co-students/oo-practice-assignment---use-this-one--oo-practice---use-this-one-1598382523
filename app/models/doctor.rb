
class Doctor

    attr_accessor :name, :years 
    attr_reader :specialty

    @@all = []

    def initialize(name, specialty, patient, years=1)
        @name = name
        @specialty = specialty
        @years = years 
        @@all << self
    end

    def self.all
        @@all
    end

    def greet
        print "Hello and welcome, how are you feeling today?"
    end

    def patients 
        # CARYN SAYS: good! 
        Patients.all.select do |pat|
            pat.doctor == self 
        end 
    end 

    def discharge_patient 
        # CARYN SAYS: this should take a patient instance! I think that may just have been oversight since you did it in the next method
        if patient.doctor == self 
            patient.doctor = nil 
        end 
    end 

    def transfer_patient (new_doc, patient)
        if patient.doctor == self 
            patient.doctor = new_doc
        end     
        # CARYN SAYS:  since both these methods are pretty much right, correct the first, and then think about else and user feedback handling!
    end 



    def self.find_by_specialty(specialty)
        # CARYN SAYS: good! 
        self.all.select do |doctor|
            doctor.specialty == specialty
        end
    end

end