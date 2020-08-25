# Doctor
# Doctor#initialize: should initialize with a name (string), specialty (string), and years (integer). Years should default to 1
# Doctor#name: should return the Doctor’s name and should be able to change its name after creation
# Doctor#speciality: should return the Doctor’s speciality and should NOT be able to change its speciality after creation
# Doctor#years: should return the Doctor’s years and should be able to change its years after creation




class Doctor

    attr_accessor :name, :years
    attr_reader :speciality
    
    def initialize(name, speciality, years=1)

        @name = name.to_s
        @speciality = speciality.to_s
        @years = years.to_i

    end

end

claus = Doctor.new("Claus", "Heart Surgeon", 5)

claus.name

claus.speciality

claus.years





