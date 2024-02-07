       identification division.
       program-id. coboltut.
       environment division.
       configuration section.
       data division.
       file section.
       working-storage section.
       01 StartNum PIC 9(8)v99 VALUE 00001123.55.
      * Defining edited pictures
       01 NoZero PIC ZZZZZZZ9.99.
       01 NoZPlusC PIC ZZ,ZZZ,ZZ9.99.
       01 Dollar PIC $$,$$$,$$9.99.
       01 BDay PIC 9(8) VALUE 12211974.
       01 ADate PIC 99/99/9999.

       procedure division.

       MOVE StartNum TO NoZero.
       display NoZero.
       
       MOVE StartNum TO NoZPlusC.
       display NoZPlusC.
       
       MOVE StartNum TO Dollar.
       display Dollar.
       
       MOVE BDay TO ADate.
       display ADate.

       

       STOP Run.



