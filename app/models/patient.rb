class Patient 
attr_accessor :name, :age

    def initialize(string, integer)
        @name = string
        @age = integer
    end

end

bryam = Patient.new("Bryam",22)