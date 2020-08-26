require 'pry'
require_relative 'app/models/doctor'
require_relative 'app/models/patient'

def run_patient
    puts "Hello! Welcome to Flatiron Hospital."
    puts "What is your name?"
    name = gets.chomp
    puts "What is your age?"
    age = gets.chomp
    patient = Patient.new(name, age)
    #binding.pry
end


def run_doctor
    puts "Hello! Is this your first day working at Flatiron Hospital?"
    puts "What is your name?"
    name = gets.chomp
    puts "What is your specialty?"
    specialty = gets.chomp
    puts "How many years of experience do you have?"
    years = gets.chomp 
    doctor = Doctor.new(name, specialty, years)

    binding.pry
end



binding.pry