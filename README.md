# Project Structure
  - Ensure that your files and folders are structured correctly: app/models/patient.rb and app/models/doctor.rb

### Patient
  - Patient#initialize: should initialize with a name (string) and age (integer)
  - Patient#name: should return the Patient’s name and should be able to change its name after creation
  - Patient#age: should return the Patient’s age and should be able to change its age after creation
### Doctor
  - Doctor#initialize: should initialize with a name (string), specialty (string), and years (integer). Years should default to 1
  - Doctor#name: should return the Doctor’s name and should be able to change its name after creation
  - Doctor#speciality: should return the Doctor’s speciality and should NOT be able to change its speciality after creation
  - Doctor#years: should return the Doctor’s years and should be able to change its years after creations

# Practice Deliverables
### Patient
  -Patients should be initialized with an instance variable, impatience, set to 0
  -Patient#increase_impatience: should be a private method that increases impatience by 1
  -Patient#inquire_appt_ready: should print that the doctor will be ready soon and increase patient impatience by 1
  -Patient.all: should return a list of all patient instances
### Doctor
  -Doctor.all: should return a list of all doctor instances
  -Doctor#greet: should print a greeting that would make any patient feel welcomed!
  -Doctor.find_by_speciality: should take a specialty string as an argument and return a list of the doctors who have that specialty
## Associations:
  -A Patient should belong to a Doctor
  -A Doctor can have many Patients
### Patient
  - Patient#doctor should return the Doctor instance for -this patient
  - Patient#change_doctors should take a doctor instance and update the patient’s doctor
  ### Doctor
  - Doctor#patients should return an array of all the Patients for that doctor
  - Doctor#discharge_patient should set a patient’s doctor to nil, only if the patient belongs to the current doctor
  - Doctor#transfer_patient should change a patient’s doctor to another doctor. This should only work if the patient belongs to the current doctor.


## General Feedback
- Overall really good handle of what we have covered so far including the one-to-many association!
- A few small comments about using instances instead of some attribute (like name). This was hopefully also clarified by the OO Banking pairing lab. LMK if you still have questions though!
- Since you've got a good handle on what we've covered so far, start testing more. See the notes in `run.rb` and also think of your own methods that you want to create to continue pushing yourself! 