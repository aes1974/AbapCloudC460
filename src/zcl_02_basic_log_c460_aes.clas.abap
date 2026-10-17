CLASS zcl_02_basic_log_c460_aes DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
* Componente de instancia
  data: name TYPE string,
        address type string.

  METHODS:
        set_attr IMPORTING iv_name type string
                           iv_address TYPE string,

        get_attr EXPORTING ev_name type string
                           ev_address TYPE string,

        get_phone IMPORTING  iv_phone TYPE string
                  RETURNING VALUE(rv_phone) TYPE string.
* Compontes estaticos
   CLASS-DATA: name2 TYPE string.

CLASS-METHODS: set_name  IMPORTING iv_name TYPE string,
               get_name EXPORTING ev_name TYPE string.





  PROTECTED SECTION.
  PRIVATE SECTION.
  data: private_attrib.
ENDCLASS.



CLASS zcl_02_basic_log_c460_aes IMPLEMENTATION.
  METHOD get_attr.
      ev_address = address.
      ev_name = name.
  ENDMETHOD.

    METHOD set_attr.
      name = iv_name.
      address = iv_address.
  ENDMETHOD.

  METHOD get_name.
    ev_name = name2.
   ENDMETHOD.

  METHOD set_name.
    name2 = iv_name.
  ENDMETHOD.

  METHOD get_phone.
    rv_phone = iv_phone.
  ENDMETHOD.

ENDCLASS.
