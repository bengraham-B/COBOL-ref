       IDENTIFICATION DIVISION.
       PROGRAM-ID. SUB-ROUTINES.
       DATA DIVISION.

       WORKING-STORAGE SECTION.
       01 Num1 PIC 9 VALUE 5.
       01 Num2 PIC 9 VALUE 5.
       01 Sum1 PIC 99.

       PROCEDURE DIVISION.
      *^ Calling the subroutine (function) from 8_GetSum.cob and passwing values down to the subroutine
       CALL 'GETSUM' USING Num1, Num2, Sum1.
       DISPLAY Num1 "+" Num2 "=" Sum1.
 

       STOP RUN.
