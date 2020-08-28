class Doctor
  # CARYN SAYS: make sure you're indenting! i indenrted your attrs for readability
    attr_accessor :name, :years
    attr_reader :specialty

    # CARYN SAYS: the class variable is named @@all by convention
    # CARYN SAYS: you only need one to track all instances of the current class
    @@doctors = [] # CARYN SAYS: rename this @@all
    @@patients = [] # CARYN SAYS: remove this
   


    def initialize(name, specialty, years)
      # CARYN SAYS: indent!! I updated for you
      @name = name 
      @specialty = specialty
      @years = years
      @@patients <<self  # CARYN SAYS: see notes above; remove this
      @@doctors << self # CARYN SAYS:  see notes above; rename @@all
    
    end

    def self.patients
        # CARYN SAYS: patients should be an instance method, so defined as def patients
        # CARYN SAYS: and should go through Patient.all SSOT to filter to get the correct patients
        # CARYN SAYS: Now i see that you do have a patients instance method below! That one is defined correctly
        # CARYN SAYS:  but still needs to go through Patient.all SSOT to find the correct patient instances
        @@patients
    end


    def self.all
        @@doctors
    end

    def greet
        puts "Hello there!"
    end

    def self.find_by_specialty(search_specialty)
        self.all.find {|doctor| doctor.specialty == search_specialty}
    end

    def patients
        @@patients
    end

end


   