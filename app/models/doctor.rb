# Doctor


# 8-26-2020

# Doctor.all: should 
#     -- return a list of all doctor instances
# Doctor#greet: should 
#     -- print a greeting that would make any patient feel welcomed! 
# Doctor.find_by_speciality: 
#     -- should take a specialty string as an argument and 
#     -- return a list of the doctors who have that specialty 


# 8-27-2020

# Doctor#patients should
#     -- return an array of all the Patients for that doctor
# Doctor#discharge_patient 
#     -- should set a patient’s doctor to nil,
#         -- only if the patient belongs to the current doctor
# Doctor#transfer_patient
#     -- should change a patient’s doctor to another doctor. 
#     -- This should *ONLY* work 
#         -- if the patient belongs to the current doctor.


########################################




class Doctor
      attr_accessor :name, :years
      attr_reader   :specialty
      @@all = [ ]


    def initialize(name, specialty, years = 1)
        @name        =      name.to_s
        @specialty   = specialty.to_s 
        @years       = years.to_i
        @@all << self
    end

    def  self.all
      @@all  
      # CARYN SAYS: watch your syntax; ends should go on a new line, in line with where you open the code block
      # CARYN SAYS:  so def/end should be tabbed to the same indent; if/elsif/end as well  
    end


    def greet(patient)
        puts "Hello #{patient}! How are you feeling today? :)"  
        # CARYN SAYS: I like that this is personalized! 
        # CARYN SAYS: if you're passing in a whole patient instance here, use patient.name
    end




end








########################################
########################################



# 8-25-2020

# initialize: should initialize with 
#    -- a name (string), specialty (string), and years (integer). 
#    -- Years should default to 1
# Doctor#name: should 
#    -- return the Doctor’s name and 
#    -- should be able to change its name after creation
# Doctor#speciality: should 
#    -- return the Doctor’s speciality and
#    -- should NOT be able to change its speciality after creation
# Doctor#years: should 
#    -- return the Doctor’s years and 
#    -- should be able to change its years after creation

# ***  !!  specialty / speciality ^



