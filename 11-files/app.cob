       >> SOURCE FORMAT FREE
       identification division.
       program-id. 11-files.
       environment division.

       INPUT-OUTPUT section.
       FILE-CONTROL.
           SELECT CustomerFile ASSIGN TO "Customer.dat"
           ORGANIZATION IS LINE SEQUENTIAL
           ACCESS IS SEQUENTIAL.
       data division.

       FILE SECTION.
       FD CustomerFile.
       01 CustomerData.
           02 IDNum PIC 9(5).
           02 CustName.
               03 FirstName PIC X(15).
               03 LastName PIC X(15).



       WORKING-STORAGE SECTION.
       01 WSCustomer.
           02 WSIDNum PIC 9(5).
           02 WSCustName.
               03 WSFirstName PIC X(15).
               03 WSLastName PIC X(15).

       PROCEDURE DIVISION.
       OPEN OUTPUT CustomerFile.
           MOVE 00001 TO IDNum.
           MOVE "Ben" TO FirstName.
           MOVE "James" TO LastName.
           WRITE CustomerData
           END-WRITE.
       CLOSE CustomerFile.
       

       STOP RUN.
           
