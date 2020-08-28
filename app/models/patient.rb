class Patient
	# CARYN SAYS:  everything looks correct and code style is clean! 
	# CARYN SAYS: what if you wanted to make it possible for a patient to be initialized without a doctor? 
    attr_accessor :name, :age, :impatience, :doctor

    @@all = [] 

    def initialize(name, age, doctor)
        @name = name
        @age = age
        @impatience = 0
        @doctor = doctor
        @@all << self
    end

    def inquire_appt_ready
        puts "Doctor will be ready soon."
        increase_impatience
    end

    def self.all
        @@all
    end

    def change_doctors(new_doc)
        self.doctor = new_doc
    end

    private

    def increase_impatience
        self.impatience += 1
    end

    

end

