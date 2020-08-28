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

    attr_accessor :name, :years, :patient # CARYN SAYS: patient shouldn't be a part of the attrs, it'll be a method you create on your own (like you did below)
    attr_reader :speciality

    @@all = []
    
    def initialize(name, speciality, years=1)

        @name = name.to_s
        @speciality = speciality.to_s
        @years = years.to_i
        @@all << self
        @patients = [] # CARYN SAYS: this was the wrong way I showed you at first! 

    end

    def self.all
        return @@all # CARYN SAYS: ruby implicitly returns so you dont need to write the word "return" here unless you really want to :) 
    end

    def greet
        p "Hello, Welcome today! Get comfortable!"
    end

    def self.find_by_speciality(specialty)
        # CARYN SAYS: find only gets you the first element that matches. What are better enumerable(s) to use here?
        doctor.find { |special| special.speciality == specialty}

    end

    def patients
        Patient.all.filter { |person|} patient.name == self }
        # CARYN SAYS: some syntax errors here (a } too early in the filter)
        # CARYN SAYS:  and make sure your comparator is correct. To know the patient belongs to the doctor we need to check patient.doctor == self, not name
    end

    def discharge_patient
        # CARYN SAYS: this method should receive a patient_instance as an argument
        # CARYN SAYS:  so that you can compare patient_instance.doctor == self
        # CARYN SAYS:  Patient (captial P), the class, does not have a doctor method or attribute 
        if Patient.doctor == self
            return nil
            # CARYN SAYS: if the patient belongs to the current doctor, we need to set it's doctor to nil
        end
    end

    def transfer_patient
        # CARYN SAYS:  this method will need to take a patient instnace and a doctor instance as arguments
        # CARYN SAYS:  such as def transfer_patient(patient, new_doc)
        # CARYN SAYS:  with the notes for discharge_patient in mind as well, can you write this method now?

    end



end

claus = Doctor.new("Claus", "Heart Surgeon", 5)

claus.name

claus.speciality

claus.years





