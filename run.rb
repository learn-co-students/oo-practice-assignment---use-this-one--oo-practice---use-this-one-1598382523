require 'pry'
require_relative 'app/models/doctor'
require_relative 'app/models/patient'

def run
    puts "Hello! Welcome to Flatiron Hospital."
    puts "Which best describes you?"
    puts "1. Doctor"
    puts "2. Patient"
    choice = gets.chomp

    if choice == "1"
        puts "What is your name?"
        doctor_name = gets.chomp
        puts "What is your specialty?"
        specialty = gets.chomp
        puts "How many years of experience do you have?"
        years = gets.chomp.to_i 
        choice_1 = Doctor.new(doctor_name, specialty, years)
        choice_1.display_credentials
    elsif choice == "2"
        puts "What is your name?"
        patient_name = gets.chomp
        puts "How old are you?"
        age = gets.chomp.to_i 
        Patient.display_info
    else 

    end
    binding.pry
end



binding.pry