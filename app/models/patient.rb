
class Patient

    attr_accessor :name, :age, :impatience

    @@all = []

    def initialize(name, age)
        # CARYN SAYS: updates needed in this file for the association! 
        @name = name.to_s
        @age = age.to_i
        @impatience = 0
        @@all << self
    end

    def self.all
        @@all
    end

    def inquire_appt_ready
        self.impatience += 1
        puts "Thank you for your patience. The doctor will see you soon."
    end

    private

    def increase_impatience
        self.impatience += 1
    end

end



