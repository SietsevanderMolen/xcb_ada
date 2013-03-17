with Interfaces.C; use Interfaces.C;
with System;
with xcb_xproto_h;

package xcb_xcb_keysyms_h is

   --  skipped empty struct u_XCBKeySymbols

   --  skipped empty struct xcb_key_symbols_t

   function xcb_key_symbols_alloc (arg1 : System.Address) return System.Address;  -- /usr/include/xcb/xcb_keysyms.h:14
   pragma Import (C, xcb_key_symbols_alloc, "xcb_key_symbols_alloc");

   procedure xcb_key_symbols_free (arg1 : System.Address);  -- /usr/include/xcb/xcb_keysyms.h:16
   pragma Import (C, xcb_key_symbols_free, "xcb_key_symbols_free");

   function xcb_key_symbols_get_keysym
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_keycode_t;
      arg3 : int) return xcb_xproto_h.xcb_keysym_t;  -- /usr/include/xcb/xcb_keysyms.h:18
   pragma Import (C, xcb_key_symbols_get_keysym, "xcb_key_symbols_get_keysym");

  --*
  -- * @brief Get the keycodes attached to a keysyms.
  -- * There can be several value, so what is returned is an array of keycode
  -- * terminated by XCB_NO_SYMBOL. You are responsible to free it.
  -- * Be aware that this function can be slow. It will convert all
  -- * combinations of all available keycodes to keysyms to find the ones that
  -- * match.
  -- * @param syms Key symbols.
  -- * @param keysym The keysym to look for.
  -- * @return A XCB_NO_SYMBOL terminated array of keycode, or NULL if nothing is found.
  --  

   function xcb_key_symbols_get_keycode (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_keysym_t) return access xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xcb_keysyms.h:33
   pragma Import (C, xcb_key_symbols_get_keycode, "xcb_key_symbols_get_keycode");

   function xcb_key_press_lookup_keysym
     (arg1 : System.Address;
      arg2 : access xcb_xproto_h.xcb_key_press_event_t;
      arg3 : int) return xcb_xproto_h.xcb_keysym_t;  -- /usr/include/xcb/xcb_keysyms.h:36
   pragma Import (C, xcb_key_press_lookup_keysym, "xcb_key_press_lookup_keysym");

   function xcb_key_release_lookup_keysym
     (arg1 : System.Address;
      arg2 : access xcb_xproto_h.xcb_key_release_event_t;
      arg3 : int) return xcb_xproto_h.xcb_keysym_t;  -- /usr/include/xcb/xcb_keysyms.h:40
   pragma Import (C, xcb_key_release_lookup_keysym, "xcb_key_release_lookup_keysym");

   function xcb_refresh_keyboard_mapping (arg1 : System.Address; arg2 : access xcb_xproto_h.xcb_mapping_notify_event_t) return int;  -- /usr/include/xcb/xcb_keysyms.h:44
   pragma Import (C, xcb_refresh_keyboard_mapping, "xcb_refresh_keyboard_mapping");

  -- TODO:  need XLookupString equivalent  
  -- Tests for classes of symbols  
   function xcb_is_keypad_key (arg1 : xcb_xproto_h.xcb_keysym_t) return int;  -- /usr/include/xcb/xcb_keysyms.h:51
   pragma Import (C, xcb_is_keypad_key, "xcb_is_keypad_key");

   function xcb_is_private_keypad_key (arg1 : xcb_xproto_h.xcb_keysym_t) return int;  -- /usr/include/xcb/xcb_keysyms.h:53
   pragma Import (C, xcb_is_private_keypad_key, "xcb_is_private_keypad_key");

   function xcb_is_cursor_key (arg1 : xcb_xproto_h.xcb_keysym_t) return int;  -- /usr/include/xcb/xcb_keysyms.h:55
   pragma Import (C, xcb_is_cursor_key, "xcb_is_cursor_key");

   function xcb_is_pf_key (arg1 : xcb_xproto_h.xcb_keysym_t) return int;  -- /usr/include/xcb/xcb_keysyms.h:57
   pragma Import (C, xcb_is_pf_key, "xcb_is_pf_key");

   function xcb_is_function_key (arg1 : xcb_xproto_h.xcb_keysym_t) return int;  -- /usr/include/xcb/xcb_keysyms.h:59
   pragma Import (C, xcb_is_function_key, "xcb_is_function_key");

   function xcb_is_misc_function_key (arg1 : xcb_xproto_h.xcb_keysym_t) return int;  -- /usr/include/xcb/xcb_keysyms.h:61
   pragma Import (C, xcb_is_misc_function_key, "xcb_is_misc_function_key");

   function xcb_is_modifier_key (arg1 : xcb_xproto_h.xcb_keysym_t) return int;  -- /usr/include/xcb/xcb_keysyms.h:63
   pragma Import (C, xcb_is_modifier_key, "xcb_is_modifier_key");

end xcb_xcb_keysyms_h;
