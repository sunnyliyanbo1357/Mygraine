MyGraine

Yanbo Li
Mark Liber
Nathan Young

1. Introduction

Mobile interventions for chronic disease treatment are becoming increasingly common today. While many of the health apps and “smart” health monitoring devices available now are meant for management of obesity and diabetes, there is tremendous potential for mobile technology to be used in the care of other chronic conditions. 

In our project, we applied this idea to one underserved medical condition, migraine headaches, and develop a novel intervention for its treatment and research. Currently, migraines can be treated with medications or with lifestyle counseling; there are many environmental agents that have been linked to onset of symptoms and identifying and avoiding triggers becomes part of migraine suffers’ treatment plan. Discovering triggers is typically done by keeping a headache diary and sharing it with a physician. There are several interactive smartphone apps that have been developed for this purpose, but these apps are limited in their utility because they require a large amount of user data input. This often negatively impacts patient adherence to these apps, and the resulting lack of data limits the ways physicians can help. In addition, existing apps do a poor job in providing user-friendly visualizations of collected data.
 
These are the problems we are trying to solve. We developed a software that allows patients to very easily record their migraine episodes and seamlessly share data about them with their physician. MyGraine consists of a HealthKit-enabled Apple Watch and iOS app, and a website for data visualization. MyGraine allows more data to be collected by patients more easily, and have better visualizations than any other migraine apps. This will enable data to actually become useful for neurologists and primary care physicians in formulating treatment plans and minimizing symptoms. We hope that by facilitating collection, visualization, and sharing of this data, migraine sufferers will be able to better manage their disease. If successful, MyGraine could have a large impact on those who suffer from migraines as well as the healthcare providers who treat them.

2. Related literature / market research (with citations)

The economic burden of migraines is a key challenge to its treatment and smartwatches can offer good solutions. Due to the proliferation smartwatches, and the fact that many people cannot leave home without them, their potential role in medicine continues to become more evident [1]. Watch applications can change healthcare because of its high reach and low-cost solutions, especially for chronic conditions such as migraines.

One meta-analysis reviewed several trials and reported overall modest evidence that wellness trackers had a positive impact on self-management and outcomes in conditions such as diabetes, asthma, and hypertension [2]. A pilot study demonstrated increased healthy behaviors and improved diabetes self-efficacy and medication adherence in a population of low income and bilingual individuals with diabetes. However, there is no literature on using a smartwatch or other tracking devices for migraines.

As smartwatch technologies evolve, it is expected that they will provide an overarching infrastructure to support self-management, health monitoring, self-directed learning, and interactive patient-clinician communications [3]. Recent advances in mHealth (mobile health) provide unprecedented opportunities for developing innovative health services and interventions that take advantage of the novel characteristics of mobile technologies.

Interventions delivered through mobile devices and smartwatches have five key properties:
Interactivity: the ability of the technology to exhibit a bidirectional mode of communication, can provide a “personal coach” type environment to delivering care.
Personalization: the ability of the technology to provide an intervention that is customized to an individual’s own unique needs, may open new opportunities for learning and skill development.
Timeliness: the ability of the technology to assess and deliver an intervention at the right time, focusing on relevant, targeted, and timely information, may allow the intervention to occur when it is most likely to have the most beneficial effect.
Context sensitivity: the ability of the technology to shape the intervention based on a unique circumstance or the individual’s environment.
Ubiquity and accessibility: the availability and familiarity of the technology to all segments of populations and geographic areas, including underserved populations.

3. Design methods

Since conceiving the idea for MyGraine, we have gained knowledge through various means that have directed its design and development process. First, we completed a review of the literature and of current migraine apps on the Apple App Store. The purpose of this was to obtain general information about migraine as a condition, and to become familiar with what technological interventions for migraine (if any) were on the market. This knowledge served to narrow our project focus; we discovered how MyGraine could fit into the app environment, and how it could be both unique and successful.
 
To design the MyGraine app and its associated visualizations, we primarily used the HCI methods of task-driven walk-throughs and interviewing. To test our Apple Watch app on users, a convenience sample of five Cornell Tech and Weill Cornell students was taken. The app was loaded on a developer’s Apple Watch, and the subject was asked to put it on and record a migraine episode. No explanation of how to do this was given. We watched users navigate the app, recorded any inefficiencies that arose, and then asked for and recorded general comments the users had for app improvement. Figure 1 shows a panel of screenshots taken of the original app prototype.


Figure 1: Panel of screenshots of Version 1 of the MyGraine Apple Watch app.
 
Comments taken from interviews with the five users were then incorporated into a second iteration of the app, which is the current version. This version was demoed at Cornell Tech on May 5, 2016. Figure 2 shows a panel of screenshots from this iteration.
 
 
 
Figure 2: Panel of screenshots of Version 2 of the MyGraine Apple Watch app.
 
After users tested the Watch app, we then showed users samples of our data visualization graphics and asked them to make an interpretation of the data. This visualization was composed of the Apple Watch data of one of our developers. Whether users were able to successfully make one conclusion from the visualization was recorded, as were general comments on how the visualization could be improved. Currently, only one version of this visualization exists. In the future, we plan to incorporate user comments and create a second iteration (see Section 7, Future Work, below). A limitation of our user testing was that we took a convenience sample from a population of young, technologically savvy students. Future HCI testing on MyGraine will be done on a diverse population of migraine patients, ideally recruited from a neurology clinic. More information on this is described in Section 7.

 


Figure 3: Version 1 of the MyGraine user data visualization.
 
Development of the physician visualization for our system was done in parallel with app development, and was aided by the HCI method of interviewing. Two Weill Cornell neurologists were consulted in the development of the My ‘Graine Report, but they played different roles in the process. The first was interviewed by a member of our team and asked open-ended questions about the the most important data he gathers from patients during follow up appointments for migraine. He was asked to conceive useful ways in which this data could be visually presented, and asked to explain his thought process. Information gathered in this interview was harnessed to develop Version 1 of the My ‘Graine Report (Figure 4).
 

Figure 4: Version 1 of My ‘Graine Report
 
A second Weill Cornell neurologist, Dr. Joseph Safdieh, was then interviewed to evaluate the first version of the My ‘Graine Report. At the beginning of the interview, our project was explained and general questions about MyGraine were answered by a member of the development team. The same questions that were asked to the first neurologists were asked, but after his ideas were recorded, he was presented with Version 1 of our visualization. No information was provided to the subject other than the paper prototype placed in front of him. Since it is important that any visualization be able to speak for itself, we remained silent while the neurologist viewed the prototype and made comments for its utility in its current form. Ideas for its improvement were recorded, and were incorporated into Version 2 of the My ‘Graine Report (Figure 5).
 

Figure 5: Version 2 of the My ‘Graine Report
 
After Version 2 was developed, the interview process with the second neurologist was repeated several times. At the start of each interview, a version of the paper prototype was placed in front of the physician with no additional explanation given. His thoughts about the report were recorded, as were ideas for improvement. After each interview, these thoughts were incorporated into the next iteration. In total, 3 separate interviews with the neurologist were conducted. Figure 6 shows multiple views of the current version.
 
A
B
 
Figure 6: Version 3 of the My ‘Graine Report. (A) 1-Month Full View. This screen shows every day of the month, with data points indicating migraine episodes. (B) 3-Month Condensed View. This screen shows only days with migraines over a three-month period.

4. Findings / results from design phase

The different parts of our research process yielded a large amount of qualitative data. During the initial discovery process, medical literature and App Store reviews were analyzed using Grounded Theory. We learned that among the common environmental triggers for migraines are lack of sleep, stress, weather patterns, menstrual status, and consumption of certain foods or drinks. This information has made it clear to us the types of data that need to be either passively or actively collected by MyGraine for users to have a full picture of their migraine episodes. From our review of App Store apps, we learned what apps currently exist, their functions, and their limitations. Two apps, Migraine Buddy and Migraine Coach, are highly rated, visually appealing, and funded by non-profit organizations. They collect a wide variety of data, but they can be an inconvenience to users because they require long questionnaires to be answered about each migraine episode. High levels of user data input increased the workload of users who wish to use them, and over time, this will pose a problem for adherence. Data visualization on these apps is also poor. In other words, a user (or a physician that the user is showing their data to) may not be able to see all the relevant data simply and concisely. Assuming that the user has been diligent in responding to the questionnaires, there is a lot of data present, but it is not clearly presented. The literature review and App Store review taught us much about what we need to do to make our product useful to users and give it a potential edge in the market.
 
Qualitative data was also generated from physician interviews. Ideas that arose during our conversations with medical experts were coded and thematically combined in order to gain insight as to how our prototypes could be initially designed, and later improved upon. From the first neurologist interview, we learned what data is most valued by physicians when assessing patients’ disease management and treatment plans. According to him, the most important things for doctors to know is migraine frequency, intensity, which medication was taken, and if it helped them resume normal functioning. Because physicians tend to prefer data viewed in the format of a graph, he suggested we devise a way to display these data graphically. Specifically, he sketched a bar graph for us as a way to get started. 

The My ‘Graine Report first prototype was developed using his thoughts, and then brought to a second neurologist to be further evaluated. Over the course of several meetings, thoughts mentioned by Dr. Safdieh were recorded by the interviewee. After each meeting, ideas for improvement were incorporated into the next version of the prototype, which was then presented at the following week’s interview. Most of the changes proposed in the early version of the prototype were enabling the report to have several views. The thinking behind this was that sometimes physicians wished to see only migraine days to identify certain trends, but sometimes seeing how migraine episodes fit into the entire calendar aids in identifying temporal patterns to migraines. In addition, Dr. Safdieh thought reading the bar graph was difficult because of excessive color saturation and vertical text written on the bars. For this reason, we changed it to a scatter plot and adjusted the size of the data points depending on how many episodes the patient had recorded. We also enabled for users to enter comments pertaining to each episode if they so desired. These comments would be included in the report, should the physician wish to consult them.
 
Our final design was heavily influenced by Dr. Safdieh’s comments, and we believe that by heeding them, we have created a version of the report that most neurologists would find acceptable and useful.  After conducting this iterative design process, we feel we now know what a typical physician seeks in a clinical visualization. We have simplified our design accordingly so as to make only the most important information visible to physicians for ease of access and reference during a patient visit. The report will be formatted for both digital and print viewing, and will have several viewing options as per Dr. Safdieh’s suggestions. Designing a visualization that appeals to clinicians that we hope will use it is key for them to be enthusiastic about MyGraine, to incorporate it into their workflow, and to recommend it to their patients.
 
Qualitative data from user testing sessions consisted of information relating to how well users were able to navigate the app and complete the task required, if they were able to draw a conclusion from the sample visualization, and their opinions with regards to the app and visualization. As was done during the physician interviews, ideas that arose were coded thematically combined in order to ascertain what aspects of the app and visualizations most needed to be improved. Comments made during testing were implemented into the design between interviews. Initial comments surrounded the graphical user interface, namely the “Migraine Start” button and the mechanism for specifying migraine intensity. The color of the text on the button was changed, and the intensity scale was altered from a 1-4 scale to a 1-10 scale to be consistent with how doctors usually ask patients to rate their pain. Generally, the app design was viewed as acceptable to users and greatly improved over current App Store offerings due to its simplicity and minimal manual data input requirements. For this reason, our final MyGraine app looks quite similar to the original prototype we developed.
 
Our user visualization, however, was met with several recommendations for improvement which we will incorporate into later versions. First, users specified a desire for clearer labeling of what the boxes on the matrices meant. Day labels and week labels, as well as scale to define the color gradient will be added. Also, many users expressed an interest in being able to click on individual days and see “what was going on” on any single day. This capability will be built into later versions. Because our aim is to make this visualization useful to users in identifying potential triggers for their migraines, we would like to adapt our design to suit the needs of as many users as possible. While we only currently have one version of the visualization, refining this deliverable will be a main focus of our future plans (see Section 7, Future Work, below).

5. Final deliverables produced
Our final deliverables include an working iOS app with an Apple Watch app, and a website that links to data visualization prototypes for both the patient and the physician. The source code is available on GitHub: https://github.com/sunnyliyanbo1357/Mygraine.git.  

For the iOS app, we developed it in Xcode with a customized table view and map view to visualize the records as timeline. The watch app talks to the iOS app through a data connection library called WatchConnectivity, so that the user can record migraine on the watch without even unlock the iPhone. The database MyGraine uses is called Realm. Each record consist of name, level, time and location information of each object, or patient activity in our case. 

For the data visualization, we used d3js library to create the patient data calendar, and proto.io to create the physician data visualization. Since we don’t have a working data pipeline or backend, the data we used to create the data visualization was the real patient data from healthkit and saved as a csv file, as well as the New York City weather data from National Centers For Environmental Information database.

For the website, we used html and photoshop to design it, and used github page to deploy it online. The link should generate data visualization from the patient data after the patient login, but again, since we don’t have a backend, the link is only redirecting to the visualization page.


6. Evaluation methods

As described above, user testing of MyGraine was done on a small group of five students within our network. This includes people in our HCI class and others from Cornell Tech and Weill Cornell. These people represent a convenience sample that was easy for us to recruit and obtain evaluation data. However, our testing results are subject to bias due to the limited scope of demographics. Since our subjects are primarily technologically savvy graduate students, this may or may not be representative of our actual users.

We collected qualitative data from our participants through task-based user testing. The goal is to have the users mimic the real world as much as possible. After loading the app on a developer’s Apple Watch, we had the subject wear the watch and then record a migraine episode. No explanation was given to the tester. The main observations were watching the user navigate the app, record inefficiencies, and ask for comments that the users had for improving the app. After reviewing our initial user testing data, we modified the app and make improvements for the second iteration.Users were very enthusiastic about the app and feel that using smartwatches for migraines is a great idea. This type of intervention is relatively non-intrusive and users can easily log the frequency and intensity of their migraines without sacrificing much time or lifestyle changes. 

We also collected qualitative data from our physician participants through interviews. Comments at each interview were incorporated into the My ‘Graine Report design, and the following version was discussed during the next interview. After several iterations of this process, we arrived at a version of the visualization that was both accepted by Dr. Safdieh and also hailed as something that could be “extremely useful” to him, and many neurologists, in the clinic. We were encouraged by what we saw throughout the design phase, and have deemed our efforts so far worthwhile and successful. 

In sum, we are excited about our project progress and the future directions we plan to take with MyGraine. We think our system has great potential to be widely adopted by physicians and their patients, and our next steps are directed towards making this a reality.The main take-aways for the future, however, are that we need to test with a larger population in order to better understand the diverse needs of different types of users, and we will need to also conduct physician user testing with the system now that we have developed an accepted prototype. More plans for the future are described in the following section.

7. Future work

After the completion of this course, we plan to continue working on our project. This decision was influenced by Dr. Safdieh’s great excitement in the potential of our system, and his eagerness to be kept up to date on the development process. He expressed an interest in providing us a cohort of patients to test our product on. If favorable results were found, he suggested we consider presenting data at next year’s American Neurological Association conference. This encouragement fueled us during the design process, and we look forward to the possibility of doing this in the future.

In order to get to this stage, however, we have planned several next steps to further improve our final deliverables and to overcome the limitations of our testing process. First, we will incorporate features into MyGraine, its user visualizations, and the My ‘Graine Report  that were suggested by subjects during testing but which we did not have sufficient time to include. Chief among them is the “daily summary” feature, which will be accessed by clicking boxes on the migraine episode visualization matrix. Another focus of our future work is to make the ways physicians access the My ‘Graine Report more multidimensional. We originally planned for the reports to be formatted for users to print them or email them to their physicians, but we think that a backend login system for physicians would be even more useful for them to access specific patients’ data on-the-go.

Second, as mentioned above, our user testing of MyGraine was done on a small group of technologically savvy students. In the future, our product will be tested on larger, more diverse cohorts, possibly patients recruited from Dr. Safdieh’s clinic. Another possible limitation was the fact that we only included two medical experts in the development of the My ‘Graine Report. While we believe Dr. Safdieh represents the general opinions of most physicians in allowing the report to be customizable and as straightforward as possible, future testing will nonetheless included the involvement of a larger number of physicians. 

8. Conclusion

In the U.S., more than 37 million people suffer from migraines, and 2-3 million people suffer from chronic migraine [4]. The proliferation of mobile devices and smartwatches presents a significant opportunity to help those who suffer from migraines as well as the healthcare providers who treat them. Our project introduces a novel intervention in which users track the frequency and intensity of their migraine episodes and share them with their physician. Calendar and physician report visualizations help the physician formulate treatment plans and track the progress (or lack of progress) of their patients. We hope to continue working on our project and see it used in the real world.

9.Team contributions

Yanbo Li: Head of development for the MyGraine app. Primary designer for the calendar visualization for the patient side. Conducted user testing with Cornell Tech students.
Mark Liber: Completed thorough literature review of migraine apps in the App Store. Primary designer for the My ‘Graine Physician Report visualization. He did several interviews with neurologists to better understand the usability of the MyGraine app. Conducted user testing with Weill Cornell students.
Nathan Young: Contributed to literature review for the project. Head of development for the MyGraine website. Conducted user testing with Weill Cornell students.

10. References

Brenner J. Mobile technology fact sheet. 2014; http://www.pewinternet.org/fact-sheets/mobile-technology-fact-sheet/.
Dicianno BE, Parmanto B, Fairman AD, et al. Perspectives on the evolution of mobile (mHealth) technologies and application to rehabilitation. Physical therapy. 2015;95(3):397-405.
Castelnuovo G, Zoppis I, Santoro E, et al. Managing chronic pathologies with a stepped mHealth-based approach in clinical psychology and medicine. Frontiers in psychology. 2015;6.
https://migraine.com/migraine-statistics/
