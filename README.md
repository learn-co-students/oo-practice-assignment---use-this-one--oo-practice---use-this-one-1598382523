# nyc-web-082420-oo-practice

## Set Up
- *Do not fork this repo*
- Clone down the repo
- On your local machine, in terminal, run `git checkout -b firstNamelastInitial`
- Run `git branch` and make sure your name is the one highlighted instead of master
- Make the changes to your code for the deliverables
- Follow your git process
    - `git add .` to add all changes
    - `git commit -m "helpful message"`
    - `git push` which may give you a message including a more specific command to run; if it does, run that command. 

Practice Deliverables :mailbox:
Project Structure
Ensure that your files and folders are structured correctly: app/models/patient.rb and app/models/doctor.rb
Patient
Patient#initialize: should initialize with a name (string) and age (integer)
Patient#name: should return the Patient’s name and should be able to change its name after creation
Patient#age: should return the Patient’s age and should be able to change its age after creation
Doctor
Doctor#initialize: should initialize with a name (string), specialty (string), and years (integer). Years should default to 1
Doctor#name: should return the Doctor’s name and should be able to change its name after creation
Doctor#speciality: should return the Doctor’s speciality and should NOT be able to change its speciality after creation
Doctor#years: should return the Doctor’s years and should be able to change its years after creation
:code: Submit your code: git instructions :code:
git add .
git commit -m "describe what you did"
git push 
After you git push, you may see more specific commands in your terminal. Use those! (edited) 


Associations:
A Patient should belong to a Doctor
A Doctor can have many Patients
Patient
Patient#doctor should return the Doctor instance for this patient
Patient#change_doctors should take a doctor instance and update the patient’s doctor
Doctor
Doctor#patients should return an array of all the Patients for that doctor
Doctor#discharge_patient should set a patient’s doctor to nil, only if the patient belongs to the current doctor
Doctor#transfer_patient should change a patient’s doctor to another doctor. This should only work if the patient belongs to the current doctor.


## General Feedback
- Much better handling of instance vs class variables and methods than last round!
- Once we get pry set up, spend a lot of time focusing on setting up the associations. I made lots of notes in your files about how the belongs_to should hold the reference to the class that it belongs to (in this case Patient is the belongs_to and it holds the reference to a Doctor instance)
