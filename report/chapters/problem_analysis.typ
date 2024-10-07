#import "../custom.typ": *

= Problem Analysis

== Feature requests and \& potential problems 
This chapther defines both the potential problems that KMD have with their current solution, and the features required in the new one. 
The different finds in this chapter was aquired through interviews with three company imployees, their lead developer, Mats Lindberg, 
their project portfolio manager, Caroline Ramsdal and their manager of modern workplace, Dion Andersen, respectivley. 

//kan ikke huske om dette er relevant 
Transcriptions of said interviews can be found in appendix XYZ 

To find out why KMD needs a new system for managing their holiday calender i was important to find the problems with the current solution.
The interviews revealed problems with synchronizing with their current SAP //Uddyb pls 
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

== FACTOR

== System Definitions

== Requirements
