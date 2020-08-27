# require_relative: app/models_directory/doctor.rb

class Patient

    attr_accessor :name, :age, :impatience, :doctor # CARYN SAYS: you added doctor here but not in the initialize!

    @@all = []

    def initialize(name, age, impatience)
        # CARYN SAYS: how does your initialize need to change now that a patient belongs to a doctor?
        @name = name
        @age = age
        @impatience = 0
        @@all << self
    end

    def self.all
        @@all
    end

    def inquire_appt_ready
        self.impatience += 1 # CARYN SAYS: instead of writing this, use your increase_impatience method
        increase_impatience
        "The doctor will be ready soon"
    end

    def doctor # CARYN SAYS: you don't need to write this! it's written by your attr above!
        self.doctor
    end

    # take a doctor instance and update patient's doctor
    def change_doctors(doctor)
        # CARYN SAYS:  you accepted the doctor correctly but referenced the current patient incorrectly (should be self)
        # # CARYN SAYS:  ie self.doctor = doctor
        self.all.doctor = doctor
    end

private

    def increase_impatience
        self.impatience += 1
    end

end
