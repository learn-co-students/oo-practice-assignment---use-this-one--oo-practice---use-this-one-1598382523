require 'pry'
require_relative './app/model/patient.rb'
def run
    puts "Hello what is your name?"
    name = gets.chomp
    puts "Well hello #{self.name} what is your age?"
    age = gets.chomp
    puts " Hello #{self.name}, you are #{self.age.to_s}"
    puts "What would you like to do?"
    puts "1. Change age"
    puts "2. Change name"
    choice = gets.chomp
    
    if choice == "1"
      puts " what is your new age?"
      new_age = gets.chomp
      puts "we have updated our records to show your age as #{new_age}"
    elsif choice == "2"
      puts "what is your new name"
      new_name = gets.chomp
      puts "we now have you as #{new_name}"
      
    end
    puts "Thank you for becoming a new patient"
  end

binding.pry