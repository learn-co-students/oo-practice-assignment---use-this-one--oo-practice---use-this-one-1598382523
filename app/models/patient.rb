
class Patient 
    # CARYN SAYS: indent!!
    attr_accessor :name, :age, :doctor

    @@patients = []

    def initialize(name, age)
        @name = name
        @age = age
        @impatience = 0
        @doctor = doctor # CARYN SAYS: in order to do this, you need to accept doctor as an argument in your initialize definition! 
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
      # CARYN SAYS:  thank you for the comment
      # CARYN SAYS:  so this method can accept a doctor instance a la def change_doctors(new_doc)
      # CARYN SAYS:  and then access the current patient instance (self) and update it's doctor self.doctor = new_doc
    #I am very lost on how to format this. I know what a doctor instant is but i don't know how to update the patient's doctor.
    end 

    private 

    def increase_impatience 
        @impatience += 1
    end

end


