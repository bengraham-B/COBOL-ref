       identification division.
       program-id. prac_one.
       environment division.
       data division.
       file section.
       working-storage section.

       01 TransactionName pic x(30) value zero.
       01 Transaction pic 9999 value zero.
       01 Balance pic 99999 value 100.
       01 LatestBalance pic 99999 value zero.

       procedure division.
           display "Transaction Name: " no advancing.
           accept TransactionName from console.

           display "Amount: " no advancing.
           accept Transaction from console. 
           
           add Transaction to Balance giving LatestBalance.

           display "Current Balance " LatestBalance.
       
       stop run. 