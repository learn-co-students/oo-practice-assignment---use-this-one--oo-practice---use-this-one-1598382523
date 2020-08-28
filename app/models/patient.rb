class Patient
    @@all= []

    attr_accessor :name, :age, :impatience, :doctor

    def self.all
        @@all 
    end

	# CARYN SAYS:  same as in doctor.rb about reordering the attrs, class var and initialize
    def initialize(name, age, doctor)
        @name = name
        @age = age
        @impatience = 0
        @@all<<self
		@doctor = doctor # CARYN SAYS: move this above @@all << self
		# CARYN SAYS:  so that you see all the instance variables in a row, then the shovel into @@all
    end
    
    def inquire_appt_ready
        puts "The doctor will be ready for you shortly, please be patient"
        increase_impatience
    end
    

    def change_doctors(doctor)
        self.doctor=(doctor) # CARYN SAYS: unnecessary parentheses on this line otherwise perfect! 
        
    end

    private 
    
    def increase_impatience
        self.impatience +=1
    end
    
end

