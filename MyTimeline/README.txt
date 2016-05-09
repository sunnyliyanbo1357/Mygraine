MyTimeline
Yanbo Li (yl2556)
April 12, 2016


This project is based on GoatFinder. MyTimeline can be used to show the user’s daily activities in a timeline. In the tableview, I create a image view in the cell, and made the images corresponding to the activity titles. I also made an Apple Watch App to quickly input a activity to the timeline. All data is stored in Realm. 


In order to test this app:

- In terminal, cd to the app folder, run “pod install”
- open the workspace in Xcode, hit “command+R”. You will see a blank table view.
- If you have a Apple Watch, install it on your phone, and the watch should automatically install the app
- On the Apple Watch, click on “+” or “-” on the slider to see the label changed
- Hit “Migraine Start”, in the console it should print the migraine level, data and time
- The there should be another “migraine” activity on the iPhone timeline.
- Click “+” on the right corner
- In Title, enter “woke up”, “breakfast”, “meeting” respectively, with whatever time you want to put, click “save”
- Go back to MyTimeline, click on either activity to modify or see the detail information
