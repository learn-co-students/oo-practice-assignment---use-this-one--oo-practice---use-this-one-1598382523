require 'pry'
require_relative 'app/models/patient.rb'
require_relative 'app/models/doctor.rb'


richards = Doctor.new("Richards" , "Dentist", 6)
sahli = Doctor.new("Sahli" , "Dentist")
ebner = Doctor.new("Ebner" , "ENT", 12)

steve = Patient.new("Steve", 22, nil, richards)
mary = Patient.new("Mary", 27, nil, sahli)
jack = Patient.new("Jack", 29, nil, richards)
jayne = Patient.new("Jayne", 33, nil, ebner)
xavier = Patient.new("Xavier", 42, nil, sahli)
rachel = Patient.new("Rachel", 36, nil, richards)






binding.pry
