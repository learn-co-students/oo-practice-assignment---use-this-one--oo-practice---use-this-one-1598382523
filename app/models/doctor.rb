# Doctor
#initialize: should initialize with a name (string), specialty (string), and years (integer). Years should default to 1
#name: should return the Doctor’s name and should be able to change its name after creation
#speciality: should return the Doctor’s speciality and should NOT be able to change its speciality after creation
#years: should return the Doctor’s years and should be able to change its years after creation



# class Doctor
#     attr_writer :name, :years = 1
#     attr_reader :specialty
# end

# doctor = Doctor.new
# doctor.name = "chloe"
# doctor.specialty = ER


class Doctor
    attr_writer :name, :years = 1
    attr_reader :specialty

    def initialize(name, specialty, years)
        @name = name
        @specialty = specialty
        @years = years
    end
end