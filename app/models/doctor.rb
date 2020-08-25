# Doctor
class Doctor
# Doctor#name: should return the Doctor’s name and should be able to
#  change its name after creation
# Doctor#speciality: should return the Doctor’s speciality and should 
# NOT be able to change its speciality after creation
# Doctor#years: should return the Doctor’s years and should be 
# able to change its years after creation
    attr_accessor :name, :years
    attr_reader :specialty
# Doctor#initialize: should initialize with a name (string), 
# specialty (string), and years (integer). Years should default to 1
    def initialize(name, specialty, years=1)
        @name = name
        @specialty = specialty
        @years = years
    end

end