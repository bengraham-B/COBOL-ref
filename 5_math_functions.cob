000100 IDENTIFICATION DIVISION.
000200 PROGRAM-ID. Math-Functions.
000300 ENVIRONMENT DIVISION.
000400 DATA DIVISION.
000500 FILE SECTION.
000600
000700 WORKING-STORAGE SECTION.
       01 Num1 pic 999 value 23.
       01 Num2 pic 999 value 420.
       01 num3 pic s99v999 value 23.489.
       01 num4 pic s999v999 value 134.331.
       01 Rem pic s999v9999 value 0.                                    * s99v999 -> 34.231
       01 Ans pic 999 value 0.
       01 ans2 pic s999v99 value 0.
      
       PROCEDURE DIVISION.
        
      * Giving defines where the answer will go to
       ADD Num1 TO Num2 GIVING Ans.
       DISPLAY Ans.
       SUBTRACT Num1 FROM Num2 GIVING Ans.
       DISPLAY Ans.
       MULTIPLY Num1 BY Num2 GIVING ans.
       DISPLAY Ans.
       DIVIDE Num1 INTO Num2 GIVING Ans.
       DISPLAY Ans.
       DIVIDE Num1 INTO Num2 GIVING Ans REMAINDER Rem.
       DISPLAY Rem.

      * Mutiple variables at the same time
       ADD Num1, Num2 TO Num3 GIVING Ans.
       ADD Num1, Num2, Num3 GIVING Ans.
       DISPLAY Ans.

      * Or a more traditional way
       COMPUTE Ans = Num1 + Num2.
       COMPUTE Ans = Num1 + Num2 + num3.
       COMPUTE Ans = num3 - Num2 - Num1.
       COMPUTE Ans = num3 * num4.
       COMPUTE Ans = Num1 ** 2.                                          This is to the power of two
       DISPLAY ans.

       COMPUTE ans = (3 + 5) * 5.
       display ans.
       compute ans rounded = 3.0 + 2.005.
       display "ans: " ans.
       display "Ans: " Ans.

       STOP RUN.

