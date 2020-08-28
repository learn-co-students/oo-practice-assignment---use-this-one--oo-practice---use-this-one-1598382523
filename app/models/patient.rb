require 'pry'

class Patient
    attr_accessor :name, :age
    @@ all = [] # CARYN SAYS: be careful! @@ all and @@all are not the same! 

	def initialize(name, age)
		# CARYN SAYS:  in order to associate with a doctor, the patient should be initialized with a doctor instance, that info saved as a instance variable
		# CARYN SAYS:  and attrs used to create reader/writer methods for the doctor 
        @name = name
        @age = age
        @count = 0 # CARYN SAYS: what is count? is this supposed to be impatience? 
        @@ all << self # CARYN SAYS: be careful! @@ all and @@all are not the same! 
    end

    def self.all
        @@all
    end

	private
	# CARYN SAYS:  all methods below the private keyword are private
	# CARYN SAYS:  only one of these should be private
	# CARYN SAYS:  move the others above the patient keyword! 

    def patient_profile
        puts "You are #{@name} and #{@age} years old."
        impatience_count
    end

    def impatience_count
        self.count += 1
    end

	# CARYN SAYS: see note above in initialize about using attrs 
    def doctor
        self.all.Doctor.find_all { |doctor| doctor.patient = self}
    end

    def change_doctor(doctor_instance)
		doctor_instance.patient = self
		# CARYN SAYS: there's some lack of clarity here about which class holds the reference to the other and how to use that
		# CARYN SAYS:  a patient belongs_to a doctor, so patient holds the reference
		# CARYN SAYS:  and this should look like self.doctor = doctor_instance, where self is the current patient instance 
    end

    
end

cynthia = Patient.new("Cynthia", 32)
patricia = Patient.new("Patricia", 24)
    
binding.pry