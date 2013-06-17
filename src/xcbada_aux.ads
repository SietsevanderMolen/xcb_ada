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
