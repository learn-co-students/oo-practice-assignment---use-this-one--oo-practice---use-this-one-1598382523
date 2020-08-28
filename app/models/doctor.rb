require 'pry'



#$$$$$$$$$$$$$$$$$$
#NOTICE: for OO Part 3 I was not able to get pry to load despite my best efforts. 
#$$$$$$$$$$$$$$$$$$$$$$$$
#$$$$$$$$$$$$$$$$$$$$$$$$

# CARYN SAYS: thanks for the heads up! Can you send me a screenshot of what was going on? If there wasn't an error, it just wasn't hitting binding.pry, try putting anything on the line beneath binding.pry (even just 0 )





class Doctor
    attr_accessor :name # CARYN SAYS: make your attrs one line; attr_accessor :name, :years
    attr_accessor :years
    # CARYN SAYS:  and you're missing an attr_reader methinks

    @@doctors = [] # CARYN SAYS: convention is @@all
    
    def initialize(name, specialty, years)
        @name = name
        @specialty = specialty
        @years = years.to_i

        @@doctors << self
    end

    def greeting(patient)
        puts "Hi #{patient.name}! Thank you for being so patient! Pun very much intended! How are you feeling? What can I do to help?"
    end

    # CARYN SAYS: ahhh you decided to write your own! fine, but shorter to use the attr :) 
    def specialty
        @specialty
    end

    def self.find_by_specialty(specialty)
        # CARYN SAYS: there are better enumerables to use than find for this behavior!
        # CARYN SAYS:  try to remember (or research!) which those are and then update your code
        doctor_with_specialty = []
        
        
        @@doctors.find do |doctor|
            
            if doctor.specialty == specialty
                doctor_with_specialty << doctor.name
            end
            
        end

            print doctor_with_specialty
            
    end



    def self.all
        @@doctors
    end

    def patients
        # CARYN SAYS: you can check more simply. Each patient should have patient.doctor because it holds the reference; so you can just check patient.doctor == self
        Patient.all.select {|patient| patient.has_doctor == self} #Here im trying to select for the patients that this instance of the doctor has out of patients_all and based out of the attr_accessor has_doctor I created.
    end

    def discharge_patient(patient)
        # CARYN SAYS: same thing here; you should just be accessing each patient's doctor aka patient.doctor
        if patient.has_doctor == self
            patient.has_doctor = nil
        end
    end
    
    
    
    
    def transfer_patient
        # CARYN SAYS: same comment as for discharge patient
        # CARYN SAYS:  this method also needs to take the patient as an argument
        # CARYN SAYS:  it can also accept a doctor instance as an argument to simplify your logic below 
        if patient.has_doctor == self
            patient.has_doctor = Doctor.all.find {|doc| doc.specialty != self } #Here Im trying to use the .find enumerable to select the first doctor that does not have the same specialty as the one that self is recording an instance of.
            # CARYN SAYS:  to find the first doctor with a different speciality than the current one you would need to check doc.specialty != self.specialty (not self, which is the whole instance)
        end
    end


    





end








# james = Doctor.new("Dr. Benning", "Neuroseurgeon", "60")

# carl = Doctor.new("Dr.Schraeder", "Physician", "56")

# sandra = Doctor.new("Dr.Kurra", "Pediatrician", "47")





 
#  Doctor.find_by_specialty("Pediatrician")



