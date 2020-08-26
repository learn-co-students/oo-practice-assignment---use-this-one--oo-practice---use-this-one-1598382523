
 class Patient
    def initialize(name, age)
        @name = name 
        @age = age 
        @impatience = 0 
    
    end 
  
    attr_accessor :name
    attr_accessor :age 

    Private
    
patients = []
    def increase_impatience 
        @impatience += 1
    end 

    def inquire_appt_ready
        puts " The doctor will be ready soon "
        @impatience += 1 
    end 

    def patients @@all
        return patients 
    end  

 end 

