require 'pry'

require_relative './app/models/patient.rb'
require_relative './app/models/doctor.rb'


bob = Patient.new("Bob", 47)
john = Patient.new("John", 65)

seyi = Doctor.new("seyi","PS", 5)
rachel = Doctor.new("rachel", "Dent", 6)


binding.pry 








