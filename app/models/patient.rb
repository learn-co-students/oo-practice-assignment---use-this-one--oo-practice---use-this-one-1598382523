class Patient
	attr_accessor :name
	attr_accessor :age

	def initialize(name, age)
	    @name = name
	    @age = age.to_i
	end
end  