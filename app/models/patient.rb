class Patient
    attr_accessor :name, :age, :impatience, :doctor
    @@all = []

    def initialize(name, age, doctor=nil)
        @name = name 
        @age = age.to_i 
        @impatience = 0
        @doctor = doctor
        @@all << self
    end

    def self.all
        @@all
    end

    def inquire_appt_ready
        puts "The Doctor will be ready soon!"
        increase_impatience
    end

    def change_doctors(new_doctor)
        self.doctor = new_doctor
    end


    private
    def increase_impatience
        self.impatience += 1
    end


end

