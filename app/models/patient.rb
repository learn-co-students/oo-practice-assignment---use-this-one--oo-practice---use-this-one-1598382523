require 'pry'

class Patient
  attr_accessor :name, :age
  def initialize(name, age)
    @name = name.to_s
    @age = age.to_i
  end
end