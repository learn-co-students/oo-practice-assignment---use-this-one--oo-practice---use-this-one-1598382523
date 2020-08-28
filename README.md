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


Practice Deliverables - 3

Associations:
    A Patient should belong to a Doctor ---DONE
    A Doctor can have many Patients ---DONE
Patient
    Patient#doctor should return the Doctor instance for this patient ---Handled by the attr_accessor
    Patient#change_doctors should take a doctor instance and update the patient’s doctor ---DONE
Doctor
    Doctor#patients should return an array of all the Patients for that doctor ---DONE

    Doctor#discharge_patient should set a patient’s doctor to nil, only if the patient belongs to the current doctor ---DONE

    Doctor#transfer_patient should change a patient’s doctor to another doctor. This should only work if the patient belongs to the current doctor. ---DONE


## General Feedback
- You've got a solid foundation with classes & instances and the one-to-many association!
- Keep up the good work, and level up the work. Think of your own methods to write, build a CLI in `run.rb`, etc.