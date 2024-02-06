       IDENTIFICATION DIVISION.
       PROGRAM-ID. Variables_and_Datatypes.
       ENVIRONMENT DIVISION.
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
               03 YOB PIC 9(4).

       01 Num1 PIC 9 VALUE 5.
       01 Num2 PIC 9 VALUE 4.
       01 Num3 PIC 9 VALUE 3.
       01 Ans PIC s99v99 VALUE 0.
       01 Rem PIC 9v99.

       PROCEDURE DIVISION.
       MOVE "More Stuff" TO SampleData
       MOVE "123" TO SampleData
       MOVE 123 TO SampleData
       display SampleData
       display PayCheck
       MOVE "123Bob Smith           12211974" TO Customer
       display Customer
       DISPLAY MOB "/" DOB "/" YOB
       MOVE ZERO To SampleData
       display SampleData
       MOVE SPACE TO SampleData
       display SampleData
       MOVE HIGH-VALUE TO SampleData
       display SampleData
       MOVE LOW-VALUE TO SampleData
       display SampleData
       MOVE QUOTE TO SampleData
       display SampleData
       MOVE ALL "CPT" TO SampleData
       display SampleData


       stop run. 
       