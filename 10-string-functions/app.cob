       identification division.
       program-id. coboltut.
       environment division.
       data division.
       file section.
       working-storage section.
       01 SampStr PIC X(18) VALUE 'errire beef sneezed'.
       01 NumChars PIC 99 VALUE 0.
       01 NumEs PIC 99 VALUE 0.
       01 FName PIC X(6) VALUE 'Martin'.
       01 MName PIC X(11) VALUE 'Beaches'.
       01 LName PIC X(4) VALUE "Bond".
       01 FLName PIC X(18).
       01 FLMName PIC X(18).
       01 SStr1 PIC X(7) VALUE "The Egg".
       01 SStr2 PIC X(9) VALUE "is #1 and".
       01 Dest PIC X(33) VALUE "is the big chicken".
       01 Ptr PIC 9 VALUE 1.
       01 SStr3 PIC X(3).
       01 SStr4 PIC X(3).

       procedure division.
      * Count all the characters 
       INSPECT SampStr TALLYING NumChars FOR CHARACTERS.
       DISPLAY "Number of Chars"  NumChars. 

      *^ Count all the 'e's 
       INSPECT SampStr TALLYING NumEs FOR ALL 'e'.
       DISPLAY "Number of e's: " NumEs

      * Convert string to upper case
       DISPLAY FUNCTION UPPER-CASE(SampStr).
       DISPLAY FUNCTION LOWER-CASE("SUIIII").

      * Join Strings
       STRING FName DELIMITED BY SIZE
       SPACE
       LName DELIMITED BY SIZE
       INTO FLName.
       DISPLAY FLName.

      * GET first word up to a space.
       STRING FLName DELIMITED BY SPACES
       SPACE 
       MName DELIMITED BY SIZE
       SPACE 
       LName DELIMITED BY SIZE
       INTO FLMName
       ON OVERFLOW DISPLAY "Overflowed".
       DISPLAY FLMName. 


       stop run. 
