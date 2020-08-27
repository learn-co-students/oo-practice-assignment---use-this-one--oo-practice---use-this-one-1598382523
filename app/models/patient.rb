class Patient
  attr_accessor :name, :age, :impatience, :doctor
  attr_writer :doctor
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

  def inquire_appt_ready
    puts "The doctor will be with you shortly."
    increase_impatience
  end


  def change_doctors(doctor)
    self.doctor = doctor
  end

  private

  def increase_impatience
    self.impatience += 1
  end
end
