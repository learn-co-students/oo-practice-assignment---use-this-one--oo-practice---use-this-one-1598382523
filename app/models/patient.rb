require pry
class Patient
    attr_accessor :name, :age 
    attr_writer :impatient
    @@all = []

    def intialize (name, age)
        @name = name
        @age = age
        @impatient = 0
        @@all << self
    end
    def inquire_appt_ready
        puts "The doctor will be ready soon"
        impatient.self += 1
    end

Privite 
        def increase_impatience
            impatient.self += 1
        end
    end
binding.pry
