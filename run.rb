require 'pry'
require_relative 'app/models/doctor.rb'
require_relative 'app/models/patient.rb'


robert = Patient.new('Robert', '75')

jerry = Patient.new('Jerry', '94')

gloria = Doctor.new('Gloria', 'Cardiology', 50)

ella = Doctor.new('Ella', 'Pediatrics', 32)

# Doctor.find_by_specialty("Cardiology")

binding.pry




# Spent a LOOOOOONG time today, trying to fix things from yesterday's session.
# I kept running into No Method Errors and I couldn't figure out why!
# Finally figured out that my syntax was bad! I was not getting syntax errors, but I was getting no method errors. 
# All fixed now! WOOHOO!!

# Also also, working on things today really helped me with the @@ variable and self variable. I'm still a little fuzzy, but I'm getting the hang of it.
# So, I'm glad I fixed my errors, even if I wasn't able to deliver everything from today's PDs :) #progress