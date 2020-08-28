require 'pry'
require_relative './app/models/doctor'
require_relative './app/models/patient'

bob = Patient.new("Bob",47)
maggie = Doctor.new("Maggie","childcare",11)
jerry = Doctor.new("Jerry","Dental",5)
jay = Doctor.new("Jay","childcare",2)

# CARYN SAYS: 

binding.pry