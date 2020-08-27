require 'pry'
require_relative "./app/models/patient"
require_relative "./app/models/doctor"

jane = Patient.new("jane", 30)
jake = Doctor.new("jake", "heart")
puff = Doctor.new("puff", "cat stuff")
binding.pry