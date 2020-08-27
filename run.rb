require 'pry'
require_relative './app/models/patient.rb'
require_relative './app/models/doctor.rb'


saul = Doctor.new('Saul', 'death', 345)
kaylee = Patient.new('Kaylee', 22, "Saul")

binding.pry