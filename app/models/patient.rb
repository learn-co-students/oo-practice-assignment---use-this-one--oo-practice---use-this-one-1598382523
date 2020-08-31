class Patient
  attr_accessor :name, :age, :impatience, :doctor
  @@all = []

  def initialize(name, age, doctor)
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
    puts "The doctor will be with you shortly."
    increase_impatience
  end

  def appointments
    Appointment.all.select {|apt| apt.patient == self}
  end

  def doctors
    doctor_list = appointments.map {|apt| apt.doctor}
    doctor_list.uniq
  end

  def create_appointment(time)
    #check that the time is available, and if so, create the appointment
    Appointment.new(self, self.doctor, time)
  end

  # def change_doctors(doctor)
  #   self.doctor = doctor
  # end

  private

  def increase_impatience
    self.impatience += 1
  end
end
