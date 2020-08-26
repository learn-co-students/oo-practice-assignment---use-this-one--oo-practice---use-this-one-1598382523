require 'pry'
class Doctor
    attr_reader :speciality
    attr_accessor :name, :years
    @@all = []
    def initialize(name,speciality,years=1)
      @name = name.to_s
      @speciality = speciality.to_s
      @years = years.to_i
      @@all << self
    end

    def self.all
      @@all
    end

    def greet
      puts "Welcome, My name is #{@name} and how are you today?"
    end

    def self.find_by_speciality(speciality)
      newArray = []
      @@all.each{|doctor|
        if doctor.speciality == speciality
          newArray.push(doctor.name)
        end
      }
      newArray
    end
end
