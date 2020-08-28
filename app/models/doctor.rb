
class Doctor 

    attr_accessor :name, :years
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

    def greet(patient)
        # CARYN SAYS: love the specificity and how it shows you know how to use the patient instnace passed in and self
        puts "Hey, #{patient.name}. My name is Doctor #{self.name} - welcome!"
    end

    def self.find_by_specialty(specialty)
        # CARYN SAYS: good! you can use @@all here, but self.all is preferred. Remind me to talk about this in the next lecture please :) 
        @@all.select { |doc| doc.specialty == specialty }
    end

    def patients
        # CARYN SAYS: good! 
        Patient.all.select { |patient| patient.doctor == self}
    end

    def discharge_patient(patient) 
        if patient.doctor == self
            patient.doctor = nil
        end
        # CARYN SAYS: works! now think about handling the else case and giving the user some feedback
    end

    def transfer_patient(new_doc, patient)
        if patient.doctor == self
            patient.doctor = new_doc
        end
        # CARYN SAYS: same note as above for discharge_patient
    end


end

