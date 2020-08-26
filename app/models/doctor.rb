require 'pry'

class Doctor

    attr_reader :greet
    attr_accessor :name, :specialty

    @@all []

    def initialize(name, specialty, greet)
        @name = name.to_s
        @specialty = specialty.to_s
        @greet = greet
    end

    def greet
        puts "Hello, #{self.name}. How are you doing today?"
    end

    def find_by_specialty(specialty)
        #return a list of the doctors who have that specialty
    end

    def self.all
        @@all
    end

end

