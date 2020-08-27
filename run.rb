require 'pry'
require_relative 'app/models/doctor'
require_relative 'app/models/patient'

naruto = Patient.new("Naruto", 20, "kakashi")
sasuke = Patient.new("Sasuke", 35, "itachi")
itachi = Doctor.new("Itachi", "Optometry", 30)
kakashi = Doctor.new("Kakashi", "Psychiatry", 40)
iruka = Doctor.new("Iruka", "Psychiatry", 25)
jiraiya = Doctor.new("Jiraiya", "Gynocology", 60)
sakura = Patient.new("Sakura", 22, "kakashi")





binding.pry