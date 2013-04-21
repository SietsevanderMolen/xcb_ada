with System,
     Interfaces;
with xcb;
with Ada.Unchecked_Conversion;

package xcbada_xinerama is
   xcb_xinerama_id : aliased xcb.xcb_extension_t;
   pragma Import (C, xcb_xinerama_id, "xcb_xinerama_id");

   type xcb_xinerama_is_active_cookie_t is record
      sequence : aliased Interfaces.Unsigned_32;
   end record;
   pragma Convention (C, xcb_xinerama_is_active_cookie_t);

   type xcb_xinerama_is_active_reply_t is record
      response_type : aliased Interfaces.Unsigned_8;
      pad0          : aliased Interfaces.Unsigned_8;
      sequence      : aliased Interfaces.Unsigned_16;
      length        : aliased Interfaces.Unsigned_32;
      state         : aliased Interfaces.Unsigned_32;
   end record;
   pragma Convention (C, xcb_xinerama_is_active_reply_t);  -- /usr/include/xcb/xinerama.h:198

   function xcb_xinerama_is_active (connection : xcb.xcb_connection_t) 
      return xcb_xinerama_is_active_cookie_t;
   pragma Import (C, xcb_xinerama_is_active, "xcb_xinerama_is_active");
end xcbada_xinerama;
