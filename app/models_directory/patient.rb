# require_relative: app/models_directory/doctor.rb

class Patient

    attr_accessor :name, :age, :impatience, :doctor

    @@all = []

    def initialize(name, age, impatience)
        @name = name
        @age = age
        @impatience = 0
        @@all << self
    end

    def self.all
        @@all
    end

    def inquire_appt_ready
        self.impatience += 1
        "The doctor will be ready soon"
    end

    def doctor
        self.doctor
    end

    # take a doctor instance and update patient's doctor
    def change_doctors (doctor)
        self.all.doctor = doctor
    end

private

    def increase_impatience
        self.impatience += 1
    end

end
