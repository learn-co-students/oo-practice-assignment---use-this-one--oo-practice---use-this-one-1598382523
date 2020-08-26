require 'pry'

class Patient
    attr_accessor :name, :age

    def initialize(name, age)
        @name = name
        @age = age
        @impatience = 0
        @@ all << self
    end

    def self.all
        @@all
    end

    def impatience(num)
        @impatience = impatience(num)
    end


    private

    def patient_profile
        puts "You are #{@name} and #{@age} years old."
    end

    
end

cynthia = Patient.new("Cynthia", 32)
patricia = Patient.new("Patricia", 24)
    
binding.pry