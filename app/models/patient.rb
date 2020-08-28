class Patient
    # CARYN SAYS:  good overall!
    attr_accessor :name, :age, :impatience, :doctor

    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        @impatience = 0
        @@all << self
        @doctor = nil # CARYN SAYS: give the option that a patient can be initialized with a doc by adding this to the initialize parameters with the default set to nil
    end

    def inquire_appt_ready
        increase_impatience
        print "The doctor will be ready soon."
    end

    def self.all
        @@all
    end

    def change_doctors(doc)
        self.doctor = doc
        "Your new doctor will be Dr. #{doc.name}! We hope you enjoy them!"
    end

private

    def increase_impatience
        self.impatience += 1
    end

end