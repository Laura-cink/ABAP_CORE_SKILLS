CLASS zcl_lt_text_elements DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lt_text_elements IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  out->write(  text-001 ).
  out->write(  'moinsen, hallo!'(hau) ).

  ENDMETHOD.
ENDCLASS.
