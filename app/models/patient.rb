class Patient
    attr_accessor :age
    attr_writer :patient_name

    def initialize(patient_name, age)
        @patient_name = patient_name 
        @age = age 
    end

    def display_info
        puts "Thank you for visiting the Flatiron Hospital, #{patient_name}."
    end
    
end

