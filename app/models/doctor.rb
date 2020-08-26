class Doctor
    
    attr_accessor :name, :years
    attr_reader :specialty

    @@all = []

    def initialize(name, specialty, years = 1)
        @name = name
        @specialty = specialty
        @years = years.to_i
        @@all << self
    end    

    def self.all
        @@all
    end    

    def greet
        puts "Hello, I'm Dr. #{self.name}. Don't worry, I've been a doctor of #{self.specialty} for #{self.years} years."
    end    

    def self.find_by_specialty(spec_string)
        @@all.find_all { |doctor| doctor.specialty == spec_string}
    end    

end    

