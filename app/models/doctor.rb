class Doctor
attr_accessor :name, :years
attr_reader :specialty

    @@doctors = []
   


    def initialize(name, specialty, years)
    @name = name 
    @specialty = specialty
    @years = years
    @@doctors << self 
    
    end

    def self.all
        @@doctors
    end

    def greet
        puts "Hello there!"
    end

    def self.find_by_specialty(specialty)
        @@doctors = specialty 
    end
end

meredith = Doctor.new("Meredith","No Specialty",9)
   