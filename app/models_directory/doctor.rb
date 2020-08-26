class Doctor

    attr_reader :speciality, :greet
    attr_accessor :name, :years

    @@all = []

    def initialize(name, speciality, years = 1, greet)
        @name = name
        @speciality = speciality
        @years = years
        @greet = greet
        @@all << self
    end

    def name=(name)
        @name = name
    end

    def speciality
        @speciality
    end

    def years=(years)
        @years = years
    end

    def greet
        print "There'\s my favorite patient! How are we today?"
    end

    def find_by_speciality(speciality)
        all.find_all{|i| i.include?(speciality)}
    end
end


# Doctor.all: should return a list of all doctor instances
# Doctor#greet: should print a greeting that would make any patient feel welcomed! 
# Doctor.find_by_speciality: should take a specialty string as an argument and return a list of the doctors who have that specialty 