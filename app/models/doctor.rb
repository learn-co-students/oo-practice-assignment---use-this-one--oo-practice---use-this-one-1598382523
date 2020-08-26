class Doctor
    attr_accessor :name, :years
    attr_reader :specialty

    @@all = []
    
    def initialize (name, specialty, years = 1)
        @name = name
        @specialty = specialty
        @years = years.to_i
        @@all << self
    end

    def self.all
        @@all
    end
    
    def self.find_by_specialty(specialty)
        @@all.select {|doc| doc.specialty == specialty}
    end

    def greet
        puts "Hello there! Everything's going to be fine."
    end
end    