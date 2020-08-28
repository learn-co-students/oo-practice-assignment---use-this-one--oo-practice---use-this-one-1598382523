class Patient
    attr_reader :impatience
    attr_accessor :name, :age, :doctor
    @@all = []
    
    def initialize(name, age) 
        @name = name
        @age = age
        @impatience = 0
        @doctor = doctor # CARYN SAYS: doctor is undefined! it needs to be a parameter to the initialize method 
        @@all << self
    end 

    def Patient.all
        @@all
    end 

    def inquire_appt_ready
        puts "a doctor will be ready soon" 
        increase_impatience
    end 

	# CARYN SAYS:  this method is created for you by your attrs above! Since doctor is an instance variable it's that easy
	# CARYN SAYS:  you can delete this method 
    def doctor
        Doctor.all.select do |doctor|
            doctor.patient == self
        end 
    end 

    def change_doctors(doctor_instance)
		doctor_instance.patient = self
		# CARYN SAYS: remember which way your reference goes!
		# CARYN SAYS: patient, the belongs_to, holds the reference. 
		# CARYN SAYS:  so instead, self.doctor = doctor_instance
    end  

    private 

    def increase_impatience
        self.impatience += 1
    end 

end 