class Patient 
  
  attr_accessor :name, :age, :impatience, :doctor
  @@all = [] 
  
  def initialize(name, age)
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
    self.doctor
  end

  def change_doctors(next_doctor)
    self.doctor = next_doctor unless self.doctor == next_doctor
    
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

   
