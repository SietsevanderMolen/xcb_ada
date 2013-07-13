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
     Interfaces,
     Interfaces.C;
with xcb;
with xcbada_xproto;

package xcbada_aux is
   pragma Linker_Options ("-lxcb-util");
   function get_screen (c      : System.Address;
                        screen : Interfaces.C.int) return access xcbada_xproto.xcb_screen_t;
   pragma Import (C, get_screen, "xcb_aux_get_screen");
end xcbada_aux;
--  vim:ts=3:expandtab:tw=80
