require 'pry'
require_relative './app/models/patient.rb'
require_relative './app/models/doctor.rb'

mahdi = Patient.new("Mahdi",26)
doc = Doctor.new("Mahdi","Cardiology",5)

binding.pry