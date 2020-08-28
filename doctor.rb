require 'pry'
class Doctor
  attr_accessor :name,:specialty,:years

  @speciality = []
  @@all = []

  def initialize(name, years,specialty)  # CARYN SAYS: your default value for years should be an integer of 1, its current a string 
    @name = name
    @years = years = "1"  # CARYN SAYS: you handle the default arg where you define the parameters to initialize on line 5
    @specialty = specialty
    @@all << self
  end

   def self.all
    @@all
   end
   
  def speciality
    @@speciality
  end
   
  def self.find_by_speciality(speciality)
    self.all.detect{|s| s.speciality == speciality}
    # CARYN SAYS: detect will only return the first of the elements that match 
  end
  def patients
    Patient.all.select{|patient| patient.doctor == self}
  end
  def patients_list(name)
    Patient.new(name, self)

    def discharge_patient
      patient = self.patient
      patient.each do |patient|
      patient.doctor = nil
      end
    end
  end
end


def doc
   puts "Hello what is your name Dr.?"
   name = gets.chomp
   puts "Well hello Dr.#{@name} what is your specialty?"
   specialty = gets.chomp
   puts "Dr.#{@name} how long have you been praticing?"
   years = gets.chomp
   puts " We need have you listed as Dr.#{@name}, your specialty is#{@specialty}, also you have been praticing for #{years.to_s} years"
   puts "What would you like to do?"
      puts "1. Change years"
      puts "2. Change name"
      puts "3. Change Specialty"
      choice = gets.chomp
      
      if choice == "1"
       puts " How many years have you been praticing?"
       new_years = gets.chomp
       puts "we have updated our records to    show your years as #{new_years}"
       elsif choice == "2"
           puts "what is your name?"
           new_name = gets.chomp
           puts "we now have you as #{new_name}"
           elsif
             choice == "3"
             puts "what is your new specialty?"
             new_specialty = gets.chomp
             puts "we now have you as #{new_specialty}"
         end
         puts "Thank you for the information"
      end
  def greet
    puts "Welcome you are in the right hands with our amazing Dr."
  end

doc
greet

binding.pry