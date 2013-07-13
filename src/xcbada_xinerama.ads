-------------------------------------------------------------------------------
--                                                                           --
--                   Copyright (C) 2012-, Sietse van der Molen               --
--                                                                           --
--    This file is part of XCB_Ada.                                          --
--                                                                           --
--    XCB_Ada is free software: you can redistribute it and/or modify        --
--    it under the terms of the GNU General Public License as published by   --
--    the Free Software Foundation, either version 3 of the License, or      --
--    (at your option) any later version.                                    --
--                                                                           --
--    XCB_Ada is distributed in the hope that it will be useful,             --
--    but WITHOUT ANY WARRANTY; without even the implied warranty of         --
--    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the          --
--    GNU General Public License for more details.                           --
--                                                                           --
--    You should have received a copy of the GNU General Public License      --
--    along with XCB_Ada.  If not, see <http://www.gnu.org/licenses/>.       --
--                                                                           --
-------------------------------------------------------------------------------

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
--  vim:ts=3:expandtab:tw=80
