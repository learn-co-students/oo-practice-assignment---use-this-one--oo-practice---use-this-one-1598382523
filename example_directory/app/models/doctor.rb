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
        all_patients=[]
        all_patients << self.Patients.new
    end

    def discharge_patient
        #set doctor to nil if patient belonged to current doctor
            self.patient.each do |patient|
              
              patient.owner = nil
            end
    end

    def transfer_patient
        #transfer patient to another doctor if patient belongs to current doctor
        if patient

    end
end