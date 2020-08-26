# Doctor
# Doctor#initialize: should initialize with a name (string), specialty (string), and years (integer). Years should default to 1
# Doctor#name: should return the Doctor’s name and should be able to change its name after creation
# Doctor#speciality: should return the Doctor’s speciality and should NOT be able to change its speciality after creation
# Doctor#years: should return the Doctor’s years and should be able to change its years after creation

# Doctor
# Doctor.all: should return a list of all doctor instances
# Doctor#greet: should print a greeting that would make any patient feel welcomed! 
# Doctor.find_by_speciality: should take a specialty string as an argument and return a list of the doctors who have that specialty 




class Doctor

    attr_accessor :name, :years
    attr_reader :speciality

    @@all = []
    
    def initialize(name, speciality, years=1)

        @name = name.to_s
        @speciality = speciality.to_s
        @years = years.to_i
        @@all << self

    end

    def self.all
        return @@all
    end

    def greet
        p "Hello, Welcome today! Get comfortable!"
    end

    def self.find_by_speciality(specialty)

        doctor.find { |special| special.speciality == specialty}

    end



end

claus = Doctor.new("Claus", "Heart Surgeon", 5)

claus.name

claus.speciality

claus.years





