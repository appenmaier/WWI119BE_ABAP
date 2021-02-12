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

    out->write( |Kürzel der Fluggesellschaft: { connection-carrier_id }| ).
    out->write( |Verbindungsnummer: { connection-connection_id }| ).

    "Kopieren
    DATA flight TYPE z119000_flight.
    flight-carrier_id = 'LH'.
    flight-connection_id = '0400'.
    flight-flight_date = cl_abap_context_info=>get_system_date( ).
    flight-price = 500.
    flight-currency_code = 'EUR'.
    flight-plane_type_id = 'A340-400'.

    DATA flight_xt TYPE z119000_flight_extended.
    flight_xt = CORRESPONDING #( connection ).
    flight_xt = CORRESPONDING #( BASE ( flight_xt ) flight ).
  ENDMETHOD.

ENDCLASS.
