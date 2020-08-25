require 'pry'
class Doctor
    attr_reader :specialty
    attr_accessor :name, :years
    def initialize(name,specialty,years=1)
      @name = name.to_s
      @specialty = specialty.to_s
      @years = years.to_i
    end
end

Jay = Doctor.new("Jay","Dental")

puts "Please enter one of following command:"
puts "Do you want to see all doctor'name and their info(y/n)"
input = gets.chomp

if input == "y"
  puts "Doctor: #{Jay.name}  | specialty: #{Jay.specialty}  | years: #{Jay.years}"
  puts "If you want to edit the info please hit (y/n)"
  edit = gets.chomp
  if edit == "y"
    puts "1. Name"
    puts "2. specialty"
    puts "3. Years"
    puts "which one?"
    choice = gets.chomp
    if choice.to_i == 1
      puts "Enter the new name: "
      new_name = gets.chomp
      Jay.name = new_name
      puts "Doctor: #{Jay.name}  | specialty: #{Jay.specialty}  | years: #{Jay.years}"
    elsif choice.to_i == 2
      puts "Enter the new specialty: "
      new_specialty = gets.chomp
      Jay.specialty = new_specialty
    elsif choice.to_i == 3
      puts "Enter the new years: "
      new_years = gets.chomp
      Jay.years = new_years
      puts "Doctor: #{Jay.name}  | specialty: #{Jay.specialty}  | years: #{Jay.years}"
    else
      puts "Bye!"
    end
  else
    puts "GoodBye!"
  end
else
  puts "Bye!"
end


#binding.pry
