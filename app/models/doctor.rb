class Doctor
    @@all = []
    def self.all
        @@all
    end
    def greet
        puts "Please feel welcomed patient"
    end
    def self.find_by_specialty(specialty)
        self.all.select{|doctor| doctor.specialty == specialty}
    end

    def initialize (name, specialty, years)
        @name= name
        @specialty = specialty
        @years = years
        
    end
    attr_accessor :name, :years
    attr_reader :specialty
end
