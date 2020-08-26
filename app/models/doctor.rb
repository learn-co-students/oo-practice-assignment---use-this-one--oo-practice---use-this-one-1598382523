require_relative 'patient.rb'

class Doctor 

    attr_accessor :name, :years
    attr_reader :specialty

    @@all = [] 

    def initialize(name, specialty, years=1)
        @name = name
        @specialty = specialty
        @years = years
        @@all << self
    end

    def self.all
        @@all
    end

    def greet
        puts "My name is Doctor #{self.name} - welcome!"
    end

    def self.find_by_specialty(specialty)
        @@all.select { |doc| doc.specialty == specialty }
    end

end

