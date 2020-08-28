class Patient
  attr_accessor :name, :age, :impatience, :doctor
  attr_writer :doctor # CARYN SAYS: only have doctor in the accessor since it creates the writer for you! 
  @@all = []

  def initialize(name, age)
    @name = name
    @age = age
	@impatience = 0
	# CARYN SAYS: patient should be initialized with a doctor as well and the instance variable for doctor created
	# CARYN SAYS:  that way you can see just by reading the initialize what a patient belongs to and *all* of its instance variables 
    @@all << self
  end

  def self.all
    @@all
  end

  def inquire_appt_ready
    puts "The doctor will be with you shortly."
    increase_impatience # CARYN SAYS: good! 
  end


  def change_doctors(doctor)
	# CARYN SAYS: good! 
    self.doctor = doctor
  end

  private

  def increase_impatience
    self.impatience += 1
  end
end
