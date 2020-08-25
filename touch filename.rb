

attr_accessor @name, @age
class Patient

  def initialize
    puts "Hello what is your name?"
    name = gets.chomp
    puts "Well hello #{@name}what is your age?"
    age = gets.chomp
    puts "What would you like to do?"
        puts "1. Change age"
        puts "2. Change name"
    choice = gets.chomp
       If choice == "1"
        puts " what is your new age?"
        new_age = gets.chomp
    elsif choice == "2"
        puts "what is your new name"
        new_name = gets.chomp
       end
  end


end