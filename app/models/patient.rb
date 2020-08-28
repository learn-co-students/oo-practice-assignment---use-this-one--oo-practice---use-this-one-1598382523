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
    self.doctor.name
  end

  def change_doctors(new_doctor)
    self.doctor = new_doctor unless self.doctor == new_doctor
    
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

   
