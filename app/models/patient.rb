require 'pry'


class Patient
    attr_accessor :name, :age


    def initialize(name, age)
      @name = name
      @age = age.to_i
    end
end


alpha = Patient.new("mamadou", 23)
binding.pry