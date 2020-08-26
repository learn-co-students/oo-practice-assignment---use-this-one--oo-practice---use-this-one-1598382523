require 'pry'
require_relative './app/models/doctor'
require_relative './app/models/patient'


val = Doctor.new("Val", "Therapist", 2)
sam = Patient.new("Sam", 21)

binding.pry