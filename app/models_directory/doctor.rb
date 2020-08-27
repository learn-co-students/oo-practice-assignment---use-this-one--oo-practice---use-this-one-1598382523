# require_relative: app/models_directory/patient.rb

class Doctor

    attr_reader :speciality, :greet
    attr_accessor :name, :years

    @@all = []

    def initialize(name, speciality, years = 1, greet)
        @name = name
        @speciality = speciality
        @years = years
        @greet = greet
        @@all << self
    end

    def self.all
        @@all
    end


    def speciality
        @speciality = speciality
    end

    def greet
        "There\'s my favorite patient! How are we today?"
    end

    ## not sure that this works, will check over syntax and enumerator. Updated to use self
    def find_by_speciality(speciality)
        self.all.find_all{|i| i.include?(speciality)}
    end

    def patients
        Patient.all.filter do |patient|
            Patient.doctor == self
        end
    end

    def discharge_patient
        Patient.all.each do |patient|
            if Patient.doctor == self
                Patient.doctor = nil
            end
        end
    end

    def transfer_patient
        # change patient's doctor to other doctor
        Patient.all.each do |patient|
            if Patient.doctor == self
                    # generate new doctor? unsure
                    new_doctor = Doctor.new(name, speciality)
                # change to other doctor
                Patient.doctor = new_doctor
            end
        end
    end

end
