require 'pry'
class Patient
    @@all = []

    attr_accessor :name, :age :impatience

    def initialize(name, age,)
        @name = name
        @age = age
        @impatience = 0
        @@all << self 
    end 

    def inquire_appt_ready
        self.impatience += 1 
        puts "The doctor will be ready soon"
    end 

    def self.all
        @@all
    end 

private 

    def increase_impatience
        self.impatience += 1 
    end 




end    

joe = Patient.new("Joe", "45")


binding.pry 