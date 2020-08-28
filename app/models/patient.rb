class Patient
	attr_accessor :name, :age, :impatience, :doctor
	@@all = []

	def initialize(name, age)
		@name = name
		@age = age.to_i
		@impatience = 0
		@doctor = doctor # CARYN SAYS: doctor is undefined right now! add it as a parameter to the initialize method
		@@all << self
	end

	def self.all
		@@all
	end 

	def inquire_appt_ready
		puts "The doctor will be ready soon."
		increase_impatience
	end

	def change_doctors(new_doc)
		self.doctor = new_doc
	end

	private

	def increase_impatience
		self.impatience += 1
	end

	# CARYN SAYS: I don't think you use this; Patient#doctor is created by your attr above 
	def doc
		self.doctor
	end

end  