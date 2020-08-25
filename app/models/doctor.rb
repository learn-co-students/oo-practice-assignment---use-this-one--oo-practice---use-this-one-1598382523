class Doctor
    attr_accessor :doctor_name
    attr_writer :specialty
    attr_accessor :years

    def initialize(doctor_name, specialty, years=1)
        @doctor_name = doctor_name
        @specialty = specialty
        @years = years
    end

    def display_credentials
        puts "Hello Dr. #{doctor_name}! You specialize in #{specialty} and have been working for #{years}."
    end
    
end
