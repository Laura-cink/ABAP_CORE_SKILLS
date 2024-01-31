CLASS zcl_lt_sql_cast DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lt_sql_cast IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

*    SELECT FROM /dmo/carrier
*    FIELDS '19891109' AS char_8,
*           CAST( '19891109' AS CHAR( 4 ) ) AS char_4,
*           CAST( '19891109' AS NUMC( 8 ) ) AS numc_8,
*           CAST( '19891109' AS INT4 ) AS int,
*           CAST( '19891109' AS DEC( 10, 2 ) )  AS dec_10_2,
*           CAST( '19891109' AS FLTP )          AS fltp,
*           CAST( '19891109' AS DATS )          AS date
*           INTO TABLE @DATA(result).
*
*    out->write( EXPORTING data   = result
*                          name   = 'RESULT' ).
*


    SELECT FROM /dmo/flight
              FIELDS seats_max,
                     seats_occupied,

                     (   CAST( seats_occupied AS FLTP )
                       * CAST( 100 AS FLTP )
                     ) / CAST(  seats_max AS FLTP )                  AS percentage_fltp,

                     div( seats_occupied * 100 , seats_max )         AS percentage_int,

                     division(  seats_occupied * 100, seats_max, 2 ) AS percentage_dec

               WHERE carrier_id    = 'LH'
                 AND connection_id = '0400'
                INTO TABLE @DATA(result).

      out->write(
      EXPORTING
        data   = result
        name   = 'RESULT'
        ).

  ENDMETHOD.
ENDCLASS.
