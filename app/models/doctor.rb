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
    puts "Welcome #{self.name}" # CARYN SAYS: this would welcome the doctor, not the patient! This method could accept the patient instance in order to print their name 
  end

  def patients
    Patient.all.filter{|patient| patient.doctor == self }
    # CARYN SAYS: good! 
  end

  def discharge_patient(name)
    # CARYN SAYS: this method should accept a patient instance so that you can check patient_instance.doctor == self 
    # CARYN SAYS:  what would happen if the doctor has two patients by the same name?? How would you know which one to discharge?
    self.patients.each{|patient| patient.doctor = nil if patient.name == name}
  end

  def transfer_patient(patient_name, doctor_instance)
    # CARYN SAYS: same comment as for discharge patient above! 
    self.patients.each{|patient| patient.doctor = doctor_instance if patient.name == patient_name }
  end
  
  def self.all
    @@all
  end

  def self.find_by_specialty(specialty)
    # CARYN SAYS: good! but change what you call the elem |spe| looks like a specialty where yuo're actually looking at a doctor instance 
    @@all.filter{ |spe| spe.specialty == specialty }
  end

end
