class Doctor
    attr_accessor :name, :years
    attr_reader :speciality
    @@all=[]

    def initialize(name, speciality, years=1)
        @name=name
        @speciality=speciality
        @years=years
        @@all<<self
    end

    def self.all
        @@all
    end

    def greet
        "Hello #{self.name}, and welcome!"
    end
    
    def self.find_by_speciality(speciality)
        
    end
end