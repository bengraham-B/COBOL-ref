       identification division.
       program-id. 6-data-classification.
       environment division.
       configuration section.
       special-names.
           class PassingScore IS "A" thru "C", "D".
       data division.
       file section.
       working-storage section.
       01 age pic 99 value 0.
       01 grade pic 99 value 0.
       01 score pic x(1) value "B".
       01 CanVoteFlag pic 9 value 0.
           88 CanVote value 1.                                          Setting a condition with 88.
           88 CantVote value 0.
       01 TestNumber PIC x.
           88 IsPrime VALUE "1", "3", "5", "7".                          88 Can be used to designate mutiple values.
           88 IsOdd VALUE "1", "3", "5", "7", "9".
           88 IsEven VALUE "2", "4", "6", "8".
           88 LessThan5 VALUE "1" THRU "4".
           88 ANumber VALUE "0" THRU "9".


       procedure division.
       DISPLAY "Enter age: " WITH NO ADVANCING.
       ACCEPT Age.
       IF Age > 18 Then
           DISPLAY "You can vote"
       ELSE
           DISPLAY "You cannot vote"
       END-IF

       IF Age LESS THAN 5 Then
           DISPLAY "Stay home"
       END-IF.

       IF Age = 5 THEN
           DISPLAY "GO To work"
       END-IF.

       IF Age > 5 AND Age < 18 THEN
           COMPUTE Grade = Age - 5
           DISPLAY  "Go to grade: " Grade
       END-IF.

       IF Age GREATER THAN OR EQUAL TO 18 THEN
           DISPLAY "Go to college"
       END-IF

       stop run.
