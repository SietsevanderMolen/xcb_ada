with Interfaces.C; use Interfaces.C;
with xcb_xcb_h;
with stdint_h;
with System;

package xcb_dpms_h is

   --  unsupported macro: XCB_DPMS_MAJOR_VERSION 0
   --  unsupported macro: XCB_DPMS_MINOR_VERSION 0
   --  unsupported macro: XCB_DPMS_GET_VERSION 0
   --  unsupported macro: XCB_DPMS_CAPABLE 1
   --  unsupported macro: XCB_DPMS_GET_TIMEOUTS 2
   --  unsupported macro: XCB_DPMS_SET_TIMEOUTS 3
   --  unsupported macro: XCB_DPMS_ENABLE 4
   --  unsupported macro: XCB_DPMS_DISABLE 5
   --  unsupported macro: XCB_DPMS_FORCE_LEVEL 6
   --  unsupported macro: XCB_DPMS_INFO 7
  -- * This file generated automatically from dpms.xml by c_client.py.
  -- * Edit at your peril.
  --  

  --*
  -- * @defgroup XCB_DPMS_API XCB DPMS API
  -- * @brief DPMS XCB Protocol Implementation.
  -- * @{
  -- * 

   xcb_dpms_id : aliased xcb_xcb_h.xcb_extension_t;  -- /usr/include/xcb/dpms.h:24
   pragma Import (C, xcb_dpms_id, "xcb_dpms_id");

  --*
  -- * @brief xcb_dpms_get_version_cookie_t
  -- * 

  --*<   
   type xcb_dpms_get_version_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/dpms.h:30
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dpms_get_version_cookie_t);  -- /usr/include/xcb/dpms.h:29

  --* Opcode for xcb_dpms_get_version.  
  --*
  -- * @brief xcb_dpms_get_version_request_t
  -- * 

  --*<   
   type xcb_dpms_get_version_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dpms.h:40
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dpms.h:41
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dpms.h:42
      client_major_version : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dpms.h:43
      client_minor_version : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dpms.h:44
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dpms_get_version_request_t);  -- /usr/include/xcb/dpms.h:39

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_dpms_get_version_reply_t
  -- * 

  --*<   
   type xcb_dpms_get_version_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dpms.h:51
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dpms.h:52
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dpms.h:53
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dpms.h:54
      server_major_version : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dpms.h:55
      server_minor_version : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dpms.h:56
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dpms_get_version_reply_t);  -- /usr/include/xcb/dpms.h:50

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_dpms_capable_cookie_t
  -- * 

  --*<   
   type xcb_dpms_capable_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/dpms.h:63
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dpms_capable_cookie_t);  -- /usr/include/xcb/dpms.h:62

  --* Opcode for xcb_dpms_capable.  
  --*
  -- * @brief xcb_dpms_capable_request_t
  -- * 

  --*<   
   type xcb_dpms_capable_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dpms.h:73
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dpms.h:74
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dpms.h:75
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dpms_capable_request_t);  -- /usr/include/xcb/dpms.h:72

  --*<   
  --*<   
  --*
  -- * @brief xcb_dpms_capable_reply_t
  -- * 

  --*<   
   type anon3965_anon3967_array is array (0 .. 22) of aliased stdint_h.uint8_t;
   type xcb_dpms_capable_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dpms.h:82
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dpms.h:83
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dpms.h:84
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dpms.h:85
      capable : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dpms.h:86
      pad1 : aliased anon3965_anon3967_array;  -- /usr/include/xcb/dpms.h:87
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dpms_capable_reply_t);  -- /usr/include/xcb/dpms.h:81

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_dpms_get_timeouts_cookie_t
  -- * 

  --*<   
   type xcb_dpms_get_timeouts_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/dpms.h:94
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dpms_get_timeouts_cookie_t);  -- /usr/include/xcb/dpms.h:93

  --* Opcode for xcb_dpms_get_timeouts.  
  --*
  -- * @brief xcb_dpms_get_timeouts_request_t
  -- * 

  --*<   
   type xcb_dpms_get_timeouts_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dpms.h:104
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dpms.h:105
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dpms.h:106
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dpms_get_timeouts_request_t);  -- /usr/include/xcb/dpms.h:103

  --*<   
  --*<   
  --*
  -- * @brief xcb_dpms_get_timeouts_reply_t
  -- * 

  --*<   
   type anon3974_anon2547_array is array (0 .. 17) of aliased stdint_h.uint8_t;
   type xcb_dpms_get_timeouts_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dpms.h:113
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dpms.h:114
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dpms.h:115
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dpms.h:116
      standby_timeout : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dpms.h:117
      suspend_timeout : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dpms.h:118
      off_timeout : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dpms.h:119
      pad1 : aliased anon3974_anon2547_array;  -- /usr/include/xcb/dpms.h:120
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dpms_get_timeouts_reply_t);  -- /usr/include/xcb/dpms.h:112

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_dpms_set_timeouts.  
  --*
  -- * @brief xcb_dpms_set_timeouts_request_t
  -- * 

  --*<   
   type xcb_dpms_set_timeouts_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dpms.h:130
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dpms.h:131
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dpms.h:132
      standby_timeout : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dpms.h:133
      suspend_timeout : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dpms.h:134
      off_timeout : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dpms.h:135
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dpms_set_timeouts_request_t);  -- /usr/include/xcb/dpms.h:129

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_dpms_enable.  
  --*
  -- * @brief xcb_dpms_enable_request_t
  -- * 

  --*<   
   type xcb_dpms_enable_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dpms.h:145
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dpms.h:146
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dpms.h:147
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dpms_enable_request_t);  -- /usr/include/xcb/dpms.h:144

  --*<   
  --*<   
  --* Opcode for xcb_dpms_disable.  
  --*
  -- * @brief xcb_dpms_disable_request_t
  -- * 

  --*<   
   type xcb_dpms_disable_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dpms.h:157
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dpms.h:158
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dpms.h:159
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dpms_disable_request_t);  -- /usr/include/xcb/dpms.h:156

  --*<   
  --*<   
   type xcb_dpms_dpms_mode_t is 
     (XCB_DPMS_DPMS_MODE_ON,
      XCB_DPMS_DPMS_MODE_STANDBY,
      XCB_DPMS_DPMS_MODE_SUSPEND,
      XCB_DPMS_DPMS_MODE_OFF);
   pragma Convention (C, xcb_dpms_dpms_mode_t);  -- /usr/include/xcb/dpms.h:162

  --* Opcode for xcb_dpms_force_level.  
  --*
  -- * @brief xcb_dpms_force_level_request_t
  -- * 

  --*<   
   type xcb_dpms_force_level_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dpms.h:176
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dpms.h:177
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dpms.h:178
      power_level : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dpms.h:179
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dpms_force_level_request_t);  -- /usr/include/xcb/dpms.h:175

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_dpms_info_cookie_t
  -- * 

  --*<   
   type xcb_dpms_info_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/dpms.h:186
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dpms_info_cookie_t);  -- /usr/include/xcb/dpms.h:185

  --* Opcode for xcb_dpms_info.  
  --*
  -- * @brief xcb_dpms_info_request_t
  -- * 

  --*<   
   type xcb_dpms_info_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dpms.h:196
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dpms.h:197
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dpms.h:198
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dpms_info_request_t);  -- /usr/include/xcb/dpms.h:195

  --*<   
  --*<   
  --*
  -- * @brief xcb_dpms_info_reply_t
  -- * 

  --*<   
   type anon3992_anon3994_array is array (0 .. 20) of aliased stdint_h.uint8_t;
   type xcb_dpms_info_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dpms.h:205
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dpms.h:206
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dpms.h:207
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dpms.h:208
      power_level : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dpms.h:209
      state : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dpms.h:210
      pad1 : aliased anon3992_anon3994_array;  -- /usr/include/xcb/dpms.h:211
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dpms_info_reply_t);  -- /usr/include/xcb/dpms.h:204

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
  -- ** xcb_dpms_get_version_cookie_t xcb_dpms_get_version
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint16_t          client_major_version
  -- ** @param uint16_t          client_minor_version
  -- ** @returns xcb_dpms_get_version_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dpms_get_version
     (arg1 : System.Address;
      arg2 : stdint_h.uint16_t;
      arg3 : stdint_h.uint16_t) return xcb_dpms_get_version_cookie_t;  -- /usr/include/xcb/dpms.h:235
   pragma Import (C, xcb_dpms_get_version, "xcb_dpms_get_version");

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
  -- ** xcb_dpms_get_version_cookie_t xcb_dpms_get_version_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint16_t          client_major_version
  -- ** @param uint16_t          client_minor_version
  -- ** @returns xcb_dpms_get_version_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dpms_get_version_unchecked
     (arg1 : System.Address;
      arg2 : stdint_h.uint16_t;
      arg3 : stdint_h.uint16_t) return xcb_dpms_get_version_cookie_t;  -- /usr/include/xcb/dpms.h:263
   pragma Import (C, xcb_dpms_get_version_unchecked, "xcb_dpms_get_version_unchecked");

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
  -- * xcb_dpms_get_version_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_dpms_get_version_reply_t * xcb_dpms_get_version_reply
  -- ** 
  -- ** @param xcb_connection_t               *c
  -- ** @param xcb_dpms_get_version_cookie_t   cookie
  -- ** @param xcb_generic_error_t           **e
  -- ** @returns xcb_dpms_get_version_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dpms_get_version_reply
     (arg1 : System.Address;
      arg2 : xcb_dpms_get_version_cookie_t;
      arg3 : System.Address) return access xcb_dpms_get_version_reply_t;  -- /usr/include/xcb/dpms.h:294
   pragma Import (C, xcb_dpms_get_version_reply, "xcb_dpms_get_version_reply");

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
  -- ** xcb_dpms_capable_cookie_t xcb_dpms_capable
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_dpms_capable_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dpms_capable (arg1 : System.Address) return xcb_dpms_capable_cookie_t;  -- /usr/include/xcb/dpms.h:317
   pragma Import (C, xcb_dpms_capable, "xcb_dpms_capable");

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
  -- ** xcb_dpms_capable_cookie_t xcb_dpms_capable_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_dpms_capable_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dpms_capable_unchecked (arg1 : System.Address) return xcb_dpms_capable_cookie_t;  -- /usr/include/xcb/dpms.h:341
   pragma Import (C, xcb_dpms_capable_unchecked, "xcb_dpms_capable_unchecked");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_dpms_capable_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_dpms_capable_reply_t * xcb_dpms_capable_reply
  -- ** 
  -- ** @param xcb_connection_t           *c
  -- ** @param xcb_dpms_capable_cookie_t   cookie
  -- ** @param xcb_generic_error_t       **e
  -- ** @returns xcb_dpms_capable_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dpms_capable_reply
     (arg1 : System.Address;
      arg2 : xcb_dpms_capable_cookie_t;
      arg3 : System.Address) return access xcb_dpms_capable_reply_t;  -- /usr/include/xcb/dpms.h:370
   pragma Import (C, xcb_dpms_capable_reply, "xcb_dpms_capable_reply");

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
  -- ** xcb_dpms_get_timeouts_cookie_t xcb_dpms_get_timeouts
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_dpms_get_timeouts_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dpms_get_timeouts (arg1 : System.Address) return xcb_dpms_get_timeouts_cookie_t;  -- /usr/include/xcb/dpms.h:393
   pragma Import (C, xcb_dpms_get_timeouts, "xcb_dpms_get_timeouts");

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
  -- ** xcb_dpms_get_timeouts_cookie_t xcb_dpms_get_timeouts_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_dpms_get_timeouts_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dpms_get_timeouts_unchecked (arg1 : System.Address) return xcb_dpms_get_timeouts_cookie_t;  -- /usr/include/xcb/dpms.h:417
   pragma Import (C, xcb_dpms_get_timeouts_unchecked, "xcb_dpms_get_timeouts_unchecked");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_dpms_get_timeouts_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_dpms_get_timeouts_reply_t * xcb_dpms_get_timeouts_reply
  -- ** 
  -- ** @param xcb_connection_t                *c
  -- ** @param xcb_dpms_get_timeouts_cookie_t   cookie
  -- ** @param xcb_generic_error_t            **e
  -- ** @returns xcb_dpms_get_timeouts_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dpms_get_timeouts_reply
     (arg1 : System.Address;
      arg2 : xcb_dpms_get_timeouts_cookie_t;
      arg3 : System.Address) return access xcb_dpms_get_timeouts_reply_t;  -- /usr/include/xcb/dpms.h:446
   pragma Import (C, xcb_dpms_get_timeouts_reply, "xcb_dpms_get_timeouts_reply");

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
  -- ** xcb_void_cookie_t xcb_dpms_set_timeouts_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint16_t          standby_timeout
  -- ** @param uint16_t          suspend_timeout
  -- ** @param uint16_t          off_timeout
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dpms_set_timeouts_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint16_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/dpms.h:475
   pragma Import (C, xcb_dpms_set_timeouts_checked, "xcb_dpms_set_timeouts_checked");

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
  -- ** xcb_void_cookie_t xcb_dpms_set_timeouts
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint16_t          standby_timeout
  -- ** @param uint16_t          suspend_timeout
  -- ** @param uint16_t          off_timeout
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dpms_set_timeouts
     (arg1 : System.Address;
      arg2 : stdint_h.uint16_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/dpms.h:502
   pragma Import (C, xcb_dpms_set_timeouts, "xcb_dpms_set_timeouts");

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
  -- ** xcb_void_cookie_t xcb_dpms_enable_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dpms_enable_checked (arg1 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/dpms.h:529
   pragma Import (C, xcb_dpms_enable_checked, "xcb_dpms_enable_checked");

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
  -- ** xcb_void_cookie_t xcb_dpms_enable
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dpms_enable (arg1 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/dpms.h:550
   pragma Import (C, xcb_dpms_enable, "xcb_dpms_enable");

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
  -- ** xcb_void_cookie_t xcb_dpms_disable_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dpms_disable_checked (arg1 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/dpms.h:574
   pragma Import (C, xcb_dpms_disable_checked, "xcb_dpms_disable_checked");

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
  -- ** xcb_void_cookie_t xcb_dpms_disable
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dpms_disable (arg1 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/dpms.h:595
   pragma Import (C, xcb_dpms_disable, "xcb_dpms_disable");

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
  -- ** xcb_void_cookie_t xcb_dpms_force_level_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint16_t          power_level
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dpms_force_level_checked (arg1 : System.Address; arg2 : stdint_h.uint16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/dpms.h:620
   pragma Import (C, xcb_dpms_force_level_checked, "xcb_dpms_force_level_checked");

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
  -- ** xcb_void_cookie_t xcb_dpms_force_level
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint16_t          power_level
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dpms_force_level (arg1 : System.Address; arg2 : stdint_h.uint16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/dpms.h:643
   pragma Import (C, xcb_dpms_force_level, "xcb_dpms_force_level");

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
  -- ** xcb_dpms_info_cookie_t xcb_dpms_info
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_dpms_info_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dpms_info (arg1 : System.Address) return xcb_dpms_info_cookie_t;  -- /usr/include/xcb/dpms.h:665
   pragma Import (C, xcb_dpms_info, "xcb_dpms_info");

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
  -- ** xcb_dpms_info_cookie_t xcb_dpms_info_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_dpms_info_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dpms_info_unchecked (arg1 : System.Address) return xcb_dpms_info_cookie_t;  -- /usr/include/xcb/dpms.h:689
   pragma Import (C, xcb_dpms_info_unchecked, "xcb_dpms_info_unchecked");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_dpms_info_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_dpms_info_reply_t * xcb_dpms_info_reply
  -- ** 
  -- ** @param xcb_connection_t        *c
  -- ** @param xcb_dpms_info_cookie_t   cookie
  -- ** @param xcb_generic_error_t    **e
  -- ** @returns xcb_dpms_info_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dpms_info_reply
     (arg1 : System.Address;
      arg2 : xcb_dpms_info_cookie_t;
      arg3 : System.Address) return access xcb_dpms_info_reply_t;  -- /usr/include/xcb/dpms.h:718
   pragma Import (C, xcb_dpms_info_reply, "xcb_dpms_info_reply");

  --*<  
  --*<  
  --*
  -- * @}
  --  

end xcb_dpms_h;
