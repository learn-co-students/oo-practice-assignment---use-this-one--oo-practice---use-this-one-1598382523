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
- Based on your updates the areas I want you to focus on are...
    - class methods vs instance methods and how to define those
    - high level how the one-to-many/ has_many, belongs_to relationship works. Which class holds the reference? How do you write the initialize and attrs to store that information and be able to access it?
- Make sure you're testing outside of the class files. Instead create a console.rb file, require in your class files so you have access to Doctor and Patient, and create instances to test with inside of pry. 