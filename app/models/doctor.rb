class Doctor

  attr_accessor :name, :years
  attr_reader :speciality
  @@all = []
  @@patients =[]

  def initialize(name, speciality, years=1)
    @name = name
    @speciality = speciality
    @years = years
    @@all << self
  end

  def self.all
    @@all
  end

  def self.patients
    Patient.all

    #i know this should check patients array and look for doctors increase_impatience
    #right now i have bob assigned to maggie as a patient but cant
    #quite figure out how to look into the patients array and just find the patients associated with
    # the doctor (in this case Maggie)
  end

  def greet
    puts "Hi my name is #{self.name}. I'll be taking care of you today."
  end

  def self.find_by_speciality(speciality)
    self.all.select {|doc| doc.speciality == speciality}
  end

  def add_patient(patient)
    @@patients << patient
  end

  def discharge_patient
    #need a loop here
    if patient.doctor = self
      patient.doctor = nil
    end
  end

  def transfer_patient(doctor)
    # need a loop here
    if patient.doctor = self
      patient.doctor = doctor
    end
  end


end
