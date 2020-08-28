class Patient
    attr_accessor :name, :age, :impatience,:doctor
    @@all =[]
    def initialize(name,age)
      @name = name.to_s
      @age = age.to_i
      @doctor = doctor # CARYN SAYS: doctor isn't defined! it needs to be passed into the initialize as a parameter! 
      @impatience = 0
      @@all << self
    end

    def self.all   #Patient.all
      @@all
    end


    def inquire_appt_ready
      puts "Doctor will ve ready soon!"
      increase_impatience # CARYN SAYS: good! 
    end

	# CARYN SAYS: this method is written for you by the attr! and the doctor is stored as an instance variable so its easily accessible
	# CARYN SAYS:  you can delete this in favor of using the attr above
    def doctor
      Doctor.all.find{|doctor| doctor.Patient == self}
    end

	def change_doctors(doctor)
		# CARYN SAYS: good!
      self.doctor = doctor
    end

    private

    def increase_impatience
      self.impatience +=1
    end

end
