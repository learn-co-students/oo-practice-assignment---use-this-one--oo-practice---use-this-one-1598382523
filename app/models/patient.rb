class Patient

    attr_accessor :name, :age, :impatiences

    @@all = [] 

    def initialize(name, age)
        @name = name
        @age = age
        @impatiences = 0
        @@all << self
    end

    def inquire_appt_ready
        puts "Doctor will be ready soon."
        increase_impatience
    end

    def self.all
        @@all
    end

    private

    def increase_impatience
        self.impatiences += 1
    end

end

