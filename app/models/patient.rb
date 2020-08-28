class Patient
    attr_accessor :name, :age :impatience
    @@all = []

	def initialize (name, age) # CARYN SAYS: we want this patient to be initialized with a doctor
		# CARYN SAYS:  and to remember that doctor as an instance variable
		# CARYN SAYS:  and then it will also needs methods to read/write that instance variable
        @name = name
        @age = age
        @impatience = 0
        @@all << self
    end

    def self.all
        @@all
    end

    def inquire_appt_ready
        # self.inquire_appt_ready # CARYN SAYS: why are you trying to invoke the method from within itself?? you'll get into a stack level too deep because it'll keep calling itself and never stop 0.o 
        puts "The doctor will be ready for you soon."
        increase_impatience  # += 1 # CARYN SAYS: just invoke increase_impatience here, instead of trying to add one to it! 
    end

	# CARYN SAYS:  see the note in initialize; once your initialize and attrs are set up correctly, you won't need to write this method
	# CARYN SAYS:  because the attrs will write it for you 
    def doctor
        return doctor.new
    end

    def change_doctors
        # CARYN SAYS: this method will need to receive a doctor instance and can reset self.doctor, where self is the current patient instance 
    end


    private

    def increase_impatience
        self.impatience += 1
    end
end