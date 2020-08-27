class Patient
    attr_accessor :name, :age, :impatience, :doctor

    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        @impatience = 0
        @doctor = doctor 
        @@all << self
    end

    def inquire_appt_ready
        increase_impatience
        print "The doctor will be ready soon."
    end

    def self.all
        @@all
    end

    def doctor
        @doctor
    end 

    def change_doctor(new_doc)
        self.doctor = new_doc 
    end 


 private

    def increase_impatience
        self.impatience += 1
    end

end