class Doctor

  attr_accessor :name, :years
  attr_reader :speciality
  @@all = []
  @@patients =[] # CARYN SAYS: Remember SSOT! There won't be an array of Patients that lives here! We will always reference Patient.all

  def initialize(name, speciality, years=1)
    @name = name
    @speciality = speciality
    @years = years
    @@all << self
  end

  def self.all
    @@all
  end

  def self.patients # CARYN SAYS: this method should be an instance method a la doctor_bob.patients and not Doctor.patients
    # CARYN SAYS:  so it should be defined as def patients
    # CARYN SAYS:  then in here you're spot on, you'll filter over Patient.all and find all patients where patient.doctor == self 
    # CARYN SAYS:  cause once this is an instance method, self will be the instance instead of the whole class
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
    # CARYN SAYS: good!
    self.all.select {|doc| doc.speciality == speciality}
  end

  def add_patient(patient)
    # CARYN SAYS: see note where you created @@patients above 
    @@patients << patient
  end

  def discharge_patient
    # CARYN SAYS: this should only discharge one patient instance, which we can accept as a method parameter
    #need a loop here
    if patient.doctor = self
      patient.doctor = nil
    end
  end

  def transfer_patient(doctor)
    # need a loop here
    # CARYN SAYS: same comment here as for discharge patient :) 
    if patient.doctor = self
      patient.doctor = doctor
    end
  end


end
