       IDENTIFICATION DIVISION.
       PROGRAM-ID. Variables_and_Datatypes.
       ENVIROMENT DIVISION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 SampleData PIC X(10) VALUE "Stuff".
       01 JustLetters PIC AAA VALUE "ABC".
       01 JustNums PIC 9(4) VALUE 1234.
       01 SignedInt PIC s9(4) VALUE -1234.
       01 PayCheck PIC 9(4)V99 VALUE ZEROS.

       01 Customer.
           02 Ident PIC 9(3).
           02 CustName PIC x(20).
           02 DateOfBirth.
               03 MOB PIC 99.
               03 DOB PIC 99.
               03 Y
       PROCEDURE DIVISION