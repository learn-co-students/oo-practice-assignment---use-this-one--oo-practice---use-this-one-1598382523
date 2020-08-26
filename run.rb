require 'pry'
require_relative 'app/models/doctor.rb'
require_relative 'app/models/patient.rb'


robert = Patient.new('Robert', '75')

jerry = Patient.new('Jerry', '94')

gloria = Doctor.new('Gloria', 'Cardiology')

ella = Doctor.new('Ella', 'Pediatrics')

binding.pry