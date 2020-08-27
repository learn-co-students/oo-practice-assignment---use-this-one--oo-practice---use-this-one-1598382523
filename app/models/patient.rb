class Patient
    attr_accessor :name, :age, :impatience
    attr_reader :doctor 
    @@all = []
    # CARYN SAYS: careful with your indenting! I fixed it but it makes it hard to know what code is in what method


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
        impatience # CARYN SAYS: this should be increase_impatience, so that youre using the method you created below
    end 

    private
    
    def increase_impatience 
        self.impatience += 1xs # CARYN SAYS: should just be 1? 
    end 
end 
 

