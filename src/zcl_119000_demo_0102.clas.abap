CLASS zcl_119000_demo_0102 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119000_demo_0102 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    "Wichtige ABAP-Standardtypen
    DATA i1 TYPE i. "ganze Zahl (Bsp: 42)
    DATA string1 TYPE string. "Zeichenkette dynamischer Länge (Bsp: 'Hallo Welt!')
    DATA c1 TYPE c LENGTH 6. "Zeichenkette fester Länge (Bsp: 'A1B2C3')
    DATA n1 TYPE n LENGTH 7. "numerische Folge (Bsp: '7182940')
    DATA d1 TYPE d. "Datum (Bsp: '20210202')
    DATA t1 TYPE t. "Zeit (Bsp: '123114')
    DATA p1 TYPE p LENGTH 16 DECIMALS 2. "gepackte Zahl (Bsp: '734.23')
    DATA b1 TYPE c LENGTH 1. "Pseudo-boolscher Wahrheitswert (Bsp: 'X')

    "Deklaration variabler Datenobjekte per...
    DATA carrier_id TYPE c LENGTH 3. "...ABAP-Standardtyp
    DATA carrier_id2 TYPE /dmo/carrier_id. "...Datenelement

    "Wertzuweisung per...
    carrier_id = 'LH'. "...Zuweisungsoperator
    DATA connection_id TYPE /dmo/connection_id VALUE '0400'. "...statischer Vorbelegung
    DATA(flight_date) = '20210202'. "...Inlinedeklaration
  ENDMETHOD.

ENDCLASS.
