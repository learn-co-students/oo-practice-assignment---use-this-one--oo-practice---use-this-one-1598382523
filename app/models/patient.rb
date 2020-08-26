class Patient
    attr_accessor :name
    attr_accessor :age
    
    @@patient_names = []
    
    def initialize(name, age)
        @name = name
        @age = age.to_i
        @impatience = 0
        
        @@patient_names << name
    end

    def inquire_appt_ready
        self.impatience += 1
        puts "The Doctor will be ready soon."
    end

    def self.all
        @@patient_names
    end


    private


    def increase_impatience
        self.impatience += 1
    end




end


# sean = Patient.new("sean", "25")
# jane = Patient.new("jane", "30")


# puts Patient.all