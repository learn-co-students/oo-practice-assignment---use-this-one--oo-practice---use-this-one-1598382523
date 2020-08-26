class Patient
    @@all= []
    def self.all
        @@all 
    end
    def initialize(name, age)
        @name = name
        @age = age
        @impatience = 0
        @@all<<self
    end
    attr_accessor :name, :age, :impatience
    def inquire_appt_ready
        puts "The doctor will be ready for you shortly, please be patient"
        self.impatience +=1
    end
    
end

