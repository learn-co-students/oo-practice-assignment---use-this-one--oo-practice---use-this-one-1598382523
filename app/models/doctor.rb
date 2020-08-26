
class Doctor

    attr_reader :specialty
    attr_accessor :name, :years
    @@all = []

    def initialize(name, specialty, years=1)
        @name = name
        @specialty = specialty
        @years = years
        @@all << self
    end

    def greet
        puts "Welcome, it's great to see you!"
    end

    def self.all
        @@all
    end

    def self.find_by_specialty(specialty)  
        self.all.filter {|doc| doc.specialty == specialty}
    end
end
