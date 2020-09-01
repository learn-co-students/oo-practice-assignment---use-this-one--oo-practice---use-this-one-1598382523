# require_relative: app/models/patient.rb

class Doctor

    attr_reader :speciality, :greet
    attr_accessor :name, :years

    @@all = []

    def initialize(name, speciality, years = 1) # CARYN SAYS: no greet argument (see below)
        @name = name
        @speciality = speciality
        @years = years
        @@all << self # CARYN SAYS: otherwise your initalize looks good 
    end

    def self.all
        @@all
    end

    def greet
        "There\'s my favorite patient! How are we today?"
    end

    def self.find_by_speciality(speciality) # CARYN SAYS:this should be def self.find_by_speciality so that it's a class method.
        self.all.find_all{|doctor| doctor.speciality == speciality}
        # CARYN SAYS: what is i?
        # CARYN SAYS: i is actually a doctor instance, so call it doctor!
        # CARYN SAYS: the find_all code block should be |doctor| doctor.specialty == speciality
        # CARYN SAYS: hopefully updating i to be doctor makes that clear! 
    end

    # def patients # CARYN SAYS: almost perfect! 
    #     Patient.all.filter do |patient|
    #         patient.doctor == self # CARYN SAYS: should be patient.doctor == self
    #         # CARYN SAYS: lowercase patient means it's the patient instane from the Patient.all array, not the whole class
    #     end
    # end

    # def discharge_patient(patient_instance) # CARYN SAYS: this method should accept a patient_instance as an argument
    #     # CARYN SAYS:  how would that update your code??
    #     # CARYN SAYS: HOWEVERRR this *almost* works to discharge all the patients
    #     # CARYN SAYS: same issue here using Patient (the class) versus patient (the instance)
    #     Patient.all.each do |patient|
    #         if patient.doctor == self # needs to be lowercase patient
    #             patient.doctor = nil # needs to be lowercase patient
    #         end
    #     end
    # end

    # def transfer_patient(patient_instance, doctor_instance) # CARYN SAYS: this method should accept a patient_instance and a doctor_instance as an argument
    #     # CARYN SAYS: how would that update your code??
    #     # CARYN SAYS: same issue here using Patient (the class) versus patient (the instance)
    #     # change patient's doctor to other doctor
    #     Patient.all.each do |patient|
    #         if patient.doctor == self
    #                 # CARYN SAYS: see notes above; if the method accepts a doctor_instance, you don't have to create a new one
    #             # change to other doctor
    #             patient.doctor = doctor_instance
    #         end
    #     end
    # end

    def appointments
        Appointment.all.filter {|appointments| appointments.doctor == self}
    end

    def patients
        Appointment.all.filter{|appointments| appointments.patient == patient_instance}.uniq
    end

end
