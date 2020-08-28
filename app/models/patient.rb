
class Patient

    attr_accessor :name, :age, :impatience, :doctor
    @@all = []

    # CARYN SAYS: you should be able to read the initialize and know what all of the instance variables are
    # CARYN SAYS: so initialize the patient with an doctor (doctor=nil if you want optional)
    # CARYN SAYS: and then create the instance variable
    def initialize(name, age)
        @name = name
        @age = age
        @impatience = 0
        @@all << self
    end

    def inquire_appt_ready
        puts "The doctor will be ready soon"
        increase_impatience
    end

    def self.all
        @@all
    end

    def change_doctors(doctor)
        self.doctor = doctor
    end 

    private
    
    def increase_impatience
        self.impatience += 1
    end

end
