CLASS zcl_lt_regex DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lt_regex IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA text TYPE string VALUE 'Date 1998-01-02 is in ISO Format.'.
    DATA regex TYPE string VALUE '[0-9]{4}(-[0-9]{2})-{2}'.
*    IF contains( val = text  pcre = regex ).
      DATA(num) = count( val = text  pcre = regex  ).
      DATA(offset) = find( val = text  pcre = regex occ = 1 ).
      DATA(date_text) = match( val = text  pcre = regex occ = 1  ).

      out->write( |num: { num }| ).
      out->write( |offset: { offset } | ).
      out->write( |date_text: { date_text }| ).
      IF matches( val = text  pcre = regex  ).
*      ENDIF.
    ENDIF.
  ENDMETHOD.
ENDCLASS.
