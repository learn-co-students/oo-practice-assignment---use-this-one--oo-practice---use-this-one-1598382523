require 'pry'



def patient
    puts "Welcome to our office. Please fillout your application form:"
    puts "What is your name?"
    name = gets.chomp
    puts "How old are you?"
    age = gets.chomp

    puts "What would you like to do?"
    puts "a. View Profile;"
    puts "b. Edit Profile."
    choice = gets.chomp
    binding.pry
    
    if choice == "a"
        patient.patient_profile
    elsif choice == "b"
        puts "What is your name?"
        new_name = gets.chomp
        patient.name = new_name
        puts "What is your age?"
        new_age = gets.chomp
        patient.age = new_age
    end
    
end

def doctor
    puts "Welcome doctor, please fillout this form:"
    puts "What is your name?"
    name = gets.chomp
    puts "What is your speciality?"
    speciality = gets.chomp

    puts "What would you like to do?"
        puts "1. View Form;"
        puts "2. Edit Form."
        choice = gets.chomp
        if choice == "1"
            doctor.view_profile
        elsif choice == "2"
            puts "What is your name?"
        end



end

