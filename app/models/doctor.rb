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
    # CARYN SAYS: your conditional is a bit off here
    # CARYN SAYS: you need to check if current_patient is inside of self.patients (its an array)
    # CARYN SAYS: or if current_patient.doctor == self
    if self.patients == current_patient 
        # CARYN SAYS: and then you're discharging all patients! Possibly a behavior we want, just not in this method 
      self.patients.each {|patient| patient.doctor = nil}
    end
  end

  def transfer_patient(new_doctor)# CARYN SAYS: this method will also need to receive the patient as an argument like new_doctor!
    # CARYN SAYS: otherwise pretty much spot on! 
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


