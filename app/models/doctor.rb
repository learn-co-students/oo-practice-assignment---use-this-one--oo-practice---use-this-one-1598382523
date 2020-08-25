class Doctor
    def initialize(name, specialty, years)
        @name = name
        @specialty = specialty
        @years = years.to_i
    end

    attr_accessor :name
    attr_accessor :years

    def specialty
        @specialty
    end
end

james =Doctor.new("Dr. Benning", "Neuroseurgeon", "30")

puts james.name
puts james.specialty
puts james.years
