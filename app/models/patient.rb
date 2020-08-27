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
        self.impatience += 1
    end

    def doctor
        Doctor.all.filter { |doctor| doctor.name == self }
    end

    def change_doctors(new_doc)
        new_doc.patient == self
    end



 private

    def increase_impatience
        self.impatience += 1
    end



end



jacob = Patient.new("Jacob", 33)


jacob.name
jacob.age














