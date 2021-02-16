CLASS zcl_119000_exercise_0103 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119000_exercise_0103 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    DATA text_old TYPE string VALUE 'uahdfgeUaeOoiaEEsseuuu'.
    DATA text_new TYPE string.

    text_new = replace( val = text_old sub = 'a' with = '1' occ = 0 ).
    text_new = replace( val = text_new sub = 'e' with = '2' occ = 0 ).
    text_new = replace( val = text_new sub = 'i' with = '3' occ = 0 ).
    text_new = replace( val = text_new sub = 'o' with = '4' occ = 0 ).
    text_new = replace( val = text_new sub = 'u' with = '5' occ = 0 ).

    out->write( |alter Text: { text_old }| ).
    out->write( |neuer Text: { text_new }| ).
  ENDMETHOD.

ENDCLASS.
