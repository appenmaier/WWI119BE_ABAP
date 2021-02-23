CLASS zcl_119000_exercise_0203 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119000_exercise_0203 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    DATA(travels) = zcl_119000_flight=>get_all_travels( ).

    SORT travels BY begin_date ASCENDING.

    out->write( travels ).
  ENDMETHOD.

ENDCLASS.
