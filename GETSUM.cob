      * This is a function which will be used in 8_Subroutines.
       IDENTIFICATION DIVISION.
       PROGRAM-ID. GETSUM.
       DATA DIVISION.
       LINKAGE SECTION.
             01 LNum1 PIC 99 VALUE 5.
             01 LNum2 PIC 9 VALUE 5.
             01 LSum1 PIC 99.
       PROCEDURE DIVISION USING LNum1, LNum2, LSum1.
             COMPUTE LSum1 = LNum1 + LNum2


       EXIT PROGRAM.
