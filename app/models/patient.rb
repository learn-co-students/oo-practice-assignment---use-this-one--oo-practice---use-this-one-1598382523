# Patient


# 8-26-2020

# Patients should be initialized with 
#    -- an instance variable, impatience, 
#        ---- set to 0
# Patient#increase_impatience: should be 
#    -- a private method that increases impatience by 1 
# Patient#inquire_appt_ready: should 
#    -- print that the doctor will be ready soon and 
#    -- increase patient impatience by 1
# Patient.all: should 
#    -- return a list of all patient instances


# 8-27-2020

# Patient#doctor should 
#    -- return the Doctor instance for this patient
# Patient#change_doctors should 
#    -- take a doctor instance and update the patient’s doctor


########################################


# CARYN SAYS: see note in doctor about how to indent your end's
# CARYN SAYS: please update for when you push your code next!

class Patient
      attr_accessor :name, :age
      @@all = [ ]


    def initialize(name, age)
        @name       = name.to_s
        @age        = age.to_i 
        @doctor     = doctor.to_s # CARYN SAYS: doctor should be a Doctor instance, so no .to_s needed
        # CARYN SAYS:  also make sure that you're then passing in doctor as an argument to initialize
        @impatience = 0

        @@all << self
    end

    def  self.all
         @@all    end


    def inquire_appt_ready
        puts "print that the doctor will be ready soon"
        increase_impatience                         end 

    private
    # CARYN SAYS: only one of the methods under the keyword private here should be private
    # CARYN SAYS: remember, any methods written underneath that keyword will be made private
    # CARYN SAYS:  move the two methods that shouldn't be private above the keyword!
    def  increase_impatience
         self.impatience +=1  end

    
    # CARYN SAYS: instead of writing your own doctor method, you could use the attr's above
    # CARYN SAYS: good use of self!
    def doctor
        #puts "#{self.doctor}"
        self.doctor  end

    # CARYN SAYS: remember that @ denotes an instance variable
    # CARYN SAYS:  you want this argument to be a normal variable 
    def change_doctors(@new_doc)
        self.doctor = @new_doc    end




end








########################################
########################################




# 8-25-2020

# initialize: should initialize with 
#    -- a name (string) and age (integer)
# Patient#name: should 
#    -- return the Patient’s name and 
#    -- should be able to change its name after creation
# Patient#age: should 
#    -- return the Patient’s age and
#    -- should be able to change its age after creation



