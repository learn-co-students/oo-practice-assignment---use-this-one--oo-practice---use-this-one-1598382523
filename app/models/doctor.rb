class Doctor 

    attr_accessor :name, :specialty, :years 

    def initialize(name, specialty, years)
        @name = name
        @specialty = specialty
        @years = years 


    end 

    def say_name 
       puts  "{#@name}"
    end 

    def specialty
        "@specialty}"
    end 

    def years
        @years 
    end 



end     