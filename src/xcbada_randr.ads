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

package xcbada_randr is
   subtype xcb_randr_output_t is Interfaces.Unsigned_32;

   xcb_randr_id : xcb.xcb_extension_t;
   pragma Import (C, xcb_randr_id, "xcb_randr_id");
end xcbada_randr;
--  vim:ts=3:expandtab:tw=80
