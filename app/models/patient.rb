class Patient
    attr_accessor :name, :age, :impatience, :doctor

    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        @impatience = 0
        @doctor = doctor # CARYN SAYS: right now doctor is undefined! it needs to be passed in as a paramter to initialize
        @@all << self
    end

    def inquire_appt_ready
        increase_impatience
        print "The doctor will be ready soon."
    end

    def self.all
        @@all
    end

	# CARYN SAYS:  this method is written for you by your attr! you should delete this!
    def doctor
        @doctor
    end 

	def change_doctor(new_doc)
		# CARYN SAYS: good! 
        self.doctor = new_doc 
    end 


 private

    def increase_impatience
        self.impatience += 1
    end

end