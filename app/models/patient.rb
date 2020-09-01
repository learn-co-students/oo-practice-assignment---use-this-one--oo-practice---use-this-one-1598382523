# require_relative: app/models/doctor.rb

class Patient

    attr_accessor :name, :age, :impatience, :doctor # (addressed!)CARYN SAYS: you added doctor here but not in the initialize!

    @@all = []

    def initialize(name, age, impatience, doctor)
        # CARYN SAYS: how does your initialize need to change now that a patient belongs to a doctor?
        @name = name
        @age = age
        @impatience = 0
        @doctor = doctor
        @@all << self
    end

    def self.all
        @@all
    end

    def inquire_appt_ready
        self.increase_impatience # (addressed!)CARYN SAYS: instead of writing this, use your increase_impatience method
        # increase_impatience
        "The doctor will be ready soon"
    end

    # def doctor # CARYN SAYS: you don't need to write this! it's written by your attr above!
    #     self.doctor
    # end

    # def change_doctors(doctor)
    #     # (addressed!) CARYN SAYS:  you accepted the doctor correctly but referenced the current patient incorrectly (should be self)
    #     # # CARYN SAYS:  ie self.doctor = doctor
    #     self.doctor == doctor
    # end

    def appointments
        Appointments.all.select {|appointments| appointment.patient == self}
        end
    end

    def doctors
        appointments.collect {|appointments| appointment.doctor == doctor}.uniq
    end

    def create_appointment
        appointment = Appointment.new(date, self, doctor)
    end

private

    def increase_impatience
        self.impatience += 1
    end

end
