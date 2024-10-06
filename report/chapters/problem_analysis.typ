#import "../custom.typ": *

= Problem Analysis

== Potential Problems \& Feature Requests

== PACT

== FACTOR
We have applied the FACTOR model to the absence calendar system to ensure a comprehensive analysis of the key components and requirements needed for successful implementation. The FACTOR model provides a structured approach to identifying the system’s functionality, the domain in which it operates, the conditions of development, the technologies involved, the objects that are central to the system, and the overall responsibilities. By using this model, we aim to clearly define how our system will function within the organizational context of KMD.

=== F - (Functionality)
The system will be used by employees to register absence and view absence for themselves and their teams. In addition to this basic functionality, employees must be able to specify the type of absence, such as vacation, sick leave, or other reasons, as well as indicate the duration of the absence. The system will also allow employees to create, modify, and delete teams, enabling efficient organization of team members according to department or project requirements. Team members can view each other's absence schedules to help avoid overlapping leave periods and ensure optimal staffing levels.

=== A - (Application domain)
The application falls under the domain of human resource management, specifically focusing on absence tracking and planning within an organization. It is designed to facilitate self-service absence management for employees while also providing oversight capabilities for managers. It supports both individual users who wish to manage their absences and managers who need to monitor the availability of their teams.

=== C - (Conditions)
The system is being developed by a team of bachelor software students in cooperation with KMD employees, who provide the necessary knowledge and information regarding company-specific requirements.

Additionally, the system must be versatile enough to accommodate users with varying levels of IT experience. It will be accessible from a variety of devices, including desktops, tablets, and mobile phones, allowing users to engage with the system in the most convenient manner possible.

=== T - (Technology)
The system will be developed as a web application, with a client-side interface that runs on each user's device and communicates with a server over a wireless network. The server will host the system's logic and maintain the database. The backend application will utilize a RESTful API, implemented in Java using the popular framework "spring boot", while the frontend will be developed using frameworks like React to ensure a responsive and user-friendly interface. Data concerning employees, absences, and teams will be managed through a relational database named PostgreSQL.

=== O - (Objects)
The main objects within the system are people, dates, types of absence, and teams. #todo[Der skal tilføjes mere, men er ikke sikker på hvad jeg skal skrive... - Marc]

=== R - (Responsibility)
The system is intended to ensure transparency in absence management across the organization. It provides a clear view of team members' absence schedules, helping to prevent scheduling conflicts and enabling better planning for upcoming work periods.

#todo[Der mangler en tail, men synes ikke at det gav mening at skrive på nuværende tidspunkt. - Marc]

== System Definitions

== Requirements
