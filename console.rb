require 'pry'

require_relative './app/models/doctor'
require_relative './app/models/patient'

jason = Patient.new("Jason", 36)
rachel = Patient.new("Rachel", 34)

peter = Doctor.new("Peter", "surgery", 45)
andrew = Doctor.new("Andrew", "magic")


binding.pry