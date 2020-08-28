class Doctor
    attr_reader :speciality 
    attr_accessor :name, :years, :greeting
    @@all = []

    def initialize (name, speciality, years= 1)
        @name = name
        @years = years
        @speciality = speciality
        @greeting = greeting # CARYN SAYS: greeting is just a method! It doesn't need to be an instance variable or in your attr's
        @@all << self

    end

    def patients
        Patient.all.filter {|patient| patient.doctor == self}.map {|patient| patient.name}
    end
    # CARYN SAYS: HEY NOW! The deliverable says a list of all Patients; not their names! So you should remove the map
    # CARYN SAYS: nice chaining of enumerables though !!
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
        # CARYN SAYS: this method should accept a patient instance as an argument. 
        # CARYN SAYS:   how does that update your code? 
        self.pop { |doctor| doctor.name == self}
    end
#I really wanted to put nil here but i felt like that would also be wrong.
    def transfer_patient(new_doctor)
        # CARYN SAYS: this method should also accept a patient instance as an arugment, in addition to the new doc
        # CARYN SAYS:  how does that update your code?
        # CARYN SAYS:  make sure for both methods you make sure the patient's doctor is the current doctor instance 
        new_doctor.doctor = self      
    end
end



