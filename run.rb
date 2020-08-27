require 'pry'

require_relative './app/models/patient.rb'

require_relative './app/models/doctor.rb'

patient1 = Patient.new("jess", 21)
patient2 = Patient.new("john", 45)

dr1 = Doctor.new("joe", "hands", 12)
dr2 = Doctor.new("tony", "brain", 2)

# CARYN SAYS: good beginnings of testing!
# CARYN SAYS: now move this over to a console.rb file to keep this file reserved for beginning a CLI
# CARYN SAYS: also feel free to do more coding! 


binding.pry