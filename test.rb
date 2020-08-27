require 'pry'
require './app/models/patient.rb'
require './app/models/doctor.rb'

bryam = Patient.new("Bryam",22)
sabrina = Patient.new("Sabrina",21)
meredith = Doctor.new("Meredith","No Specialty",9)
brian = Doctor.new("Brian","Cardiologist", 6)



binding.pry