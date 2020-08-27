class Patient
    attr_reader :impatience
    attr_accessor :name, :age, :doctor
    @@all = []
    
    def initialize(name, age) 
        @name = name
        @age = age
        @impatience = 0
        @doctor = doctor
        @@all << self
    end 

    def Patient.all
        @@all
    end 

    def inquire_appt_ready
        puts "a doctor will be ready soon" 
        increase_impatience
    end 

    def doctor
        Doctor.all.select do |doctor|
            doctor.patient == self
        end 
    end 

    def change_doctors(doctor_instance)
        doctor_instance.patient = self
    end  

    private 

    def increase_impatience
        self.impatience += 1
    end 

end 