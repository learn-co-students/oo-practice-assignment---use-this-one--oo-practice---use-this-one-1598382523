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
- Your file structure does not match! Please correct it so that your files are as follows:
    - `app/models/patient.rb`
    - `app/models/doctor.rb`
    - So there will be an `app` directory inside of the project directory, a `models` directory inside of the `app` directory and the files inside of the `models` folder. 
- The run methods you've created in patient.rb and doctor.rb are the beginnings of a CLI. Those should live in your run.rb file; not inside of the Doctor and Patient classes
- Work on your code style; readability will help you read your own code and write more successful code without a lot of debugging. 
- Ensure you're thinking critically about what information you have access to and what type it is; see notes in Doctor#discharge_patient
- You do have a lot of the code there for the first type of association, one-to-many, but due to the errors it seems like you may be pattern matching. Work back through the labs and even do OO Practice Part III again and try to be clear about *why* you are writing each piece of code. 