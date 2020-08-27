class Doctor
  attr_accessor :name, :years
  attr_reader :specialty
  @@all = []
  def initialize(name, specialty, years = 1)
    @name = name
    @specialty = specialty
    @years = years
    @@all << self
  end

  def greet
    puts "Welcome #{self.name}"
  end

  def patients
    Patient.all.filter{|patient| patient.doctor == self }
  end

  def discharge_patient(name)
    self.patients.each{|patient| patient.doctor = nil if patient.name == name}
  end

  def transfer_patient(patient_name, doctor_instance)
    self.patients.each{|patient| patient.doctor = doctor_instance if patient.name == patient_name }
  end
  
  def self.all
    @@all
  end

  def self.find_by_specialty(specialty)
    @@all.filter{ |spe| spe.specialty == specialty }
  end

end
