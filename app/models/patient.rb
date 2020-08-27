class Patient
    attr_accessor :name, :age, :impatience,:doctor
    @@all =[]
    def initialize(name,age)
      @name = name.to_s
      @age = age.to_i
      @doctor = doctor
      @impatience = 0
      @@all << self
    end

    def self.all   #Patient.all
      @@all
    end


    def inquire_appt_ready
      puts "Doctor will ve ready soon!"
      increase_impatience
    end

    def doctor
      Doctor.all.find{|doctor| doctor.Patient == self}
    end

    def change_doctors(doctor)
      self.doctor = doctor
    end

    private

    def increase_impatience
      self.impatience +=1
    end

end
