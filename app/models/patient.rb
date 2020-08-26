require 'pry'

class Patient
    attr_accessor :name, :age, :impatience
    @@all = []
    def initialize(name, age, impatience=0)
        @impatience=impatience
        @name=name
        @age=age
        @@all<<self
    end
    def self.all
        @@all
    end

    def inquire_appt_ready
        increase_impatience
        puts "The doctor will be ready soon!"
    end

    private

    def increase_impatience
        self.impatience +=1
    end
end

binding.pry





#Patient#initialize: should initialize with a name (string) and age (integer) done
#Patient#name: should return the Patient’s name and should be able to change its name after creation done
#Patient#age: should return the Patient’s age and should be able to change its age after creation done
#Patients should be initialized with an instance variable, impatience, set to 0 done
#Patient#increase_impatience: should be a private method that increases impatience by 1 done
#Patient#inquire_appt_ready: should print that the doctor will be ready soon and increase patient impatience by 1 done
#Patient.all: should return a list of all patient instances done