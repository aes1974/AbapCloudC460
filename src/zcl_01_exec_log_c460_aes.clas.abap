CLASS zcl_01_exec_log_c460_aes DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES: if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_01_exec_log_c460_aes IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
*    out->write( 'hola logali' ).

* Notacion nueva
    data(lo_inst) = new zcl_02_basic_log_c460_aes( ).
** Notacion vieja
*    data lo_inst2 TYPE REF TO zcl_02_basic_log_c460_aes.
*    CREATE OBJECT lo_inst2.
*
    lo_inst->set_attr( iv_name = 'Andres' iv_address = 'Puccini' ).

    lo_inst->get_attr( IMPORTING  ev_name = data(lv_name)  ev_address = data(lv_address) ).

    out->write( |{ lv_name } - { lv_address }| ).

    zcl_02_basic_log_c460_aes=>set_name( 'Esteban' ).

    zcl_02_basic_log_c460_aes=>get_name(  IMPORTING  ev_name = lv_name ).


    out->write( |{ lv_name }| ).

    out->write( lo_inst->get_phone( '12333-4444' ) ).















  ENDMETHOD.

ENDCLASS.
