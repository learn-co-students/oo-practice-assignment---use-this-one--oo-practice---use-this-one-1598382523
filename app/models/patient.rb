class Patient
    attr_accessor :age
    attr_writer :name
    @@all = []

    def initialize(name, age)
        @name = name 
        @age = age.to_i 
        @impatience = 0
        @@all << self
    end

    private
    def increase_impatience
        @impatience += 1
    end

    def inquire_appt_ready
        puts "The Doctor will be ready soon!"
        increase_impatience
    end
end

