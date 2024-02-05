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
       
       PROCEDURE DIVISION