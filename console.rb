require "pry"
require_relative './app/models/patient.rb'
require_relative './app/models/doctor.rb'
require_relative './app/models/appointment.rb'

maggie = Doctor.new("Maggie", "Orthopedist", 11)
rachael = Doctor.new("Rachael", "Pediatric Specialist", 5)
bert = Doctor.new("Bert", "Orthopedist", 1)

bob = Patient.new("Bob", 47, bert)
tom = Patient.new("Tom", 47, maggie)
jerry = Patient.new("Jerry", 40, maggie)

apt1 = Appointment.new(bob, bob.doctor, "2:00")
apt2 = Appointment.new(tom, tom.doctor, "3:00")
apt3 = Appointment.new(jerry, jerry.doctor, "3:30")

binding.pry
