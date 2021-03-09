CLASS zcl_119000_demo_0302 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119000_demo_0302 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    DATA connection TYPE z119000_connection.

    "Angabe passender Felder
    SELECT SINGLE FROM ZI_119000_Connection
     FIELDS CarrierId, ConnectionId, AirportFromId, AirportToId
     WHERE CarrierId = 'LH' AND ConnectionId = '0400'
     INTO @connection.
    IF sy-subrc <> 0.
      "TODO: Fehlerbehandlung
    ENDIF.

    "Kopieren namensgleicher Felder
*    SELECT SINGLE FROM ZI_119000_Connection
*     FIELDS *
*     WHERE CarrierId = 'LH' AND ConnectionId = '0400'
*     INTO CORRESPONDING FIELDS OF @connection.
*    IF sy-subrc <> 0.
*      "TODO: Fehlerbehandlung
*    ENDIF.

    "Inlinedeklaration
    SELECT SINGLE FROM ZI_119000_Connection
     FIELDS *
     WHERE CarrierId = 'LH' AND ConnectionId = '0400'
     INTO @DATA(connection2).
    IF sy-subrc <> 0.
      "TODO: Fehlerbehandlung
    ENDIF.
  ENDMETHOD.

ENDCLASS.
