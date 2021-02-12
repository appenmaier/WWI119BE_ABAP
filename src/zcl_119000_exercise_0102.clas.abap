CLASS zcl_119000_exercise_0102 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119000_exercise_0102 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    DATA operand1 TYPE p LENGTH 16 DECIMALS 2 VALUE '3.14'.
    DATA operator TYPE c LENGTH 1 VALUE 'm'.
    DATA operand2 TYPE p LENGTH 16 DECIMALS 2 VALUE '5.6'.

    DATA result TYPE p LENGTH 16 DECIMALS 2.

    CASE operator.
      WHEN '+'.
        result = operand1 + operand2.
      WHEN '-'.
        result = operand1 - operand2.
      WHEN '*'.
        result = operand1 * operand2.
      WHEN '/'.
        result = operand1 / operand2.
      WHEN 'm' OR 'M'.
        result = nmin( val1 = operand1 val2 = operand2 ).
      WHEN OTHERS.
        out->write( |Fehler: ungültiger Operator| ).
    ENDCASE.

    out->write( |Ergebnis: | && result ).
  ENDMETHOD.

ENDCLASS.
