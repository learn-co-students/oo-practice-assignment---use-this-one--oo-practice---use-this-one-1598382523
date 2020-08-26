class Patient
    attr_accessor :name, :age, :impatience
    @@all = []

    def initialize(name, age, impatience = 0)
        @name = name
        @age = age
        @impatience = impatience
        @@all << self
    end

    def self.all
        @@all
    end
    
    def inquire_appt_ready
        puts "The doctor will be ready soon."
        increase_impatience
    end
    
    private
    def increase_impatience
        self.impatience += 1
    end
end
