       identification division.
       program-id. 6_paragraphs.
       environment division.
       data division.
       file section.

       working-storage division.

       procedure division.
      *Definining an open paragraph
       SubOne.
           Display "In Paragraph One"
           PERFORM SubTwo
           DISPLAY "Returned To Paragraph 1"
           PERFORM SubFour 2 TIMES.
           STOP RUN.

       SubThree.
           DISPLAY "IN paragraph three".

       SubTwo. 
           DISPLAY "In paragrapgh 2"
           PERFORM SubThree
           DISPLAY "Retuned To Paragragh  2".

       SubFour.
           DISPLAY "Repeat".

       stop run.