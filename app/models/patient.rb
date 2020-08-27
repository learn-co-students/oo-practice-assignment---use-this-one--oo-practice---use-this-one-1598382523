class Patient
    @@all= []

    attr_accessor :name, :age, :impatience, :doctor

    def self.all
        @@all 
    end

    def initialize(name, age, doctor)
        @name = name
        @age = age
        @impatience = 0
        @@all<<self
        @doctor = doctor
    end
    
    def inquire_appt_ready
        puts "The doctor will be ready for you shortly, please be patient"
        increase_impatience
    end
    

    def change_doctors(doctor)
        self.doctor=(doctor)
        
    end

    private 
    
    def increase_impatience
        self.impatience +=1
    end
    
end

