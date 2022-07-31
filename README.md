# Swift-Install
Simple Automater based application to install applications

I currently use JumpCloud MDM to manage the Macs I have in my house. JumpCloud does not have a Self-Service option to install applications and all applications need to be pushed via the MDM. But what if you or one of your users, if you are in an org, want to install an approved application, you cannot. 

This application is an Automater based application. It is aimed at users who wish to use the Installomater script (or other application script repositories) to install applications. 

The main requirement is swiftDialog (https://github.com/bartreardon/swiftDialog) which is what presents the dialog window and drop down selection. This can be installed as a local install via the package or pusdhed from your MDM - JumpCloud in this case. 
