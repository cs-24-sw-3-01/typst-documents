#import table: cell, header
#table(
  columns: 5,
  align: center,
  header(
    [],
    table.cell(colspan: 4)[*Classes*]
  ),
  [*Events*], [Employee], [Date], [Absence], [Team],
  
  [`addMember()`], [], [], [], [],
  [`createTeam()`], [], [], [], [],
)
