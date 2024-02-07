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

       IF Score IS PassingScore THEN
           DISPLAY "You passed"
       ELSE    
           DISPLAY "You failed"
       END-IF.

      *Builtin classifications: numeric ALPAHBETIC ALPHABETIC-UPPER
       IF Score IS NOT NUMERIC THEN    
           DISPLAY "Score: Not a number"
       END-IF.

      * Checks if user inputed age is a number 
       IF Age IS NOT NUMERIC THEN
           DISPLAY "Age: Not a number"

       ELSE 
           display "Age: Is a Number 💖"
       END-IF

      * Toggle Values
       IF Age > 18 THEN
           SET CanVote to true
       ELSE 
           set CantVote to true

       end-if 
       DISPLAY "Vote " CanVoteFlag.

       DISPLAY "Enter Single Number or X to Exit: ".
       ACCEPT TestNumber.
       
       PERFORM UNTIL NOT ANumber

           EVALUATE true
               WHEN IsPrime DISPLAY " --- PRIME NUMBER ---" 
               WHEN IsOdd DISPLAY " --- ODD NUMBER ---" 
               WHEN IsEven DISPLAY " --- EVEN NUMBER ---" 
               WHEN LessThan5 DISPLAY " --- Less Then Five  ---" 
               WHEN OTHER DISPLAY "Default Action"

           END-EVALUATE
           ACCEPT TestNumber
           
       END-PERFORM

       stop run.
