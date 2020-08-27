# require_relative: app/models_directory/patient.rb

class Doctor

    attr_reader :speciality, :greet
    attr_accessor :name, :years

    @@all = []

    def initialize(name, speciality, years = 1, greet) # CARYN SAYS: no greet argument (see below)
        @name = name
        @speciality = speciality
        @years = years
        @greet = greet # CARYN SAYS: green is just a method, not an attribute of a doctor
        @@all << self # CARYN SAYS: otherwise your initalize looks good 
    end

    def self.all
        @@all
    end


    def speciality # CARYN SAYS: you already have a reader for this method created by your attr
        @speciality = speciality
    end

    def greet
        "There\'s my favorite patient! How are we today?"
    end

    ## not sure that this works, will check over syntax and enumerator. Updated to use self
    def find_by_speciality(speciality) # CARYN SAYS:this should be def self.find_by_speciality so that it's a class method.
        self.all.find_all{|i| i.include?(speciality)}
        # CARYN SAYS: what is i?
        # CARYN SAYS: i is actually a doctor instance, so call it doctor!
        # CARYN SAYS: the find_all code block should be |doctor| doctor.specialty == speciality
        # CARYN SAYS: hopefully updating i to be doctor makes that clear! 
    end

    def patients # CARYN SAYS: almost perfect! 
        Patient.all.filter do |patient|
            Patient.doctor == self # CARYN SAYS: should be patient.doctor == self
            # CARYN SAYS: lowercase patient means it's the patient instane from the Patient.all array, not the whole class
        end
    end

    def discharge_patient # CARYN SAYS: this method should accept a patient_instance as an argument
        # CARYN SAYS:  how would that update your code??
        # CARYN SAYS: HOWEVERRR this *almost* works to discharge all the patients
        # CARYN SAYS: same issue here using Patient (the class) versus patient (the instance)
        Patient.all.each do |patient|
            if Patient.doctor == self # needs to be lowercase patient
                Patient.doctor = nil # needs to be lowercase patient
            end
        end
    end

    def transfer_patient # CARYN SAYS: this method should accept a patient_instance and a doctor_instance as an argument
        # CARYN SAYS: how would that update your code??
        # CARYN SAYS: same issue here using Patient (the class) versus patient (the instance)
        # change patient's doctor to other doctor
        Patient.all.each do |patient|
            if Patient.doctor == self
                    # generate new doctor? unsure
                    # CARYN SAYS: see notes above; if the method accepts a doctor_instance, you don't have to create a new one
                    new_doctor = Doctor.new(name, speciality)
                # change to other doctor
                Patient.doctor = new_doctor
            end
        end
    end

end
