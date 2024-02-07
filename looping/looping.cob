       identification division.
       program-id. coboltut.
       environment division.
       configuration section.
       data division.
       file section.
       working-storage section.
       01 Ind PIC 9(1) VALUE 0.

      * While Loop.
       procedure division.
       perform OutputData WITH TEST AFTER UNTIL Ind > 5
           GO TO ForLoop.

      * Paragraph 
       OutputData.
           DISPLAY Ind.
           ADD 1 TO Ind.

       ForLoop.
           perform OutputData2 VARYING Ind FROM 1 BY 1 UNTIL Ind = 5
           STOP RUN.

       OutputData2.
           display Ind.       


