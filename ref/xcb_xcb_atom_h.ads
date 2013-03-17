with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with stdint_h;

package xcb_xcb_atom_h is

   function xcb_atom_name_by_screen (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : stdint_h.uint8_t) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/xcb_atom.h:10
   pragma Import (C, xcb_atom_name_by_screen, "xcb_atom_name_by_screen");

   function xcb_atom_name_by_resource (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : stdint_h.uint32_t) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/xcb_atom.h:11
   pragma Import (C, xcb_atom_name_by_resource, "xcb_atom_name_by_resource");

   function xcb_atom_name_unique (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : stdint_h.uint32_t) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/xcb_atom.h:12
   pragma Import (C, xcb_atom_name_unique, "xcb_atom_name_unique");

end xcb_xcb_atom_h;
