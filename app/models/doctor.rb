


class Doctor

    attr_accessor :name, :years
    attr_reader :speciality
    def initialize(name, speciality, years)
        @name = name
        @speciality = speciality
        @years = years

    end
end


dr = Doctor.new('Charles', 'hands', 23)

dr.name
dr.years
dr.speciality