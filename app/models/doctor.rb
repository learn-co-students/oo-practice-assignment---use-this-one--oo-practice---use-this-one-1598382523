class Doctor
    attr_reader :specialty
    attr_accessor :name, :years, :patient
    @@all = []

    def initialize(name, specialty, years=1)
        @name = name
        @specialty = specialty
        @years = years
        @patient = patient # CARYN SAYS: remember, since Doctor is our has_many, it does not hold a reference to the other model
        # CARYN SAYS:  remove @patient here and from the attrs
        @@ all << self # CARYN SAYS: watch your spacing! @@ all and @@all are not the same! 
    end 

    def Doctor.all
        @@all 
    end 

    def greet
        "Welcome to our office! How are you feeling today?"
    end 

    # This is a class method - need to use self in variable name
    # .filter - want to take info from current array
    def self.find_by_specialty(specialty) # CARYN SAYS: good! 
        self.all.filter do |doctor|
        doctor.specialty == specialty # CARYN SAYS: this should be tabbed in! 
        end
    end 

    def patients
        # CARYN SAYS: good! 
        Patient.all.select do |patient|
            patient.doctor == self
        end 
    end 

    def discharge_patient
        # CARYN SAYS: this method and transfer_patient should receive a patient instance so you know which one you're trying to discharge
        # CARYN SAYS:  how does that update your code? 
        if Patient.all.name == patient_name && Patient.all.doctor == self
            Patient.all.doctor = nil
        end 
    end 

    def transfer_patient
        # CARYN SAYS: this method should accept a patient instance and a doctor instance as arguments.
        # CARYN SAYS:  how does that change your code?
        if Patient.all.name == patient_name && Patient.all.doctor == self
            Patient.all.doctor = new_doctor
        end # CARYN SAYS:   be careful as well about closing your code blocks. I added the end for the if here for you
    end 

end 
