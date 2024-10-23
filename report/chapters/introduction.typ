#import "../custom.typ": *
#import "../sources/LindaInterview.typ": *

= Introduction
The project is being carried out in collaboration with KMD, a company located in Aalborg that develops IT solutions to meet the evolving digital needs of modern societies. 

The process of finding a collaborative company began by searching through the company guidebook “Peiling”, which was delivered by attending a student job fair. After finding a few interesting companies, emails were sent to arrange meetings. During the initial meeting with KMD, they expressed significant interest in the collaboration and want to provide as many resources as possible, such as providing interview participants and access to a hosting server. However, a restraint given is that it must cost 0 DKK. Their enthusiasm gave motivation and a desire to collaborate with them. 

The aim of this project is to develop a functional application that prioritizes user experience and meets the client’s needs. The primary requirement for this system is to develop a vacation planner to track non-working days for the company’s employees. KMD already has a vacation planner, but since it is outdated, they want to replace it with an improved version. 

== Current System at KMD: KMDFerieplan
KMDFerieplan is a web-based application used by KMD for tracking employee vacation and absences. It is built in C\# using Microsoft SQL Server. To handle data from SAP, it was pulled directly from the SAP SQL database. The system allows employees to manually enter vacation requests by selecting specific dates and times.

Team organization is a core aspect of the vacation planner. Each employee within a team is assigned a unique color to distinguish individual vacation periods in the calendar layout. This has provided an overview of team availability that helped leaders plan projects and manage resources cross departments. 

KMDFerieplan was developed over a decade ago. The system originally included automatic syncronization with SAP, but this feature was lost after KMD updated to SAP S/4HANA. As seen in @kmdscreenshot1, the user interface is quite outdated, not matching the current brand identity of KMD. Furthermore many clicks are needed for performing actions, which decreases usability.

#figure(image("../assets/kmdferieplan1.png"), caption: [Screenshot 1 of KMDFerieplan]) <kmdscreenshot1>
#figure(image("../assets/kmdferieplan2.png"), caption: [Screenshot 2 of KMDFerieplan]) <kmdscreenshot2>
#figure(image("../assets/kmdferieplan3.png"), caption: [Screenshot 3 of KMDFerieplan]) <kmdscreenshot3>

== What SAP Is and Its Use at KMD
KMD uses SAP as their economic resource planning (ERP) solution, serving as the backbone for managing financial transactions and other key operational processes. At KMD, SAP SuccessFactors, is used for managing employees vacations, payroll, and overall human resource needs.

SAP SuccessFactors plays a significant role in the interaction between employee data and vacation management, as Linda said in @InterviewLinda, SAP serves as the ground truth for all vacation planning. Here employees request vacation in SAP Successfactors, where it can the be approved by their manager. This system also keeps tracks of each employees balance of vacation days. 

== KMD Pre-Meeting Insights: Current System Challenges
Valuable context for understanding KMDFerieplan’s limitations for solution planning was provided during the initial meeting with KMD representatives Dion and Mats. It was noted that KMDFerieplan was developed over a decade ago, and that while it initially included functionalities such as automatic synchronization with the earlier SAP version, this integration was lost after KMD upgraded to SAP S/4HANA. Dion also emphasized the system’s challenges, describing its design and interface as outdated and not user-friendly. They emphasized the need for a solution that tackles these issues by providing a more intuitive user experience and that it is compatible with KMD’s newer SAP environment. 

== Holiday Rules
// TODO: Det kan måske virke som almen viden, men jeg synes at der skal være et afsnit om ferieregler generelt, og hvordan KMD tolker dem. - Asger
