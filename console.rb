require 'pry'

require_relative './app/models/patient.rb'

require_relative './app/models/doctor.rb'

require_relative './app/models/appointment.rb'

patient1 = Patient.new("jess", 21)
patient2 = Patient.new("john", 45)

dr1 = Doctor.new("joe", "hands", 12)
dr2 = Doctor.new("tony", "brain", 2)

new_appointment = Appointment.new('09-01-2020', patient1, dr1)

other_appointment = Appointment.new('04-02-2021', patient2, dr2)

# CARYN SAYS: good beginnings of testing!
# CARYN SAYS: now move this over to a console.rb file to keep this file reserved for beginning a CLI
# CARYN SAYS: also feel free to do more coding! 


binding.pry

# Associations:
# A Patient has many Doctors through Appointment
# A Doctor has many Patients through Appointment
# An Appointment belongs to a Doctor and a Patient
# Appointment
# Appointment#initialize… intentionally vague. What will it need to be initialized?
# Appointment.all should return a list of all appointment instances 
# Patient
# Note: you can comment out your #doctor and #changes_doctors methods
# Patient#appointments should return a list of Appointment instances associated with this patient 
# Patient#doctors should return a list of Doctor instances associated with this patient through Appointments. Try to ensure this list does not include duplicates.
# Patient#create_appointment should create a new appointment between the current patient and a specified doctor
# Doctor
# Note: you can comment out your #patients, #discharge_patient, and #transfer_patient methods
# Doctor#appointments should return a list of Appointment instances associated with this doctor 
# Doctor#patients should return a list of Patient instances associated with this patient through Appointments. Try to ensure this list does not include duplicates.