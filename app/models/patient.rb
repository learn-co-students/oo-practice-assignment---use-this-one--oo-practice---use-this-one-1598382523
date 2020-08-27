
class Patient 
attr_accessor :name, :age, :doctor

    @@patients = []

    def initialize(name, age)
        @name = name
        @age = age
        @impatience = 0
        @doctor = doctor
        @@patients << self 

    end

    def inquire_appt_ready
        puts "The doctor will be ready soon!"
        increase_impatience
    end

    def self.all 
        @@patients
     end

     def change_doctors 
    #I am very lost on how to format this. I know what a doctor instant is but i don't know how to update the patient's doctor.
    end 

    private 

    def increase_impatience 
        @impatience += 1
    end

end


