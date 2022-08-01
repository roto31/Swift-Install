# Swift-Install

<img width="826" alt="Screen Shot 2022-07-31 at 8 45 13 PM" src="https://user-images.githubusercontent.com/47955141/182061169-84aa76da-aa5e-4d81-abe3-8c9376925020.png">


swiftDialog and Installomater based workflow to install applications.

I currently use JumpCloud MDM to manage the Macs I have in my house. JumpCloud does not have a Self-Service option to install applications and all applications need to be pushed via the MDM. But what if you or one of your users, if you are in an org, want to install an approved application, you cannot. 

This application is meant to be a self-contained Automater based application and aimed at users who wish to use the Installomater script (or other application script repositories) to install applications. I used this [link](https://technology.siprep.org/running-sudo-commands-in-automator/) to build the Automater app. For the scripts function to run properly they need to be run with Administrator permisisons. 

The main requirements are [swiftDialog](https://github.com/bartreardon/swiftDialog) which is what presents the dialog window and drop down selection and the [Installomater](https://github.com/Installomator/Installomator) script. This can be installed as a local install via the package or pushed from your MDM - JumpCloud in my case. 

Wiki [Here](https://github.com/roto31/Swift-Install/wiki)
