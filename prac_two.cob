       identification division.
       program-id. prac-two.
       environment division.
       data division.
       file section.

       working-storage section.

       01 transaction_amount pic s9999v99 value 0.
       01 transaction_sender pic x(50) value zero.
       01 transaction_reciever pic x(50) value zero.
       01 transaction_id.
           02 transaction_date.
               03 day_ pic 99.
               03 month_ pic 99.
               03 year_ pic 99.
           02 transaction_code pic 9999.
           02 transaction_protocol pic 9999.

       procedure division.

       display "Please enter your amount: R" no advancing.
       accept transaction_amount.

       display "Please enter your name: " no advancing.
       accept transaction_sender.

       display "Please enter the name of the receiver: " 
       no advancing.
       accept transaction_reciever.

       move 07022440125669 to transaction_id.

       display "Amount: R" transaction_amount.
       display "Sent to: " transaction_reciever.
       display "Transaction identification number: " transaction_id.
       display "Date: " day_ "/" month_ "/" year_.
       display "Your transaction protocol: " transaction_protocol.


       stop run. 