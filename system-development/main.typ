#import "@preview/grape-suite:1.0.0": exercise
#import exercise: project, task, subtask

#show: project.with(
    title: "System Development Exercises",

    university: [Aalborg University],
    institute: [Datalogiske Institut],
    seminar: [3. Semester],

    author: "",

    show-solutions: false
)

= Lecture 2
== Individual Exercises
==== 3.6.4 What is a common event?

- A mechanism for expressing dynamic relations between objects
- Event are instantaneous _(either happened or not happened)_

==== 3.6.9 What are the basic criteria for selecting classes and events?

*Class*
- Can you identify objects from the class?
- Does the class contain unique information?
- Does the class encompass multiple objects?
- Does the class have a suitable and manageable number of events?
*Events*
- Is the event instantaneous? (Has happened/Has not happened)
- Is the event atomic (cannot be split further)
- Can the event be identified when it happens? 

==== 3.6.10 What is the result of the class activity?

The result of the class activity shows the connection between events and classes.
In the hair dresser example, the Customer and Assistant class can both experience the _"reserved"_ event

==== 3.6.15 Teaching administration. Consider a system for monitoring student activities in a university department. The department offers its students courses and thesis projects. Each course follows one of several course descriptions. Courses and thesis projects are evaluated through graded exams. The department must track all its activities, the teachers responsible for the activity, the students participating in the activity, and the results of the activity exams.

#let g = green.lighten(75%)
#let r = red.lighten(75%)

#table(
  columns: (auto, auto),
  inset: 10pt,
  align: horizon,
  table.header(
    [*Class*], [*Event*],
  ),
 table.cell(fill: g)[Student],[],
 table.cell(fill: g)[Teacher],[],
 table.cell(fill: g)[Project],[],
 table.cell(fill: g)[Course],[],
 table.cell(fill: r)[Thesis],[],
 table.cell(fill: r)[Grade],[],
 table.cell(fill: g)[Exam],[],
 table.cell(fill: r)[Activity],[],
 table.cell(fill: r)[Result],[],
)

#table(
  columns: (15em, auto, auto, auto, auto, auto),
  inset: 10pt,
  align: center,
  table.header(
    [], [*Student*], [*Teacher*], [*Project*], [*Course*], [*Exam*]
  ),
 [Course Enrolled],[X],[X],[],[],[],
 [Project Started],[X],[],[],[],[],
 [Exam Selected],[X],[],[],[],[],
 [Exam Started],[X],[],[],[],[],
 [Exam Ended],[X],[],[],[],[],
 [Exam Graded],[X],[],[],[],[],
 [Student Graduated],[X],[],[],[],[],
)

// Add details and assumptions as needed and address the following problems. List class candidates in the teaching administration system. Evaluate the candidates systematically and produce the resulting event table.

==== Explain the differences on slide 42 lecture 1.
==== On slide 43 lecture 1, write up the system definition for the classical bank. Modify it to cover the modern bank. Compare the two. On which elements in the FACTOR criterion are they different?
==== On slide 44 lecture 1, write up the system definition for the traditional warehouse. Modify it to cover a modern warehouse like IKEA. Compare the two and emphasize differences.

== Group Exercises

==== Compare and discuss the results of individual exercises 4 and 6.

==== 3.6.16

==== Problem Analysis
===== Make a first system definition by carrying out the activities described in Chapter 2.
===== Carry out the Classes activity as described in Chapter 3.
===== Reconsider your first system definition: was it useful for selecting classes and events or does it have to be refined.

// Start the analysis on your project (if you have chosen it):
// Make a first system definition by carrying out the activities described in Chapter 2.
// Carry out the Classes activity as described in Chapter 3.
// Reconsider your first system definition: was it useful for selecting classes and events or does it have to be refined.
// If you have not yet chosen your project, you can use one of these two case descriptions:
// Kaj's Cars: a brief description of a car rental company.
// Fisk til døren: an extensive description of a company that delivers fish to a group of private customers.

