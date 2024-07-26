      * Calculate the factorial of a given number. 
       IDENTIFICATION DIVISION.
       PROGRAM-ID. factorial.
       AUTHOR. James Hill. 
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 userInput PIC 9(5).
       01 factorialResult PIC 9(18) VALUE 1.
       01 i PIC 9(5).

       PROCEDURE DIVISION.
       BEGIN.
           DISPLAY "FACTORIAL CALCULATOR".
           DISPLAY "--------------------".
           DISPLAY "Enter a number: " WITH NO ADVANCING.
           ACCEPT userInput.

           IF userInput = 0
            DISPLAY "The factorial of 0 is 1."
           
           ELSE
            PERFORM VARYING i FROM userInput BY -1 UNTIL i = 0
                COMPUTE factorialResult = factorialResult * i
            END-PERFORM

            DISPLAY "The factorial of " userInput " is " factorialResult
           END-IF.
           STOP RUN.

