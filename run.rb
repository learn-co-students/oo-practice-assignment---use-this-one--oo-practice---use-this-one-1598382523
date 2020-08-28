require 'pry'
require_relative './app/models/patient'

bob = Patient.new("Bob", 47)


#require_relative './app/models/doctor'
# CARYN SAYS:  move this to the top with the others and uncomment!

lauren = Doctor.new("Lauren", "OBGYN", 4)

# CARYN SAYS:  make sure you're updating your test files as you build and make enough instances to be able to test thoroughly
binding.pry

 