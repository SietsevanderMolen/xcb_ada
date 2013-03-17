with Interfaces.C; use Interfaces.C;
with xcb_xcb_h;
with stdint_h;
with xcb_xproto_h;
with sys_types_h;
with System;

package xcb_screensaver_h is

   --  unsupported macro: XCB_SCREENSAVER_MAJOR_VERSION 1
   --  unsupported macro: XCB_SCREENSAVER_MINOR_VERSION 1
   --  unsupported macro: XCB_SCREENSAVER_QUERY_VERSION 0
   --  unsupported macro: XCB_SCREENSAVER_QUERY_INFO 1
   --  unsupported macro: XCB_SCREENSAVER_SELECT_INPUT 2
   --  unsupported macro: XCB_SCREENSAVER_SET_ATTRIBUTES 3
   --  unsupported macro: XCB_SCREENSAVER_UNSET_ATTRIBUTES 4
   --  unsupported macro: XCB_SCREENSAVER_SUSPEND 5
   --  unsupported macro: XCB_SCREENSAVER_NOTIFY 0
  -- * This file generated automatically from screensaver.xml by c_client.py.
  -- * Edit at your peril.
  --  

  --*
  -- * @defgroup XCB_ScreenSaver_API XCB ScreenSaver API
  -- * @brief ScreenSaver XCB Protocol Implementation.
  -- * @{
  -- * 

   xcb_screensaver_id : aliased xcb_xcb_h.xcb_extension_t;  -- /usr/include/xcb/screensaver.h:25
   pragma Import (C, xcb_screensaver_id, "xcb_screensaver_id");

   type xcb_screensaver_kind_t is 
     (XCB_SCREENSAVER_KIND_BLANKED,
      XCB_SCREENSAVER_KIND_INTERNAL,
      XCB_SCREENSAVER_KIND_EXTERNAL);
   pragma Convention (C, xcb_screensaver_kind_t);  -- /usr/include/xcb/screensaver.h:27

   subtype xcb_screensaver_event_t is unsigned;
   XCB_SCREENSAVER_EVENT_NOTIFY_MASK : constant xcb_screensaver_event_t := 1;
   XCB_SCREENSAVER_EVENT_CYCLE_MASK : constant xcb_screensaver_event_t := 2;  -- /usr/include/xcb/screensaver.h:33

   type xcb_screensaver_state_t is 
     (XCB_SCREENSAVER_STATE_OFF,
      XCB_SCREENSAVER_STATE_ON,
      XCB_SCREENSAVER_STATE_CYCLE,
      XCB_SCREENSAVER_STATE_DISABLED);
   pragma Convention (C, xcb_screensaver_state_t);  -- /usr/include/xcb/screensaver.h:38

  --*
  -- * @brief xcb_screensaver_query_version_cookie_t
  -- * 

  --*<   
   type xcb_screensaver_query_version_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/screensaver.h:49
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_screensaver_query_version_cookie_t);  -- /usr/include/xcb/screensaver.h:48

  --* Opcode for xcb_screensaver_query_version.  
  --*
  -- * @brief xcb_screensaver_query_version_request_t
  -- * 

  --*<   
   type anon3963_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_screensaver_query_version_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/screensaver.h:59
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/screensaver.h:60
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/screensaver.h:61
      client_major_version : aliased stdint_h.uint8_t;  -- /usr/include/xcb/screensaver.h:62
      client_minor_version : aliased stdint_h.uint8_t;  -- /usr/include/xcb/screensaver.h:63
      pad0 : aliased anon3963_anon1795_array;  -- /usr/include/xcb/screensaver.h:64
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_screensaver_query_version_request_t);  -- /usr/include/xcb/screensaver.h:58

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_screensaver_query_version_reply_t
  -- * 

  --*<   
   type anon3967_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_screensaver_query_version_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/screensaver.h:71
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/screensaver.h:72
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/screensaver.h:73
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/screensaver.h:74
      server_major_version : aliased stdint_h.uint16_t;  -- /usr/include/xcb/screensaver.h:75
      server_minor_version : aliased stdint_h.uint16_t;  -- /usr/include/xcb/screensaver.h:76
      pad1 : aliased anon3967_anon1939_array;  -- /usr/include/xcb/screensaver.h:77
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_screensaver_query_version_reply_t);  -- /usr/include/xcb/screensaver.h:70

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_screensaver_query_info_cookie_t
  -- * 

  --*<   
   type xcb_screensaver_query_info_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/screensaver.h:84
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_screensaver_query_info_cookie_t);  -- /usr/include/xcb/screensaver.h:83

  --* Opcode for xcb_screensaver_query_info.  
  --*
  -- * @brief xcb_screensaver_query_info_request_t
  -- * 

  --*<   
   type xcb_screensaver_query_info_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/screensaver.h:94
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/screensaver.h:95
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/screensaver.h:96
      drawable : aliased xcb_xproto_h.xcb_drawable_t;  -- /usr/include/xcb/screensaver.h:97
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_screensaver_query_info_request_t);  -- /usr/include/xcb/screensaver.h:93

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_screensaver_query_info_reply_t
  -- * 

  --*<   
   type anon3975_anon3977_array is array (0 .. 6) of aliased stdint_h.uint8_t;
   type xcb_screensaver_query_info_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/screensaver.h:104
      state : aliased stdint_h.uint8_t;  -- /usr/include/xcb/screensaver.h:105
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/screensaver.h:106
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/screensaver.h:107
      saver_window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/screensaver.h:108
      ms_until_server : aliased stdint_h.uint32_t;  -- /usr/include/xcb/screensaver.h:109
      ms_since_user_input : aliased stdint_h.uint32_t;  -- /usr/include/xcb/screensaver.h:110
      event_mask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/screensaver.h:111
      kind : aliased stdint_h.uint8_t;  -- /usr/include/xcb/screensaver.h:112
      pad0 : aliased anon3975_anon3977_array;  -- /usr/include/xcb/screensaver.h:113
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_screensaver_query_info_reply_t);  -- /usr/include/xcb/screensaver.h:103

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_screensaver_select_input.  
  --*
  -- * @brief xcb_screensaver_select_input_request_t
  -- * 

  --*<   
   type xcb_screensaver_select_input_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/screensaver.h:123
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/screensaver.h:124
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/screensaver.h:125
      drawable : aliased xcb_xproto_h.xcb_drawable_t;  -- /usr/include/xcb/screensaver.h:126
      event_mask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/screensaver.h:127
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_screensaver_select_input_request_t);  -- /usr/include/xcb/screensaver.h:122

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_screensaver_set_attributes.  
  --*
  -- * @brief xcb_screensaver_set_attributes_request_t
  -- * 

  --*<   
   type xcb_screensaver_set_attributes_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/screensaver.h:137
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/screensaver.h:138
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/screensaver.h:139
      drawable : aliased xcb_xproto_h.xcb_drawable_t;  -- /usr/include/xcb/screensaver.h:140
      x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/screensaver.h:141
      y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/screensaver.h:142
      width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/screensaver.h:143
      height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/screensaver.h:144
      border_width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/screensaver.h:145
      u_class : aliased stdint_h.uint8_t;  -- /usr/include/xcb/screensaver.h:146
      depth : aliased stdint_h.uint8_t;  -- /usr/include/xcb/screensaver.h:147
      visual : aliased xcb_xproto_h.xcb_visualid_t;  -- /usr/include/xcb/screensaver.h:148
      value_mask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/screensaver.h:149
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_screensaver_set_attributes_request_t);  -- /usr/include/xcb/screensaver.h:136

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_screensaver_unset_attributes.  
  --*
  -- * @brief xcb_screensaver_unset_attributes_request_t
  -- * 

  --*<   
   type xcb_screensaver_unset_attributes_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/screensaver.h:159
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/screensaver.h:160
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/screensaver.h:161
      drawable : aliased xcb_xproto_h.xcb_drawable_t;  -- /usr/include/xcb/screensaver.h:162
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_screensaver_unset_attributes_request_t);  -- /usr/include/xcb/screensaver.h:158

  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_screensaver_suspend.  
  --*
  -- * @brief xcb_screensaver_suspend_request_t
  -- * 

  --*<   
   type anon3986_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_screensaver_suspend_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/screensaver.h:172
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/screensaver.h:173
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/screensaver.h:174
      suspend : aliased stdint_h.uint8_t;  -- /usr/include/xcb/screensaver.h:175
      pad0 : aliased anon3986_anon1853_array;  -- /usr/include/xcb/screensaver.h:176
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_screensaver_suspend_request_t);  -- /usr/include/xcb/screensaver.h:171

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_screensaver_notify.  
  --*
  -- * @brief xcb_screensaver_notify_event_t
  -- * 

  --*<   
   type anon3990_anon2043_array is array (0 .. 13) of aliased stdint_h.uint8_t;
   type xcb_screensaver_notify_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/screensaver.h:186
      code : aliased stdint_h.uint8_t;  -- /usr/include/xcb/screensaver.h:187
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/screensaver.h:188
      state : aliased stdint_h.uint8_t;  -- /usr/include/xcb/screensaver.h:189
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/screensaver.h:190
      sequence_number : aliased stdint_h.uint16_t;  -- /usr/include/xcb/screensaver.h:191
      time : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/screensaver.h:192
      root : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/screensaver.h:193
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/screensaver.h:194
      kind : aliased stdint_h.uint8_t;  -- /usr/include/xcb/screensaver.h:195
      forced : aliased stdint_h.uint8_t;  -- /usr/include/xcb/screensaver.h:196
      pad1 : aliased anon3990_anon2043_array;  -- /usr/include/xcb/screensaver.h:197
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_screensaver_notify_event_t);  -- /usr/include/xcb/screensaver.h:185

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
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
  -- ** xcb_screensaver_query_version_cookie_t xcb_screensaver_query_version
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           client_major_version
  -- ** @param uint8_t           client_minor_version
  -- ** @returns xcb_screensaver_query_version_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_screensaver_query_version
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint8_t) return xcb_screensaver_query_version_cookie_t;  -- /usr/include/xcb/screensaver.h:221
   pragma Import (C, xcb_screensaver_query_version, "xcb_screensaver_query_version");

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
  -- ** xcb_screensaver_query_version_cookie_t xcb_screensaver_query_version_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           client_major_version
  -- ** @param uint8_t           client_minor_version
  -- ** @returns xcb_screensaver_query_version_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_screensaver_query_version_unchecked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint8_t) return xcb_screensaver_query_version_cookie_t;  -- /usr/include/xcb/screensaver.h:249
   pragma Import (C, xcb_screensaver_query_version_unchecked, "xcb_screensaver_query_version_unchecked");

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
  -- * xcb_screensaver_query_version_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_screensaver_query_version_reply_t * xcb_screensaver_query_version_reply
  -- ** 
  -- ** @param xcb_connection_t                        *c
  -- ** @param xcb_screensaver_query_version_cookie_t   cookie
  -- ** @param xcb_generic_error_t                    **e
  -- ** @returns xcb_screensaver_query_version_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_screensaver_query_version_reply
     (arg1 : System.Address;
      arg2 : xcb_screensaver_query_version_cookie_t;
      arg3 : System.Address) return access xcb_screensaver_query_version_reply_t;  -- /usr/include/xcb/screensaver.h:280
   pragma Import (C, xcb_screensaver_query_version_reply, "xcb_screensaver_query_version_reply");

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
  -- ** xcb_screensaver_query_info_cookie_t xcb_screensaver_query_info
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    drawable
  -- ** @returns xcb_screensaver_query_info_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_screensaver_query_info (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_drawable_t) return xcb_screensaver_query_info_cookie_t;  -- /usr/include/xcb/screensaver.h:304
   pragma Import (C, xcb_screensaver_query_info, "xcb_screensaver_query_info");

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
  -- ** xcb_screensaver_query_info_cookie_t xcb_screensaver_query_info_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    drawable
  -- ** @returns xcb_screensaver_query_info_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_screensaver_query_info_unchecked (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_drawable_t) return xcb_screensaver_query_info_cookie_t;  -- /usr/include/xcb/screensaver.h:330
   pragma Import (C, xcb_screensaver_query_info_unchecked, "xcb_screensaver_query_info_unchecked");

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
  -- * xcb_screensaver_query_info_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_screensaver_query_info_reply_t * xcb_screensaver_query_info_reply
  -- ** 
  -- ** @param xcb_connection_t                     *c
  -- ** @param xcb_screensaver_query_info_cookie_t   cookie
  -- ** @param xcb_generic_error_t                 **e
  -- ** @returns xcb_screensaver_query_info_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_screensaver_query_info_reply
     (arg1 : System.Address;
      arg2 : xcb_screensaver_query_info_cookie_t;
      arg3 : System.Address) return access xcb_screensaver_query_info_reply_t;  -- /usr/include/xcb/screensaver.h:360
   pragma Import (C, xcb_screensaver_query_info_reply, "xcb_screensaver_query_info_reply");

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
  -- ** xcb_void_cookie_t xcb_screensaver_select_input_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    drawable
  -- ** @param uint32_t          event_mask
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_screensaver_select_input_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_drawable_t;
      arg3 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/screensaver.h:388
   pragma Import (C, xcb_screensaver_select_input_checked, "xcb_screensaver_select_input_checked");

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
  -- ** xcb_void_cookie_t xcb_screensaver_select_input
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    drawable
  -- ** @param uint32_t          event_mask
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_screensaver_select_input
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_drawable_t;
      arg3 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/screensaver.h:413
   pragma Import (C, xcb_screensaver_select_input, "xcb_screensaver_select_input");

  --*<  
  --*<  
  --*<  
   function xcb_screensaver_set_attributes_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/screensaver.h:418
   pragma Import (C, xcb_screensaver_set_attributes_sizeof, "xcb_screensaver_set_attributes_sizeof");

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
  -- ** xcb_void_cookie_t xcb_screensaver_set_attributes_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    drawable
  -- ** @param int16_t           x
  -- ** @param int16_t           y
  -- ** @param uint16_t          width
  -- ** @param uint16_t          height
  -- ** @param uint16_t          border_width
  -- ** @param uint8_t           _class
  -- ** @param uint8_t           depth
  -- ** @param xcb_visualid_t    visual
  -- ** @param uint32_t          value_mask
  -- ** @param const uint32_t   *value_list
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_screensaver_set_attributes_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_drawable_t;
      arg3 : sys_types_h.int16_t;
      arg4 : sys_types_h.int16_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint16_t;
      arg7 : stdint_h.uint16_t;
      arg8 : stdint_h.uint8_t;
      arg9 : stdint_h.uint8_t;
      arg10 : xcb_xproto_h.xcb_visualid_t;
      arg11 : stdint_h.uint32_t;
      arg12 : access stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/screensaver.h:453
   pragma Import (C, xcb_screensaver_set_attributes_checked, "xcb_screensaver_set_attributes_checked");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
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
  -- ** xcb_void_cookie_t xcb_screensaver_set_attributes
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    drawable
  -- ** @param int16_t           x
  -- ** @param int16_t           y
  -- ** @param uint16_t          width
  -- ** @param uint16_t          height
  -- ** @param uint16_t          border_width
  -- ** @param uint8_t           _class
  -- ** @param uint8_t           depth
  -- ** @param xcb_visualid_t    visual
  -- ** @param uint32_t          value_mask
  -- ** @param const uint32_t   *value_list
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_screensaver_set_attributes
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_drawable_t;
      arg3 : sys_types_h.int16_t;
      arg4 : sys_types_h.int16_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint16_t;
      arg7 : stdint_h.uint16_t;
      arg8 : stdint_h.uint8_t;
      arg9 : stdint_h.uint8_t;
      arg10 : xcb_xproto_h.xcb_visualid_t;
      arg11 : stdint_h.uint32_t;
      arg12 : access stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/screensaver.h:496
   pragma Import (C, xcb_screensaver_set_attributes, "xcb_screensaver_set_attributes");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
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
  -- * This form can be used only if the request will not cause
  -- * a reply to be generated. Any returned error will be
  -- * saved for handling by xcb_request_check().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_screensaver_unset_attributes_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    drawable
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_screensaver_unset_attributes_checked (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_drawable_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/screensaver.h:532
   pragma Import (C, xcb_screensaver_unset_attributes_checked, "xcb_screensaver_unset_attributes_checked");

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
  -- ** xcb_void_cookie_t xcb_screensaver_unset_attributes
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    drawable
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_screensaver_unset_attributes (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_drawable_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/screensaver.h:555
   pragma Import (C, xcb_screensaver_unset_attributes, "xcb_screensaver_unset_attributes");

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
  -- ** xcb_void_cookie_t xcb_screensaver_suspend_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           suspend
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_screensaver_suspend_checked (arg1 : System.Address; arg2 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/screensaver.h:581
   pragma Import (C, xcb_screensaver_suspend_checked, "xcb_screensaver_suspend_checked");

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
  -- ** xcb_void_cookie_t xcb_screensaver_suspend
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           suspend
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_screensaver_suspend (arg1 : System.Address; arg2 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/screensaver.h:604
   pragma Import (C, xcb_screensaver_suspend, "xcb_screensaver_suspend");

  --*<  
  --*
  -- * @}
  --  

end xcb_screensaver_h;
