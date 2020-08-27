require 'pry'

# Associations:
# A Patient should belong to a Doctor
# A Doctor can have many Patients

# Doctor
# Doctor#initialize: should initialize with a name (string), specialty (string), and years (integer). Years should default to 1
# Doctor#name: should return the Doctor’s name and should be able to change its name after creation
# Doctor#speciality: should return the Doctor’s speciality and should NOT be able to change its speciality after creation
# Doctor#years: should return the Doctor’s years and should be able to change its years after creation

# Doctor
# Doctor.all: should return a list of all doctor instances
# Doctor#greet: should print a greeting that would make any patient feel welcomed! 
# Doctor.find_by_speciality: should take a specialty string as an argument and return a list of the doctors who have that specialty 

# Doctor#patients should return an array of all the Patients for that doctor
# Doctor#discharge_patient should set a patient’s doctor to nil, only if the patient belongs to the current doctor
# Doctor#transfer_patient should change a patient’s doctor to another doctor. This should only work if the patient belongs to the current doctor.


class Doctor

    attr_accessor :name, :years, :patient
    attr_reader :speciality

    @@all = []
    
    def initialize(name, speciality, years=1)

        @name = name.to_s
        @speciality = speciality.to_s
        @years = years.to_i
        @@all << self
        @patients = []

    end

    def self.all
        return @@all
    end

    def greet
        p "Hello, Welcome today! Get comfortable!"
    end

    def self.find_by_speciality(specialty)

        doctor.find { |special| special.speciality == specialty}

    end

    def patients
        Patient.all.filter { |person|} patient.name == self }
    end

    def discharge_patient
        if Patient.doctor == self
            return nil
        end
    end

    def transfer_patient
        

    end



end

claus = Doctor.new("Claus", "Heart Surgeon", 5)

claus.name

claus.speciality

claus.years





