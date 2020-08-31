
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
  
  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end

  def patients
    appointments.map{|a| a.patient}.uniq
  end

  # def patients
  #   Patient.all.select {|patient| patient.doctor == self}
  # end

  # def discharge_patient(patient_instance)
  #   if patient_instance.doctor == self 
  #     patient_instance.doctor = nil
  #   else
  #     puts "You can only discharge patients who are here to see you!"
  #   end
  # end

  # def transfer_patient(patient_instance, new_doctor)
  #   if patient_instance.doctor == self
  #     patient_instance.doctor = new_doctor
  #   else
  #     puts "You can only transfer a patient who is currently being treated by you!"
  #   end
  # end

  def greet
    puts "Greetings, dear patient! My name is #{self.name}."
  end

  def self.find_by_speciality(speciality)
    self.all.select do |doctor|
      doctor.speciality == speciality
    end
  end
end


