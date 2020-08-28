
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
      puts "Welcome, My name is #{self.name} and how are you today?" # CARYN SAYS: fixed a typoe here 'ame' instead of 'name'
    end

    def self.find_by_speciality(speciality)
        # CARYN SAYS: good! 
      self.all.filter { |doctor| doctor.speciality == speciality}
    end

    def patients
        # CARYN SAYS: good! 
      Patient.all.find_all { |patient| patient.doctor = self}
    end

    def discharge_patient(name)
        # CARYN SAYS: instead of name, have this method take in a patient_instance. How does that change your code? 
      self.patients.each { |patient| patient.doctor = nil  if patient.name == name}
    end

    def transfer_patient(patient_name,new_doctor)
        # CARYN SAYS: same as above; take in a patient_instance instead of name the same way this expects a doctor instance
      self.patients.each { |patient| patient.doctor = new_doctor if patient.name == patient_name}
      # CARYN SAYS: once you update this, then think about handling the else case and giving the user feedback for both discharge and transfer patient 
    end
end

