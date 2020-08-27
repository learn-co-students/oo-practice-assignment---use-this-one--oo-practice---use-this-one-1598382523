
class Doctor 

    attr_accessor :name, :years
    attr_reader :specialty

    @@all = [] 

    def initialize(name, specialty, years=1)
        @name = name
        @specialty = specialty
        @years = years
        @@all << self
    end

    def self.all
        @@all
    end

    def greet(patient)
        puts "Hey, #{patient.name}. My name is Doctor #{self.name} - welcome!"
    end

    def self.find_by_specialty(specialty)
        @@all.select { |doc| doc.specialty == specialty }
    end

    def patients
        Patient.all.select { |patient| patient.doctor == self}
    end

    def discharge_patient(patient) 
        if patient.doctor == self
            patient.doctor = nil
        end
    end

    def transfer_patient(new_doc, patient)
        if patient.doctor == self
            patient.doctor = new_doc
        end
    end


end

