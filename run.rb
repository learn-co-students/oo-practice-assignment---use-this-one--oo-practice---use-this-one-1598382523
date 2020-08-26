require 'pry'
require_relative './app/models/patient'
require_relative './app.models/doctor'

rachel = Doctor.new("Rachel", "Pediatric", 5)

binding.pry