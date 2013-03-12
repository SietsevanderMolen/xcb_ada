with System,
     Interfaces.C,
     Interfaces.C.Strings;
limited with xproto;

package xcb is
   package IC renames Interfaces.C;
   package ICS renames IC.Strings;
   pragma Linker_Options ("-lxcb");
   type xcb_screen_t_ptr is access all xproto.xcb_screen_t;

   Null_Display : constant ICS.chars_ptr := ICS.Null_Ptr;
   Null_Screen : constant xcb_screen_t_ptr := null;
   NO_SYMBOL : constant Interfaces.Unsigned_8 := 0;
   XCB_NONE : constant Interfaces.Unsigned_32 := 0;
   XCB_CURRENT_TIME : constant Interfaces.Unsigned_32 := 0;

   subtype xcb_connection_t is System.Address;

   type xcb_generic_error_t_pad_array is array (0 .. 4) of aliased Interfaces.Unsigned_32;
   type xcb_generic_error_t is record
      response_type : aliased Interfaces.Unsigned_8;
      error_code    : aliased Interfaces.Unsigned_8;
      sequence      : aliased Interfaces.Unsigned_16;
      resource_id   : aliased Interfaces.Unsigned_32;
      minor_code    : aliased Interfaces.Unsigned_16;
      major_code    : aliased Interfaces.Unsigned_8;
      pad0          : aliased Interfaces.Unsigned_8;
      pad           : aliased xcb_generic_error_t_pad_array;
      full_sequence : aliased Interfaces.Unsigned_32;
   end record;
   type xcb_generic_error_t_p is access all xcb_generic_error_t;
   pragma Convention (C, xcb_generic_error_t);

   type xcb_generic_event_t_pad_array is array (0 .. 6) of 
      aliased Interfaces.Unsigned_32;
   type xcb_generic_event_t is record
      response_type : aliased Interfaces.Unsigned_8;
      pad0          : aliased Interfaces.Unsigned_8;
      sequence      : aliased Interfaces.Unsigned_16;
      pad           : aliased xcb_generic_event_t_pad_array;
      full_sequence : aliased Interfaces.Unsigned_32;
   end record;
   type xcb_generic_event_t_p is access all xcb_generic_event_t;
   pragma Convention (C, xcb_generic_event_t);

   type xcb_void_cookie_t is record
      sequence : aliased Integer;
   end record;
   pragma Convention (C, xcb_void_cookie_t);

   -- Connects to the X server.
   function xcb_connect (displayname : ICS.chars_ptr;
                         screen      : access xproto.xcb_screen_t)
                         return xcb_connection_t;
   pragma Import (C, xcb_connect, "xcb_connect");

   function xcb_connection_has_error (c : xcb_connection_t)
      return Integer;
   pragma Import (C, xcb_connection_has_error, "xcb_connection_has_error");

   function xcb_flush (connection : xcb_connection_t) return Integer;
   pragma Import (C, xcb_flush, "xcb_flush");

   function xcb_get_setup (connection : xcb_connection_t)
      return access xproto.xcb_setup_t;
   pragma Import (C, xcb_get_setup, "xcb_get_setup");

   function xcb_wait_for_event (connection : xcb_connection_t)
      return xcb_generic_event_t_p;
   pragma Import (C, xcb_wait_for_event, "xcb_wait_for_event");
end xcb;
