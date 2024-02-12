       identification division.
       PROGRAM-ID. coboltut.
       environment division.
       configuration section.
       data division.
       file section.
       working-storage section.
       01 Price PIC 9(4)V99.
       01 TaxRate PIC V999 VALUE .075.
       01 FullPrice PIC 9(4)V99.

       procedure division.

       display "Enter Price: " WITH NO ADVANCING
       ACCEPT Price.
       compute FullPrice ROUNDED = Price + (Price * TaxRate)

       display "Price + Tax: $" FullPrice.

       stop run.
