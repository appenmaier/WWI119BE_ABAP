CLASS zcl_119000_demo_0301 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119000_demo_0301 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    "SELECT FROM <Datenbanktabelle/Datenbankview>
    " FIELDS <Spalte 1>, <Spalte 2>,...
    " WHERE <Bedingung>
    " ORDER BY <Sortierreihenfolge>
    " INTO @<Zielvariable>.
    "IF sy-subrc <> 0.
    "TODO: Fehlerbehandlung
    "ENDIF.

    DATA carrier_id TYPE /dmo/carrier_id VALUE 'LH'.
    DATA connection_id TYPE /dmo/connection_id VALUE '0400'.
    DATA connection TYPE ZI_119000_Connection.
    DATA connections TYPE TABLE OF ZI_119000_Connection.

    "Lesen eines Einzelsatzes
    SELECT SINGLE FROM ZI_119000_Connection
     FIELDS *
     WHERE CarrierId = @carrier_id AND ConnectionId = @connection_id
     INTO @connection.
    IF sy-subrc <> 0.
      "TODO: Fehlerbehandlung
    ENDIF.

    "Lesen mehrerer Datensätze
    SELECT FROM ZI_119000_Connection
     FIELDS *
     WHERE CarrierId = @carrier_id
     INTO TABLE @connections.
    IF sy-subrc <> 0.
      "TODO: Fehlerbehandlung
    ENDIF.

  ENDMETHOD.

ENDCLASS.

