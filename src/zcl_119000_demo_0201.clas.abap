CLASS zcl_119000_demo_0201 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119000_demo_0201 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    "Deklaration von Strukturen
    DATA connection TYPE z119000_connection.

    "Zugriff auf Strukturkomponenten
    connection-carrier_id = 'LH'.
    connection-connection_id = '0400'.
    connection-airport_from_id = 'FRA'.
    connection-airport_to_id = 'JFK'.

  ENDMETHOD.

ENDCLASS.
