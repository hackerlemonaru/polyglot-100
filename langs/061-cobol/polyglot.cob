       IDENTIFICATION DIVISION.
       PROGRAM-ID. POLYGLOT.
       AUTHOR. POLYGLOT-100.
      * Entry 061 of the byte-balanced polyglot archive.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-I      PIC 9(03) VALUE 1.
       01 WS-TOTAL  PIC 9(05) VALUE 0.
       01 WS-A      PIC 9(05) VALUE 0.
       01 WS-B      PIC 9(05) VALUE 1.
       01 WS-T      PIC 9(05) VALUE 0.
       01 WS-K      PIC 9(03) VALUE 0.
       PROCEDURE DIVISION.
       MAIN-PARA.
           PERFORM UNTIL WS-I > 10
               ADD WS-I TO WS-TOTAL
               ADD 1 TO WS-I
           END-PERFORM
           PERFORM UNTIL WS-K >= 10
               ADD WS-A TO WS-B GIVING WS-T
               MOVE WS-B TO WS-A
               MOVE WS-T TO WS-B
               ADD 1 TO WS-K
           END-PERFORM
           DISPLAY "Hello from COBOL!"
           DISPLAY "sum(1..10) = " WS-TOTAL
           DISPLAY "fib(10)    = " WS-A
           IF WS-TOTAL NOT = WS-A
               DISPLAY "the 55 coincidence failed"
           END-IF
           STOP RUN.
      * COBOL -- entry 061 of 100 in the polyglot-100 archive. Family: Enterp
      * COBOL -- entry 061 of 100 in the polyglot-100 archive. Family: Enterp
      * COBOL -- entry 061 of 100 in the polyglot-100 archive. Family: Enterp
      * COBOL -- entry 061 of 100 in the polyglot-100 archive. Family: Enterp
      * COBOL -- entry 061 of 100 in the polyglot-100 archive. Family: Enterp
      * COBOL -- entry 061 of 100 in the polyglot-100 archive. Family: Enterp
      * COBOL -- entry 061 of 100 in the polyglot-100 archive. Family: Enterp
      * COBOL -- entry 061 of 100 in the polyglot-100 archive. Family: Enterp
      * COBOL -- entry 061 of 100 in the polyglot-100 archive. Family: Enterp
      * COBOL -- entry 061 of 100 in the polyglot-100 archive. Family: Enterp
      * COBOL -- entry 061 of 100 in the polyglot-100 archive. Family: Enterp
      * COBOL -- entry 061 of 100 in the polyglot-100 archive. Family: Enterp
      * COBOL -- entry 061 of 100 in the polyglot-100 archive. Family: Enterp
      * COBOL -- entry 061 of 100 in the polyglot-100 archive. Family: Enterp
      * COBOL -- entry 061 of 100 in the polyglot-100 archive. Family: Enterp
      * COBOL -- entry 061 of 100 in the polyglot-100 archive. Family: Enterp
      * COBOL -- entry 061 of 100 in the polyglot-100 archive. Family: Enterp
      * COBOL -- entry 061 of 100 in the polyglot-100 archive. Family: Enterp
      * COBOL -- entry 061 of 100 in the polyglot-100 archive. Family: Enterp
      * COBOL -- entry 061 of 100 in the polyglot-100 archive. Family: Enterp
      * COBOL -- entry 061 of 100 in the polyglot-100 archive. Family: Enterp
      * COBOL -- entry 061 of 100 in the polyglot-100 archive. Family: Enterp
      * COBOL -- entry 061 of 100 in the polyglot-100 archive. Family: Enterp
      * COBOL -- entry 061 of 100 in the polyglot-100 archive. Family: Enterp
      * COBOL -- entry 061 of 100 in the polyglot-100 archive. Family: Enterp
      * COBOL -- entry 061 of 100 in the polyglot-100 archive. Family: Enterp
      * COBOL -- entry 061 of 100 in the polyglot-100 archive. Family: Enterp
      * COBOL -- entry 061 of 100 in the polyglot-100 archive. Family: Enterp
      * COBOL -- entry 061 of 100 in the polyglot-100 archive. Family: Enterp
      * COBOL -- entry 061 of 100 in the polyglot-100 archive. Family: Enterp
      * COBOL -- entry 061 of 100 in the polyglot-100 archive. Family: Enterp
      * COBOL -- entry 061 of 100 in the polyglot-100 archive. Family: Enterp
      * COBOL -- entry 061 of 100 in the polyglot-100 archive. Family: Enterp
      * COBOL -- entry 061 of 100 in the polyglot-100 archive. Family: Enterp
      * COBOL -- entry 061 of 100 in the polyglot-100 archive. Family: Enterp
      * COBOL -- entry 061 of 100 in the polyglot-100 archive. Family: Enterp
      * COBOL -- entry 061 of 100 in the polyglot-100 archive. Family: Enterp
      * COBOL -- entry 061 of 100 in the polyglot-100 archive. Family: Enterp
      * COBOL -- entry 061 of 100 in the polyglot-100 
