require 'pry'
require_relative './app/models/patient'

bob = Patient.new("Bob", 47)


#require_relative './app/models/doctor'

lauren = Doctor.new("Lauren", "OBGYN", 4)

binding.pry

 