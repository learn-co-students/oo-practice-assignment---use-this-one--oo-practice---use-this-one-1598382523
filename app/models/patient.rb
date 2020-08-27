class Patient
    
    attr_accessor :name, :age, :impatience, :doctor

    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        @impatience = 0
        @@all << self
        @doctor = nil
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