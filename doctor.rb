require 'pry'
class Doctor
  # CARYN SAYS: please be careful with your syntax for readability! Indent carefully and add a line space between methods 
  attr_accessor :name,:specialty,:years

  @speciality = [] # CARYN SAYS: doctor's only have one speciality (a string) which you set up correctly in the initialize. Remove this line! 
  @@all = []

  def initialize(name, years,specialty)  # CARYN SAYS: your default value for years should be an integer of 1 and should be up here
    @name = name
    @years = years = "1"  # CARYN SAYS: you handle the default arg where you define the parameters to initialize on line 5
    @specialty = specialty
    @@all << self
  end

   def self.all
    @@all
   end

   # CARYN SAYS: the speciality reader is created for you by your attr above and should return @speciality. 
   # CARYN SAYS:  you can remove this whole method
  def speciality
    @@speciality
  end
   
  def self.find_by_speciality(speciality)
    self.all.detect{|s| s.speciality == speciality}
    # CARYN SAYS: detect will only return the first of the elements that match 
    # CARYN SAYS: What enumerator(s) are more appropriate here?
  end

  def patients
    Patient.all.select{|patient| patient.doctor == self}
    # CARYN SAYS: good!
  end

  def patients_list(name)
    Patient.new(name, self)
    # CARYN SAYS:  you didn't close this method! 
    # CARYN SAYS:  this is one of the reasons your code style is so important - so that you won't get errors due to syntax 

    def discharge_patient
      # CARYN SAYS: this method should accept a patient instance as a parameter
      # CARYN SAYS: make sure you're also clear on what types you're working with and how you're referencing info
      # CARYN SAYS:  self is the current docotr and it doesn't have a .patient method; it does have .patients
      patient = self.patient
      patient.each do |patient|
        # CARYN SAYS: indent code inside of the code block like the do/end
        patient.doctor = nil
      end
    end
  end
end

# CARYN SAYS: this looks like CLI code! move it to your run.rb file
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