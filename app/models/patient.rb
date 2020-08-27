class Patient
    attr_accessor :name, :age :impatience
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

    def inquire_appt_ready
        self.inquire_appt_ready
        puts "The doctor will be ready for you soon."
        increase_impatience += 1
    end

    def doctor
        return doctor.new
    end

    def change_doctors
        
    end


    private

    def increase_impatience
        self.impatience += 1
    end
end