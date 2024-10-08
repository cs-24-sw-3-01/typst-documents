#import "../custom.typ": *

= Introduction
The project is being carried out in collaboration with KMD, a company located in Aalborg that develops IT solutions to meet the evolving digital needs of modern societies. 

The process of finding a collaborative company began by searching through the company guidebook “Peiling”, which was delivered by attending a student job fair. After finding a few interesting companies, emails were sent to arrange meetings. During the initial meeting with KMD, they expressed significant interest in the collaboration and wants to provide as many resources as possible, such as providing interview participants and access to a hosting server. Their enthusiasm gave motivation and a desire to collaborate with them. 

The aim of this project is to develop a functional application that prioritizes user experience and meets the client’s needs. The primary requirement for this system is to develop a holiday planner to track non-working days for the company’s employees. KMD already has a holiday planner, but since it’s outdated, they want to replace it with an improved version. 

== Current System at KMD
Aside from using Microsoft Outlook Calendar and the calendar integrated within their planning boards, KMD currently have an outdated vacation planning solution called KMDFerieplan. This system, developed approximately 10 years ago, operates on a Microsoft backend and is integrated with SAP SuccessFactors for managing vacation codes. Previously, it could automatically synchronize vacation requests with the calendar, but this functionality is no longer available following KMD's migration to SAP S/4HANA, as the system is incompatible with the updated enterprise resource planning (ERP) platform.

The current product, KMDFerieplan, is accessed through a web application, where employees log vacation requests by specifying start and end dates and times. Scrum masters or leaders are responsible for creating teams in the application, with each employee assigned a distinct color for easy identification in the calendar. Teams are organized through a drop-down menu, where specific employees can be added. However, the drop-down menu can become too long, which presents usability issues. Additionally, only the team creator or owner can make modifications. This can be problematic if an employee leaves the company, because the corresponding team would become static and unable to be modified, since the original owner would no longer be registered in the system.

The system is supported by a database and operates on a Windows Server 2008 R2 environment. Its interface resembles a traditional physical calendar, but all entries must be made manually. Additionally, the system is not compatible with mobile devices, which limits its use primarily to older employees who continue to rely on it, while younger employees avoid it because it is outdated.

Due to its outdated design and limitations, KMDFerieplan no longer meets KMD’s modern requirements. The lack of integration with external calendars, such as Microsoft Office Calendar, has added to KMD’s need for a better and more up-to-date solution. #todo[Vi bør tilføje screenshots at det nuværende system og skrive mere om det. - Marc (Asger note)]

== What SAP Is and Its Use at KMD
#todo[Vi skal have skrevet en sektion omkring rollefordelingen mellem SAP og KMD, a.k.a. en detaljeret beskrivelse af SAP og hvordan det bruges. - Marc (Asger note)]

== Holiday Rules
#todo(position: right)[Det kan måske virke som almen viden, men jeg synes at der skal være et afsnit om ferieregler generelt, og hvordan KMD tolker dem. - Asger]