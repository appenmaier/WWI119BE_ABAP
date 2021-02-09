CLASS zcl_119000_demo_0104 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119000_demo_0104 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    DATA carrier_id TYPE /dmo/carrier_id VALUE 'LH'.
    DATA flight_date TYPE /dmo/flight_date VALUE '20210209'.
    DATA is_fulfilled TYPE c LENGTH 1.

    "Einfachverzweigung
    IF NOT ( flight_date >= '20210101' AND flight_date <= '20211231' )
     OR carrier_id <> 'LH'.
      is_fulfilled = 'X'.
    ELSE.
      is_fulfilled = ''.
    ENDIF.

    IF is_fulfilled IS NOT INITIAL.
      out->write( |Bedingung erfüllt| ).
    ENDIF.

    "Mehrfachverzweigung
    CASE carrier_id.
      WHEN 'LH' OR 'lh' OR 'lH' OR 'Lh'.
        out->write( |Lufthansa| ).
      WHEN 'BA'.
        out->write( |British Airways| ).
      WHEN OTHERS.
        out->write( |Sonstiges| ).
    ENDCASE.
  ENDMETHOD.

ENDCLASS.
