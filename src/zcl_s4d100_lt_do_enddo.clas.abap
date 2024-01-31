CLASS zcl_s4d100_lt_do_enddo DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_s4d100_lt_do_enddo IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

*Define a constant C_NUMBER0 of type I value 3.
*Use the DO…ENDDO Loop.
*Use the OUT->WRITE statement to output the text ‘Hello World’.
*Activate the program.
    DATA c_numer0 TYPE i VALUE 3.
    DO c_numer0 TIMES.
      out->write( 'hellAo' ).

    ENDDO.
  ENDMETHOD.


ENDCLASS.
