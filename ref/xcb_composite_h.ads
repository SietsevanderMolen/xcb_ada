with Interfaces.C; use Interfaces.C;
with xcb_xcb_h;
with stdint_h;
with xcb_xproto_h;
with xcb_xfixes_h;
with System;

package xcb_composite_h is

   --  unsupported macro: XCB_COMPOSITE_MAJOR_VERSION 0
   --  unsupported macro: XCB_COMPOSITE_MINOR_VERSION 3
   --  unsupported macro: XCB_COMPOSITE_QUERY_VERSION 0
   --  unsupported macro: XCB_COMPOSITE_REDIRECT_WINDOW 1
   --  unsupported macro: XCB_COMPOSITE_REDIRECT_SUBWINDOWS 2
   --  unsupported macro: XCB_COMPOSITE_UNREDIRECT_WINDOW 3
   --  unsupported macro: XCB_COMPOSITE_UNREDIRECT_SUBWINDOWS 4
   --  unsupported macro: XCB_COMPOSITE_CREATE_REGION_FROM_BORDER_CLIP 5
   --  unsupported macro: XCB_COMPOSITE_NAME_WINDOW_PIXMAP 6
   --  unsupported macro: XCB_COMPOSITE_GET_OVERLAY_WINDOW 7
   --  unsupported macro: XCB_COMPOSITE_RELEASE_OVERLAY_WINDOW 8
  -- * This file generated automatically from composite.xml by c_client.py.
  -- * Edit at your peril.
  --  

  --*
  -- * @defgroup XCB_Composite_API XCB Composite API
  -- * @brief Composite XCB Protocol Implementation.
  -- * @{
  -- * 

   xcb_composite_id : aliased xcb_xcb_h.xcb_extension_t;  -- /usr/include/xcb/composite.h:28
   pragma Import (C, xcb_composite_id, "xcb_composite_id");

   type xcb_composite_redirect_t is 
     (XCB_COMPOSITE_REDIRECT_AUTOMATIC,
      XCB_COMPOSITE_REDIRECT_MANUAL);
   pragma Convention (C, xcb_composite_redirect_t);  -- /usr/include/xcb/composite.h:30

  --*
  -- * @brief xcb_composite_query_version_cookie_t
  -- * 

  --*<   
   type xcb_composite_query_version_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/composite.h:39
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_composite_query_version_cookie_t);  -- /usr/include/xcb/composite.h:38

  --* Opcode for xcb_composite_query_version.  
  --*
  -- * @brief xcb_composite_query_version_request_t
  -- * 

  --*<   
   type xcb_composite_query_version_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/composite.h:49
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/composite.h:50
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/composite.h:51
      client_major_version : aliased stdint_h.uint32_t;  -- /usr/include/xcb/composite.h:52
      client_minor_version : aliased stdint_h.uint32_t;  -- /usr/include/xcb/composite.h:53
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_composite_query_version_request_t);  -- /usr/include/xcb/composite.h:48

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_composite_query_version_reply_t
  -- * 

  --*<   
   type anon5088_anon4083_array is array (0 .. 15) of aliased stdint_h.uint8_t;
   type xcb_composite_query_version_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/composite.h:60
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/composite.h:61
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/composite.h:62
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/composite.h:63
      major_version : aliased stdint_h.uint32_t;  -- /usr/include/xcb/composite.h:64
      minor_version : aliased stdint_h.uint32_t;  -- /usr/include/xcb/composite.h:65
      pad1 : aliased anon5088_anon4083_array;  -- /usr/include/xcb/composite.h:66
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_composite_query_version_reply_t);  -- /usr/include/xcb/composite.h:59

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_composite_redirect_window.  
  --*
  -- * @brief xcb_composite_redirect_window_request_t
  -- * 

  --*<   
   type anon5092_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_composite_redirect_window_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/composite.h:76
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/composite.h:77
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/composite.h:78
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/composite.h:79
      update : aliased stdint_h.uint8_t;  -- /usr/include/xcb/composite.h:80
      pad0 : aliased anon5092_anon1853_array;  -- /usr/include/xcb/composite.h:81
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_composite_redirect_window_request_t);  -- /usr/include/xcb/composite.h:75

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_composite_redirect_subwindows.  
  --*
  -- * @brief xcb_composite_redirect_subwindows_request_t
  -- * 

  --*<   
   type anon5096_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_composite_redirect_subwindows_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/composite.h:91
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/composite.h:92
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/composite.h:93
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/composite.h:94
      update : aliased stdint_h.uint8_t;  -- /usr/include/xcb/composite.h:95
      pad0 : aliased anon5096_anon1853_array;  -- /usr/include/xcb/composite.h:96
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_composite_redirect_subwindows_request_t);  -- /usr/include/xcb/composite.h:90

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_composite_unredirect_window.  
  --*
  -- * @brief xcb_composite_unredirect_window_request_t
  -- * 

  --*<   
   type anon5100_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_composite_unredirect_window_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/composite.h:106
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/composite.h:107
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/composite.h:108
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/composite.h:109
      update : aliased stdint_h.uint8_t;  -- /usr/include/xcb/composite.h:110
      pad0 : aliased anon5100_anon1853_array;  -- /usr/include/xcb/composite.h:111
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_composite_unredirect_window_request_t);  -- /usr/include/xcb/composite.h:105

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_composite_unredirect_subwindows.  
  --*
  -- * @brief xcb_composite_unredirect_subwindows_request_t
  -- * 

  --*<   
   type anon5104_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_composite_unredirect_subwindows_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/composite.h:121
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/composite.h:122
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/composite.h:123
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/composite.h:124
      update : aliased stdint_h.uint8_t;  -- /usr/include/xcb/composite.h:125
      pad0 : aliased anon5104_anon1853_array;  -- /usr/include/xcb/composite.h:126
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_composite_unredirect_subwindows_request_t);  -- /usr/include/xcb/composite.h:120

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_composite_create_region_from_border_clip.  
  --*
  -- * @brief xcb_composite_create_region_from_border_clip_request_t
  -- * 

  --*<   
   type xcb_composite_create_region_from_border_clip_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/composite.h:136
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/composite.h:137
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/composite.h:138
      region : aliased xcb_xfixes_h.xcb_xfixes_region_t;  -- /usr/include/xcb/composite.h:139
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/composite.h:140
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_composite_create_region_from_border_clip_request_t);  -- /usr/include/xcb/composite.h:135

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_composite_name_window_pixmap.  
  --*
  -- * @brief xcb_composite_name_window_pixmap_request_t
  -- * 

  --*<   
   type xcb_composite_name_window_pixmap_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/composite.h:150
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/composite.h:151
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/composite.h:152
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/composite.h:153
      pixmap : aliased xcb_xproto_h.xcb_pixmap_t;  -- /usr/include/xcb/composite.h:154
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_composite_name_window_pixmap_request_t);  -- /usr/include/xcb/composite.h:149

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_composite_get_overlay_window_cookie_t
  -- * 

  --*<   
   type xcb_composite_get_overlay_window_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/composite.h:161
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_composite_get_overlay_window_cookie_t);  -- /usr/include/xcb/composite.h:160

  --* Opcode for xcb_composite_get_overlay_window.  
  --*
  -- * @brief xcb_composite_get_overlay_window_request_t
  -- * 

  --*<   
   type xcb_composite_get_overlay_window_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/composite.h:171
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/composite.h:172
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/composite.h:173
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/composite.h:174
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_composite_get_overlay_window_request_t);  -- /usr/include/xcb/composite.h:170

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_composite_get_overlay_window_reply_t
  -- * 

  --*<   
   type anon5116_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_composite_get_overlay_window_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/composite.h:181
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/composite.h:182
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/composite.h:183
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/composite.h:184
      overlay_win : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/composite.h:185
      pad1 : aliased anon5116_anon1939_array;  -- /usr/include/xcb/composite.h:186
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_composite_get_overlay_window_reply_t);  -- /usr/include/xcb/composite.h:180

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_composite_release_overlay_window.  
  --*
  -- * @brief xcb_composite_release_overlay_window_request_t
  -- * 

  --*<   
   type xcb_composite_release_overlay_window_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/composite.h:196
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/composite.h:197
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/composite.h:198
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/composite.h:199
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_composite_release_overlay_window_request_t);  -- /usr/include/xcb/composite.h:195

  --*<   
  --*<   
  --*<   
  --*
  -- *
  -- * @param c The connection
  -- * @return A cookie
  -- *
  -- * Delivers a request to the X server.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_composite_query_version_cookie_t xcb_composite_query_version
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          client_major_version
  -- ** @param uint32_t          client_minor_version
  -- ** @returns xcb_composite_query_version_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_composite_query_version
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : stdint_h.uint32_t) return xcb_composite_query_version_cookie_t;  -- /usr/include/xcb/composite.h:223
   pragma Import (C, xcb_composite_query_version, "xcb_composite_query_version");

  --*<  
  --*<  
  --*
  -- *
  -- * @param c The connection
  -- * @return A cookie
  -- *
  -- * Delivers a request to the X server.
  -- * 
  -- * This form can be used only if the request will cause
  -- * a reply to be generated. Any returned error will be
  -- * placed in the event queue.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_composite_query_version_cookie_t xcb_composite_query_version_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          client_major_version
  -- ** @param uint32_t          client_minor_version
  -- ** @returns xcb_composite_query_version_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_composite_query_version_unchecked
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : stdint_h.uint32_t) return xcb_composite_query_version_cookie_t;  -- /usr/include/xcb/composite.h:251
   pragma Import (C, xcb_composite_query_version_unchecked, "xcb_composite_query_version_unchecked");

  --*<  
  --*<  
  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_composite_query_version_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_composite_query_version_reply_t * xcb_composite_query_version_reply
  -- ** 
  -- ** @param xcb_connection_t                      *c
  -- ** @param xcb_composite_query_version_cookie_t   cookie
  -- ** @param xcb_generic_error_t                  **e
  -- ** @returns xcb_composite_query_version_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_composite_query_version_reply
     (arg1 : System.Address;
      arg2 : xcb_composite_query_version_cookie_t;
      arg3 : System.Address) return access xcb_composite_query_version_reply_t;  -- /usr/include/xcb/composite.h:282
   pragma Import (C, xcb_composite_query_version_reply, "xcb_composite_query_version_reply");

  --*<  
  --*<  
  --*
  -- *
  -- * @param c The connection
  -- * @return A cookie
  -- *
  -- * Delivers a request to the X server.
  -- * 
  -- * This form can be used only if the request will not cause
  -- * a reply to be generated. Any returned error will be
  -- * saved for handling by xcb_request_check().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_composite_redirect_window_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @param uint8_t           update
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_composite_redirect_window_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/composite.h:310
   pragma Import (C, xcb_composite_redirect_window_checked, "xcb_composite_redirect_window_checked");

  --*<  
  --*<  
  --*
  -- *
  -- * @param c The connection
  -- * @return A cookie
  -- *
  -- * Delivers a request to the X server.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_composite_redirect_window
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @param uint8_t           update
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_composite_redirect_window
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/composite.h:335
   pragma Import (C, xcb_composite_redirect_window, "xcb_composite_redirect_window");

  --*<  
  --*<  
  --*
  -- *
  -- * @param c The connection
  -- * @return A cookie
  -- *
  -- * Delivers a request to the X server.
  -- * 
  -- * This form can be used only if the request will not cause
  -- * a reply to be generated. Any returned error will be
  -- * saved for handling by xcb_request_check().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_composite_redirect_subwindows_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @param uint8_t           update
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_composite_redirect_subwindows_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/composite.h:363
   pragma Import (C, xcb_composite_redirect_subwindows_checked, "xcb_composite_redirect_subwindows_checked");

  --*<  
  --*<  
  --*
  -- *
  -- * @param c The connection
  -- * @return A cookie
  -- *
  -- * Delivers a request to the X server.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_composite_redirect_subwindows
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @param uint8_t           update
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_composite_redirect_subwindows
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/composite.h:388
   pragma Import (C, xcb_composite_redirect_subwindows, "xcb_composite_redirect_subwindows");

  --*<  
  --*<  
  --*
  -- *
  -- * @param c The connection
  -- * @return A cookie
  -- *
  -- * Delivers a request to the X server.
  -- * 
  -- * This form can be used only if the request will not cause
  -- * a reply to be generated. Any returned error will be
  -- * saved for handling by xcb_request_check().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_composite_unredirect_window_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @param uint8_t           update
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_composite_unredirect_window_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/composite.h:416
   pragma Import (C, xcb_composite_unredirect_window_checked, "xcb_composite_unredirect_window_checked");

  --*<  
  --*<  
  --*
  -- *
  -- * @param c The connection
  -- * @return A cookie
  -- *
  -- * Delivers a request to the X server.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_composite_unredirect_window
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @param uint8_t           update
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_composite_unredirect_window
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/composite.h:441
   pragma Import (C, xcb_composite_unredirect_window, "xcb_composite_unredirect_window");

  --*<  
  --*<  
  --*
  -- *
  -- * @param c The connection
  -- * @return A cookie
  -- *
  -- * Delivers a request to the X server.
  -- * 
  -- * This form can be used only if the request will not cause
  -- * a reply to be generated. Any returned error will be
  -- * saved for handling by xcb_request_check().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_composite_unredirect_subwindows_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @param uint8_t           update
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_composite_unredirect_subwindows_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/composite.h:469
   pragma Import (C, xcb_composite_unredirect_subwindows_checked, "xcb_composite_unredirect_subwindows_checked");

  --*<  
  --*<  
  --*
  -- *
  -- * @param c The connection
  -- * @return A cookie
  -- *
  -- * Delivers a request to the X server.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_composite_unredirect_subwindows
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @param uint8_t           update
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_composite_unredirect_subwindows
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/composite.h:494
   pragma Import (C, xcb_composite_unredirect_subwindows, "xcb_composite_unredirect_subwindows");

  --*<  
  --*<  
  --*
  -- *
  -- * @param c The connection
  -- * @return A cookie
  -- *
  -- * Delivers a request to the X server.
  -- * 
  -- * This form can be used only if the request will not cause
  -- * a reply to be generated. Any returned error will be
  -- * saved for handling by xcb_request_check().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_composite_create_region_from_border_clip_checked
  -- ** 
  -- ** @param xcb_connection_t    *c
  -- ** @param xcb_xfixes_region_t  region
  -- ** @param xcb_window_t         window
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_composite_create_region_from_border_clip_checked
     (arg1 : System.Address;
      arg2 : xcb_xfixes_h.xcb_xfixes_region_t;
      arg3 : xcb_xproto_h.xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/composite.h:522
   pragma Import (C, xcb_composite_create_region_from_border_clip_checked, "xcb_composite_create_region_from_border_clip_checked");

  --*<  
  --*<  
  --*
  -- *
  -- * @param c The connection
  -- * @return A cookie
  -- *
  -- * Delivers a request to the X server.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_composite_create_region_from_border_clip
  -- ** 
  -- ** @param xcb_connection_t    *c
  -- ** @param xcb_xfixes_region_t  region
  -- ** @param xcb_window_t         window
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_composite_create_region_from_border_clip
     (arg1 : System.Address;
      arg2 : xcb_xfixes_h.xcb_xfixes_region_t;
      arg3 : xcb_xproto_h.xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/composite.h:547
   pragma Import (C, xcb_composite_create_region_from_border_clip, "xcb_composite_create_region_from_border_clip");

  --*<  
  --*<  
  --*
  -- *
  -- * @param c The connection
  -- * @return A cookie
  -- *
  -- * Delivers a request to the X server.
  -- * 
  -- * This form can be used only if the request will not cause
  -- * a reply to be generated. Any returned error will be
  -- * saved for handling by xcb_request_check().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_composite_name_window_pixmap_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @param xcb_pixmap_t      pixmap
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_composite_name_window_pixmap_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_xproto_h.xcb_pixmap_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/composite.h:575
   pragma Import (C, xcb_composite_name_window_pixmap_checked, "xcb_composite_name_window_pixmap_checked");

  --*<  
  --*<  
  --*
  -- *
  -- * @param c The connection
  -- * @return A cookie
  -- *
  -- * Delivers a request to the X server.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_composite_name_window_pixmap
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @param xcb_pixmap_t      pixmap
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_composite_name_window_pixmap
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_xproto_h.xcb_pixmap_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/composite.h:600
   pragma Import (C, xcb_composite_name_window_pixmap, "xcb_composite_name_window_pixmap");

  --*<  
  --*<  
  --*
  -- *
  -- * @param c The connection
  -- * @return A cookie
  -- *
  -- * Delivers a request to the X server.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_composite_get_overlay_window_cookie_t xcb_composite_get_overlay_window
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_composite_get_overlay_window_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_composite_get_overlay_window (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_composite_get_overlay_window_cookie_t;  -- /usr/include/xcb/composite.h:624
   pragma Import (C, xcb_composite_get_overlay_window, "xcb_composite_get_overlay_window");

  --*<  
  --*
  -- *
  -- * @param c The connection
  -- * @return A cookie
  -- *
  -- * Delivers a request to the X server.
  -- * 
  -- * This form can be used only if the request will cause
  -- * a reply to be generated. Any returned error will be
  -- * placed in the event queue.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_composite_get_overlay_window_cookie_t xcb_composite_get_overlay_window_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_composite_get_overlay_window_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_composite_get_overlay_window_unchecked (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_composite_get_overlay_window_cookie_t;  -- /usr/include/xcb/composite.h:650
   pragma Import (C, xcb_composite_get_overlay_window_unchecked, "xcb_composite_get_overlay_window_unchecked");

  --*<  
  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_composite_get_overlay_window_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_composite_get_overlay_window_reply_t * xcb_composite_get_overlay_window_reply
  -- ** 
  -- ** @param xcb_connection_t                           *c
  -- ** @param xcb_composite_get_overlay_window_cookie_t   cookie
  -- ** @param xcb_generic_error_t                       **e
  -- ** @returns xcb_composite_get_overlay_window_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_composite_get_overlay_window_reply
     (arg1 : System.Address;
      arg2 : xcb_composite_get_overlay_window_cookie_t;
      arg3 : System.Address) return access xcb_composite_get_overlay_window_reply_t;  -- /usr/include/xcb/composite.h:680
   pragma Import (C, xcb_composite_get_overlay_window_reply, "xcb_composite_get_overlay_window_reply");

  --*<  
  --*<  
  --*
  -- *
  -- * @param c The connection
  -- * @return A cookie
  -- *
  -- * Delivers a request to the X server.
  -- * 
  -- * This form can be used only if the request will not cause
  -- * a reply to be generated. Any returned error will be
  -- * saved for handling by xcb_request_check().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_composite_release_overlay_window_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_composite_release_overlay_window_checked (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/composite.h:707
   pragma Import (C, xcb_composite_release_overlay_window_checked, "xcb_composite_release_overlay_window_checked");

  --*<  
  --*
  -- *
  -- * @param c The connection
  -- * @return A cookie
  -- *
  -- * Delivers a request to the X server.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_composite_release_overlay_window
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_composite_release_overlay_window (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/composite.h:730
   pragma Import (C, xcb_composite_release_overlay_window, "xcb_composite_release_overlay_window");

  --*<  
  --*
  -- * @}
  --  

end xcb_composite_h;
