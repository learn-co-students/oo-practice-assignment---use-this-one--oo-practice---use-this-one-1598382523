#require 'pry'

class Doctor 

    @@all = []

    attr_accessor :name, :years 
    attr_reader :specialty

    def initialize(name, specialty, years=1)
        @name = name
        @specialty = specialty
        @years = years 
        @@all << self 

    end 

    def greet
        puts "Hello #{self.name}, how are you feeling today?"

    def self.all
        @@all
    end 

#binding.pry 


end     