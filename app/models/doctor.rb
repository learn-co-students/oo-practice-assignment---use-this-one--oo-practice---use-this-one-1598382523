require 'pry'

# CARYN SAYS: overall really good! some nitpicking comments below 
# CARYN SAYS:  they're about readability mostly, but good practices to get into now 

class Doctor
    attr_accessor :name, :years
    attr_reader :speciality
    @@all=[]
    def initialize(name, speciality, years=1)
        @name=name
        @speciality=speciality
        @years=years
        @@all<<self
    end
    def self.all
        @@all
    end
    def patients
        Patient.all.filter{|patient|patient.doctor == self}
    end

    def transfer_patient(trpatient, newdoc)
        if trpatient.doctor == self
            trpatient.doctor = newdoc
        end
    end

    def discharge_patient(patientinstance) # CARYN SAYS: snake_case!
        if patientinstance.doctor == self
        patientinstance.doctor = nil # CARYN SAYS: indentation!
        end
    end
    # CARYN SAYS: line spaces between methods! 
    def greet
        "Hello, and welcome to #{self.name}'s practice!"
    end
    def self.find_by_speciality(targetspeciality) # CARYN SAYS: snake_case!
        self.all.filter {|doctor|doctor.speciality == targetspeciality}
    end
end


#binding.pry



#Doctor.all: should return a list of all doctor instances done
#Doctor#greet: should print a greeting that would make any patient feel welcomed! done
#Doctor.find_by_speciality: should take a specialty string as an argument and return a list of the doctors who have that specialty done
#Doctor#initialize: should initialize with a name (string), specialty (string), and years (integer). Years should default to 1 done
#Doctor#name: should return the Doctor’s name and should be able to change its name after creation done
#Doctor#speciality: should return the Doctor’s speciality and should NOT be able to change its speciality after creation done
#Doctor#years: should return the Doctor’s years and should be able to change its years after creation done

#Doctor#patients should return an array of all the Patients for that doctor
#Doctor#discharge_patient should set a patient’s doctor to nil, only if the patient belongs to the current doctor
#Doctor#transfer_patient should change a patient’s doctor to another doctor. This should only work if the patient belongs to the current doctor.