require 'pry'

class Patient
    attr_accessor :name, :age
    @@ all = []

    def initialize(name, age)
        @name = name
        @age = age
        @count = 0
        @@ all << self
    end

    def self.all
        @@all
    end

    private

    def patient_profile
        puts "You are #{@name} and #{@age} years old."
        impatience_count
    end

    def impatience_count
        self.count += 1
    end

    def doctor
        self.all.Doctor.find_all { |doctor| doctor.patient = self}
    end

    def change_doctor(doctor_instance)
        doctor_instance.patient = self
    end

    
end

cynthia = Patient.new("Cynthia", 32)
patricia = Patient.new("Patricia", 24)
    
binding.pry