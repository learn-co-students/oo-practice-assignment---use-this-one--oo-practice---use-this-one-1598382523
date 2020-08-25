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


Practice Deliverables

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