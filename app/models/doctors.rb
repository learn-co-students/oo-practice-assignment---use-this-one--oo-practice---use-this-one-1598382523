class Doctor
    attr_writer :speciality 
    attr_accessor :name :years
    def initialize (name, years, speciality)
        @name = name
        @years = years
        @speciality = speciality
    end