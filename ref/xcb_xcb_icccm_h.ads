with Interfaces.C; use Interfaces.C;
with xcb_xproto_h;
with stdint_h;
with Interfaces.C.Strings;
with System;
with xcb_xcb_h;
with sys_types_h;

package xcb_xcb_icccm_h is

   --  unsupported macro: XCB_ICCCM_NUM_WM_SIZE_HINTS_ELEMENTS 18
   --  unsupported macro: XCB_ICCCM_NUM_WM_HINTS_ELEMENTS 9
   --  unsupported macro: XCB_ICCCM_WM_ALL_HINTS (XCB_ICCCM_WM_HINT_INPUT | XCB_ICCCM_WM_HINT_STATE | XCB_ICCCM_WM_HINT_ICON_PIXMAP | XCB_ICCCM_WM_HINT_ICON_WINDOW | XCB_ICCCM_WM_HINT_ICON_POSITION | XCB_ICCCM_WM_HINT_ICON_MASK | XCB_ICCCM_WM_HINT_WINDOW_GROUP)
  -- * Copyright (C) 2008 Arnaud Fontaine <arnau@debian.org>
  -- * Copyright (C) 2007-2008 Vincent Torri <vtorri@univ-evry.fr>
  -- *
  -- * Permission is hereby granted, free of charge, to any person
  -- * obtaining a copy of this software and associated documentation
  -- * files (the "Software"), to deal in the Software without
  -- * restriction, including without limitation the rights to use, copy,
  -- * modify, merge, publish, distribute, sublicense, and/or sell copies
  -- * of the Software, and to permit persons to whom the Software is
  -- * furnished to do so, subject to the following conditions:
  -- *
  -- * The above copyright notice and this permission notice shall be
  -- * included in all copies or substantial portions of the Software.
  -- *
  -- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
  -- * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
  -- * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
  -- * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY
  -- * CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF
  -- * CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
  -- * WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
  -- *
  -- * Except as contained in this notice, the names of the authors or
  -- * their institutions shall not be used in advertising or otherwise to
  -- * promote the sale, use or other dealings in this Software without
  -- * prior written authorization from the authors.
  --  

  --*
  -- * @defgroup xcb__icccm_t XCB ICCCM Functions
  -- *
  -- * These functions allow easy handling of the protocol described in the
  -- * Inter-Client Communication Conventions Manual.
  -- *
  -- * @{
  --  

  --*
  -- * @brief TextProperty reply structure.
  --  

  --* Store reply to avoid memory allocation, should normally not be
  --    used directly  

  --* Encoding used  
  --* Length of the name field above  
  --* Property value  
  --* Format, may be 8, 16 or 32  
   type xcb_icccm_get_text_property_reply_t is record
      u_reply : access xcb_xproto_h.xcb_get_property_reply_t;  -- /usr/include/xcb/xcb_icccm.h:54
      encoding : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_icccm.h:56
      name_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_icccm.h:58
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/xcb_icccm.h:60
      format : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xcb_icccm.h:62
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_icccm_get_text_property_reply_t);  -- /usr/include/xcb/xcb_icccm.h:63

  --*
  -- * @brief Deliver a GetProperty request to the X server.
  -- * @param c The connection to the X server.
  -- * @param window Window X identifier.
  -- * @param property Property atom to get.
  -- * @return The request cookie.
  -- *
  -- * Allow to get a window property, in most case you might want to use
  -- * above functions to get an ICCCM property for a given window.
  --  

   function xcb_icccm_get_text_property
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_xproto_h.xcb_atom_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_icccm.h:75
   pragma Import (C, xcb_icccm_get_text_property, "xcb_icccm_get_text_property");

  --*
  -- * @see xcb_icccm_get_text_property()
  --  

   function xcb_icccm_get_text_property_unchecked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_xproto_h.xcb_atom_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_icccm.h:82
   pragma Import (C, xcb_icccm_get_text_property_unchecked, "xcb_icccm_get_text_property_unchecked");

  --*
  -- * @brief Fill given structure with the property value of a window.
  -- * @param c The connection to the X server.
  -- * @param cookie TextProperty request cookie.
  -- * @param prop TextProperty reply which is to be filled.
  -- * @param e Error if any.
  -- * @return Return 1 on success, 0 otherwise.
  -- *
  -- * If the function return 0 (failure), the content of prop is unmodified and
  -- * therefore the structure must not be wiped.
  -- *
  -- * The parameter e supplied to this function must be NULL if
  -- * xcb_icccm_get_text_property_unchecked() is used.  Otherwise, it stores
  -- * the error if any.  prop structure members should be freed by
  -- * xcb_icccm_get_text_property_reply_wipe().
  --  

   function xcb_icccm_get_text_property_reply
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_get_property_cookie_t;
      arg3 : access xcb_icccm_get_text_property_reply_t;
      arg4 : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_icccm.h:102
   pragma Import (C, xcb_icccm_get_text_property_reply, "xcb_icccm_get_text_property_reply");

  --*
  -- * @brief Wipe prop structure members previously allocated by
  -- *        xcb_icccm_get_text_property_reply().
  -- * @param prop prop structure whose members is going to be freed.
  --  

   procedure xcb_icccm_get_text_property_reply_wipe (arg1 : access xcb_icccm_get_text_property_reply_t);  -- /usr/include/xcb/xcb_icccm.h:112
   pragma Import (C, xcb_icccm_get_text_property_reply_wipe, "xcb_icccm_get_text_property_reply_wipe");

  -- WM_NAME  
  --*
  -- * @brief Deliver a SetProperty request to set WM_NAME property value.
  -- * @param c The connection to the X server.
  -- * @param window Window X identifier.
  -- * @param encoding Encoding used for the data passed in the name parameter, the set property will also have this encoding as its type.
  -- * @param format Encoding format.
  -- * @param name_len Length of name value to set.
  -- * @param name Name value to set.
  --  

   function xcb_icccm_set_wm_name_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_xproto_h.xcb_atom_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint32_t;
      arg6 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_icccm.h:125
   pragma Import (C, xcb_icccm_set_wm_name_checked, "xcb_icccm_set_wm_name_checked");

  --*
  -- * @see xcb_icccm_set_wm_name_checked()
  --  

   function xcb_icccm_set_wm_name
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_xproto_h.xcb_atom_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint32_t;
      arg6 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_icccm.h:135
   pragma Import (C, xcb_icccm_set_wm_name, "xcb_icccm_set_wm_name");

  --*
  -- * @brief Deliver a GetProperty request to the X server for WM_NAME.
  -- * @param c The connection to the X server.
  -- * @param window Window X identifier.
  -- * @return The request cookie.
  --  

   function xcb_icccm_get_wm_name (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_icccm.h:145
   pragma Import (C, xcb_icccm_get_wm_name, "xcb_icccm_get_wm_name");

  --*
  -- * @see xcb_icccm_get_wm_name()
  --  

   function xcb_icccm_get_wm_name_unchecked (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_icccm.h:151
   pragma Import (C, xcb_icccm_get_wm_name_unchecked, "xcb_icccm_get_wm_name_unchecked");

  --*
  -- * @brief Fill given structure with the WM_NAME property of a window.
  -- * @param c The connection to the X server.
  -- * @param cookie Request cookie.
  -- * @param prop WM_NAME property value.
  -- * @param e Error if any.
  -- * @see xcb_icccm_get_text_property_reply()
  -- * @return Return 1 on success, 0 otherwise.
  --  

   function xcb_icccm_get_wm_name_reply
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_get_property_cookie_t;
      arg3 : access xcb_icccm_get_text_property_reply_t;
      arg4 : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_icccm.h:163
   pragma Import (C, xcb_icccm_get_wm_name_reply, "xcb_icccm_get_wm_name_reply");

  -- WM_ICON_NAME  
  --*
  -- * @brief Deliver a SetProperty request to set WM_ICON_NAME property value.
  -- * @param c The connection to the X server.
  -- * @param window Window X identifier.
  -- * @param encoding Encoding used for the data passed in the name parameter, the set property will also have this encoding as its type.
  -- * @param format Encoding format.
  -- * @param name_len Length of name value to set.
  -- * @param name Name value to set.
  --  

   function xcb_icccm_set_wm_icon_name_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_xproto_h.xcb_atom_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint32_t;
      arg6 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_icccm.h:179
   pragma Import (C, xcb_icccm_set_wm_icon_name_checked, "xcb_icccm_set_wm_icon_name_checked");

  --*
  -- * @see xcb_icccm_set_wm_icon_name_checked()
  --  

   function xcb_icccm_set_wm_icon_name
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_xproto_h.xcb_atom_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint32_t;
      arg6 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_icccm.h:189
   pragma Import (C, xcb_icccm_set_wm_icon_name, "xcb_icccm_set_wm_icon_name");

  --*
  -- * @brief Send request to get WM_ICON_NAME property of a window.
  -- * @param c The connection to the X server.
  -- * @param window Window X identifier.
  -- * @return The request cookie.
  --  

   function xcb_icccm_get_wm_icon_name (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_icccm.h:202
   pragma Import (C, xcb_icccm_get_wm_icon_name, "xcb_icccm_get_wm_icon_name");

  --*
  -- * @see xcb_icccm_get_wm_icon_name()
  --  

   function xcb_icccm_get_wm_icon_name_unchecked (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_icccm.h:208
   pragma Import (C, xcb_icccm_get_wm_icon_name_unchecked, "xcb_icccm_get_wm_icon_name_unchecked");

  --*
  -- * @brief Fill given structure with the WM_ICON_NAME property of a window.
  -- * @param c The connection to the X server.
  -- * @param cookie Request cookie.
  -- * @param prop WM_ICON_NAME property value.
  -- * @param e Error if any.
  -- * @see xcb_icccm_get_text_property_reply()
  -- * @return Return 1 on success, 0 otherwise.
  --  

   function xcb_icccm_get_wm_icon_name_reply
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_get_property_cookie_t;
      arg3 : access xcb_icccm_get_text_property_reply_t;
      arg4 : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_icccm.h:220
   pragma Import (C, xcb_icccm_get_wm_icon_name_reply, "xcb_icccm_get_wm_icon_name_reply");

  -- WM_COLORMAP_WINDOWS  
  --*
  -- * @brief Deliver a ChangeProperty request to set WM_COLORMAP_WINDOWS property value.
  -- * @param c The connection to the X server.
  -- * @param wm_colormap_windows The WM_COLORMAP_WINDOWS atom
  -- * @param window Window X identifier.
  -- * @param list_len Windows list len.
  -- * @param list Windows list.
  -- * @return The request cookie.
  --  

   function xcb_icccm_set_wm_colormap_windows_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_xproto_h.xcb_atom_t;
      arg4 : stdint_h.uint32_t;
      arg5 : access xcb_xproto_h.xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_icccm.h:236
   pragma Import (C, xcb_icccm_set_wm_colormap_windows_checked, "xcb_icccm_set_wm_colormap_windows_checked");

  --*
  -- * @see xcb_icccm_set_wm_colormap_windows_checked()
  --  

   function xcb_icccm_set_wm_colormap_windows
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_xproto_h.xcb_atom_t;
      arg4 : stdint_h.uint32_t;
      arg5 : access xcb_xproto_h.xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_icccm.h:245
   pragma Import (C, xcb_icccm_set_wm_colormap_windows, "xcb_icccm_set_wm_colormap_windows");

  --*
  -- * @brief WM_COLORMAP_WINDOWS structure.
  --  

  --* Length of the windows list  
  --* Windows list  
  --* Store reply to avoid memory allocation, should normally not be
  --    used directly  

   type xcb_icccm_get_wm_colormap_windows_reply_t is record
      windows_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_icccm.h:256
      windows : access xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xcb_icccm.h:258
      u_reply : access xcb_xproto_h.xcb_get_property_reply_t;  -- /usr/include/xcb/xcb_icccm.h:261
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_icccm_get_wm_colormap_windows_reply_t);  -- /usr/include/xcb/xcb_icccm.h:262

  --*
  -- * @brief Send request to get WM_COLORMAP_WINDOWS property of a given window.
  -- * @param c The connection to the X server.
  -- * @param window Window X identifier.
  -- * @return The request cookie.
  --  

   function xcb_icccm_get_wm_colormap_windows
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_xproto_h.xcb_atom_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_icccm.h:270
   pragma Import (C, xcb_icccm_get_wm_colormap_windows, "xcb_icccm_get_wm_colormap_windows");

  --*
  -- * @see xcb_icccm_get_wm_colormap_windows()
  --  

   function xcb_icccm_get_wm_colormap_windows_unchecked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_xproto_h.xcb_atom_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_icccm.h:277
   pragma Import (C, xcb_icccm_get_wm_colormap_windows_unchecked, "xcb_icccm_get_wm_colormap_windows_unchecked");

  --*
  -- * @brief Fill the given structure with the WM_COLORMAP_WINDOWS property of a window.
  -- * @param reply The reply of the GetProperty request.
  -- * @param colormap_windows WM_COLORMAP property value.
  -- * @return Return 1 on success, 0 otherwise.
  -- *
  -- * protocols structure members should be freed by
  -- * xcb_icccm_get_wm_protocols_reply_wipe().
  --  

   function xcb_icccm_get_wm_colormap_windows_from_reply (arg1 : access xcb_xproto_h.xcb_get_property_reply_t; arg2 : access xcb_icccm_get_wm_colormap_windows_reply_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_icccm.h:290
   pragma Import (C, xcb_icccm_get_wm_colormap_windows_from_reply, "xcb_icccm_get_wm_colormap_windows_from_reply");

  --*
  -- * @brief Fill the given structure with the WM_COLORMAP_WINDOWS property of a window.
  -- * @param c The connection to the X server.
  -- * @param cookie Request cookie.
  -- * @param protocols WM_COLORMAP_WINDOWS property value.
  -- * @param e Error if any.
  -- * @return Return 1 on success, 0 otherwise.
  -- *
  -- * The parameter e supplied to this function must be NULL if
  -- * xcb_icccm_get_wm_colormap_windows_unchecked() is used.  Otherwise, it
  -- * stores the error if any. protocols structure members should be
  -- * freed by xcb_icccm_get_wm_colormap_windows_reply_wipe().
  --  

   function xcb_icccm_get_wm_colormap_windows_reply
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_get_property_cookie_t;
      arg3 : access xcb_icccm_get_wm_colormap_windows_reply_t;
      arg4 : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_icccm.h:305
   pragma Import (C, xcb_icccm_get_wm_colormap_windows_reply, "xcb_icccm_get_wm_colormap_windows_reply");

  --*
  -- * @brief Wipe protocols structure members previously allocated by
  -- *        xcb_icccm_get_wm_colormap_windows_reply().
  -- * @param windows windows structure whose members is going to be freed.
  --  

   procedure xcb_icccm_get_wm_colormap_windows_reply_wipe (arg1 : access xcb_icccm_get_wm_colormap_windows_reply_t);  -- /usr/include/xcb/xcb_icccm.h:315
   pragma Import (C, xcb_icccm_get_wm_colormap_windows_reply_wipe, "xcb_icccm_get_wm_colormap_windows_reply_wipe");

  -- WM_CLIENT_MACHINE  
  --*
  -- * @brief Deliver a SetProperty request to set WM_CLIENT_MACHINE property value.
  -- * @param c The connection to the X server.
  -- * @param window Window X identifier.
  -- * @param encoding Encoding used for the data passed in the name parameter, the set property will also have this encoding as its type.
  -- * @param format Encoding format.
  -- * @param name_len Length of name value to set.
  -- * @param name Name value to set.
  --  

   function xcb_icccm_set_wm_client_machine_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_xproto_h.xcb_atom_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint32_t;
      arg6 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_icccm.h:328
   pragma Import (C, xcb_icccm_set_wm_client_machine_checked, "xcb_icccm_set_wm_client_machine_checked");

  --*
  -- * @see xcb_icccm_set_wm_client_machine_checked()
  --  

   function xcb_icccm_set_wm_client_machine
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_xproto_h.xcb_atom_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint32_t;
      arg6 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_icccm.h:338
   pragma Import (C, xcb_icccm_set_wm_client_machine, "xcb_icccm_set_wm_client_machine");

  --*
  -- * @brief Send request to get WM_CLIENT_MACHINE property of a window.
  -- * @param c The connection to the X server.
  -- * @param window Window X identifier.
  -- * @return The request cookie.
  --  

   function xcb_icccm_get_wm_client_machine (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_icccm.h:351
   pragma Import (C, xcb_icccm_get_wm_client_machine, "xcb_icccm_get_wm_client_machine");

  --*
  -- * @see xcb_icccm_get_wm_client_machine()
  --  

   function xcb_icccm_get_wm_client_machine_unchecked (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_icccm.h:357
   pragma Import (C, xcb_icccm_get_wm_client_machine_unchecked, "xcb_icccm_get_wm_client_machine_unchecked");

  --*
  -- * @brief Fill given structure with the WM_CLIENT_MACHINE property of a window.
  -- * @param c The connection to the X server.
  -- * @param cookie Request cookie.
  -- * @param prop WM_CLIENT_MACHINE property value.
  -- * @param e Error if any.
  -- * @see xcb_icccm_get_text_property_reply()
  -- * @return Return 1 on success, 0 otherwise.
  --  

   function xcb_icccm_get_wm_client_machine_reply
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_get_property_cookie_t;
      arg3 : access xcb_icccm_get_text_property_reply_t;
      arg4 : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_icccm.h:369
   pragma Import (C, xcb_icccm_get_wm_client_machine_reply, "xcb_icccm_get_wm_client_machine_reply");

  -- WM_CLASS  
  --*
  -- * @brief WM_CLASS hint structure
  --  

  --*
  -- * @brief Deliver a SetProperty request to set WM_CLASS property value.
  -- *
  -- * WM_CLASS string is a concatenation of the instance and class name
  -- * strings respectively (including null character).
  -- *
  -- * @param c The connection to the X server.
  -- * @param window Window X identifier.
  -- * @param class_len Length of WM_CLASS string.
  -- * @param class_name WM_CLASS string.
  -- * @return The request cookie.
  --  

   function xcb_icccm_set_wm_class_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint32_t;
      arg4 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_icccm.h:392
   pragma Import (C, xcb_icccm_set_wm_class_checked, "xcb_icccm_set_wm_class_checked");

  --*
  -- * @see xcb_icccm_set_wm_class_checked()
  --  

   function xcb_icccm_set_wm_class
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint32_t;
      arg4 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_icccm.h:400
   pragma Import (C, xcb_icccm_set_wm_class, "xcb_icccm_set_wm_class");

  --* Instance name  
  --* Class of application  
  --* Store reply to avoid memory allocation, should normally not be
  --    used directly  

   type xcb_icccm_get_wm_class_reply_t is record
      instance_name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/xcb_icccm.h:407
      class_name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/xcb_icccm.h:409
      u_reply : access xcb_xproto_h.xcb_get_property_reply_t;  -- /usr/include/xcb/xcb_icccm.h:412
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_icccm_get_wm_class_reply_t);  -- /usr/include/xcb/xcb_icccm.h:413

  --*
  -- * @brief Deliver a GetProperty request to the X server for WM_CLASS.
  -- * @param c The connection to the X server.
  -- * @param window Window X identifier.
  -- * @return The request cookie.
  --  

   function xcb_icccm_get_wm_class (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_icccm.h:421
   pragma Import (C, xcb_icccm_get_wm_class, "xcb_icccm_get_wm_class");

  --*
  -- * @see xcb_icccm_get_wm_class()
  --  

   function xcb_icccm_get_wm_class_unchecked (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_icccm.h:427
   pragma Import (C, xcb_icccm_get_wm_class_unchecked, "xcb_icccm_get_wm_class_unchecked");

  --*
  -- * @brief Fill give structure with the WM_CLASS property of a window.
  -- * @param prop The property structure to fill.
  -- * @param reply The property request reply.
  -- * @return Return 1 on success, 0 otherwise.
  --  

   function xcb_icccm_get_wm_class_from_reply (arg1 : access xcb_icccm_get_wm_class_reply_t; arg2 : access xcb_xproto_h.xcb_get_property_reply_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_icccm.h:438
   pragma Import (C, xcb_icccm_get_wm_class_from_reply, "xcb_icccm_get_wm_class_from_reply");

  --*
  -- * @brief Fill given structure with the WM_CLASS property of a window.
  -- * @param c The connection to the X server.
  -- * @param cookie Request cookie.
  -- * @param prop WM_CLASS property value.
  -- * @param e Error if any.
  -- * @return Return 1 on success, 0 otherwise.
  -- *
  -- * The parameter e supplied to this function must be NULL if
  -- * xcb_icccm_get_wm_class_unchecked() is used.  Otherwise, it stores the
  -- * error if any. prop structure members should be freed by
  -- * xcb_icccm_get_wm_class_reply_wipe().
  --  

   function xcb_icccm_get_wm_class_reply
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_get_property_cookie_t;
      arg3 : access xcb_icccm_get_wm_class_reply_t;
      arg4 : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_icccm.h:454
   pragma Import (C, xcb_icccm_get_wm_class_reply, "xcb_icccm_get_wm_class_reply");

  --*
  -- * @brief Wipe prop structure members previously allocated by
  -- *        xcb_icccm_get_wm_class_reply().
  -- * @param prop prop structure whose members is going to be freed.
  --  

   procedure xcb_icccm_get_wm_class_reply_wipe (arg1 : access xcb_icccm_get_wm_class_reply_t);  -- /usr/include/xcb/xcb_icccm.h:464
   pragma Import (C, xcb_icccm_get_wm_class_reply_wipe, "xcb_icccm_get_wm_class_reply_wipe");

  -- WM_TRANSIENT_FOR  
  --*
  -- * @brief Deliver a SetProperty request to set WM_TRANSIENT_FOR property value.
  -- * @param c The connection to the X server.
  -- * @param window Window X identifier.
  -- * @param transient_for_window The WM_TRANSIENT_FOR window X identifier.
  -- * @return The request cookie.
  --  

   function xcb_icccm_set_wm_transient_for_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_xproto_h.xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_icccm.h:475
   pragma Import (C, xcb_icccm_set_wm_transient_for_checked, "xcb_icccm_set_wm_transient_for_checked");

  --*
  -- * @see xcb_icccm_set_wm_transient_for
  --  

   function xcb_icccm_set_wm_transient_for
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_xproto_h.xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_icccm.h:482
   pragma Import (C, xcb_icccm_set_wm_transient_for, "xcb_icccm_set_wm_transient_for");

  --*
  -- * @brief Send request to get WM_TRANSIENT_FOR property of a window.
  -- * @param c The connection to the X server
  -- * @param window Window X identifier.
  -- * @return The request cookie.
  --  

   function xcb_icccm_get_wm_transient_for (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_icccm.h:492
   pragma Import (C, xcb_icccm_get_wm_transient_for, "xcb_icccm_get_wm_transient_for");

  --*
  -- * @see xcb_icccm_get_wm_transient_for_unchecked()
  --  

   function xcb_icccm_get_wm_transient_for_unchecked (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_icccm.h:498
   pragma Import (C, xcb_icccm_get_wm_transient_for_unchecked, "xcb_icccm_get_wm_transient_for_unchecked");

  --*
  -- * @brief Fill given window pointer with the WM_TRANSIENT_FOR property of a window.
  -- * @param prop WM_TRANSIENT_FOR property value.
  -- * @param reply The get property request reply.
  -- * @return Return 1 on success, 0 otherwise.
  --  

   function xcb_icccm_get_wm_transient_for_from_reply (arg1 : access xcb_xproto_h.xcb_window_t; arg2 : access xcb_xproto_h.xcb_get_property_reply_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_icccm.h:508
   pragma Import (C, xcb_icccm_get_wm_transient_for_from_reply, "xcb_icccm_get_wm_transient_for_from_reply");

  --*
  -- * @brief Fill given structure with the WM_TRANSIENT_FOR property of a window.
  -- * @param c The connection to the X server.
  -- * @param cookie Request cookie.
  -- * @param prop WM_TRANSIENT_FOR property value.
  -- * @param e Error if any.
  -- * @return Return 1 on success, 0 otherwise.
  -- *
  -- * The parameter e supplied to this function must be NULL if
  -- * xcb_icccm_get_wm_transient_for_unchecked() is used.  Otherwise, it stores
  -- * the error if any.
  --  

   function xcb_icccm_get_wm_transient_for_reply
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_get_property_cookie_t;
      arg3 : access xcb_xproto_h.xcb_window_t;
      arg4 : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_icccm.h:522
   pragma Import (C, xcb_icccm_get_wm_transient_for_reply, "xcb_icccm_get_wm_transient_for_reply");

  -- WM_SIZE_HINTS  
   subtype xcb_icccm_size_hints_flags_t is unsigned;
   XCB_ICCCM_SIZE_HINT_US_POSITION : constant xcb_icccm_size_hints_flags_t := 1;
   XCB_ICCCM_SIZE_HINT_US_SIZE : constant xcb_icccm_size_hints_flags_t := 2;
   XCB_ICCCM_SIZE_HINT_P_POSITION : constant xcb_icccm_size_hints_flags_t := 4;
   XCB_ICCCM_SIZE_HINT_P_SIZE : constant xcb_icccm_size_hints_flags_t := 8;
   XCB_ICCCM_SIZE_HINT_P_MIN_SIZE : constant xcb_icccm_size_hints_flags_t := 16;
   XCB_ICCCM_SIZE_HINT_P_MAX_SIZE : constant xcb_icccm_size_hints_flags_t := 32;
   XCB_ICCCM_SIZE_HINT_P_RESIZE_INC : constant xcb_icccm_size_hints_flags_t := 64;
   XCB_ICCCM_SIZE_HINT_P_ASPECT : constant xcb_icccm_size_hints_flags_t := 128;
   XCB_ICCCM_SIZE_HINT_BASE_SIZE : constant xcb_icccm_size_hints_flags_t := 256;
   XCB_ICCCM_SIZE_HINT_P_WIN_GRAVITY : constant xcb_icccm_size_hints_flags_t := 512;  -- /usr/include/xcb/xcb_icccm.h:540

  --*
  -- * @brief Size hints structure.
  --  

  --* User specified flags  
  --* User-specified position  
  --* User-specified size  
  --* Program-specified minimum size  
  --* Program-specified maximum size  
  --* Program-specified resize increments  
  --* Program-specified minimum aspect ratios  
  --* Program-specified maximum aspect ratios  
  --* Program-specified base size  
  --* Program-specified window gravity  
   type xcb_size_hints_t is record
      flags : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_icccm.h:547
      x : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xcb_icccm.h:549
      y : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xcb_icccm.h:549
      width : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xcb_icccm.h:551
      height : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xcb_icccm.h:551
      min_width : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xcb_icccm.h:553
      min_height : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xcb_icccm.h:553
      max_width : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xcb_icccm.h:555
      max_height : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xcb_icccm.h:555
      width_inc : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xcb_icccm.h:557
      height_inc : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xcb_icccm.h:557
      min_aspect_num : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xcb_icccm.h:559
      min_aspect_den : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xcb_icccm.h:559
      max_aspect_num : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xcb_icccm.h:561
      max_aspect_den : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xcb_icccm.h:561
      base_width : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xcb_icccm.h:563
      base_height : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xcb_icccm.h:563
      win_gravity : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_icccm.h:565
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_size_hints_t);  -- /usr/include/xcb/xcb_icccm.h:566

  --* Number of elements in this structure  
  --*
  -- * @brief Set size hints to a given position.
  -- * @param hints SIZE_HINTS structure.
  -- * @param user_specified Is the size user-specified?
  -- * @param x The X position.
  -- * @param y The Y position.
  --  

   procedure xcb_icccm_size_hints_set_position
     (arg1 : access xcb_size_hints_t;
      arg2 : int;
      arg3 : sys_types_h.int32_t;
      arg4 : sys_types_h.int32_t);  -- /usr/include/xcb/xcb_icccm.h:578
   pragma Import (C, xcb_icccm_size_hints_set_position, "xcb_icccm_size_hints_set_position");

  --*
  -- * @brief Set size hints to a given size.
  -- * @param hints SIZE_HINTS structure.
  -- * @param user_specified is the size user-specified?
  -- * @param width The width.
  -- * @param height The height.
  --  

   procedure xcb_icccm_size_hints_set_size
     (arg1 : access xcb_size_hints_t;
      arg2 : int;
      arg3 : sys_types_h.int32_t;
      arg4 : sys_types_h.int32_t);  -- /usr/include/xcb/xcb_icccm.h:588
   pragma Import (C, xcb_icccm_size_hints_set_size, "xcb_icccm_size_hints_set_size");

  --*
  -- * @brief Set size hints to a given minimum size.
  -- * @param hints SIZE_HINTS structure.
  -- * @param width The minimum width.
  -- * @param height The minimum height.
  --  

   procedure xcb_icccm_size_hints_set_min_size
     (arg1 : access xcb_size_hints_t;
      arg2 : sys_types_h.int32_t;
      arg3 : sys_types_h.int32_t);  -- /usr/include/xcb/xcb_icccm.h:597
   pragma Import (C, xcb_icccm_size_hints_set_min_size, "xcb_icccm_size_hints_set_min_size");

  --*
  -- * @brief Set size hints to a given maximum size.
  -- * @param hints SIZE_HINTS structure.
  -- * @param width The maximum width.
  -- * @param height The maximum height.
  --  

   procedure xcb_icccm_size_hints_set_max_size
     (arg1 : access xcb_size_hints_t;
      arg2 : sys_types_h.int32_t;
      arg3 : sys_types_h.int32_t);  -- /usr/include/xcb/xcb_icccm.h:606
   pragma Import (C, xcb_icccm_size_hints_set_max_size, "xcb_icccm_size_hints_set_max_size");

  --*
  -- * @brief Set size hints to a given resize increments.
  -- * @param hints SIZE_HINTS structure.
  -- * @param width The resize increments width.
  -- * @param height The resize increments height.
  --  

   procedure xcb_icccm_size_hints_set_resize_inc
     (arg1 : access xcb_size_hints_t;
      arg2 : sys_types_h.int32_t;
      arg3 : sys_types_h.int32_t);  -- /usr/include/xcb/xcb_icccm.h:615
   pragma Import (C, xcb_icccm_size_hints_set_resize_inc, "xcb_icccm_size_hints_set_resize_inc");

  --*
  -- * @brief Set size hints to a given aspect ratios.
  -- * @param hints SIZE_HINTS structure.
  -- * @param min_aspect_num The minimum aspect ratios for the width.
  -- * @param min_aspect_den The minimum aspect ratios for the height.
  -- * @param max_aspect_num The maximum aspect ratios for the width.
  -- * @param max_aspect_den The maximum aspect ratios for the height.
  --  

   procedure xcb_icccm_size_hints_set_aspect
     (arg1 : access xcb_size_hints_t;
      arg2 : sys_types_h.int32_t;
      arg3 : sys_types_h.int32_t;
      arg4 : sys_types_h.int32_t;
      arg5 : sys_types_h.int32_t);  -- /usr/include/xcb/xcb_icccm.h:626
   pragma Import (C, xcb_icccm_size_hints_set_aspect, "xcb_icccm_size_hints_set_aspect");

  --*
  -- * @brief Set size hints to a given base size.
  -- * @param hints SIZE_HINTS structure.
  -- * @param base_width Base width.
  -- * @param base_height Base height.
  --  

   procedure xcb_icccm_size_hints_set_base_size
     (arg1 : access xcb_size_hints_t;
      arg2 : sys_types_h.int32_t;
      arg3 : sys_types_h.int32_t);  -- /usr/include/xcb/xcb_icccm.h:636
   pragma Import (C, xcb_icccm_size_hints_set_base_size, "xcb_icccm_size_hints_set_base_size");

  --*
  -- * @brief Set size hints to a given window gravity.
  -- * @param hints SIZE_HINTS structure.
  -- * @param win_gravity Window gravity value.
  --  

   procedure xcb_icccm_size_hints_set_win_gravity (arg1 : access xcb_size_hints_t; arg2 : xcb_xproto_h.xcb_gravity_t);  -- /usr/include/xcb/xcb_icccm.h:644
   pragma Import (C, xcb_icccm_size_hints_set_win_gravity, "xcb_icccm_size_hints_set_win_gravity");

  --*
  -- * @brief Deliver a ChangeProperty request to set a value to a given property.
  -- * @param c The connection to the X server.
  -- * @param window Window X identifier.
  -- * @param property Property to set value for.
  -- * @param hints Hints value to set.
  --  

   function xcb_icccm_set_wm_size_hints_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_xproto_h.xcb_atom_t;
      arg4 : access xcb_size_hints_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_icccm.h:654
   pragma Import (C, xcb_icccm_set_wm_size_hints_checked, "xcb_icccm_set_wm_size_hints_checked");

  --*
  -- * @see xcb_icccm_set_wm_size_hints_checked()
  --  

   function xcb_icccm_set_wm_size_hints
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_xproto_h.xcb_atom_t;
      arg4 : access xcb_size_hints_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_icccm.h:662
   pragma Import (C, xcb_icccm_set_wm_size_hints, "xcb_icccm_set_wm_size_hints");

  --*
  -- * @brief Send request to get size hints structure for the named property.
  -- * @param c The connection to the X server.
  -- * @param window Window X identifier.
  -- * @param property Specify the property name.
  -- * @return The request cookie.
  --  

   function xcb_icccm_get_wm_size_hints
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_xproto_h.xcb_atom_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_icccm.h:674
   pragma Import (C, xcb_icccm_get_wm_size_hints, "xcb_icccm_get_wm_size_hints");

  --*
  -- * @see xcb_icccm_get_wm_size_hints()
  --  

   function xcb_icccm_get_wm_size_hints_unchecked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_xproto_h.xcb_atom_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_icccm.h:681
   pragma Import (C, xcb_icccm_get_wm_size_hints_unchecked, "xcb_icccm_get_wm_size_hints_unchecked");

  --*
  -- * @brief Fill given structure with the size hints of the named property.
  -- * @param c The connection to the X server.
  -- * @param cookie Request cookie.
  -- * @param hints Size hints structure.
  -- * @param e Error if any.
  -- * @return Return 1 on success, 0 otherwise.
  -- *
  -- * The parameter e supplied to this function must be NULL if
  -- * xcb_icccm_get_wm_size_hints_unchecked() is used.  Otherwise, it stores
  -- * the error if any. The returned pointer should be freed.
  --  

   function xcb_icccm_get_wm_size_hints_reply
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_get_property_cookie_t;
      arg3 : access xcb_size_hints_t;
      arg4 : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_icccm.h:697
   pragma Import (C, xcb_icccm_get_wm_size_hints_reply, "xcb_icccm_get_wm_size_hints_reply");

  -- WM_NORMAL_HINTS  
  --*
  -- * @brief Deliver a ChangeProperty request to set WM_NORMAL_HINTS property value.
  -- * @param c The connection to the X server.
  -- * @param window Window X identifier.
  -- * @param hints Hints value to set.
  --  

   function xcb_icccm_set_wm_normal_hints_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : access xcb_size_hints_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_icccm.h:710
   pragma Import (C, xcb_icccm_set_wm_normal_hints_checked, "xcb_icccm_set_wm_normal_hints_checked");

  --*
  -- * @see xcb_icccm_set_wm_normal_hints_checked()
  --  

   function xcb_icccm_set_wm_normal_hints
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : access xcb_size_hints_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_icccm.h:717
   pragma Import (C, xcb_icccm_set_wm_normal_hints, "xcb_icccm_set_wm_normal_hints");

  --*
  -- * @brief Send request to get WM_NORMAL_HINTS property of a window.
  -- * @param c The connection to the X server.
  -- * @param window Window X identifier.
  -- * @return The request cookie.
  --  

   function xcb_icccm_get_wm_normal_hints (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_icccm.h:727
   pragma Import (C, xcb_icccm_get_wm_normal_hints, "xcb_icccm_get_wm_normal_hints");

  --*
  -- * @see xcb_icccm_get_wm_normal_hints()
  --  

   function xcb_icccm_get_wm_normal_hints_unchecked (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_icccm.h:733
   pragma Import (C, xcb_icccm_get_wm_normal_hints_unchecked, "xcb_icccm_get_wm_normal_hints_unchecked");

  --*
  -- * @brief Fill given structure with the WM_NORMAL_HINTS property of a window.
  -- * @param hints WM_NORMAL_HINTS property value.
  -- * @param reply The get property request reply.
  -- * @return Return 1 on success, 0 otherwise.
  --  

   function xcb_icccm_get_wm_size_hints_from_reply (arg1 : access xcb_size_hints_t; arg2 : access xcb_xproto_h.xcb_get_property_reply_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_icccm.h:743
   pragma Import (C, xcb_icccm_get_wm_size_hints_from_reply, "xcb_icccm_get_wm_size_hints_from_reply");

  --*
  -- * @brief Fill given structure with the WM_NORMAL_HINTS property of a window.
  -- * @param c The connection to the X server.
  -- * @param cookie Request cookie.
  -- * @param hints WM_NORMAL_HINTS property value.
  -- * @param e Error if any.
  -- * @return Return 1 on success, 0 otherwise.
  -- *
  -- * The parameter e supplied to this function must be NULL if
  -- * xcb_icccm_get_wm_normal_hints_unchecked() is used.  Otherwise, it stores
  -- * the error if any. The returned pointer should be freed.
  --  

   function xcb_icccm_get_wm_normal_hints_reply
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_get_property_cookie_t;
      arg3 : access xcb_size_hints_t;
      arg4 : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_icccm.h:758
   pragma Import (C, xcb_icccm_get_wm_normal_hints_reply, "xcb_icccm_get_wm_normal_hints_reply");

  -- WM_HINTS  
  --*
  -- * @brief WM hints structure (may be extended in the future).
  --  

  --* Marks which fields in this structure are defined  
  --* Does this application rely on the window manager to get keyboard
  --    input?  

  --* See below  
  --* Pixmap to be used as icon  
  --* Window to be used as icon  
  --* Initial position of icon  
  --* Icon mask bitmap  
  -- Identifier of related window group  
   type xcb_icccm_wm_hints_t is record
      flags : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xcb_icccm.h:770
      input : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_icccm.h:773
      initial_state : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xcb_icccm.h:775
      icon_pixmap : aliased xcb_xproto_h.xcb_pixmap_t;  -- /usr/include/xcb/xcb_icccm.h:777
      icon_window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xcb_icccm.h:779
      icon_x : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xcb_icccm.h:781
      icon_y : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xcb_icccm.h:781
      icon_mask : aliased xcb_xproto_h.xcb_pixmap_t;  -- /usr/include/xcb/xcb_icccm.h:783
      window_group : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xcb_icccm.h:785
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_icccm_wm_hints_t);  -- /usr/include/xcb/xcb_icccm.h:786

  --* Number of elements in this structure  
  --*
  -- * @brief WM_HINTS window states.
  --  

   subtype xcb_icccm_wm_state_t is unsigned;
   XCB_ICCCM_WM_STATE_WITHDRAWN : constant xcb_icccm_wm_state_t := 0;
   XCB_ICCCM_WM_STATE_NORMAL : constant xcb_icccm_wm_state_t := 1;
   XCB_ICCCM_WM_STATE_ICONIC : constant xcb_icccm_wm_state_t := 3;  -- /usr/include/xcb/xcb_icccm.h:798

   subtype xcb_icccm_wm_t is unsigned;
   XCB_ICCCM_WM_HINT_INPUT : constant xcb_icccm_wm_t := 1;
   XCB_ICCCM_WM_HINT_STATE : constant xcb_icccm_wm_t := 2;
   XCB_ICCCM_WM_HINT_ICON_PIXMAP : constant xcb_icccm_wm_t := 4;
   XCB_ICCCM_WM_HINT_ICON_WINDOW : constant xcb_icccm_wm_t := 8;
   XCB_ICCCM_WM_HINT_ICON_POSITION : constant xcb_icccm_wm_t := 16;
   XCB_ICCCM_WM_HINT_ICON_MASK : constant xcb_icccm_wm_t := 32;
   XCB_ICCCM_WM_HINT_WINDOW_GROUP : constant xcb_icccm_wm_t := 64;
   XCB_ICCCM_WM_HINT_X_URGENCY : constant xcb_icccm_wm_t := 256;  -- /usr/include/xcb/xcb_icccm.h:809

  --*
  -- * @brief Get urgency hint.
  -- * @param hints WM_HINTS structure.
  -- * @return Urgency hint value.
  --  

   function xcb_icccm_wm_hints_get_urgency (arg1 : access xcb_icccm_wm_hints_t) return stdint_h.uint32_t;  -- /usr/include/xcb/xcb_icccm.h:821
   pragma Import (C, xcb_icccm_wm_hints_get_urgency, "xcb_icccm_wm_hints_get_urgency");

  --*
  -- * @brief Set input focus.
  -- * @param hints WM_HINTS structure.
  -- * @param input Input focus.
  --  

   procedure xcb_icccm_wm_hints_set_input (arg1 : access xcb_icccm_wm_hints_t; arg2 : stdint_h.uint8_t);  -- /usr/include/xcb/xcb_icccm.h:828
   pragma Import (C, xcb_icccm_wm_hints_set_input, "xcb_icccm_wm_hints_set_input");

  --*
  -- * @brief Set hints state to 'iconic'.
  -- * @param hints WM_HINTS structure.
  --  

   procedure xcb_icccm_wm_hints_set_iconic (arg1 : access xcb_icccm_wm_hints_t);  -- /usr/include/xcb/xcb_icccm.h:834
   pragma Import (C, xcb_icccm_wm_hints_set_iconic, "xcb_icccm_wm_hints_set_iconic");

  --*
  -- * @brief Set hints state to 'normal'.
  -- * @param hints WM_HINTS structure.
  --  

   procedure xcb_icccm_wm_hints_set_normal (arg1 : access xcb_icccm_wm_hints_t);  -- /usr/include/xcb/xcb_icccm.h:840
   pragma Import (C, xcb_icccm_wm_hints_set_normal, "xcb_icccm_wm_hints_set_normal");

  --*
  -- * @brief Set hints state to 'withdrawn'.
  -- * @param hints WM_HINTS structure.
  --  

   procedure xcb_icccm_wm_hints_set_withdrawn (arg1 : access xcb_icccm_wm_hints_t);  -- /usr/include/xcb/xcb_icccm.h:846
   pragma Import (C, xcb_icccm_wm_hints_set_withdrawn, "xcb_icccm_wm_hints_set_withdrawn");

  --*
  -- * @brief Set hints state to none.
  -- * @param hints WM_HINTS structure.
  --  

   procedure xcb_icccm_wm_hints_set_none (arg1 : access xcb_icccm_wm_hints_t);  -- /usr/include/xcb/xcb_icccm.h:852
   pragma Import (C, xcb_icccm_wm_hints_set_none, "xcb_icccm_wm_hints_set_none");

  --*
  -- * @brief Set pixmap to be used as icon.
  -- * @param hints WM_HINTS structure.
  -- * @param icon_pixmap Pixmap.
  --  

   procedure xcb_icccm_wm_hints_set_icon_pixmap (arg1 : access xcb_icccm_wm_hints_t; arg2 : xcb_xproto_h.xcb_pixmap_t);  -- /usr/include/xcb/xcb_icccm.h:859
   pragma Import (C, xcb_icccm_wm_hints_set_icon_pixmap, "xcb_icccm_wm_hints_set_icon_pixmap");

  --*
  -- * @brief Set icon mask bitmap.
  -- * @param hints WM_HINTS structure.
  -- * @param icon_mask Pixmap.
  --  

   procedure xcb_icccm_wm_hints_set_icon_mask (arg1 : access xcb_icccm_wm_hints_t; arg2 : xcb_xproto_h.xcb_pixmap_t);  -- /usr/include/xcb/xcb_icccm.h:867
   pragma Import (C, xcb_icccm_wm_hints_set_icon_mask, "xcb_icccm_wm_hints_set_icon_mask");

  --*
  -- * @brief Set window identifier to be used as icon.
  -- * @param hints WM_HINTS structure.
  -- * @param icon_window Window X identifier.
  --  

   procedure xcb_icccm_wm_hints_set_icon_window (arg1 : access xcb_icccm_wm_hints_t; arg2 : xcb_xproto_h.xcb_window_t);  -- /usr/include/xcb/xcb_icccm.h:874
   pragma Import (C, xcb_icccm_wm_hints_set_icon_window, "xcb_icccm_wm_hints_set_icon_window");

  --*
  -- * @brief Set identifier of related window group.
  -- * @param hints WM_HINTS structure.
  -- * @param window_group Window X identifier.
  --  

   procedure xcb_icccm_wm_hints_set_window_group (arg1 : access xcb_icccm_wm_hints_t; arg2 : xcb_xproto_h.xcb_window_t);  -- /usr/include/xcb/xcb_icccm.h:882
   pragma Import (C, xcb_icccm_wm_hints_set_window_group, "xcb_icccm_wm_hints_set_window_group");

  --*
  -- * @brief Set urgency hints flag.
  -- * @param hints WM_HINTS structure.
  --  

   procedure xcb_icccm_wm_hints_set_urgency (arg1 : access xcb_icccm_wm_hints_t);  -- /usr/include/xcb/xcb_icccm.h:889
   pragma Import (C, xcb_icccm_wm_hints_set_urgency, "xcb_icccm_wm_hints_set_urgency");

  --*
  -- * @brief Deliver a SetProperty request to set WM_HINTS property value.
  -- * @param c The connection to the X server.
  -- * @param window Window X identifier.
  -- * @param hints Hints value to set.
  --  

   function xcb_icccm_set_wm_hints_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : access xcb_icccm_wm_hints_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_icccm.h:897
   pragma Import (C, xcb_icccm_set_wm_hints_checked, "xcb_icccm_set_wm_hints_checked");

  --*
  -- * @see xcb_icccm_set_wm_hints_checked()
  --  

   function xcb_icccm_set_wm_hints
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : access xcb_icccm_wm_hints_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_icccm.h:904
   pragma Import (C, xcb_icccm_set_wm_hints, "xcb_icccm_set_wm_hints");

  --*
  -- * @brief Send request to get WM_HINTS property of a window.
  -- * @param c The connection to the X server.
  -- * @param window Window X identifier.
  -- * @return The request cookie.
  --  

   function xcb_icccm_get_wm_hints (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_icccm.h:914
   pragma Import (C, xcb_icccm_get_wm_hints, "xcb_icccm_get_wm_hints");

  --*
  -- * @see xcb_icccm_get_wm_hints()
  --  

   function xcb_icccm_get_wm_hints_unchecked (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_icccm.h:920
   pragma Import (C, xcb_icccm_get_wm_hints_unchecked, "xcb_icccm_get_wm_hints_unchecked");

  --*
  -- * @brief Fill given structure with the WM_HINTS property of a window.
  -- * @param hints WM_HINTS property value.
  -- * @param reply The get property request reply.
  -- * @return Return 1 on success, 0 otherwise.
  --  

   function xcb_icccm_get_wm_hints_from_reply (arg1 : access xcb_icccm_wm_hints_t; arg2 : access xcb_xproto_h.xcb_get_property_reply_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_icccm.h:930
   pragma Import (C, xcb_icccm_get_wm_hints_from_reply, "xcb_icccm_get_wm_hints_from_reply");

  --*
  -- * @brief Fill given structure with the WM_HINTS property of a window.
  -- * @param c The connection to the X server.
  -- * @param cookie Request cookie.
  -- * @param hints WM_HINTS property value.
  -- * @param e Error if any.
  -- * @return Return 1 on success, 0 otherwise.
  -- *
  -- * The parameter e supplied to this function must be NULL if
  -- * xcb_icccm_get_wm_hints_unchecked() is used.  Otherwise, it stores the
  -- * error if any. The returned pointer should be freed.
  --  

   function xcb_icccm_get_wm_hints_reply
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_get_property_cookie_t;
      arg3 : access xcb_icccm_wm_hints_t;
      arg4 : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_icccm.h:945
   pragma Import (C, xcb_icccm_get_wm_hints_reply, "xcb_icccm_get_wm_hints_reply");

  -- WM_PROTOCOLS  
  --*
  -- * @brief Deliver a SetProperty request to set WM_PROTOCOLS property value.
  -- * @param c The connection to the X server.
  -- * @param wm_protocols The WM_PROTOCOLS atom.
  -- * @param window Window X identifier.
  -- * @param list_len Atom list len.
  -- * @param list Atom list.
  --  

   function xcb_icccm_set_wm_protocols_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_xproto_h.xcb_atom_t;
      arg4 : stdint_h.uint32_t;
      arg5 : access xcb_xproto_h.xcb_atom_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_icccm.h:960
   pragma Import (C, xcb_icccm_set_wm_protocols_checked, "xcb_icccm_set_wm_protocols_checked");

  --*
  -- * @see xcb_icccm_set_wm_protocols_checked()
  --  

   function xcb_icccm_set_wm_protocols
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_xproto_h.xcb_atom_t;
      arg4 : stdint_h.uint32_t;
      arg5 : access xcb_xproto_h.xcb_atom_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_icccm.h:969
   pragma Import (C, xcb_icccm_set_wm_protocols, "xcb_icccm_set_wm_protocols");

  --*
  -- * @brief WM_PROTOCOLS structure.
  --  

  --* Length of the atoms list  
  --* Atoms list  
  --* Store reply to avoid memory allocation, should normally not be
  --      used directly  

   type xcb_icccm_get_wm_protocols_reply_t is record
      atoms_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_icccm.h:980
      atoms : access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_icccm.h:982
      u_reply : access xcb_xproto_h.xcb_get_property_reply_t;  -- /usr/include/xcb/xcb_icccm.h:985
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_icccm_get_wm_protocols_reply_t);  -- /usr/include/xcb/xcb_icccm.h:986

  --*
  -- * @brief Send request to get WM_PROTOCOLS property of a given window.
  -- * @param c The connection to the X server.
  -- * @param window Window X identifier.
  -- * @return The request cookie.
  --  

   function xcb_icccm_get_wm_protocols
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_xproto_h.xcb_atom_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_icccm.h:994
   pragma Import (C, xcb_icccm_get_wm_protocols, "xcb_icccm_get_wm_protocols");

  --*
  -- * @see xcb_icccm_get_wm_protocols()
  --  

   function xcb_icccm_get_wm_protocols_unchecked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_xproto_h.xcb_atom_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_icccm.h:1001
   pragma Import (C, xcb_icccm_get_wm_protocols_unchecked, "xcb_icccm_get_wm_protocols_unchecked");

  --*
  -- * @brief Fill the given structure with the WM_PROTOCOLS property of a window.
  -- * @param reply The reply of the GetProperty request.
  -- * @param protocols WM_PROTOCOLS property value.
  -- * @return Return 1 on success, 0 otherwise.
  -- *
  -- * protocols structure members should be freed by
  -- * xcb_icccm_get_wm_protocols_reply_wipe().
  --  

   function xcb_icccm_get_wm_protocols_from_reply (arg1 : access xcb_xproto_h.xcb_get_property_reply_t; arg2 : access xcb_icccm_get_wm_protocols_reply_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_icccm.h:1014
   pragma Import (C, xcb_icccm_get_wm_protocols_from_reply, "xcb_icccm_get_wm_protocols_from_reply");

  --*
  -- * @brief Fill the given structure with the WM_PROTOCOLS property of a window.
  -- * @param c The connection to the X server.
  -- * @param cookie Request cookie.
  -- * @param protocols WM_PROTOCOLS property value.
  -- * @param e Error if any.
  -- * @return Return 1 on success, 0 otherwise.
  -- *
  -- * The parameter e supplied to this function must be NULL if
  -- * xcb_icccm_get_wm_protocols_unchecked() is used.  Otherwise, it stores the
  -- * error if any. protocols structure members should be freed by
  -- * xcb_icccm_get_wm_protocols_reply_wipe().
  --  

   function xcb_icccm_get_wm_protocols_reply
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_get_property_cookie_t;
      arg3 : access xcb_icccm_get_wm_protocols_reply_t;
      arg4 : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_icccm.h:1029
   pragma Import (C, xcb_icccm_get_wm_protocols_reply, "xcb_icccm_get_wm_protocols_reply");

  --*
  -- * @brief Wipe protocols structure members previously allocated by
  -- *        xcb_icccm_get_wm_protocols_reply().
  -- * @param protocols protocols structure whose members is going to be freed.
  --  

   procedure xcb_icccm_get_wm_protocols_reply_wipe (arg1 : access xcb_icccm_get_wm_protocols_reply_t);  -- /usr/include/xcb/xcb_icccm.h:1039
   pragma Import (C, xcb_icccm_get_wm_protocols_reply_wipe, "xcb_icccm_get_wm_protocols_reply_wipe");

  --*
  -- * @}
  --  

end xcb_xcb_icccm_h;
