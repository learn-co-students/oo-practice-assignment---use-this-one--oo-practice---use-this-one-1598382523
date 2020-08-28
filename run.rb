require 'pry'
require_relative './app/models/doctor.rb'
require_relative './app/models/patient.rb'




gabe = Doctor.new("Gabe", "blood")
jake = Doctor.new("Jake", "blood")
seyi = Doctor.new("Seyi", "arms")

jess = Patient.new("jess", 26, gabe)
rachel = Patient.new("rachel", 26, jake)
rous = Patient.new("rous", 26, gabe)

# CARYN SAYS: excellent! I can tell you updated your tests as well. Love to see it!
binding.pry