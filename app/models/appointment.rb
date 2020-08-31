require "pry"

class Appointment

  attr_accessor :doctor, :patient, :time
  @@all = []

  def initialize (patient, doctor, time)
    @doctor = doctor
    @patient = patient
    @time = time
    @@all << self
  end

  def self.all
    @@all
  end

end
