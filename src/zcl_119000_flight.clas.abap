CLASS zcl_119000_flight DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-METHODS get_latest_travel
      RETURNING VALUE(r_travel) TYPE /dmo/travel.
    CLASS-METHODS get_all_travels
      RETURNING VALUE(r_travels) TYPE z119000_travels.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_119000_FLIGHT IMPLEMENTATION.


  METHOD get_latest_travel.
    DATA(today) = cl_abap_context_info=>get_system_date( ).
    SELECT FROM /dmo/travel FIELDS *
     WHERE begin_date > @today
     ORDER BY begin_date
     INTO TABLE @DATA(travels).
    r_travel = travels[ 1 ].
  ENDMETHOD.


  METHOD get_all_travels.
    SELECT FROM /dmo/travel FIELDS *
     INTO CORRESPONDING FIELDS OF TABLE @r_travels.
  ENDMETHOD.
ENDCLASS.
