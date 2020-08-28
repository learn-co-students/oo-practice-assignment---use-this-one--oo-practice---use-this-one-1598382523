require 'pry'
require_relative("./app/models/patient")
require_relative("./app/models/doctor")

doctor = Doctor.new("Eddy","OCD",2)
doctor2 = Doctor.new("John","diabety")
doctor3 = Doctor.new("Amy", "Covid-19", 3)

patient = Patient.new("Jay", 12, doctor)
patient2 = Patient.new("Jessie", 40, doctor2)
patient3 = Patient.new("Andy", 24, doctor3)


# CARYN SAYS: good number of instances here to test with! 
# CARYN SAYS:  now move these over to a console.rb file so you can test there
# CARYN SAYS:  and use this file to create a CLI!

binding.pry
