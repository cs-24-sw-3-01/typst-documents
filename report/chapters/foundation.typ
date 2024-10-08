#import "../custom.typ": *

== Interview Process Overview
The process of gathering information began by contacting KMD to arrange interviews with relevant employees. We were granted access to four individuals across different departments. Before the interviews, our team conducted a brainstorming session to generate as many relevant questions as possible. These questions were then documented and organized into a script.

Next, the team was divided into smaller groups of 2-3 people. Each group was responsible for conducting 1-2 interviews. During these interviews, we diligently recorded the interviewees' responses, ensuring that we captured both their statements and feedback in detail.

After the interview sessions, we regrouped to analyze the collected data. By comparing the responses, we compiled a list of pros and cons related to the current system, along with additional suggestions and feature requests made by the interviewees.

== Feature Requests and Potential Problems 
This chapther defines both the potential problems that KMD have with their current solution, and the features required in the new one. #todo[add a table of feature requests specifically requested by people that have been interviewed. (niche requests - to further on get a in depth analysis and thereby a greater defined design, with greater begrundelse) -Si]
The different finds in this chapter was aquired through interviews with three company employees, their lead developer, Mats Lindberg, 
their project portfolio manager, Caroline Ramsdal and their manager of modern workplace, Dion Andersen, respectivley. 

//kan ikke huske om dette er relevant 
Transcriptions of said interviews can be found in appendix XYZ #todo[insert relevant apendices]

To find out why KMD needs a new system for managing their holiday calender i was important to find the problems with the current solution.
The interviews revealed problems with synchronizing with their current SAP system.
system but surprisingly most of the problems with the current system is a lack of features due to the system being developed 10 years ago. 
The features that are missing can be seen in @missing-features-table. \
The absence of these features and the synchronizing problems with SAP have led to most of the employees using other programs to plan their holidays with most of the active users being employees that have worked at the company for a longer time. 


#figure(
  table(
    align: center, columns: (auto, auto), inset: 5pt,

    table.header([* Missing feature *],[* Desciption *]), 

      [Holiday balance],[The program has to display the individual employees current available absence days. Prefereably there should be a function to loan absence days from the future which then are regained throughout the year.  ],
      [Lookup specific team],[The current system is missing a way to quickly lookup a specific team in any department, there should be a function to search for the specific team and its members.],
      [Create teams across departments],[Too fully utilize the teams the company should be able to create teams with members across different departments.],
      [Viewable Holidays],[When looking up other teams, the user should be able to see what days the members of said team are absent.],
      [Toggleable UI],[The user should be able to switch between different calendar types, e.g. weekly, monthly, yearly.],
      [synchronizing with SAP],[The new program should be able to synchronize with SAP and vice versa. The program has to use their preset absence codes.],
    
  ), caption: ("Features that are missing in the current holiday planner at KMD.")
) <missing-features-table>



== PACT

=== People
The users comprise all employees of KMD. This includes employees of various roles, such as software developers, financial analysts, human relations, and administrative staff.

These users need to be able to intuitively record their vacation days, in a simple system. 
Furthermore they need to be able to compose teams of employees from different departments, for cross-department projects.
At last, they need to be able to manually register vacation, since they sometimes do not have accrued enough vacation days
in their SAP SucessFactors system.

These users also have varying levels of technical proficiency. Therefore the systems interface must be intuitive for both technical and non-technical staff.

=== Activities
The primary activities of the system, will that of recording vacations days accompanied by the vacation reason
and being able to compose teams consisting of employees from different departments.

Users will firstly log in with their company supplied Microsoft account, whereafter can

either register vaction, select a team to see vacation days for, or record new vacation days.

The system will be engaged with regularly, especically during the peak vacation periods.
Project managers usually check it multiple times a week, to know they status of their team.

=== Context
The vacation planner will be accessible from all locations with internet connectivity, including
at home, the office, or on the go with smartphones. This should happen trough a secure VPN with gives access to te local server.

Furthermore the product will facilitate collaboration among employees of different departments,
allowing them to get a better overview of their teams.

The useres will consist of both Danish and Polish users, which arises some cultural differences, including the specific
holidays of Denmark and Poland, as well as varying approaches to vacation planning, communication styles and workplace expectations.


=== Technologies
The users are currently using a mix of the old vacation planner (the one being rewritten in this project), Outlook Calender, and SAP SuccessFactors. 
They will continue to use Outlook Calender for meetings, and SAP SuccessFactors for primary vacation planning. The vacation planner system will merely be
a way of viewing the vacation registered in SAP SuccessFactors, with the ability to override by manually registering vacations, when not possible in SAP SuccessFactors.
This system is built with C\# and a Microsoft SQL database. \ \

The new system will be built using Java with Spring Boot for the API, and React for the frontend, ensuring the ability to create a modern and responsive webapplication.

For persistence, PostgreSQL will be used to efficiently and reliably store user data.

It needs to integrate with SAP SuccessFactors to be able to show the vacation registered there.
Furthermore it must also integrate with Microsoft Entra Id, to be able to authenticate the users.


== FACTOR
The FACTOR model has been applied to the absence calendar system to ensure a comprehensive analysis of the key components and requirements needed for successful implementation. The FACTOR model provides a structured approach to identifying the system’s functionality, the domain in which it operates, the conditions of development, the technologies involved, the objects that are central to the system, and the overall responsibilities. By using this model, we aim to clearly define how our system will function within the organizational context of KMD.

=== F - (Functionality)
The system will be used by employees to register absence and view absence for themselves and their teams. In addition to this basic functionality, employees must be able to specify the type of absence, such as vacation, sick leave, or other reasons, as well as indicate the duration of the absence. The system will also allow employees to create, modify, and delete teams, enabling efficient organization of team members according to department or project requirements. Team members can view each other's absence schedules to help avoid overlapping leave periods and ensure optimal staffing levels.

=== A - (Application domain)
The application falls under the domain of human resource management, specifically focusing on absence tracking and planning within an organization. It is designed to facilitate self-service absence management for employees while also providing oversight capabilities for managers. It supports both individual users who wish to manage their absences and managers who need to monitor the availability of their teams.

=== C - (Conditions)
The system is being developed by a team of bachelor software students in cooperation with KMD employees, who provide the necessary knowledge and information regarding company-specific requirements.

Additionally, the system must be versatile enough to accommodate users with varying levels of IT experience. It will be accessible from a variety of devices, including desktops, tablets, and mobile phones, allowing users to engage with the system in the most convenient manner possible.

=== T - (Technology)
The system will be developed as a web application, with a client-side interface that runs on each user's device and communicates with a server over a wireless network. The server will host the system's logic and maintain the database. The backend application will utilize a RESTful API, implemented in Java using the popular framework "spring boot", while the frontend will be developed using frameworks like React to ensure a responsive and user-friendly interface. Data concerning employees, absences, and teams will be managed through a relational database named PostgreSQL. #todo[Maybe add that the network that the application runs on is a protected one. - TB]

=== O - (Objects)
The main objects within the system are people, dates, types of absence, and teams. #todo[Der skal tilføjes mere, men er ikke sikker på hvad jeg skal skrive... - Marc]

=== R - (Responsibility)
The system is intended to ensure transparency in absence management across the organization. It provides a clear view of team members' absence schedules, helping to prevent scheduling conflicts and enabling better planning for upcoming work periods.

#todo[Der mangler en tail, men synes ikke at det gav mening at skrive på nuværende tidspunkt. - Marc]

== System Definitions

== Requirements
