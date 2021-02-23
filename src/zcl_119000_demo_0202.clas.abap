CLASS zcl_119000_demo_0202 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_119000_DEMO_0202 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    "Deklaration interner Tabellen
    DATA connections TYPE z119000_connections. "TYPE <Tabellentyp>
    DATA connections2 TYPE TABLE OF z119000_connection. "TYPE TABLE OF <Strukturtyp>

    "Einfügen von Datensätzen
    connections = VALUE #(
        ( carrier_id = 'LH' connection_id = '0400' )
        ( carrier_id = 'LH' connection_id = '0401' airport_from_id = 'JFK' airport_to_id = 'FRA' )
        ( carrier_id = 'UA' connection_id = '3517' ) ).

    "Erweitern von internen Tabellen
    DATA connection TYPE z119000_connection.
    connection-carrier_id = 'LH'.
    connection-connection_id = '0400'.
    connection-airport_from_id = 'FRA'.
    connection-airport_to_id = 'JFK'.

    connections = VALUE #( BASE connections
        ( carrier_id = 'LH' connection_id = '0402' airport_from_id = 'FRA' )
        ( connection ) ).

    "Lesen eines Einzelsatzes per...
    TRY.
        connection = connections[ 10 ]. "...Index
      CATCH cx_sy_itab_line_not_found INTO DATA(x).
        out->write( x->get_text( ) ).
    ENDTRY.

    IF line_exists( connections[ carrier_id = 'XX' connection_id = '0400' ] ).
      connection = connections[ carrier_id = 'XX' connection_id = '0400' ]. "...Schlüssel
    ELSE.
      out->write( |Fehler: Zeile existiert nicht| ).
    ENDIF.

    "Lesen mehrerer Datensätze
    LOOP AT connections INTO connection WHERE carrier_id = 'LH'.
      out->write( | { sy-tabix } - { connection-carrier_id } - { connection-connection_id }| ).
    ENDLOOP.

    "Ändern eines Einzelsatzes per...
    connections[ 1 ]-airport_from_id = 'BER'. "...Index
    connections[ carrier_id = 'LH' connection_id = '0402' ]-airport_to_id = 'BER'. "...Schlüssel

    "Ändern mehrerer Datensätze
    DATA connection2 TYPE REF TO z119000_connection. "TYPE REF TO <Strukturtyp>: Referenzvariable
    DATA connection3 TYPE z119000_connection. "TYPE <Strukturtyp>: Strukturvariable

    LOOP AT connections REFERENCE INTO connection2 WHERE carrier_id = 'LH'.
      connection2->airport_to_id = 'JFK'.
    ENDLOOP.

    "Sortieren von internen Tabellen
    SORT connections BY carrier_id DESCENDING connection_id ASCENDING airport_from_id DESCENDING.

    "Löschen von Datensätzen
    DELETE connections WHERE airport_to_id IS INITIAL OR airport_from_id < 'FRA'.

    "Größe von internen Tabellen
    DATA(number_of_connections) = lines( connections ).
  ENDMETHOD.
ENDCLASS.
