require 'pry'

#$$$$$$$$$$$$$$$$$$$$$$
#NOTICE: for OO Part 3 I was not able to get pry to load despite my best efforts. 
#$$$$$$$$$$$$$$$$$$$$$$$$
#$$$$$$$$$$$$$$$$$$$$$$$$


class Patient
    attr_accessor :name
    attr_accessor :age
    attr_accessor :has_doctor #created this accessor so I could assign a doctor to this patient??? Not sure if was supposed to do this
    
    @@patient_names = []
    
    def initialize(name, age)
        @name = name
        @age = age.to_i
        @impatience = 0
        
        @@patient_names << name
    end

    def inquire_appt_ready
        self.impatience += 1
        puts "The Doctor will be ready soon."
    end

    def self.all
        @@patient_names
    end

    def doctor
        my_doctors_name = Doctor.all.find {|doc| doc.name }
        self.has_doctor = my_doctors_name #not really sure what ("should return the Doctor instance for this patient")  means so made a method that just picks a doctor's name from that list of doctors that would be the patient's doctor
    end
    
    
    def change_doctors
        new_doctor = Doctor.all.sample.find {|doc| doc.name} #Pry is not loading on this for some reason, but my thought here is that this would take the array that stores doctors, select a random index and for whatever was selected, enumerate into that array and select for the randomized doctors name
        self.has_doctor = new_doctor
        


    private


    def increase_impatience
        self.impatience += 1
    end




end


