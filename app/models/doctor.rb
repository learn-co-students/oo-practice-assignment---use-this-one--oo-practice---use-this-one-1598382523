class Doctor
    # CARYN SAYS:  see note by initialize
    # CARYN SAYS:  typical order is attrs, class vars, initialize, then other methods 
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
        # CARYN SAYS:  good!
        self.all.select{|doctor| doctor.specialty == specialty}
    end

    # CARYN SAYS: initialize should bo right at the top after the attr's so it's easy for the eye to find!
    # CARYN SAYS:   its an easy way to learn exactly what a doctor should look like so we shouldn't have to find it; it should be easily found
    def initialize (name, specialty, years)
        @name= name
        @specialty = specialty
        @years = years
        
    end
    
    def patients
        # CARYN SAYS: good! 
        Patient.all.select{|p| p.doctor == self}
    end

    def discharge_patient(patient)
        if patients.include?(patient) # CARYN SAYS: nice! 
            patient.doctor = nill # CARYN SAYS: nil has one l!
        end
    end

    def transfer_patient(patient,doc2)
        if patients.include?(patient)
            patient.doctor = doc2
        end
    end
    # CARYN SAYS: nice! for both of the two prior methods, think about handling the else case and giving the user feedback.
end
