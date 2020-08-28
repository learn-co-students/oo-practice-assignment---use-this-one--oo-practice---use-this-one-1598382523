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
- You've got a good grasp on class and instance methods and variables; your main focus now should be on associations. 
- From your code it seems there may not be clarity on how the reference works. Remember that it is the belongs_to model that holds the reference; since a Patient belongs to a Doctor, the patient will hold the reference to the doctor; it will be initialized with a doctor instance and store it as an instance variable. 
- Use your run.rb or console.rb files to test, especially those relationships and methods. 