require 'pry'

require_relative './app/models/doctor'
require_relative './app/models/patient'


austin = Patient.new("Austin", 26)
rebecca = Patient.new("Rebecca", 27)

bob = Doctor.new("Bob", "Orthopedics", 11)
tom = Doctor.new("Tom", "Dermatology", 4)

binding.pry