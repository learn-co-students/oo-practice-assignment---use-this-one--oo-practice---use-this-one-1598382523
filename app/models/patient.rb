require 'pry'


class Patient
    attr_accessor :name, :age, :impatience :doctor
    @@all = []


    def initialize(name, age, doctor)
      @name = name
      @age = age.to_i
      @impatience = 0
      @doctor = doctor
      @@all << self
      
    end

    def self.all
      @@all
    end

	# CARYN SAYS: this method is written for you by your attr! so you can delete this
    def doctor
      self.doctor
    end

   def change_doctor(new_doctor)
	self.doctor = new_doctor
	# CARYN SAYS: good! 
   end
    
   def inquire_appt_ready
      puts "doctors will be ready soon"
	  self.increase_impatience # CARYN SAYS: trying to call the method this way will throw an error
	  # CARYN SAYS:  remove `self.` and just call `increase_impatience`
	  # CARYN SAYS:  also make sure you're testing everything! if you did test and see that error, add a comment so I know that! 
     
  end
    private
    def increase_impatience
      self.impatience+=1
    end
end


alpha = Patient.new("mamadou", 23)
binding.pry