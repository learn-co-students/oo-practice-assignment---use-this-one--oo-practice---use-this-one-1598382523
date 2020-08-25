require 'pry'

class Doctor
  attr_accessor :name, :years 
  attr_reader :specialty
  def initialize(name, specialty, years=1)
    @name = name.to_s
    @specialty = specialty.to_s
    @years = years.to_i
  end
  binding.pry
end