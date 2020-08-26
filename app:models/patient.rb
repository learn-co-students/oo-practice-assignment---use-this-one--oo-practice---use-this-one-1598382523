class Patient

  attr_accessor :name, :age, :impatience

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
  

  private

  def increase_impatience
    @impatience += 1
  end

  def inquire_appt_ready
    puts "The doctor will be ready soon."
    self.increase_impatience
  end

end
