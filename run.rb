require 'pry'
require_relative './app/models/patient'
require_relative './app/models/doctor'

maggie = Doctor.new("Maggie", "Orthopedist", 11)
rachael = Doctor.new("Rachael", "Pediatric Specialist", 5)
bert = Doctor.new("Bert", "Orthopedist", 1)

bob = Patient.new("Bob", 47)

# Doctor.find_by_speciality("Orthopedist") ==> an array of 2 doctor instances, maggie and bert
binding.pry