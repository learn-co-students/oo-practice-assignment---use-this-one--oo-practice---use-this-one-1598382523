class Doctor

attr_accessor :name, :years
attr_reader :specialty

    @@doctors = []
    @@patients = []
   


    def initialize(name, specialty, years)
    @name = name 
    @specialty = specialty
    @years = years
    @@patients <<self  
    @@doctors << self 
    
    end
    def self.patients
        @@patients
    end


    def self.all
        @@doctors
    end

    def greet
        puts "Hello there!"
    end

    def self.find_by_specialty(search_specialty)
        self.all.find {|doctor| doctor.specialty == search_specialty}
    end

    def patients
        @@patients
    end

end


   