require 'pry'

#$$$$$$$$$$$$$$$$$$$$$$
#NOTICE: for OO Part 3 I was not able to get pry to load despite my best efforts. 
#$$$$$$$$$$$$$$$$$$$$$$$$
#$$$$$$$$$$$$$$$$$$$$$$$$


class Patient
    attr_accessor :name # CARYN SAYS: same comment about putting all your accessors on one line a la attr_accessor :name, :age, :doctor
    attr_accessor :age
    attr_accessor :has_doctor #created this accessor so I could assign a doctor to this patient??? Not sure if was supposed to do this
    
    @@patient_names = [] # CARYN SAYS: there needs to be an @@all that is an array of patient instances, not just their names, so we can gain access to all the instances and filter, by say, who their doctor is
    
	def initialize(name, age)
		# CARYN SAYS: since a patient belongs to a doctor now, it should be initialized with one and have an instance variable @doctor 
		# CARYN SAYS:  then you can just write an attr for it
        @name = name
        @age = age.to_i
        @impatience = 0
        
        @@patient_names << name # CARYN SAYS: see note about next to @@patient_names
    end

    def inquire_appt_ready
        self.impatience += 1 # CARYN SAYS: use your increase_impatience method! 
        puts "The Doctor will be ready soon."
    end

    def self.all
        @@patient_names # CARYN SAYS: this should be an array of all patient instances, not just their names
    end

	# CARYN SAYS: see note above in intiialize
    def doctor
        my_doctors_name = Doctor.all.find {|doc| doc.name }
        self.has_doctor = my_doctors_name #not really sure what ("should return the Doctor instance for this patient")  means so made a method that just picks a doctor's name from that list of doctors that would be the patient's doctor
    end
    
    
	def change_doctors
		# CARYN SAYS: this method can receive a doctor instance and then set self.doctor = new_doc
        new_doctor = Doctor.all.sample.find {|doc| doc.name} #Pry is not loading on this for some reason, but my thought here is that this would take the array that stores doctors, select a random index and for whatever was selected, enumerate into that array and select for the randomized doctors name
        self.has_doctor = new_doctor
        


    private


    def increase_impatience
        self.impatience += 1
    end




end


