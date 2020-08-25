require 'pry'

class Patient

    attr_accessor :name, :age

    def initialize (name, age)
        @name = name
        @age = age
    end

    def name
        @name
    end

    def age
        @age
    end
end

binding.pry