class Patient
    attr_accessor :name, :age, :impatience

    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        @impatience = 0
        @@all << self
    end

    def inquire_appt_ready
        increase_impatience
        print "The doctor will be ready soon."
    end

    def self.all
        @@all
    end

private

    def increase_impatience
        self.impatience += 1
    end

end