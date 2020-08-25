require 'pry'
class Doctor
    attr_writer :speciality , :year
    attr_accessor :name, :speciality, :year

    def initialize (name, speciality, year = 1)
        @name = name
        @speciality = speciality
        @year = year
    end

    def view_profile
        puts "You are #{@name}. You are a #{@speciality} for #{@year}."
    end


end
