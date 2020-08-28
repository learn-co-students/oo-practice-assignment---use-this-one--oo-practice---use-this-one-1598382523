require 'pry'

class Doctor
    attr_accessor :name, :years
    attr_reader :speciality
    @@all = []
    
    def initialize(name, speciality, years =1)
        @name = name
        @speciality = speciality
        @years = years.to_i
        @@all << self
    end
    
    def patients
        Patient.all.filter{|patient| patient.doctor == self }
        # CARYN SAYS: Good!
    end

    def discharge_patient(patient) 
        if patient.doctor == self
            patient.doctor = nil # CARYN SAYS: correct!
        end
        # CARYN SAYS: now what about else case and user feedback handling? 
    end
    # CARYN SAYS:  put line spaces between methods for readability!
    def transfer_patient(patient_name, new_doc)
        # CARYN SAYS:  I see how you made this work! instead of passing in a patient name
        # CARYN SAYS:  this method should expect to receive a patient_instance
        # CARYN SAYS:  so you can just check patient_instance.doctor == self or self.patients.include?(patient_instance)
        # CARYN SAYS:  also think about what happens if you have two patients with the same name - how do you know which to transfer??
        self.patients.each{|patient| patient.doctor = new_doc if patient.name == patient_name }
    end

    # end # CARYN SAYS: commented out this extra end; be careful! syntax errors can take forever to debug
    # CARYN SAYS:  and will eat up a lot of your assessment time if youre not careful
    def greet
        "welcome amazing patient"
    end
    
    def self.find_by_speciality(speciality)
        # CARYN SAYS:  watch your indenting so this is readable
        # CARYN SAYS:  I updated this one 
        @@all.filter{ |doctor|
            doctor.speciality == speciality
        } 
    
    end
end
ß
mamadou = Doctor.new('mamadou', 'heart surgeons', 20)

binding.pry