     
       IDENTIFICATION DIVISION.
       PROGRAM-ID. coboltut.
       AUTHOR. GOOSE_CPT.
       DATE-WRITTEN. February 5 2024

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 UserName PIC x(30) VALUE "Goose".
       01 Num1 PIC 999 VALUE ZEROS.
       01 Num2 PIC 999 VALUE ZEROS.
       01 TOTAL PIC 9999 VALUE 0.
       01 SSNum.
               02 SSArea PIC 999.
               02 SSGroup PIC 99.
               02 SSSerial PIC 9999.
      
       *> ZEROS, ZERO
       *> SPACE, SPACES
       *> HIGH-VALUES
       *> LOW_VALUES

       PROCEDURE DIVISION.
           DISPLAY "What is your name?" WITH NO ADVANCING
           ACCEPT UserName

           DISPLAY "Hello " UserName

           MOVE ZERO TO UserName
           DISPLAY UserName
           DISPLAY "Enter Two values to sum:"
               ACCEPT  Num1 
               ACCEPT Num2
               COMPUTE Total = Num1 + Num2
               DISPLAY Num1 " + " Num2 " = " TOTAL
               DISPLAY "Enter your Social Secruity Number"
               ACCEPT SSNum
               DISPLAY "Area " SSArea

       STOP RUN.
