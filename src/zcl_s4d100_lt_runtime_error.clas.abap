CLASS zcl_s4d100_lt_runtime_error DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_s4d100_lt_runtime_error IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA: eins TYPE i VALUE 0,
          zwei TYPE i.

    out->write( 'Error' ).
    zwei = 10 / eins.
    out->write( zwei ).


  ENDMETHOD.
ENDCLASS.
