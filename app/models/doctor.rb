class Doctor
  attr_accessor :name, :years
  attr_reader :specialty
  @@all = []
  def initialize(name, specialty, years = 1)
    @name = name
    @specialty = specialty
    @years = years
    @@all << self
  end

  def greet
    puts "Welcome #{self.name}"
  end

  def self.all
    @@all
  end

  def self.find_by_specialty(specialty)
    @@all.filter{ |spe| spe.specialty == specialty }
  end

end
