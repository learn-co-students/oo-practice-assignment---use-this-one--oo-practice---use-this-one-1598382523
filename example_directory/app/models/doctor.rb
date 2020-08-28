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

    def greet
        "Hello #{self.name}, and welcome!"
    end
    
    def self.find_by_speciality(speciality)
        #code here
        self.all.filter do |doctor|
            doctor.specialty = specialty
        end
    end

    def patients
        #array of all current Patients for each doctor
        # CARYN SAYS: almost! You do have to go through the Patient class
        # CARYN SAYS:  but you need to utilize Patient.all, which gets you an array of all patient instances
        # CARYN SAYS:  and then filter to get just the ones associated with the current doctor instance
        all_patients=[]
        all_patients << self.Patients.new
    end

    def discharge_patient
        # CARYN SAYS: both discharge_patient and transfer_patient should receive a patient_instance as an argument
        # CARYN SAYS:  then you can check patient_instance.doctor to see who their doctor is (and make it's self), and change it to a diff doctor / nil
        #set doctor to nil if patient belonged to current doctor
            self.patient.each do |patient| # CARYN SAYS: make sure youre referencing your methods carefully! 
                # CARYN SAYS: this would discharge all patients but only if you reference self.patients (ie the method above, once its corrected)
              
              patient.owner = nil # CARYN SAYS: also patient doesn't have an owner! they have a doctor! 
            end
    end

    def transfer_patient
        # CARYN SAYS: this method will take both a patient_instance and a new doctor instance as arguments 
        #transfer patient to another doctor if patient belongs to current doctor
        if patient
            # CARYN SAYS: make sure you're closing each code block even if you didn't quite finish!
        end # CARYN SAYS:  i added the `end` for you here

    end
end