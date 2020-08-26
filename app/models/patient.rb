# Patient


# 8-25-2020

# initialize: should initialize with 
#   -- a name (string) and age (integer)
# Patient#name: should 
#   -- return the Patient’s name and 
#   -- should be able to change its name after creation
# Patient#age: should 
#   -- return the Patient’s age and 
#   -- should be able to change its age after creation


# 8-26-2020

# Patients should be initialized with 
#     -- an instance variable, impatience, 
#         ---- set to 0
# Patient#increase_impatience: should be 
#     -- a private method that increases impatience by 1 
# Patient#inquire_appt_ready: should 
#     -- print that the doctor will be ready soon and 
#     -- increase patient impatience by 1
# Patient.all: should 
#     -- return a list of all patient instances




class Patient
      attr_accessor :name, :age
      @@all = [ ]


    def initialize(name, age)
        @name       = name.to_s
        @age        = age.to_i 
        @impatience = 0
        @@all << self
    end

    def  self.all
         @@all    end


    def inquire_appt_ready
        puts "print that the doctor will be ready soon"
        increase_impatience                         end 

    private
    def  increase_impatience
         self.impatience +=1  end


end
