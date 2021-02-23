CLASS zcl_119000_exercise_0101 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_119000_EXERCISE_0101 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA travel_id TYPE /dmo/travel_id.
    DATA description TYPE /dmo/description.
    DATA begin_date TYPE /dmo/begin_date.
    DATA end_date TYPE /dmo/end_date.

    travel_id = '00000001'.
    description = 'Italienurlaub 2021'.
    begin_date = '20210807'.
    end_date = '20210828'.

    out->write( |Reisenummer: | && travel_id ).
    out->write( |Beschreibung: | && description ).
    out->write( |Beginn der Reise: | && begin_date ).
    out->write( |Ende der Reise: | && end_date ).
  ENDMETHOD.
ENDCLASS.
