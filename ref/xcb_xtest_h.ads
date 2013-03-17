with Interfaces.C; use Interfaces.C;
with xcb_xcb_h;
with stdint_h;
with xcb_xproto_h;
with sys_types_h;
with System;

package xcb_xtest_h is

   --  unsupported macro: XCB_TEST_MAJOR_VERSION 2
   --  unsupported macro: XCB_TEST_MINOR_VERSION 1
   --  unsupported macro: XCB_TEST_GET_VERSION 0
   --  unsupported macro: XCB_TEST_COMPARE_CURSOR 1
   --  unsupported macro: XCB_TEST_FAKE_INPUT 2
   --  unsupported macro: XCB_TEST_GRAB_CONTROL 3
  -- * This file generated automatically from xtest.xml by c_client.py.
  -- * Edit at your peril.
  --  

  --*
  -- * @defgroup XCB_Test_API XCB Test API
  -- * @brief Test XCB Protocol Implementation.
  -- * @{
  -- * 

   xcb_test_id : aliased xcb_xcb_h.xcb_extension_t;  -- /usr/include/xcb/xtest.h:25
   pragma Import (C, xcb_test_id, "xcb_test_id");

  --*
  -- * @brief xcb_test_get_version_cookie_t
  -- * 

  --*<   
   type xcb_test_get_version_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xtest.h:31
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_test_get_version_cookie_t);  -- /usr/include/xcb/xtest.h:30

  --* Opcode for xcb_test_get_version.  
  --*
  -- * @brief xcb_test_get_version_request_t
  -- * 

  --*<   
   type xcb_test_get_version_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xtest.h:41
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xtest.h:42
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xtest.h:43
      major_version : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xtest.h:44
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xtest.h:45
      minor_version : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xtest.h:46
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_test_get_version_request_t);  -- /usr/include/xcb/xtest.h:40

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_test_get_version_reply_t
  -- * 

  --*<   
   type xcb_test_get_version_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xtest.h:53
      major_version : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xtest.h:54
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xtest.h:55
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xtest.h:56
      minor_version : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xtest.h:57
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_test_get_version_reply_t);  -- /usr/include/xcb/xtest.h:52

  --*<   
  --*<   
  --*<   
  --*<   
   type xcb_test_cursor_t is 
     (XCB_TEST_CURSOR_NONE,
      XCB_TEST_CURSOR_CURRENT);
   pragma Convention (C, xcb_test_cursor_t);  -- /usr/include/xcb/xtest.h:60

  --*
  -- * @brief xcb_test_compare_cursor_cookie_t
  -- * 

  --*<   
   type xcb_test_compare_cursor_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xtest.h:69
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_test_compare_cursor_cookie_t);  -- /usr/include/xcb/xtest.h:68

  --* Opcode for xcb_test_compare_cursor.  
  --*
  -- * @brief xcb_test_compare_cursor_request_t
  -- * 

  --*<   
   type xcb_test_compare_cursor_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xtest.h:79
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xtest.h:80
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xtest.h:81
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xtest.h:82
      cursor : aliased xcb_xproto_h.xcb_cursor_t;  -- /usr/include/xcb/xtest.h:83
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_test_compare_cursor_request_t);  -- /usr/include/xcb/xtest.h:78

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_test_compare_cursor_reply_t
  -- * 

  --*<   
   type xcb_test_compare_cursor_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xtest.h:90
      same : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xtest.h:91
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xtest.h:92
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xtest.h:93
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_test_compare_cursor_reply_t);  -- /usr/include/xcb/xtest.h:89

  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_test_fake_input.  
  --*
  -- * @brief xcb_test_fake_input_request_t
  -- * 

  --*<   
   type anon3969_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type anon3969_anon2427_array is array (0 .. 7) of aliased stdint_h.uint8_t;
   type anon3969_anon3975_array is array (0 .. 6) of aliased stdint_h.uint8_t;
   type xcb_test_fake_input_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xtest.h:103
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xtest.h:104
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xtest.h:105
      c_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xtest.h:106
      detail : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xtest.h:107
      pad0 : aliased anon3969_anon1795_array;  -- /usr/include/xcb/xtest.h:108
      time : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xtest.h:109
      root : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xtest.h:110
      pad1 : aliased anon3969_anon2427_array;  -- /usr/include/xcb/xtest.h:111
      rootX : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xtest.h:112
      rootY : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xtest.h:113
      pad2 : aliased anon3969_anon3975_array;  -- /usr/include/xcb/xtest.h:114
      deviceid : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xtest.h:115
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_test_fake_input_request_t);  -- /usr/include/xcb/xtest.h:102

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
  --* Opcode for xcb_test_grab_control.  
  --*
  -- * @brief xcb_test_grab_control_request_t
  -- * 

  --*<   
   type anon3978_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_test_grab_control_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xtest.h:125
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xtest.h:126
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xtest.h:127
      impervious : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xtest.h:128
      pad0 : aliased anon3978_anon1853_array;  -- /usr/include/xcb/xtest.h:129
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_test_grab_control_request_t);  -- /usr/include/xcb/xtest.h:124

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
  -- ** xcb_test_get_version_cookie_t xcb_test_get_version
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           major_version
  -- ** @param uint16_t          minor_version
  -- ** @returns xcb_test_get_version_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_test_get_version
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint16_t) return xcb_test_get_version_cookie_t;  -- /usr/include/xcb/xtest.h:153
   pragma Import (C, xcb_test_get_version, "xcb_test_get_version");

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
  -- ** xcb_test_get_version_cookie_t xcb_test_get_version_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           major_version
  -- ** @param uint16_t          minor_version
  -- ** @returns xcb_test_get_version_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_test_get_version_unchecked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint16_t) return xcb_test_get_version_cookie_t;  -- /usr/include/xcb/xtest.h:181
   pragma Import (C, xcb_test_get_version_unchecked, "xcb_test_get_version_unchecked");

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
  -- * xcb_test_get_version_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_test_get_version_reply_t * xcb_test_get_version_reply
  -- ** 
  -- ** @param xcb_connection_t               *c
  -- ** @param xcb_test_get_version_cookie_t   cookie
  -- ** @param xcb_generic_error_t           **e
  -- ** @returns xcb_test_get_version_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_test_get_version_reply
     (arg1 : System.Address;
      arg2 : xcb_test_get_version_cookie_t;
      arg3 : System.Address) return access xcb_test_get_version_reply_t;  -- /usr/include/xcb/xtest.h:212
   pragma Import (C, xcb_test_get_version_reply, "xcb_test_get_version_reply");

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
  -- ** xcb_test_compare_cursor_cookie_t xcb_test_compare_cursor
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @param xcb_cursor_t      cursor
  -- ** @returns xcb_test_compare_cursor_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_test_compare_cursor
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_xproto_h.xcb_cursor_t) return xcb_test_compare_cursor_cookie_t;  -- /usr/include/xcb/xtest.h:237
   pragma Import (C, xcb_test_compare_cursor, "xcb_test_compare_cursor");

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
  -- ** xcb_test_compare_cursor_cookie_t xcb_test_compare_cursor_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @param xcb_cursor_t      cursor
  -- ** @returns xcb_test_compare_cursor_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_test_compare_cursor_unchecked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_xproto_h.xcb_cursor_t) return xcb_test_compare_cursor_cookie_t;  -- /usr/include/xcb/xtest.h:265
   pragma Import (C, xcb_test_compare_cursor_unchecked, "xcb_test_compare_cursor_unchecked");

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
  -- * xcb_test_compare_cursor_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_test_compare_cursor_reply_t * xcb_test_compare_cursor_reply
  -- ** 
  -- ** @param xcb_connection_t                  *c
  -- ** @param xcb_test_compare_cursor_cookie_t   cookie
  -- ** @param xcb_generic_error_t              **e
  -- ** @returns xcb_test_compare_cursor_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_test_compare_cursor_reply
     (arg1 : System.Address;
      arg2 : xcb_test_compare_cursor_cookie_t;
      arg3 : System.Address) return access xcb_test_compare_cursor_reply_t;  -- /usr/include/xcb/xtest.h:296
   pragma Import (C, xcb_test_compare_cursor_reply, "xcb_test_compare_cursor_reply");

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
  -- ** xcb_void_cookie_t xcb_test_fake_input_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           type
  -- ** @param uint8_t           detail
  -- ** @param uint32_t          time
  -- ** @param xcb_window_t      root
  -- ** @param int16_t           rootX
  -- ** @param int16_t           rootY
  -- ** @param uint8_t           deviceid
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_test_fake_input_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint32_t;
      arg5 : xcb_xproto_h.xcb_window_t;
      arg6 : sys_types_h.int16_t;
      arg7 : sys_types_h.int16_t;
      arg8 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xtest.h:329
   pragma Import (C, xcb_test_fake_input_checked, "xcb_test_fake_input_checked");

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
  -- ** xcb_void_cookie_t xcb_test_fake_input
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           type
  -- ** @param uint8_t           detail
  -- ** @param uint32_t          time
  -- ** @param xcb_window_t      root
  -- ** @param int16_t           rootX
  -- ** @param int16_t           rootY
  -- ** @param uint8_t           deviceid
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_test_fake_input
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint32_t;
      arg5 : xcb_xproto_h.xcb_window_t;
      arg6 : sys_types_h.int16_t;
      arg7 : sys_types_h.int16_t;
      arg8 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xtest.h:364
   pragma Import (C, xcb_test_fake_input, "xcb_test_fake_input");

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
  -- ** xcb_void_cookie_t xcb_test_grab_control_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           impervious
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_test_grab_control_checked (arg1 : System.Address; arg2 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xtest.h:396
   pragma Import (C, xcb_test_grab_control_checked, "xcb_test_grab_control_checked");

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
  -- ** xcb_void_cookie_t xcb_test_grab_control
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           impervious
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_test_grab_control (arg1 : System.Address; arg2 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xtest.h:419
   pragma Import (C, xcb_test_grab_control, "xcb_test_grab_control");

  --*<  
  --*
  -- * @}
  --  

end xcb_xtest_h;
