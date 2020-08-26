class Patient

    attr_accessor :name, :age, :impatience

    @@all = []

    def initialize(name, age, impatience)
        @name = name
        @age = age
        @impatience = 0
        @@all << self
    end

    def name#=(name)
        self.name
        # @name = name
    end

    def age#=(age)
        self.age
        # @age = age
    end

    def inquire_appt_ready
        self.impatience += 1
        print "The doctor will be ready soon"
    end

private

    def increase_impatience
        self.impatience += 1
    end

end


# Patients should be initialized with an instance variable, impatience, set to 0
#     Patient#increase_impatience: should be a private method that increases impatience by 1 
#     Patient#inquire_appt_ready: should print that the doctor will be ready soon and increase patient impatience by 1
#     Patient.all: should return a list of all patient instances