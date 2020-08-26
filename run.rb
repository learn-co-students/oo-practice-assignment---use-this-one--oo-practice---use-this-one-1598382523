require 'pry'
require_relative './app/models/patient'
require_relative './app/models/doctor'

bob = Patient.new("Bob", 47)
maggie = Doctor.new("Maggie", "Orthopedist", 11)

binding.pry