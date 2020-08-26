class Doctor
    attr_accessor :name, :years
    attr_writer :specialty
    
    @@all = []
    @@find_by_specialty = {:@specialty => :@name}

    def initialize(name, specialty, years=1)
        @name = name
        @specialty = specialty
        @years = years
        @@all << self 
        @@find_by_specialty.store(specialty, name)
    end
    
    def greet
        puts "Welcome to Flatiron Hospital! We look forward to providing you with the nations best healthcare."
    end

    def self.all
        @all
    end

    def self.find_by_specialty(specialty)
        return find_by_specialty[:specialty]
    end
    
end
