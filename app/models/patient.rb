class Patient 
  
  attr_accessor :name, :age, :impatience, :doctor
  @@all = [] 
  
  def initialize(name, age, doctor)
    @name = name 
    @age = age
    @doctor = doctor
    @impatience = 0
    @@all << self
  end

  def self.all
    @@all
  end

  def doctor_name
    self.doctor # CARYN SAYS: you already have a method (from attrs) for doctor
    # CARYN SAYS: if you want this to return the doctor name make sure you're doing self.doctor.name (to get name,  not the whole instance)
  end

  def change_doctors(next_doctor)
    self.doctor = next_doctor unless self.doctor == next_doctor
    # CARYN SAYS: okay i see you with the unless! 
  end

  def inquire_appt_ready
    puts "The doctor will be with you shortly."
    increase_impatience
  end

  private
  
  def increase_impatience
    self.impatience += 1
  end

end

   
