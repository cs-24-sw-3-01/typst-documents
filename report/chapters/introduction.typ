#import "../custom.typ": *

= Introduction
The project is being carried out in collaboration with KMD, a company located in Aalborg that develops IT solutions to meet the evolving digital needs of modern societies. 

The process of finding a collaborative company began by searching through the company guidebook “Peiling”, which was delivered by attending a student job fair. After finding a few interesting companies, emails were sent to arrange meetings. During the initial meeting with KMD, they expressed significant interest in the collaboration and want to provide as many resources as possible, such as providing interview participants and access to a hosting server. However, a restraint given is that it must cost 0 DKK. Their enthusiasm gave motivation and a desire to collaborate with them. 

The aim of this project is to develop a functional application that prioritizes user experience and meets the client’s needs. The primary requirement for this system is to develop a vacation planner to track non-working days for the company’s employees. KMD already has a vacation planner, but since it is outdated, they want to replace it with an improved version. 

== Current System at KMD: KMDFerieplan
KMDFerieplan is a web-based application used by KMD for tracking employee vacation and absences. It is built on a Microsoft backend and connects with SAP SuccessFactors for managing vacation codes. The system allows employees to manually enter vacation requests by selecting specific dates and times.
Team organization is a core aspect of the vacation planner. Each employee within a team is assigned a unique color to distinguish individual vacation periods in the calendar layout. This has provided an overview of team availability that helped leaders plan projects and manage resources cross departments. 

#todo[Vi bør tilføje screenshots at det nuværende system og skrive mere om det. - Marc (Asger note)]

== What SAP Is and Its Use at KMD
#todo[Vi skal have skrevet en sektion omkring rollefordelingen mellem SAP og KMD, a.k.a. en detaljeret beskrivelse af SAP og hvordan det bruges. - Marc (Asger note)]

== KMD Pre-Meeting Insights: Current System Challenges
During the initial meeting with KMD representatives Dion and Mats, valuable context for understanding KMDFerieplan’s limitations for solution planning was provided. It was noted that KMDFerieplan was developed over a decade ago, and that while it initially included functionalities such as automatic synchronization with the Microsoft Office Calendar, this integration was lost after KMD upgraded to SAP S/4HANA. Dion also emphasized the system’s challenges, describing its design and interface as outdated and not user-friendly. 
They emphasized the need for a solution that tackles these issues by providing a more intuitive user experience and that it is compatible with KMD’s newer SAP environment. 

== Holiday Rules
#todo(position: right)[Det kan måske virke som almen viden, men jeg synes at der skal være et afsnit om ferieregler generelt, og hvordan KMD tolker dem. - Asger]