class Doctor
  attr_accessor :name, :years
  attr_reader :speciality
  @@all = []

  def initialize(name, speciality, years)
    @name = name
    @speciality = speciality
    @years = years
    @@all << self
  end

  def self.all
    @@all
  end

  def greet
    puts "Welcome to my office! My name is #{self.name}."
  end

  def self.find_by_speciality(speciality)
    # how do i reference all current doctor instances?
    self.all.filter do |doctor|
      doctor.speciality == speciality
    end
  end
  
end