require 'pry'

class Doctor

    attr_reader :specialty
    attr_accessor :name, :years

    def initialize (name, specialty, years=1)
        @name = name
        @specialty = specialty
        @years = years
    end

    def name
        @name
    end

    def specialty
        @specialty
    end

    def years
        @years
    end

    binding.pry
end

val = Doctor.new("Val", "Therapist", 2)
sam = Doctor.new("Sam", "Pediatrician", 3)
