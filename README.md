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
- You can delete the `app:models` folder now!
- The association as created in `patient.rb` is correct. I saw your notes in `doctor.rb` and make a bunch of notes that should help clarify how we use SSOT from Patient.all to access the associated patients from the doctor instance. 
- I think you're pretty close to a solid understanding of how to implement the one-to-many relationship and with some more practice will get there.
- Speaking of practice... make sure you're testing! Go ahead and make a `console.rb` file to test your methods and use the `run.rb` to start a small CLI to work as well. 