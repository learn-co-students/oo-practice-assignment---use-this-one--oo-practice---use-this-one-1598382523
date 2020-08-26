require 'pry'

class Patient
  attr_accessor :name, :age, :impatience
  @@all = []

  def initialize(name, age)
    @name = name.to_s
    @age = age.to_i
    @impatience = 0
    @@all << self
  end

  def inquire_appt_ready
    puts "The doctor will be ready soon"
    increase_impatience
  end

  def self.all
    @@all
  end

  private

  def increase_impatience
    self.impatience += 1
  end
  binding.pry
end