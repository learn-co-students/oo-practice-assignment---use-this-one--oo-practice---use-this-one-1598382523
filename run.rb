require 'pry'
require_relative './app/models/patient.rb'
require_relative './app/models/doctor.rb'


bardin = Doctor.new("Dr. Bardin","Cardiology",5)
krueber = Patient.new("Krueber",41, bardin)
sunny = Doctor.new("sunny","cardio",7)
sienna = Patient.new("sienna",50,bardin)




binding.pry