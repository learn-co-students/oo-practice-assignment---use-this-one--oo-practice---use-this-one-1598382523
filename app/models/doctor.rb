class Doctor 

    attr_accessor :name
    attr_reader :specialty
    attr_accessor :years 

    def initialize(name, specialty, years=1)
        @name = name
        @specialty = specialty
        @years = years
    end

end

