class Patient
    attr_accessor :name, :age
    @@all =[]
    def initialize(name,age)
      @name = name.to_s
      @age = age.to_i
      @impatience = 0
      @@all << self
    end

    def self.all
      @@all
    end


    def inquire_appt_ready
      puts "Doctor will ve ready soon!"
      increase_impatience
    end

    private

    def increase_impatience
      self.impatience +=1
    end

end
