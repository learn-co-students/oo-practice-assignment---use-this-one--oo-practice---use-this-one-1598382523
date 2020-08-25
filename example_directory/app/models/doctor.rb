class Doctor
    def initialize(name, specialty, years = 1) 
        @name = name
        @specialty = specialty
        @age = age
    end
    
    def name
        @name
    end
    
    def specialty
        @specialty
    end

    def years
        @years
    end
end
    
    doc = Doctor.new("Pepper", "Chiropractor")
    doc.name