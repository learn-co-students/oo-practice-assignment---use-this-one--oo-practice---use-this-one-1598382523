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

    def doctor
      self.doctor
    end

   def change_doctor(new_doctor)
    self.doctor = new_doctor
   end
    
   def inquire_appt_ready
      puts "doctors will be ready soon"
      self.increase_impatience
     
  end
    private
    def increase_impatience
      self.impatience+=1
    end
end


alpha = Patient.new("mamadou", 23)
binding.pry