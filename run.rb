# * * * * KEYS * * * *
#
#
# Associations:
#
#     A Patient should belong to a Doctor
#     A Doctor can have many Patients



require_relative '.app/models/doctor.rb'
require_relative '.app/models/patient.rb'

# CARYN SAYS: make sure you're requiring in the pry library
# CARYN SAYS:  and creating instances to test with! 