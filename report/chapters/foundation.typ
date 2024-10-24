#import "../custom.typ": *
#import "../sources/DionInterview.typ"

== Interview Process Overview
The process of gathering information began by contacting KMD to arrange interviews with relevant employees. We were granted access to four individuals across different departments. Before the interviews, our team conducted a brainstorming session to generate as many relevant questions as possible. These questions were then documented and organized into a script.

Next, the team was divided into smaller groups of 2-3 people. Each group was responsible for conducting 1-2 interviews. During these interviews, we diligently recorded the interviewees' responses, ensuring that we captured both their statements and feedback in detail.

After the interview sessions, we regrouped to analyze the collected data. By comparing the responses, we compiled a list of pros and cons related to the current system, along with additional suggestions and feature requests made by the interviewees.

== Feature Requests and Potential Problems 
This chapther defines both the potential problems that KMD have with their current solution, and the features required in the new one. #todo[add a table of feature requests specifically requested by people that have been interviewed. (niche requests - to further on get a in depth analysis and thereby a greater defined design, with greater begrundelse) -Si]
The different finds in this chapter was aquired through interviews with three company employees, their lead developer, Mats Lindberg, 
their project portfolio manager, Caroline Ramsdal and their manager of modern workplace, Dion Andersen, respectivley. 

Transcriptions of said interviews can be found in @InterviewLinda, @InterviewDion,  @InterviewMats and @InterviewCaroline


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
The PACT analysis is a framework used to understand and design systems with a focus on four key areas: People, Activities, Context, and Technology. This approach ensures that the system being developed takes into consideration the users (People), what they need to do (Activities), the environments where the system will be used (Context), and the tools or platforms (Technology) required to make the system work effectively.

By analyzing these four elements, a PACT analysis helps in designing systems that are user-centered, context-aware, and equipped with the right technology, ultimately enhancing the user experience and ensuring the system meets the needs of its intended audience @DEBBook. 


=== People
The users comprise all employees of KMD. This includes employees of various roles, such as software developers, financial analysts, human relations, administrative staff, and employees of different nationalities, mainly Danish and Polish. 

These users need to be able to intuitively record their vacation days, in a simple system. 
Furthermore they need to be able to compose teams of employees from different departments, for cross-department projects.
At last, they need to be able to manually register vacation, since they sometimes do not have accrued enough vacation days
in their SAP SucessFactors system.

These users also have varying levels of technical proficiency. Therefore the systems interface must be intuitive for both technical and non-technical staff.

=== Activities
The primary activities of the system, will that of recording vacations days accompanied by the vacation reason
and being able to compose teams consisting of employees from different departments.

Users will firstly log in with their company supplied Microsoft account, whereafter they can either register vaction, select a team to see their vacation days, or record new vacation days.

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
The FACTOR model has been applied to the absence calendar system to ensure a comprehensive analysis of the key components and requirements needed for successful implementation. The FACTOR model provides a structured approach to identifying the system’s functionality, the domain in which it operates, the conditions of development, the technologies involved, the objects that are central to the system, and the overall responsibilities @SUBook. By using this model, we aim to clearly define how our system will function within the organizational context of KMD. It is important to note that the T in Factor differs from the T in the PACT model. The T in the FACTOR model is the technologies used to develop the system aswell as the technology that the system will run on @SUBook, where the T in PACT can be broken down into four categories, Input, Output, Communcation and Content @DEBBook.


=== F - (Functionality)
The system will be used by employees to register absence and view absence for themselves and their teams. In addition to this basic functionality, employees must be able to specify the type of absence, such as vacation, sick leave, or other reasons, as well as indicate the duration of the absence. The system will also allow employees to create, modify, and delete teams, enabling efficient organization of team members according to department or project requirements. Team members can view each other's absence schedules to help avoid overlapping leave periods and ensure optimal staffing levels.

=== A - (Application domain)
The application falls under the domain of human resource management, specifically focusing on absence tracking and planning within an organization. It is designed to facilitate self-service absence management for employees while also providing oversight capabilities for managers. It supports both individual users who wish to manage their absences and managers who need to monitor the availability of their teams.

=== C - (Conditions)
The system is being developed by a team of bachelor software students in cooperation with KMD employees, who provide the necessary knowledge and information regarding company-specific requirements.

Additionally, the system must be versatile enough to accommodate users with varying levels of IT experience. It will be accessible from a variety of devices, including desktops, tablets, and mobile phones, allowing users to engage with the system in the most convenient manner possible.

=== T - (Technology)
The system will be developed as a web application, with a client-side interface that runs on each user's device and communicates with a server, over a wireless private network. The server will host the system's logic and maintain the database. The backend application will utilize a RESTful API, implemented in Java using the popular framework "spring boot", while the frontend will be developed using frameworks like React to ensure a responsive and user-friendly interface. Data concerning employees, absences, and teams will be managed through a relational database named PostgreSQL.

=== O - (Objects)
The objects within the system are Teams, Employees, Absence periods and Team members. 

=== R - (Responsibility)
The system is intended to ensure transparency in absence management across the organization. It provides a clear view of team members' absence schedules, helping to prevent scheduling conflicts and enabling better planning for upcoming work periods. The system has to be able to integrate with KMD's current SAP system. communcation between SAP and the system should go both ways, so the SAP data should be able to be imported to the system and vice versa.

== System Definition

The KMD Vacation Planner is a software solution that allows KMD employees to efficiently 
manage and track absences and vacations. It imports absence and vacation data from SAP SuccessFactors 
and displays it in the vacation planner. The system also enables users to manually register absences 
or vacations without requiring management approval. Teams can be created across different departments, 
facilitating cross-department collaboration. The system is accessible through authentication via 
Microsoft Entra ID and is built using Java Spring Boot for the backend and React/TypeScript 
for the frontend, with PostgreSQL used for data persistence. The system also accommodates 
cultural differences, particularly between Danish and Polish employees, by supporting 
Polish and Danish holidays.

== Requirements

== Functional and Non-Functional Requirements 
This section describes what the system should do, organized around specific functionalities, and provides a description of the essential functions and behaviors required @functionalRequirementsJama.
The first User Management as each employee should already be registered in the system due to the integration that we will implement with KMD's internal system. That means that each employee can already access their own calendar and make teams from the get-go, they do not need to register. This also makes sure that every employee has access to their personal calendar and its functionalities as soon as they go on the application #todo("interview som source"). Next is Vacation & Sick Day Management where users submit time off by selecting the date and type of vacation that depends on whether the employee is danish or polish. Users should also be able to modify or cancel these inserts. Another requirement is Team Creation and Management within the calendar. A user can create a team by adding a group of employees they want as team members, where the creator automatically is assigned as the team administrator. This team allows all team members to view one another’s calendars in one—even if they belong to different departments. If a team creator no longer wants to hold the administrator role, they can transfer it to another team member. Additionally, employees can belong to multiple teams at the same time, so it is not limited to one team per employee for flexibility and management for those involved in more projects. Lastly, a requirement is that the count of vacation days should be visible for the employee so that they have an overview of how many days they are allowed to take off. This is where the loan comes in to play, as an employee might borrow vacation days that they will save up at a later time to pay be able to off eventually  @InterviewDion .
The system must also meet specific Non-Functional Requirements that describe its operational qualities, so this is an explanation of the quality attributes or performance criteria the system must meet @functionalRequirementsJama. Reliability is a primary consideration; the vacation system should handle several inputs without slowing down. This is especially important during peak times like holiday seasons. Response times for submitting requests should ideally remain under 2 seconds. Scalability is also important to accommodate future growth so this is also a requirement @Erb2012. The application should be able to support more users, teams, and departments as the company expands or changes. 