class Doctor
    attr_reader :specialty
    attr_accessor :name, :years
    @@all = []

    def initialize (name, specialty, years=1)
        @name = name
        @specialty = specialty
        @years = years
        @@all << self
    end

    def.self.all # CARYN SAYS: careful with your syntax; this should be def self.all
        # CARYN SAYS:  you'll get an error if you try to use it right now
        @@all
    end

    def greet
        puts "Hi! come on in, my name is #{self.name}."
    end

    def self.find_by_specialty(specialty)
        # CARYN SAYS: good! 
        self.all.filter do |doctor|
            doctor.specialty == specialty
        end
    end

    def patients
        # CARYN SAYS: this methods needs to use Patient.all as a SSOT to filter and get only the ones that belong to the current doctor
        # CARYN SAYS:  try updating with that pointer 
        Patient << self
    end

    def discharge_patient #Unsure
        # CARYN SAYS:  ty for the comment!
        # CARYN SAYS:  this method should recieve a patient instance as an argument so you can check and update patient_instance.doctor!
        Patient.doctor=nil
    end

    def transfer_patient
        # CARYN SAYS: this method will need to recieve a patient instance and a doctor instance as an argument. It will be quite similar to discharge_patient! 
    end

end
# I wasn't able to finish because of pry not working!!!!
# CARYN SAYS: all good! we'll get you set up before we close out today :) 