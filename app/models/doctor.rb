require 'pry'

class Doctor
    attr_writer :speciality , :year
    attr_accessor :name
    @@ all = [] # CARYN SAYS: be careful! @@ all and @@all are not the same! 

    def initialize (name, speciality, year=1)
        @name = name
        @speciality = speciality
        @year = year
        @@all << self
    end

    def view_profile
        puts "You are #{@self.ame}. You are a #{@self.speciality} for #{@self.year}."
    end

    def self.all
        @@all
    end

    def greet(name)
        puts "Hello, #{@self.name}, welcome to our hospital!" # CARYN SAYS: self.name would be the doc name! you want to use the name passed in as an argument 
    end

    def find_by_speciality(search_speciality) # CARYN SAYS: this should be a class method, so defined as def self.find_by_speciality(speciality)
       self.all.find_all {|speciality| speciality == "search_speciality"} 
    end

    def patient
        Patient.all.filter {|Patient| Patient.doctor == self}
        # CARYN SAYS: the elem should be |patient| lowercase
        # CARYN SAYS:  so you don't have any conflicts with capital P Patient (the class)
    end

    
    # CARYN SAYS:  you're missing some of the Part III deliverable methods so I can't comment as much for now 

    

end

# CARYN SAYS:  test inside of console.rb instead of the class files 

michael = Doctor.new("Michael", "Psychologist") 
peter = Doctor.new("Peter","Physician")

binding.pry