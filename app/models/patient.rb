require 'pry'

# Patient
# Patient#initialize: should initialize with a name (string) and age (integer)
# Patient#name: should return the Patient’s name and should be able to change its name after creation
# Patient#age: should return the Patient’s age and should be able to change its age after creation

# Patient
# Patients should be initialized with an instance variable, impatience, set to 0
# Patient#increase_impatience: should be a private method that increases impatience by 1 
# Patient#inquire_appt_ready: should print that the doctor will be ready soon and increase patient impatience by 1
# Patient.all: should return a list of all patient instances

# Patient
# Patient#doctor should return the Doctor instance for this patient
# Patient#change_doctors should take a doctor instance and update the patient’s doctor

 
class Patient

    attr_accessor :name, :age, :impatience, :doctor


    @@all = []
    
    def initialize(name, age)
		# CARYN SAYS: make sure you're initializing a patient with a doctor since it belongs to one
		# CARYN SAYS: you'll need to add a parameter to the initialize and another instance variable
        @name = name.to_s
        @age = age.to_i
        @impatience = 0
        @@all << self

    end

    def self.all
        return @@all
    end

    def inquire_appt_ready
        puts "The Doctor will be ready to see you soon."
        self.impatience += 1 # CARYN SAYS: use your increase_impatience method here instead!
    end

	# CARYN SAYS: this metho is created for you by your attrs! and it should access the doctor instance that will be stored as an instance variable 
    def doctor
        Doctor.all.filter { |doctor| doctor.name == self }
    end

    def change_doctors(new_doc)
		new_doc.patient == self
		# CARYN SAYS: ahhhh I think I'm seeing some misunderstanding here about which class holds the reference
		# CARYN SAYS:  the patient instance holds the reference to the doctor since it can only be associated with one doctor
		# CARYN SAYS:  so we update self.doctor == new_doc, where self is the current patient instance 
    end



 private

    def increase_impatience
        self.impatience += 1
    end



end



jacob = Patient.new("Jacob", 33)


jacob.name
jacob.age














