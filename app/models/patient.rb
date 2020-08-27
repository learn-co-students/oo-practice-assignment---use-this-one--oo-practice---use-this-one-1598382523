class Patient

  attr_accessor :name, :age, :doctor

  @@all = []

  def initialize(name, age, doctor)
    @name = name
    @doctor = doctor
    @age = age
    @impatience = 0
    @@all << self
  end

  def change_doctor(doctor)
    self.doctor = doctor
  end

  def inquire_appt_ready
    puts "doctor will be ready soon"
    increase_impatience
  end

  def self.all
    @@all
  end
  private

  def increase_impatience
      @impatience += 1
  end

end
