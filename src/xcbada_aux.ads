with System,
     Interfaces,
     Interfaces.C;
with xcb;
with xcbada_xproto;

package xcbada_aux is
   function get_screen (c      : xcb.xcb_connection_t;
                        screen : Interfaces.C.int) return xcb.xcb_screen_t_p;
   pragma Import (C, get_screen, "xcb_aux_get_screen");
end xcbada_aux;
