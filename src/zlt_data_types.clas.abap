CLASS zlt_data_types DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zlt_data_types IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA var_string TYPE string.
    DATA var_int TYPE i.
    DATA var_char TYPE c LENGTH 30.
    DATA var_date TYPE d.
    DATA var_pack TYPE p LENGTH 3 DECIMALS 2.

    var_string = `hallo`.
*    var_char = 'u'.
*    var_string = var_char.
    var_char = var_string.
*    var_int = var_string.
*   var_date = var_string.
*   var_pack = var_string.



    out->write( var_char ) .

  ENDMETHOD.
ENDCLASS.
