class Patient 
  
  @@all = []
  attr_accessor :name, :age 
     
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
    puts "the doctor will be ready soon"
    self.impatience += 1
  end

  private
  
  def increase_impatience
    self.impatience += 1
  end

end

   
