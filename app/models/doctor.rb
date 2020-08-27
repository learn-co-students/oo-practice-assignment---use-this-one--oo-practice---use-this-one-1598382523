
class Doctor
    attr_reader :speciality
    attr_accessor :name, :years
    @@all = []
    def initialize(name,speciality,years=1)
      @name = name.to_s
      @speciality = speciality.to_s
      @years = years.to_i
      @@all << self
    end

    def self.all   #Doctor.all
      @@all
    end

    def greet
      puts "Welcome, My name is #{self.ame} and how are you today?"
    end

    def self.find_by_speciality(speciality)
      self.all.filter { |doctor| doctor.speciality == speciality}
    end

    def patients
      Patient.all.find_all { |patient| patient.doctor = self}
    end

    def discharge_patient(name)
      self.patients.each { |patient| patient.doctor = nil  if patient.name == name}
    end

    def transfer_patient(patient_name,new_doctor)
      self.patients.each { |patient| patient.doctor = new_doctor if patient.name == patient_name}
    end
end

