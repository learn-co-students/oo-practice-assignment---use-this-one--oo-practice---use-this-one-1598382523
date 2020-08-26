class Patient

    attr_accessor :name, :age
    @@all = []

    def initialize (name, age)
        @name = name
        @age = age
        @impatience = 0
        @@all << self
    end

    def self.all
        @@all
    end

    def name
        @name
    end

    def age
        @age
    end

    Private

    def increase_impatience
        self.increase_impatience += 1
    end

    def inquire_appt_ready
        self.inquire_appt_ready
        p "The doctor will be ready soon"
        increase_impatience += 1
    end


end