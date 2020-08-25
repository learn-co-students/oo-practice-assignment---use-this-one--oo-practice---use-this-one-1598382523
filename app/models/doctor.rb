require 'pry'

class Doctor
    attr_accessor :name, :years
    attr_reader :speciality
    def initialize(name, speciality, years=1)
        @name=name
        @speciality=speciality
        @years=years
    end
end


binding.pry













#Doctor#initialize: should initialize with a name (string), specialty (string), and years (integer). Years should default to 1 done
#Doctor#name: should return the Doctor’s name and should be able to change its name after creation done
#Doctor#speciality: should return the Doctor’s speciality and should NOT be able to change its speciality after creation done
#Doctor#years: should return the Doctor’s years and should be able to change its years after creation done