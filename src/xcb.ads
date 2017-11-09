-------------------------------------------------------------------------------
--                                                                           --
--                   Copyright (C) 2012-, Sietse van der Molen               --
--                                                                           --
--    This file is part of xcbada.                                          --
--                                                                           --
--    xcbada is free software: you can redistribute it and/or modify        --
--    it under the terms of the GNU General Public License as published by   --
--    the Free Software Foundation, either version 3 of the License, or      --
--    (at your option) any later version.                                    --
--                                                                           --
--    xcbada is distributed in the hope that it will be useful,             --
--    but WITHOUT ANY WARRANTY; without even the implied warranty of         --
--    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the          --
--    GNU General Public License for more details.                           --
--                                                                           --
--    You should have received a copy of the GNU General Public License      --
--    along with xcbada.  If not, see <http://www.gnu.org/licenses/>.       --
--                                                                           --
-------------------------------------------------------------------------------

with System,
     Interfaces.C,
     Interfaces.C.Strings;
limited with xcbada_xproto;
limited with xcbada_xinerama;

package xcb is
   package IC renames Interfaces.C;
   package ICS renames IC.Strings;
   pragma Linker_Options ("-lxcb");

   type xcb_unsigned32_arr is array (Integer range <>) of Interfaces.Unsigned_32;
   pragma Convention (C, xcb_unsigned32_arr);
   for xcb_unsigned32_arr'Component_Size use Interfaces.Unsigned_32'Size;

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

   type xcb_generic_event_t is record
      response_type : aliased Interfaces.Unsigned_8;
      pad0          : aliased Interfaces.Unsigned_8;
      sequence      : aliased Interfaces.Unsigned_16;
      pad1          : aliased xcb_unsigned32_arr (0 .. 6);
      full_sequence : aliased Interfaces.Unsigned_32;
   end record;
   type xcb_generic_event_t_p is access all xcb_generic_event_t;
   pragma Convention (C, xcb_generic_event_t);

  -- * @brief Generic iterator.
  -- * A generic iterator structure.
  --*< Data of the current iterator  
  --*< remaining elements  
  --*< index of the current iterator  
   type xcb_generic_iterator_t is record
      data : System.Address;
      c_rem : aliased Integer;
      index : aliased Integer;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_generic_iterator_t);

   type xcb_void_cookie_t is record
      sequence : aliased Integer;
   end record;
   pragma Convention (C, xcb_void_cookie_t);

   -- Connects to the X server.
   function connect (displayname : ICS.chars_ptr;
                     screen      : access xcbada_xproto.xcb_screen_t)
      return xcb_connection_t;
   pragma Import (C, connect, "xcb_connect");

   --  Test whether the connection has shut down due to a fatal error
   function connection_has_error (c : xcb_connection_t)
      return Integer;
   pragma Import (C, connection_has_error, "xcb_connection_has_error");

   --  Forces any buffered output to be written to the server
   function flush (connection : xcb_connection_t) return Integer;
   pragma Import (C, flush, "xcb_flush");

   --  Caches reply information from QueryExtension requests.
   function get_extension_data (connection: xcb_connection_t;
                                extension : xcb_extension_t)
      return access xcbada_xproto.xcb_query_extension_reply_t;
   pragma Import (C, get_extension_data, "xcb_get_extension_data");

   --  Access the data returned by the server
   function get_setup (connection : xcb_connection_t)
      return access xcbada_xproto.xcb_setup_t;
   pragma Import (C, get_setup, "xcb_get_setup");

   --  Returns the next event or error from the server
   function wait_for_event (connection : xcb_connection_t)
      return xcb_generic_event_t_p;
   pragma Import (C, wait_for_event, "xcb_wait_for_event");

   --  Returns the next event or error from the server
   function poll_for_event (connection : xcb_connection_t)
      return xcb_generic_event_t_p;
   pragma Import (C, poll_for_event, "xcb_poll_for_event");
end xcb;
--  vim:ts=3:expandtab:tw=80
