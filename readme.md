# COBOL 💖🐱‍🏍

## Table of Content
1. [COBOL Theroy](#1-cobol-theory)
    1. [Introduction](#i-basic-cobol-program)
    1. []()

1. [COBOL Code](#basic-cobol-program)
    1. [Basic COBOL Program](#basic-cobol-program)
    1. [Basic COBOL Program](#basic-cobol-program)

2. 


<hr/>

## 1. COBOL Theory <a name="cobol-theroy"></a>
### I. Introduction  <a name="intro"></a>
COBOL is a language which is able to distinguish itself rom other languages due to its ability to handle large volumes of data. COBOL has mainly been used to devlop business applications.

The limitations of the language include 
1. Cannot write operating systems or compiliers.

## 2. COBOL Code
### I. Basic COBOL Program <a name="basic-cobol-program"></a>
```
IDENTIFICATION DIVISION.                                    
PROGRAM-ID. HELLO.                                           
PROCEDURE DIVISION.                                               
    DISPLAY "Hello Cobol!".
STOP RUN.
```

### II. Loops
```
PERFORM UNTIL NOT ANumber
        EVALUATE true
            WHEN IsPrime DISPLAY " --- PRIME NUMBER ---" 
            WHEN IsOdd DISPLAY " --- ODD NUMBER ---" 
            WHEN IsEven DISPLAY " --- EVEN NUMBER ---" 
            WHEN LessThan5 DISPLAY " --- Less Then Five  ---" 
            WHEN OTHER DISPLAY "Default Action"
        END-EVALUATE
        ACCEPT TestNumber
END-PERFORM
```

### II. If - Else
```
IF Age > 18 Then
    DISPLAY "You can vote"
ELSE
    DISPLAY "You cannot vote"
END-IF

IF Age LESS THAN 5 Then
    DISPLAY "Stay home"
END-IF.
```