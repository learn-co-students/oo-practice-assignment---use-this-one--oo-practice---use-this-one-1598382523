require 'pry'
require_relative './app/models/doctor'
require_relative './app/models/patient'

ron = Doctor.new("Ron", "feet", 23)
tom = Doctor.new("tom", "eyes", 25)
jon = Doctor.new("Jon", "feet")
jess = Patient.new("Jess", 25)
seyi = Patient.new("seyi", 24)
jake = Patient.new("Jake", 42)

# CARYN SAYS: yes lots of examples and testing! 
binding.pry