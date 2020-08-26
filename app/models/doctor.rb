class Doctor
  attr_accessor :name, :years
  attr_reader :speciality

  def initialize(name, speciality, years)
    @name = name
    @speciality = speciality
    @years = years
  end
end