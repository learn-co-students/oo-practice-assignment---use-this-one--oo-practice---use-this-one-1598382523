require 'pry'

class Patient
# CARYN SAYS: looks good overall! one improvement below 
  attr_accessor :name, :age, :impatience, :doctor
  @@all = []

  def initialize(name, age, doctor)
    @name = name.to_s
    @age = age.to_i
    @impatience = 0
    @doctor = doctor
    @@all << self
  end

  def inquire_appt_ready
    puts "The doctor will be ready soon"
    increase_impatience
  end

  def self.all
    @@all
  end

  # CARYN SAYS: this method is created for you by the attr's above! so you can delete this!
  def doctor
    self.doctor
  end

  def change_doctors(new_doctor)
    self.doctor = new_doctor
  end

  private

  def increase_impatience
    self.impatience += 1
  end
  # binding.pry
end