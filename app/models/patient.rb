require 'pry'


class Patient
    attr_accessor :name, :age, :impatience
    @@all = []


    def initialize(name, age)
      @name = name
      @age = age.to_i
      @impatience = 0
      @@all << self

    end

    def self.all
      @@all
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