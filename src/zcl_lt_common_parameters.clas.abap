CLASS zcl_lt_common_parameters DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lt_common_parameters IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA text   TYPE string VALUE `  Let's talk about ABAP  `.
    DATA result TYPE i.
    DATA result_scnd TYPE i.
    DATA result_thrd TYPE string.
    DATA result_frth TYPE i.

    out->write(  text ).

    result = find( val = text sub = 'A' ).
    out->write( result ).

    result_scnd = numofchar( text ).
    out->write( result_scnd ).

    result_thrd = replace( val = text sub = 'ABAP' with = 'abap' ).
    out->write( result_thrd ).

    result_frth = strlen( text ).
    out->write( result_frth ).

  ENDMETHOD.

ENDCLASS.
