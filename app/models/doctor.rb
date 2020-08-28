require 'pry'

class Doctor
  attr_accessor :name, :years 
  attr_reader :specialty
  @@all = []

  def initialize(name, specialty, years=1)
    @name = name.to_s
    @specialty = specialty.to_s
    @years = years.to_i
    @@all << self
  end

  def greet
    return "Welcome! You'll feel better in no time"
  end

  def self.all
    @@all
  end

  def find_by_specialty(specialty_string) # CARYN SAYS: this should be a class method so it needs to be define as def self.find_by_specialty
    # CARYN SAYS: there are better enumerator(s) than map to use here, which will also shortern your code
    # CARYN SAYS:  update this for your next submission!
    specialty_array = []
    @@all.map do | doctor|
      if doctor.specialty == specialty_string
        specialty_array << self
      end
    end
    specialty_array
  end

  def patients
    # CARYN SAYS: good! 
    Patient.all.select{ | patient_inst | patient_inst.doctor == self }
  end

  def discharge_patient(patient)
    if patient.doctor == self
      patient.doctor = nil
    else
      "Keep your hands off my patient, ya bum!" # CARYN SAYS: lololol
    end
  end

  def discharge_patient(patient, new_doctor)
    if patient.doctor == self
      patient.doctor = new_doctor
      "I'm over you, #{new_doctor.name} will take care of you from now on"
      # CARYN SAYS: woooooooow, but correct lol
    else
      "I said keep your hands off my patient, ya bum!"
    end
  end

  # binding.pry
end