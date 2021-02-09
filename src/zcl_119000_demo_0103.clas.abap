CLASS zcl_119000_demo_0103 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119000_demo_0103 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    DATA result TYPE p LENGTH 16 DECIMALS 2.

    "Mathematische Operatoren
    result = 5 + 3. out->write( |Addition: | && result ). "Addition
    result = 5 - 3. out->write( |Subtraktion: | && result ). "Subtraktion
    result = 5 * 3. out->write( |Multiplikation: | && result ). "Multiplikation
    result = 5 / 3. out->write( |Division: | && result ). "Division
    result = 5 ** 3. out->write( |Potenz: | && result ). "Potenz
    result = 5 DIV 3. out->write( |ganzzahlige Division: | && result ). "ganzzahlige Division
    result = 5 MOD 3. out->write( |Divisionsrest: | && result ). "Divisionsrest

    result += 1. out->write( |ZWO Addition: | && result ). "Zuweisungsoperator für die Addition
    result -= 1. out->write( |ZWO Subtraktion: | && result ). "Zuweisungsoperator für die Subtraktion
    result *= 1. out->write( |ZWO Multiplikation: | && result ). "Zuweisungsoperator für die Multiplikation
    result /= 1. out->write( |ZWO Division: | && result ). "Zuweisungsoperator für die Division

    ADD -1 TO result. out->write( |Dekrementierung: | && result ). "Inkrementieren/Dekrementieren

    "Numerische Funktionen
    result = abs( -3 ). out->write( |Betrag: | && result ). "Betrag
    result = ipow( base = 5 exp = 3 ). out->write( |Potenz: | && result ). "Potenz
  ENDMETHOD.

ENDCLASS.
