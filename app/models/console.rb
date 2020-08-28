require 'pry'
require_relative './app/models/patient.rb'
require_relative './app/models/doctor.rb'

patient1 = Patient.new("jess", 21)
patient2 = Patient.new("john", 45)

dr1 = Doctor.new("joe", "hands", 12)
dr2 = Doctor.new("tony", "brain", 2)


binding.pry