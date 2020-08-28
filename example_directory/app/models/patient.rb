class Patient
    attr_accessor :name, :age, :impatience # CARYN SAYS: you'll want to add doctor up here so that reader/writer methods are created for you! 
    @@all = []

    def initialize(name, age, impatience = 0)
        # CARYN SAYS: patient should be initialized with a doctor and then a @doctor instance variable created for it
        @name = name
        @age = age
        @impatience = impatience
        @@all << self
    end

    def self.all
        @@all
    end
    
    def inquire_appt_ready
        puts "The doctor will be ready soon."
        increase_impatience
    end

    # CARYN SAYS: see note above by attrs
    def doctor()
        doctor
    end
    
    def change_doctors(doctor)
        #update the patient's doctor
        # CARYN SAYS: good so far! once you update the initialize according to the notes, hopefully what this should do will be clear 
    end

    # CARYN SAYS: note sure why this is here, or why patient would be a new doctor?
    patient = Doctor.new

    private
    def increase_impatience
        self.impatience += 1
    end

end
