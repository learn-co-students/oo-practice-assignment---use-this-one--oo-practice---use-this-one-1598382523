require 'pry'

require_relative './app/models/doctor'
require_relative './app/models/patient'


peter = Doctor.new("Peter", "surgery", 45)
andrew = Doctor.new("Andrew", "magic")

jason = Patient.new("Jason", 36, peter)
rachel = Patient.new("Rachel", 34, andrew)

binding.pry