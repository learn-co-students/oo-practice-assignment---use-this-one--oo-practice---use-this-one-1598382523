
class Patient 
attr_accessor :name, :age

    @@patients = []

    def initialize(name, age)
        @name = name
        @age = age
        @impatience = 0
        @@patients << self 

    end

    def inquire_appt_ready
        puts "The doctor will be ready soon!"
        increase_impatience
    end

    def self.all 
        @@patients
     end
     

    private 

    def increase_impatience 
        @impatience += 1
    end

end


bryam = Patient.new("Bryam",22)