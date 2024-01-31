CLASS zcl_lt_select DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lt_select IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA s_airport TYPE /dmo/airport.

    SELECT SINGLE FROM /dmo/airport
       FIELDS airport_id, name, city, country
        WHERE airport_id = 'FRA'
        INTO CORRESPONDING FIELDS OF @s_airport.

    IF sy-subrc = 0.
      out->write( s_airport ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
