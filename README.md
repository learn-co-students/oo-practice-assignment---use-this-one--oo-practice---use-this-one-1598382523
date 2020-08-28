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

Associations:

<!-- A Patient should belong to a Doctor -->

A Doctor can have many 
Patients

Patient

<!-- Patient#doctor should return the Doctor instance for this patient -->

<!-- Patient#change_doctors should take a doctor instance and update the patient’s doctor -->

Doctor

<!-- Doctor#patients should return an array of all the Patients for that doctor -->

<!-- Doctor#discharge_patient should set a patient’s doctor to nil, only if the patient belongs to the current doctor -->

Doctor#transfer_patient should change a patient’s doctor to another doctor. This should only work if the patient belongs to the current doctor.


Submit your code: git instructions :code:
git add .
git commit -m "describe what you did"
git push 
After you git push, you may see more specific commands in your terminal. Use those!

## General Feedback
- Nearly all correct! Your handling of the one to many association is good so far. 
- One thing to improve is your creation of instance methods versus class methods. See `Doctor.find_by_specialty`. 
- Also make sure you're taking notes on the enumerators you have access to so you can choose the one best suited to the behavior you're creating
- Make sure that you're making enough instances to really test with in your run.rb. 
- Also go ahead and move that testing code over to console.rb (you'll have to make this file) and then use run.rb to start a CLI. 