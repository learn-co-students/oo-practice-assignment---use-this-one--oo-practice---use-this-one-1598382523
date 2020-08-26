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
        print "Welcome to my family clinic! I am interested in spending time with you to diagnose your condition!"
    end

    def self.find_by_specialty(specialty)
        self.all.select do |doctor|
            doctor.specialty == specialty
        end
    end

end