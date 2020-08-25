require 'pry'
require_relative("./app/models/patient")
require_relative("./app/models/doctor")

patient = Patient.new("Jay", 12)

doctor = Doctor.new("Eddy","OCD",2)
doctor2 = Doctor.new("John","diabety")
binding.pry
