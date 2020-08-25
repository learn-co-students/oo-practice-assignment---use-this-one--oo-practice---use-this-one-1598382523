class Doctor
    attr_accessor :name
    attr_accessor :years
    attr_reader :specialty
    
    def initialize (name, specialty, years = 1)
        @name = name
        @specialty = specialty
        @years = years.to_i
    end     
end    