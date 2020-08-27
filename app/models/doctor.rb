
class Doctor

    attr_reader :specialty
    attr_accessor :name, :years

    @@all = []

    def initialize(name, specialty, years)
        @name = name
        @specialty = specialty
        @years = years
        @@all << self
    end

    def self.all
        @@all
    end

    def greeting
        puts "Hello, #{self.name}. How are you doing today?"
    end

    def self.find_by_specialty(specialty)
        self.all.filter {|doctor| doctor.specialty == specialty}
    end

    def patients
        Patient.all.filter {|patient| patient.doctor == self}
      end

end

