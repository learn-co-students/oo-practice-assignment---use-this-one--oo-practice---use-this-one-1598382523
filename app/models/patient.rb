class Patient
    attr_reader :impatience
    attr_accessor :name, :age
    @@all = []
    
    def initialize(name, age) 
        @name = name
        @age = age
        @impatience = 0
        @@ all << self
    end 

    def Patient.all
        @@all
    end 

    def inquire_appt_ready
        puts "a doctor will be ready soon" 
        increase_impatience
    end 

    private 

    def increase_impatience
        self.impatience += 1
    end 

end 