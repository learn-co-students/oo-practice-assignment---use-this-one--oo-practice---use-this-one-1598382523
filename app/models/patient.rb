require 'pry'

class Patient

    attr_reader :impatience
    attr_accessor :name, :age

    @@all []
require 'pry'

    def initialize(name, age, impatience=0)
        @name = name.to_s
        @age = age.to_i
        @impatience = impatience
    end

    def impatience=(num)
        @impatience = num
    end

    def inquire_appt_ready
        self.impatience += 1
        puts "The doctor will be ready soon."
    end

    def self.all
        @@all
    end

    private

    def increase_impatience
        self.impatience += 1
    end

end

