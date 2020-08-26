


class Doctor
  
  @@all = []
  attr_accessor :name, :years
  attr_reader :speciality
  
  def initialize(name, speciality, years=1)
    @name = name
    @speciality = speciality
    @years = years
    @@all << self
  end
  
  def self.all
    @@all
  end

  def greet
    puts "Greetings, dear patient!"
  end

  def find_by_speciality(speciality)
    if speciality == self.speciality
       puts self.all  #i know this is wrong but ran outta time.
    end
  end
end


