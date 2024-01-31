*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations

class lcl_connection definition create private.

  public section.
  data carrier_ID TYPE /dmo/carrier_ID.
  data connection_ID type /DMO/Connection_ID.
  class-data conn_counter type i.
  protected section.
  private section.

endclass.

class lcl_connection implementation.

endclass.
