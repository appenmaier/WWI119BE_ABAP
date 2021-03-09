CLASS zcl_119000_exercise_0306 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119000_exercise_0306 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    DATA travels TYPE TABLE OF ZC_119000_TravelWithCustomer.

    SELECT FROM ZC_119000_TravelWithCustomer
     FIELDS *
     WHERE CustomerId = '000001'
     INTO TABLE @travels.
    IF sy-subrc <> 0.
      out->write( |Keine Daten gefunden| ).
      RETURN.
    ENDIF.

    LOOP AT travels INTO DATA(travel).
      out->write( |{ travel-BeginDate } - { travel-EndDate }: { travel-Description }| ).
    ENDLOOP.
  ENDMETHOD.

ENDCLASS.
