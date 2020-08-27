class Doctor
    attr_reader :speciality 
    attr_accessor :name, :years, :greeting
    @@all = []

    def initialize (name, speciality, years= 1)
        @name = name
        @years = years
        @speciality = speciality
        @greeting = greeting
        @@all << self

    end

    def patients
        Patient.all.filter {|patient| patient.doctor == self}.map {|patient| patient.name}
    end
##this should return only the names of the patients and not all the instances 
#of them. I feel like as a doctor, it would be more useful to know all thay info though but alright lol
    def self.all
        @@all
    end

    def greeting 
        puts "Welcome to our beautiful office"
    end

    def self.find_by_speciality (speciality)
        @@all.find_all {|doctor| doctor.speciality == speciality}
    end

    def discharge_patient (name)
        self.pop { |doctor| doctor.name == self}
    end
#I really wanted to put nil here but i felt like that would also be wrong.
    def transfer_patient(new_doctor)
        new_doctor.doctor = self      
    end
end



