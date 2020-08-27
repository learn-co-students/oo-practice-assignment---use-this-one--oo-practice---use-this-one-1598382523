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

<!-- Associations:
A Patient should belong to a Doctor
A Doctor can have many Patients

Patient
Patient#doctor should return the Doctor instance for this patient
Patient#change_doctors should take a doctor instance and update the patient’s doctor

Doctor
Doctor#patients should return an array of all the Patients for that doctor
Doctor#discharge_patient should set a patient’s doctor to nil, only if the patient belongs to the current doctor
Doctor#transfer_patient should change a patient’s doctor to another doctor. This should only work if the patient belongs to the current doctor. -->
