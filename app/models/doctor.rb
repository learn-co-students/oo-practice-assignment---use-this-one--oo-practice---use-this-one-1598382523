
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
        Patients.all.select do |pat|
            pat.doctor == self 
        end 
    end 

    def discharge_patient 
        if patient.doctor == self 
            patient.doctor = nil 
        end 
    end 

    def transfer_patient (new_doc, patient)
        if patient.doctor == self 
            patient.doctor = new_doc
        end     

    end 



    def self.find_by_specialty(specialty)
        self.all.select do |doctor|
            doctor.specialty == specialty
        end
    end

end