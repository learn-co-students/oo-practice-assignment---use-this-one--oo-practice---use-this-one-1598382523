require 'pry'
require_relative './app/models/doctor.rb'
require_relative './app/models/patient.rb'


jess = Patient.new("jess", 26)

gabe = Doctor.new("Gabe", "blood")
jake = Doctor.new("Jake", "blood")
seyi = Doctor.new("Seyi", "arms")
binding.pry