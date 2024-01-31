CLASS zcl_s4d100_lt_debug DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_s4d100_lt_debug IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    CONSTANTS constant TYPE i VALUE 3.
    DATA v_numeins TYPE i.
    DATA v_numzwei TYPE i.

    v_numeins = constant.
    "

    DO 9 TIMES.
      v_numeins += 1.
          out->write( v_numeins ).
    ENDDO.
  ENDMETHOD.
ENDCLASS.
