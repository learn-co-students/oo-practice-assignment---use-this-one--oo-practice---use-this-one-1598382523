require 'pry'

class Patient
  attr_accessor :name, :age, :impatience, :doctor
  @@all = []

  def initialize(name, age, doctor)
    @name = name
    @age = age
    @doctor = doctor
    @impatience = 0
    @@all << self
  end
    
  # CARYN SAYS: this method was created for you by your attr above! and it should only return the current doctor, not create a new one
  def doctor
    Doctor.new(name, self)
  end

  def change_doctors
    # CARYN SAYS: this method should accept a new doctor a la def change_doctors(new_doc)
    # CARYN SAYS:  and set the current patient's doctor to new_doc
    doctor
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
end

# CARYN SAYS: move this to your run file! 
def run
  puts "Hello what is your name?"
  name = gets.chomp
  puts "Well hello #{@name} what is your age?"
  age = gets.chomp
  puts " Hello #{@name}, you are #{@age.to_s}"
  puts "What would you like to do?"
  puts "1. Change age"
  puts "2. Change name"
  choice = gets.chomp
  
  if choice == "1"
    puts " what is your new age?"
    new_age = gets.chomp
    puts "we have updated our records to show your age as #{new_age}"
  elsif choice == "2"
    puts "what is your new name"
    new_name = gets.chomp
    puts "we now have you as #{new_name}"
    
  end
  puts "Thank you for becoming a new patient"
end
run

binding.pry