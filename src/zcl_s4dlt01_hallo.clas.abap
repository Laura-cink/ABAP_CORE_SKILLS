CLASS zcl_s4dlt01_hallo DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_s4dlt01_hallo IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA: lv_full_name  TYPE string VALUE 'Lola Rennt',
          lv_first_name TYPE string,
          lv_last_name  TYPE String.

    SPLIT lv_full_name  AT | | INTO lv_first_name lv_last_name.


    out->write( |User: { lv_first_name }| ).

  ENDMETHOD.
ENDCLASS.
