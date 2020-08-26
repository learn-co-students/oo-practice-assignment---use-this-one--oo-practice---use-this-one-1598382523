class Doctor
    attr_reader :specialty
    attr_accessor :name, :years
    @@all = []

    def initialize(name, specialty, years=1)
        @name = name
        @specialty = specialty
        @years = years
        @@ all << self
    end 

    def Doctor.all
        @@all 
    end 

    def greet
        "Welcome to our office! How are you feeling today?"
    end 

    # This is a class method - need to use self in variable name
    # .filter - want to take info from current array
    def self.find_by_specialty(specialty)
        self.all.filter do |doctor|
        doctor.specialty == specialty
        end
    end 

end 
