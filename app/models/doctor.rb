class Doctor
    attr_reader :specialty
    attr_accessor :name, :years
    @@all = []

    def initialize (name, specialty, years=1)
        @name = name
        @specialty = specialty
        @years = years
        @@all << self
    end

    def.self.all
        @@all
    end

    def greet
        puts "Hi! come on in, my name is #{self.name}."
    end

    def self.find_by_specialty(specialty)
        self.all.filter do |doctor|
            doctor.specialty == specialty
        end
    end

    def patients
        Patient << self
    end

    def discharge_patient #Unsure
        Patient.doctor=nil
    end

    def transfer_patient

    end

end
# I wasn't able to finish because of pry not working!!!!