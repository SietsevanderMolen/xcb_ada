with System,
     Interfaces.C,
     Interfaces.C.Strings;
limited with xcbada_xproto;
limited with xcbada_xinerama;

package xcb is
   package IC renames Interfaces.C;
   package ICS renames IC.Strings;
   pragma Linker_Options ("-lxcb");
   type xcb_screen_t_p is access all xcbada_xproto.xcb_screen_t;

   Null_Display : constant ICS.chars_ptr := ICS.Null_Ptr;
   Null_Screen : constant xcb_screen_t_p := null;
   NO_SYMBOL : constant Interfaces.Unsigned_8 := 0;
   XCB_NONE : constant Interfaces.Unsigned_32 := 0;
   XCB_CURRENT_TIME : constant Interfaces.Unsigned_32 := 0;

   subtype xcb_connection_t is System.Address;

   type xcb_extension_t is record
      name      : aliased ICS.chars_ptr;
      global_id : aliased Interfaces.Integer_32;
   end record;
   pragma Convention (C, xcb_extension_t);

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
                         screen      : access xcbada_xproto.xcb_screen_t)
                         return xcb_connection_t;
   pragma Import (C, xcb_connect, "xcb_connect");

   --  Test whether the connection has shut down due to a fatal error
   function xcb_connection_has_error (c : xcb_connection_t)
      return Integer;
   pragma Import (C, xcb_connection_has_error, "xcb_connection_has_error");

   --  Forces any buffered output to be written to the server
   function xcb_flush (connection : xcb_connection_t) return Integer;
   pragma Import (C, xcb_flush, "xcb_flush");

   --  Caches reply information from QueryExtension requests.
   function xcb_get_extension_data (connection: xcb_connection_t;
                                    extension : xcb_extension_t)
      return access xcbada_xproto.xcb_query_extension_reply_t;
   pragma Import (C, xcb_get_extension_data, "xcb_get_extension_data");

   --  Access the data returned by the server
   function xcb_get_setup (connection : xcb_connection_t)
      return access xcbada_xproto.xcb_setup_t;
   pragma Import (C, xcb_get_setup, "xcb_get_setup");

   --  Returns the next event or error from the server
   function xcb_wait_for_event (connection : xcb_connection_t)
      return xcb_generic_event_t_p;
   pragma Import (C, xcb_wait_for_event, "xcb_wait_for_event");
end xcb;
