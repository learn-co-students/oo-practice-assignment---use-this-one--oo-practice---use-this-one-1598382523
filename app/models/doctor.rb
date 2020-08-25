class Doctor
attr_accessor :name, :years
attr_reader :specialty

    def initialize(name, specialty, years)
    @name = name 
    @specialty = specialty
    @years = years
    end

meredith = Doctor.new("Meredith","No Specialty",9)
   