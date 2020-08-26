class Doctor

    attr_reader :specialty
    attr_accessor :name, :years
    @@all = []

    def initialize (name, specialty, years=1)
        @name = name
        @specialty = specialty
        @years = years
        @@all << self
    end

    def.self.all
        @@all
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

    def greet
        p "Hi, come on in!"
    end

    def self.find_by_specialty(specialty)
        self.specialty
    end
 
end

#Im not finished, for some reason my run.rb and console.rb file aren't running :(
