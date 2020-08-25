class Patient
    attr_accessor :name, :age
    def initialize(name,age)
      @name = name
      @age = age
    end
end

Jerry = Patient.new("Jerry","55")

puts "Please enter one of following command:"
puts "Do you want to all patient'name and their info(y/n)"
input = gets.chomp

if input == "y"
  puts "Patient: #{Jerry.name} | Age: #{Jerry.age}"
  puts "Edit patient\'s info? (y/n)"
  edit = gets.chomp
  if edit == "y"
    puts "Which one?  1. Name | 2. Age"
    choice = gets.chomp
    if choice.to_i == 1
      puts "Enter new name: "
      new_name = gets.chomp
      Jerry.name = new_name
      puts "Patient: #{Jerry.name} | Age: #{Jerry.age}"
    elsif choice.to_i == 2
      puts "Enter new age: "
      new_age = gets.chomp
      Jerry.age = new_age
      puts "Patient: #{Jerry.name} | Age: #{Jerry.age}"
    else
      puts "bye"
    end
  else
    puts "Bye!"
  end
else
  puts "Bye!!"
end