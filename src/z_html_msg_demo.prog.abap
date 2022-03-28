*&---------------------------------------------------------------------*
*& Report z_html_msg_demo
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_html_msg_demo.

DATA lo_msg TYPE REF TO zcl_html_msg.
DATA ls_msg  TYPE bal_s_msg  .

PARAMETERS p_msgno TYPE symsgno DEFAULT '313'.
PARAMETERS p_msgty TYPE symsgty DEFAULT 'E'.

INITIALIZATION.

  lo_msg = zcl_html_msg=>get_instance( ).

AT SELECTION-SCREEN.

  ls_msg-msgty = p_msgty.
  ls_msg-msgid = 'BRAIN'.
  ls_msg-msgno = p_msgno.
  ls_msg-msgv1 = 'EINS'.
  ls_msg-msgv2 = 'ZWEI'.
  ls_msg-msgv3 = 'DREI'.
  ls_msg-msgv4 = 'VIER'.

  lo_msg->show( ls_msg ).
