require 'pry'
require_relative './app/models/patient'
require_relative './app/models/doctors'

daisy = Patient.new("Daisy", 19, howard)
steven = Patient.new("Steven", 28, howard)
melissa = Patient.new("Melissa", 40, tifffany)
tristan = Patient.new("Tristan", 32, tiffany)

howard = Doctor.new("Howard", "Pediatrician", 9)
tiffany = Doctor.new("Tiffany", "Orthadontist", 3) 

# CARYN SAYS:  if you run this file you'd immediately get errors that howard and tiffany are not defined
# CARYN SAYS:  why? how do you fix it? 
binding.pry