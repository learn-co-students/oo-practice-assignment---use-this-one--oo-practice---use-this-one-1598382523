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


## General Feedback
- Generally your handling of the associations was correct; you've got some extra code and some more complex logic due to passing around attributes instead of instances. For example, if discharge_patient receives a patient_name instead of the whole instance, what happens if that doctor has two patients by the same name?
- Overall really good work; please review the comments and lmk if you have any questions.
- You should start building more complex logic and methods on your own. Test your code in `console.rb` and start building a CLI in `run.rb`