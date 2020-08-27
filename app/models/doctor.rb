class Doctor
    
    attr_accessor :name, :years
    attr_reader :specialty

    @@all = []

    
    def initialize(name, specialty, years = 1)
        @name = name
        @specialty = specialty
        @years = years.to_i
        @@all << self
    end    

    def self.all
        @@all
    end    

    def greet
        puts "Hello, I'm Dr. #{self.name}. Don't worry, I've been a doctor of #{self.specialty} for #{self.years} years."
    end    

    def self.find_by_specialty(spec_string)
        self.all.find_all { |doctor| doctor.specialty == spec_string}
    end    

    def patients
        Patient.all.select { |patient| patient.doctor == self }
    end    

    def discharge_patient(patient)
        if patient.doctor == self
            patient.doctor = nil
        else
            puts "They aren't your patient to discharge. That's #{patient.doctor.name}'s patient."
        end        
    end    

    def transfer_patient(patient, new_doc)
        if patient.doctor == self
            patient.doctor = new_doc    
        else
            puts "They aren't your patient to transfer. That's #{patient.doctor.name}'s patient."
        end   
    end    

end    

