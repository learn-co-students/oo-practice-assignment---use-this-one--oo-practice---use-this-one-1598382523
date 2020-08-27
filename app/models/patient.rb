class Patient
    attr_accessor :name, :age, :impatience
    attr_reader :doctor 
    @@all = []

    def initialize(name, age, doctor=nil)
        @name = name 
        @age = age 
        @impatience = 0 
        @doctor = doctor
        @@all << self 
        end 
        
        def self.all
            @@all
        end 
        
        def change_doctor(new_doctor)
            self.doctor = new_doctor
        end 

    def inquire_appt_ready
        puts " The doctor will be ready soon."
        impatience 
    end 

    private
    
    def increase_impatience 
        self.impatience += 1xs
    end 
end 
 

