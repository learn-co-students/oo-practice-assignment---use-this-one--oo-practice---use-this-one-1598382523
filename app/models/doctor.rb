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

  def self.patients
    Patient.all.select {|patient| patient.doctor == self}
  end

  def greet
    puts "Hi my name is #{self.name}. I'll be taking care of you today."
  end

  def self.find_by_speciality(speciality)
    self.all.select {|doc| doc.speciality == speciality}
  end

  def appointments
    Appointment.all.select {|apt| apt.doctor == self}
  end

  def patients
    patient_list = appointments.map {|apt| apt.patient}
    patient_list.uniq
  end


  # def discharge_patient(patient)
  #   if patient.doctor == self
  #     patient.doctor = nil
  #   else
  #     puts "You can only discharge your own patients!!"
  #   end
  # end
  #
  # def transfer_patient(patient, doctor)
  #   if patient.doctor == self
  #     patient.doctor = doctor
  #   else
  #     puts "You can only transfer your own patients!!"
  #   end
  # end

  # def discharge_or_transfer(patient, doctor=nil)
  #   if doctor == nil
  #     patient.discharge_patient(patient)
  #   else
  #     patient.transfer_patient(patient, doctor)
  #   end
  # end

end
