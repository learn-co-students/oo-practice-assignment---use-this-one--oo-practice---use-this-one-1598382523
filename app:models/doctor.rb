class Doctor

  attr_accessor :name, :years
  attr_reader :specialty

  @@all = []

  def initialize(name, speciality, years=1)
    @name = name
    @speciality = specialty
    @years = years
  end

  def self.all
    @@all
  end

  def greet
    puts "Welcome. I'll be taking care of you today."
  end

  def find_by_speciality(specialty)
    Doctor.all.select {|doc| doc.specialty == specialty}
  end


  end
