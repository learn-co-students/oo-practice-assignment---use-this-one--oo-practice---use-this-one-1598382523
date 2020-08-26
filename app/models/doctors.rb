class Doctor
    attr_writer :speciality 
    attr_accessor :name :years :greeting
    @all []

    def initialize (name, years, speciality)
        @name = name
        @years = years
        @speciality = speciality
        @greeting = greeting
        @@all << self

    end
    def greeting 
        puts "Welcome to our beautiful office"
    end
end


