
class Patient 
  
  attr_accessor :name, :age, :impatience
  @@all = [] 
  
  def initialize(name, age)
    @name = name 
    @age = age
    @impatience = 0
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select { |appointment| appointment.patient == self }
  end

  def doctors
    appointments.map{|a| a.doctor}
  end

  def create_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  # def doctor_name
  #   self.doctor.name
  # end

  # def change_doctors(new_doctor)
  #   self.doctor = new_doctor unless self.doctor == new_doctor
    
  # end

  def inquire_appt_ready
    puts "The doctor will be with you shortly."
    increase_impatience
  end

  private
  
  def increase_impatience
    self.impatience += 1
  end

end

# binding.pry