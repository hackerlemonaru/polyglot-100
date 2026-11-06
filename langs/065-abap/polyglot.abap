*& polyglot-100 :: entry 065 :: ABAP
REPORT z_polyglot_100.

CLASS lcl_polyglot DEFINITION.
  PUBLIC SECTION.
    CLASS-METHODS fib IMPORTING n TYPE i RETURNING VALUE(r) TYPE i.
    CLASS-METHODS run.
ENDCLASS.

CLASS lcl_polyglot IMPLEMENTATION.
  METHOD fib.
    DATA a TYPE i VALUE 0.
    DATA b TYPE i VALUE 1.
    DATA t TYPE i.
    DO n TIMES.
      t = a + b.
      a = b.
      b = t.
    ENDDO.
    r = a.
  ENDMETHOD.

  METHOD run.
    DATA total TYPE i VALUE 0.
    DO 10 TIMES.
      total = total + sy-index.
    ENDDO.
    WRITE: / 'Hello from ABAP!'.
    WRITE: / 'sum(1..10) =', total.
    WRITE: / 'fib(10)    =', fib( 10 ).
    IF total <> fib( 10 ).
      WRITE: / 'the 55 coincidence failed'.
    ENDIF.
  ENDMETHOD.
ENDCLASS.

START-OF-SELECTION.
  lcl_polyglot=>run( ).
* ABAP -- entry 065 of 100 in the polyglot-100 archive. Family: Enterprise & 
* ABAP -- entry 065 of 100 in the polyglot-100 archive. Family: Enterprise & 
* ABAP -- entry 065 of 100 in the polyglot-100 archive. Family: Enterprise & 
* ABAP -- entry 065 of 100 in the polyglot-100 archive. Family: Enterprise & 
* ABAP -- entry 065 of 100 in the polyglot-100 archive. Family: Enterprise & 
* ABAP -- entry 065 of 100 in the polyglot-100 archive. Family: Enterprise & 
* ABAP -- entry 065 of 100 in the polyglot-100 archive. Family: Enterprise & 
* ABAP -- entry 065 of 100 in the polyglot-100 archive. Family: Enterprise & 
* ABAP -- entry 065 of 100 in the polyglot-100 archive. Family: Enterprise & 
* ABAP -- entry 065 of 100 in the polyglot-100 archive. Family: Enterprise & 
* ABAP -- entry 065 of 100 in the polyglot-100 archive. Family: Enterprise & 
* ABAP -- entry 065 of 100 in the polyglot-100 archive. Family: Enterprise & 
* ABAP -- entry 065 of 100 in the polyglot-100 archive. Family: Enterprise & 
* ABAP -- entry 065 of 100 in the polyglot-100 archive. Family: Enterprise & 
* ABAP -- entry 065 of 100 in the polyglot-100 archive. Family: Enterprise & 
* ABAP -- entry 065 of 100 in the polyglot-100 archive. Family: Enterprise & 
* ABAP -- entry 065 of 100 in the polyglot-100 archive. Family: Enterprise & 
* ABAP -- entry 065 of 100 in the polyglot-100 archive. Family: Enterprise & 
* ABAP -- entry 065 of 100 in the polyglot-100 archive. Family: Enterprise & 
* ABAP -- entry 065 of 100 in the polyglot-100 archive. Family: Enterprise & 
* ABAP -- entry 065 of 100 in the polyglot-100 archive. Family: Enterprise & 
* ABAP -- entry 065 of 100 in the polyglot-100 archive. Family: Enterprise & 
* ABAP -- entry 065 of 100 in the polyglot-100 archive. Family: Enterprise & 
* ABAP -- entry 065 of 100 in the polyglot-100 archive. Family: Enterprise & 
* ABAP -- entry 065 of 100 in the polyglot-100 archive. Family: Enterprise & 
* ABAP -- entry 065 of 100 in the polyglot-100 archive. Family: Enterprise & 
* ABAP -- entry 065 of 100 in the polyglot-100 archive. Family: Enterprise & 
* ABAP -- entry 065 of 100 in the polyglot-100 archive. Family: Enterprise & 
* ABAP -- entry 065 of 100 in the polyglot-100 archive. Family: Enterprise & 
* ABAP -- entry 065 of 100 in the polyglot-100 archive. Family: Enterprise & 
* ABAP -- entry 065 of 100 in the polyglot-100 archive. Family: Enterprise & 
* ABAP -- entry 065 of 100 in the polyglot-100 archive. Family: Enterprise & 
* ABAP -- entry 065 of 100 in the polyglot-100 archive. Family: Enterprise & 
* ABAP -- entry 065 of 100 in the polyglot-100 archive. Family: Enterprise & 
* ABAP -- entry 065 of 100 in the polyglot-100 archive. Family: Enterprise & 
* ABAP -- entry 065 of 100 in the polyglot-100 archive. Family: Enterprise & 
* ABAP -- entry 065 of 100 in the polyglot-100 archive. Family: Enterprise & 
* ABAP -- entry 065 of 100 in the polyglot-100 archive. Family: Enterprise & 
* ABAP -- entry 065 of 100 in the polyglot-100 archive. Family: Enterprise & 
* ABAP -- entry 065 of 100 in the polyglot-100 archive. Family: Enterprise & 
* ABAP -- entry 065 of 100 in the polyglot-100 archive. Family: Enterprise & 
* ABAP -- entry 065 of 100 in the polyglot-100 archive. Family: Enterprise & 
* ABAP -- entry 065 of 100
