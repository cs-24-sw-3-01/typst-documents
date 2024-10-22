#import "../custom.typ": *
#import "@preview/tablex:0.0.8": tablex, rowspanx, colspanx
#import table: cell, header

= Problem Domain Analysis
== Rich Picture
To effectively develop the necessary system, it is essential to have a clear understanding of the task that will be encountered by the system. One useful approach is to create a rich picture, which is a visual representation that should help get a better understanding of the task. A rich picture is a diagram using simple symbols and illustrations. The connections between these elements help to provide a detailed and comprehensive overview, covering both the problem and application domains of the system. @SUBook

A rich picture of the absenceplanner for KMD will look like this:

#figure(image("../assets/rich_picture.png"), caption: [Rich Picture of KMD Absenceplanner])

#pagebreak()



== Classes and Events in Software Development
In object-oriented software development, classes and events are two fundamental concepts that help model real-world systems and behaviors. Understanding these concepts is essential for designing a robust and scalable solution, such as the "KMD Absence Planner".

=== Classes
A class is a blueprint for creating objects in a software system. Each class represents an abstraction of a concept or entity in the real world, encapsulating both data (attributes) and behaviors (methods) associated with that concept. Classes allow us to organize and manage the complexity of the system by categorizing related elements and their functionalities.@SUBook

For instance, in the KMD Absence Planner, classes like _Employee_, _Team_, and _Absence_ represent key entities within the system:

- *Employee:* Represents a user of the system with attributes such as _name_, _uid_, _role_, and a list of absences.
- *Team:* Represents a group of employees collaborating together, with attributes such as _teamName_, _teamAdmin_ and a list of team-members.
- *Absence:* Represents a specific period where an employee is unavailable, such as a holiday or sick leave.
Defining classes models how various entities interact within the system, enabling the creation of objects (instances of classes) that represent real-life concepts, such as an individual employee or a specific absence event.

=== Events
An event refers to an occurrence or action that triggers certain behaviors in the system. Events define the dynamic nature of a system, representing interactions between different objects or responses to changes in state. In event-driven systems, events play a crucial role in defining how the system reacts to user inputs. @SUBook

For the "KMD Absence Planner", some examples of events include:

- *Absence Entry:* Triggered when an employee directly logs their absence, such as a sick day or vacation.
- *Absence Update:* Occurs when an employee modifies an existing absence, for example, extending their sick leave.
- *Calendar View Update:* Occurs when the system updates the team calendar to reflect new or modified absences, allowing other team members to see who is unavailable.

Events model the behavior and workflows of the system, enabling the capture of dynamic processes, such as managing absences and updating the team calendar.

=== Relating Classes and Events
Classes and events are closely related in the system. Each class is involved in certain events that define how the class objects interact with each other. For example, the Absence class might be involved in events like "Absence Request" and "Absence Approval"#todo[I know! Der er ikke noget med at approve eller request absence, det er bare for at komme med et eksempel. Har I en bredre ide, så fyr! Men synes personlig selv, at det bør være okay at bruge, da vi først senere i teksten kommer til vores endelige resultat! - Marc]. Defining these relationships helps to improve the understanding of the flow of actions within the system and ensures smooth and efficient functionality.

In summary, classes represent the core building blocks of the system, modeling the static structure, while events represent the dynamic behavior, capturing the flow of actions within the system. Together, they facilitate the design of a software solution that meets the needs of KMD employees for managing absences across teams.

== Identifying and Evaluating Class and Event Candidates

In the development of the KMD Absence Planner, a structured approach was followed to identify the core components of the system. This process involved three major steps: identifying class candidates, identifying event candidates, and systematically evaluating them and their relationships. This approach resulted in a well-defined problem-domain model that aligns with the system’s purpose and functionality.

=== Finding Candidates for Classes
The first step in the process was to identify potential class candidates based on the problem domain of the "KMD Absence Planner". A class in object-oriented modeling represents an abstraction of a real-world entity or concept and is responsible for encapsulating both data and behaviors related to that entity.

To find class candidates, the focus was on the key entities mentioned in the system definition. For example, the Employee class emerged as a natural candidate because employees are the primary users who will interact with the system. Similarly, classes like Absence, Team, and Department were identified as they represent the core components of the system’s structure. Auxiliary class candidates, such as AbsenceType (to categorize absences) and Calendar (to manage the visual overview of absences), were also explored.

At this stage, the process avoided premature judgment, allowing for the exploration of a wide range of possible class candidates. This creative approach ensured that no relevant entities were discarded too soon, which could later prove useful for the system’s design.

=== Finding Candidates for Events
After establishing a comprehensive list of class candidates, the next step was to identify potential event candidates. Events represent actions or occurrences within the system that trigger specific behaviors, such as logging an absence or updating a calendar.

To derive event candidates, the dynamic interactions between the classes were considered. For example, the Absence Entry event is triggered when an employee logs an absence, while the Calendar View Update event occurs when the system updates to reflect new absences. More specific events were also explored, such as Absence Update, Absence Notification, and Team Creation, each representing different system activities.

By identifying these events, a clearer understanding of how the system would operate dynamically began to emerge. Each event was mapped to the relevant classes, ensuring that the system could respond appropriately to user actions and data changes.

=== Systematically Evaluating Classes and Events
#todo[evt. adde en tidligere version? da vi snakker meget om hvordan vi generere idéer og derefter refiner dem, men ikke viser vores arbejde. - Sille]After identifying a broad set of class and event candidates, the final step was to systematically evaluate the relationships between them. This involved critically analyzing the roles of each class and the events they participate in. An event table was used for this purpose, mapping classes to the events they are involved in.

The event table allowed for an evaluation of the cohesion and coupling within the system. For example:

- If a class was involved in too many events, it suggested that the class might have too many responsibilities, indicating low cohesion. In such cases, breaking the class into smaller, more focused entities was considered.
- If an event connected many classes, it indicated high coupling, which could make the system harder to maintain. Such cases were examined closely to ensure that the connections were necessary and not overly complex.
This systematic evaluation helped refine the class and event candidates, ensuring that the system design would be both maintainable and aligned with the core functionality required by KMD employees. The resulting set of well-defined classes and events formed the foundation of the system’s architecture.

=== Final Event Table
After several iterations and refinements, the following event table was developed, capturing the core interactions within the KMD Absence Planner:

#[
#set text(hyphenate: false)
#figure(kind: table, tablex(
    columns: 7,
    inset: 5pt,
    align: horizon,
    stroke: 0.4pt,
    map-cells: cell => {
      
      cell.fill = luma(280)
      if cell.y < 1 {
        cell.content = strong(cell.content)
        cell.fill = (cell.fill).darken(6%)
      } 
      else if cell.content.has("text") {
        if cell.content.text == "y" {
          cell.content = [x]
          cell.fill = green.lighten(75%)
          cell.align = center + horizon
        } else if cell.content.text == "n" {
          cell.content = [ ]
          cell.fill = red.lighten(75%)
          cell.align = center + horizon
        }
      }
      cell.fill = (cell.fill).darken(if calc.odd(cell.y) {0%} else {5%})
      cell
    },
    
  [*Events*], colspanx(6)[*Classes*],
  [], [Employee], [Absence], [Team], [Department], [Calendar], [Holiday],
  [Absence Entry], [y], [y], [n], [n], [y], [n],
  [Absence Update], [y], [y], [n], [n], [y], [n],
  [Absence Cancellation], [y], [y], [n], [n], [y], [n],
  [Team Creation], [y], [n], [y], [y], [y], [n],
  [Team Update], [y], [n], [y], [y], [y], [n],
  [Team Deletion], [y], [n], [y], [y], [y], [n],
  [Employee Creation], [y], [n], [y], [y], [n], [n],
  [Employee Profile Update], [y], [n], [n], [y], [n], [n],
  [Employee Deletion], [y], [y], [y], [y], [y], [n],
  [Calendar View Update], [y], [y], [y], [y], [y], [y],
  [Holiday Addition], [n], [n], [n], [n], [y], [y],
  ),
  caption: [Event table]
) <table:competitors>
]
#todo[adde figurtekst der forklarer hvordan figuren skal læses (hvordan relaterer x og y aksen til hinanden?). - Sille]
// ******************************************************************************************************** // 
// ******************************************************************************************************** //
// *** HERE IS A DETAILED EXPLANATION OF THE REASONS BEHIND THE SELECTION OF THE VARIOUS FIELDS – MARC! *** //
// ******************************************************************************************************** //
// ******************************************************************************************************** //
// 
// 1. Absence Entry:
// 
// Employee: Yes (An employee logs the absence).
// Absence: Yes (The absence is created).
// Team: No (Not directly involved).
// Department: No (Not directly involved).
// Calendar: Yes (The calendar is updated with the new absence).
// Holiday: No.
// 
// 
// 2. Absence Update:
// 
// Employee: Yes (The employee updates the absence).
// Absence: Yes (The absence is modified).
// Team: No.
// Department: No.
// Calendar: Yes (The calendar reflects the updated absence).
// Holiday: No.
// 
// 
// 3. Absence Cancellation:
// 
// Employee: Yes (The employee cancels the absence).
// Absence: Yes (The absence is removed).
// Team: No.
// Department: No.
// Calendar: Yes (The calendar is updated to remove the absence).
// Holiday: No.
// 
// 
// 4. Team Creation:
// 
// Employee: Yes (Employees are added to the team).
// Absence: No.
// Team: Yes (The new team is created).
// Department: Yes (The team might be linked to a department).
// Calendar: Yes (The team’s calendar is created/updated).
// Holiday: No.
// 
// 
// 5. Team Update:
// 
// Employee: Yes (Employees may be added or removed from the team).
// Absence: No.
// Team: Yes (The team’s composition or details are updated).
// Department: Yes (The team’s department information may change).
// Calendar: Yes (The calendar is updated to reflect team changes).
// Holiday: No.
// 
// 
// 6. Team Deletion:
// 
// Employee: Yes (Employees are disassociated from the team).
// Absence: No.
// Team: Yes (The team is deleted).
// Department: Yes (The team is removed from the department).
// Calendar: Yes (The calendar is updated to remove the team).
// Holiday: No.
// 
// 
// 7. Employee Creation:
// 
// Employee: Yes (A new employee is added).
// Absence: No.
// Team: Yes (The employee may be assigned to a team).
// Department: Yes (The employee may be assigned to a department).
// Calendar: No.
// Holiday: No.
// 
// 
// 8. Employee Profile Update:
// 
// Employee: Yes (The employee’s profile is updated).
// Absence: No.
// Team: No.
// Department: Yes (The employee’s department information may change).
// Calendar: No.
// Holiday: No.
// 
// 
// 9. Employee Deletion:
// 
// Employee: Yes (The employee is removed from the system).
// Absence: Yes (Any associated absences are deleted).
// Team: Yes (The employee is removed from the team).
// Department: Yes (The employee is removed from the department).
// Calendar: Yes (The calendar is updated to remove the employee’s absences).
// Holiday: No.
// 
// 
// 10. Calendar View Update:
// 
// Employee: Yes (The calendar is updated based on employee absences).
// Absence: Yes (Absences are displayed on the calendar).
// Team: Yes (The team’s calendar is updated).
// Department: Yes (The department calendar is updated).
// Calendar: Yes (The entire calendar is updated).
// Holiday: Yes (Holidays are shown on the calendar).
// 
// 
// 11. Holiday Addition:
// 
// Employee: No.
// Absence: No.
// Team: No.
// Department: No.
// Calendar: Yes (The holiday is added to the calendar).
// Holiday: Yes (A new holiday is created).

*Classes:*
#todo[evt. en mere uddybet afslutning. Godt med liste, men muligvis noget prosa der "samler op". - Sille]
- *Employee:* Represents an individual user of the system. Each employee has personal details, a department, and may belong to one or more teams. They can log their own absences and view team calendars.

- *Absence:* Represents a period where an employee is unavailable due to reasons like vacation, sickness, or personal leave. Absences have a start and end date and might include additional metadata like absence type and reason.

- *Team:* A group of employees that work together across different departments. 

- *Department:* Represents the various departments within the company. Employees and teams are associated with departments, which helps organize the calendar and team structure.

- *Calendar:* Represents a visual schedule that shows the absences of employees and teams. The calendar could be filtered by team, department, or individual employees.

- *Holiday:* Represents company-wide or public holidays that affect multiple employees. Holidays would appear on the calendar.

*Events:*

- *Absence Entry:* Triggered when an employee logs a new absence into the system. This event records the absence details (type, dates, reason) and updates the system's data.

- *Absence Update:* Occurs when an employee modifies an existing absence, such as extending sick leave or correcting a mistake in the entry.

- *Absence Cancellation:* Happens when an employee decides to cancel an already logged absence. The system removes the absence from the calendar.

- *Team Creation:* Happens when a new team is created in the system. The system links the appropriate employees and departments to this team, making it visible in relevant calendars.

- *Team Update:* Triggered when an existing team’s composition or details are modified (e.g., new members added or a team name change).

- *Team Deletion:* Triggered when a team is removed from the system. The system would need to disassociate employees from the deleted team.

- *Employee Creation:* Triggered when a new employee is added to the system. This event would handle the setup of the employee’s profile, their department.

- *Employee Profile Update:* Triggered when an employee updates their profile (e.g., changing their name, role, or department). This event keeps employee data current and accurate.

- *Employee Deletion:* Triggered when an employee is removed from the system. This event ensures that all related records, such as absences or team memberships, are properly updated or archived.

- *Calendar View Update:* Occurs when the calendar needs to be refreshed due to new, updated, or canceled absences. The calendar adjusts to show the most up-to-date information about teams.

- *Holiday Addition:* Happens when a new company-wide or public holiday is added to the system. The system updates all relevant calendars to reflect the holiday.


== Stucture and Behaviour 
@table:competitors now shows all the events and classes within the system. To get a clearer understanding of the connection between the events and classes, a behavioral pattern will be described using statecharts. A statechart will be created for each class to show the possible states and how the states changes. To achieve this, control structures such as sequence, selection, and iterations will be used.

A statechart for each identified class will be made as follows:

#pagebreak()

=== Class Diagrams

Class diagrams are a fundamental part of object-oriented modeling, used to visually represent the static structure of a system. These diagrams describe the system by illustrating its classes, their attributes, methods, and the relationships between the classes. Each class in the diagram serves as a blueprint for objects, encapsulating data (attributes) and behavior (methods).

The primary purpose of a class diagram is to describe the structural relationships between the objects and classes in a problem domain. These diagrams help developers understand the system’s architecture by providing a clear overview of how different entities are organized and connected.

Class diagrams are composed of several key components:

- *Classes:* Represent entities or concepts within the system, such as an Employee, Team, or Department. Each class typically includes attributes (data fields) and operations (methods).
- *Relationships:* The connections between classes, such as associations, generalizations (inheritance), or aggregations. These relationships show how the classes interact or depend on each other.
- *Multiplicity:* Indicates how many instances of one class relate to instances of another class (e.g., one-to-many or many-to-many relationships).

Class diagrams serve as a critical tool in both the analysis and design phases of system development. By organizing the system into well-defined classes and relationships, class diagrams help clarify the structure, making it easier to identify responsibilities and dependencies between entities. Additionally, they provide a visual roadmap for building and maintaining a system, ensuring consistency and coherence in the design.

