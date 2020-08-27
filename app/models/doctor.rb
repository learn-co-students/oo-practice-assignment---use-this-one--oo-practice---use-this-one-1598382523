class Doctor
  
  attr_accessor :name, :years
  attr_reader :speciality
  @@all = []
  
  def initialize(name, speciality, years=1)
    @name = name
    @speciality = speciality
    @years = years
    @@all << self
  end
  
  def self.all
    @@all
  end

  def patients
    Patient.all.select {|patient| patient.doctor == self}
  end

  def discharge_patient(current_patient)
    
    if self.patients == current_patient 
      self.patients.each {|patient| patient.doctor = nil}
    end
  end

  def transfer_patient(new_doctor)
    if patient.doctor == self
      patient.doctor = new_doctor
    end
  end

  def greet
    puts "Greetings, dear patient! My name is #{self.name}."
  end

  def self.find_by_speciality(speciality)
    self.all.select do |doctor|
      doctor.speciality == speciality
  end
end


