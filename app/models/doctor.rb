class Doctor
    def initialize (name, specialty, years)
        @name= name
        @specialty = specialty
        @years = years
    end
    attr_accessor :name, :years
    attr_reader :specialty
end
