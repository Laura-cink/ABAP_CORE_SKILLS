CLASS zcl_s4d100_lt_exit DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_s4d100_lt_exit IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
*Define a local variable LV_NUMBER0 of type I.
**Use the DO…ENDDO conditional branching.
**Use the OUT->WRITE statement to output each Loop value using the SY-INDEX and the local variable LV_NUMBER0.
**Use the IF. . .ENDIF condition to determine the value of the local variable LV_NUMBER0 and check if it meets the condition where it is equal to or less than 3. EXIT the IF. . .ENDIF and the DO. . .ENDDO loop if it is true.
**Add the following code to your program.
**Activate the program.

    DATA c_numer0 TYPE i VALUE 3.
    DO.
      IF c_numer0 = 1.
        out->write( 'hellAo' ).
      ELSE.
        out->write( 'moin' ).
      ENDIF.
    ENDDO.

  ENDMETHOD.
ENDCLASS.
