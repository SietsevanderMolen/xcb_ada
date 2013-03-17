with Interfaces.C; use Interfaces.C;
with xcb_xcb_h;
with sys_types_h;
with stdint_h;
with xcb_xproto_h;
with System;

package xcb_xinerama_h is

   --  unsupported macro: XCB_XINERAMA_MAJOR_VERSION 1
   --  unsupported macro: XCB_XINERAMA_MINOR_VERSION 1
   --  unsupported macro: XCB_XINERAMA_QUERY_VERSION 0
   --  unsupported macro: XCB_XINERAMA_GET_STATE 1
   --  unsupported macro: XCB_XINERAMA_GET_SCREEN_COUNT 2
   --  unsupported macro: XCB_XINERAMA_GET_SCREEN_SIZE 3
   --  unsupported macro: XCB_XINERAMA_IS_ACTIVE 4
   --  unsupported macro: XCB_XINERAMA_QUERY_SCREENS 5
  -- * This file generated automatically from xinerama.xml by c_client.py.
  -- * Edit at your peril.
  --  

  --*
  -- * @defgroup XCB_Xinerama_API XCB Xinerama API
  -- * @brief Xinerama XCB Protocol Implementation.
  -- * @{
  -- * 

   xcb_xinerama_id : aliased xcb_xcb_h.xcb_extension_t;  -- /usr/include/xcb/xinerama.h:25
   pragma Import (C, xcb_xinerama_id, "xcb_xinerama_id");

  --*
  -- * @brief xcb_xinerama_screen_info_t
  -- * 

  --*<   
   type xcb_xinerama_screen_info_t is record
      x_org : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xinerama.h:31
      y_org : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xinerama.h:32
      width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinerama.h:33
      height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinerama.h:34
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xinerama_screen_info_t);  -- /usr/include/xcb/xinerama.h:30

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xinerama_screen_info_iterator_t
  -- * 

  --*<   
   type xcb_xinerama_screen_info_iterator_t is record
      data : access xcb_xinerama_screen_info_t;  -- /usr/include/xcb/xinerama.h:41
      c_rem : aliased int;  -- /usr/include/xcb/xinerama.h:42
      index : aliased int;  -- /usr/include/xcb/xinerama.h:43
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xinerama_screen_info_iterator_t);  -- /usr/include/xcb/xinerama.h:40

  --*<   
  --*<   
  --*
  -- * @brief xcb_xinerama_query_version_cookie_t
  -- * 

  --*<   
   type xcb_xinerama_query_version_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xinerama.h:50
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xinerama_query_version_cookie_t);  -- /usr/include/xcb/xinerama.h:49

  --* Opcode for xcb_xinerama_query_version.  
  --*
  -- * @brief xcb_xinerama_query_version_request_t
  -- * 

  --*<   
   type xcb_xinerama_query_version_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinerama.h:60
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinerama.h:61
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinerama.h:62
      major : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinerama.h:63
      minor : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinerama.h:64
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xinerama_query_version_request_t);  -- /usr/include/xcb/xinerama.h:59

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xinerama_query_version_reply_t
  -- * 

  --*<   
   type xcb_xinerama_query_version_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinerama.h:71
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinerama.h:72
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinerama.h:73
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinerama.h:74
      major : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinerama.h:75
      minor : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinerama.h:76
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xinerama_query_version_reply_t);  -- /usr/include/xcb/xinerama.h:70

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xinerama_get_state_cookie_t
  -- * 

  --*<   
   type xcb_xinerama_get_state_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xinerama.h:83
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xinerama_get_state_cookie_t);  -- /usr/include/xcb/xinerama.h:82

  --* Opcode for xcb_xinerama_get_state.  
  --*
  -- * @brief xcb_xinerama_get_state_request_t
  -- * 

  --*<   
   type xcb_xinerama_get_state_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinerama.h:93
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinerama.h:94
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinerama.h:95
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xinerama.h:96
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xinerama_get_state_request_t);  -- /usr/include/xcb/xinerama.h:92

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xinerama_get_state_reply_t
  -- * 

  --*<   
   type xcb_xinerama_get_state_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinerama.h:103
      state : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinerama.h:104
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinerama.h:105
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinerama.h:106
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xinerama.h:107
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xinerama_get_state_reply_t);  -- /usr/include/xcb/xinerama.h:102

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xinerama_get_screen_count_cookie_t
  -- * 

  --*<   
   type xcb_xinerama_get_screen_count_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xinerama.h:114
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xinerama_get_screen_count_cookie_t);  -- /usr/include/xcb/xinerama.h:113

  --* Opcode for xcb_xinerama_get_screen_count.  
  --*
  -- * @brief xcb_xinerama_get_screen_count_request_t
  -- * 

  --*<   
   type xcb_xinerama_get_screen_count_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinerama.h:124
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinerama.h:125
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinerama.h:126
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xinerama.h:127
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xinerama_get_screen_count_request_t);  -- /usr/include/xcb/xinerama.h:123

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xinerama_get_screen_count_reply_t
  -- * 

  --*<   
   type xcb_xinerama_get_screen_count_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinerama.h:134
      screen_count : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinerama.h:135
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinerama.h:136
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinerama.h:137
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xinerama.h:138
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xinerama_get_screen_count_reply_t);  -- /usr/include/xcb/xinerama.h:133

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xinerama_get_screen_size_cookie_t
  -- * 

  --*<   
   type xcb_xinerama_get_screen_size_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xinerama.h:145
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xinerama_get_screen_size_cookie_t);  -- /usr/include/xcb/xinerama.h:144

  --* Opcode for xcb_xinerama_get_screen_size.  
  --*
  -- * @brief xcb_xinerama_get_screen_size_request_t
  -- * 

  --*<   
   type xcb_xinerama_get_screen_size_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinerama.h:155
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinerama.h:156
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinerama.h:157
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xinerama.h:158
      screen : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinerama.h:159
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xinerama_get_screen_size_request_t);  -- /usr/include/xcb/xinerama.h:154

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xinerama_get_screen_size_reply_t
  -- * 

  --*<   
   type xcb_xinerama_get_screen_size_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinerama.h:166
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinerama.h:167
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinerama.h:168
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinerama.h:169
      width : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinerama.h:170
      height : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinerama.h:171
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xinerama.h:172
      screen : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinerama.h:173
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xinerama_get_screen_size_reply_t);  -- /usr/include/xcb/xinerama.h:165

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xinerama_is_active_cookie_t
  -- * 

  --*<   
   type xcb_xinerama_is_active_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xinerama.h:180
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xinerama_is_active_cookie_t);  -- /usr/include/xcb/xinerama.h:179

  --* Opcode for xcb_xinerama_is_active.  
  --*
  -- * @brief xcb_xinerama_is_active_request_t
  -- * 

  --*<   
   type xcb_xinerama_is_active_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinerama.h:190
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinerama.h:191
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinerama.h:192
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xinerama_is_active_request_t);  -- /usr/include/xcb/xinerama.h:189

  --*<   
  --*<   
  --*
  -- * @brief xcb_xinerama_is_active_reply_t
  -- * 

  --*<   
   type xcb_xinerama_is_active_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinerama.h:199
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinerama.h:200
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinerama.h:201
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinerama.h:202
      state : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinerama.h:203
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xinerama_is_active_reply_t);  -- /usr/include/xcb/xinerama.h:198

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xinerama_query_screens_cookie_t
  -- * 

  --*<   
   type xcb_xinerama_query_screens_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xinerama.h:210
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xinerama_query_screens_cookie_t);  -- /usr/include/xcb/xinerama.h:209

  --* Opcode for xcb_xinerama_query_screens.  
  --*
  -- * @brief xcb_xinerama_query_screens_request_t
  -- * 

  --*<   
   type xcb_xinerama_query_screens_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinerama.h:220
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinerama.h:221
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinerama.h:222
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xinerama_query_screens_request_t);  -- /usr/include/xcb/xinerama.h:219

  --*<   
  --*<   
  --*
  -- * @brief xcb_xinerama_query_screens_reply_t
  -- * 

  --*<   
   type anon3995_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_xinerama_query_screens_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinerama.h:229
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinerama.h:230
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinerama.h:231
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinerama.h:232
      number : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinerama.h:233
      pad1 : aliased anon3995_anon1939_array;  -- /usr/include/xcb/xinerama.h:234
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xinerama_query_screens_reply_t);  -- /usr/include/xcb/xinerama.h:228

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xinerama_screen_info_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xinerama_screen_info_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xinerama_screen_info_next
  -- ** 
  -- ** @param xcb_xinerama_screen_info_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xinerama_screen_info_next (arg1 : access xcb_xinerama_screen_info_iterator_t);  -- /usr/include/xcb/xinerama.h:256
   pragma Import (C, xcb_xinerama_screen_info_next, "xcb_xinerama_screen_info_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xinerama_screen_info_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xinerama_screen_info_end
  -- ** 
  -- ** @param xcb_xinerama_screen_info_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xinerama_screen_info_end (arg1 : xcb_xinerama_screen_info_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinerama.h:278
   pragma Import (C, xcb_xinerama_screen_info_end, "xcb_xinerama_screen_info_end");

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
  -- ** xcb_xinerama_query_version_cookie_t xcb_xinerama_query_version
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           major
  -- ** @param uint8_t           minor
  -- ** @returns xcb_xinerama_query_version_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xinerama_query_version
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint8_t) return xcb_xinerama_query_version_cookie_t;  -- /usr/include/xcb/xinerama.h:301
   pragma Import (C, xcb_xinerama_query_version, "xcb_xinerama_query_version");

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
  -- ** xcb_xinerama_query_version_cookie_t xcb_xinerama_query_version_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           major
  -- ** @param uint8_t           minor
  -- ** @returns xcb_xinerama_query_version_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xinerama_query_version_unchecked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint8_t) return xcb_xinerama_query_version_cookie_t;  -- /usr/include/xcb/xinerama.h:329
   pragma Import (C, xcb_xinerama_query_version_unchecked, "xcb_xinerama_query_version_unchecked");

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
  -- * xcb_xinerama_query_version_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xinerama_query_version_reply_t * xcb_xinerama_query_version_reply
  -- ** 
  -- ** @param xcb_connection_t                     *c
  -- ** @param xcb_xinerama_query_version_cookie_t   cookie
  -- ** @param xcb_generic_error_t                 **e
  -- ** @returns xcb_xinerama_query_version_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xinerama_query_version_reply
     (arg1 : System.Address;
      arg2 : xcb_xinerama_query_version_cookie_t;
      arg3 : System.Address) return access xcb_xinerama_query_version_reply_t;  -- /usr/include/xcb/xinerama.h:360
   pragma Import (C, xcb_xinerama_query_version_reply, "xcb_xinerama_query_version_reply");

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
  -- ** xcb_xinerama_get_state_cookie_t xcb_xinerama_get_state
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_xinerama_get_state_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xinerama_get_state (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xinerama_get_state_cookie_t;  -- /usr/include/xcb/xinerama.h:384
   pragma Import (C, xcb_xinerama_get_state, "xcb_xinerama_get_state");

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
  -- ** xcb_xinerama_get_state_cookie_t xcb_xinerama_get_state_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_xinerama_get_state_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xinerama_get_state_unchecked (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xinerama_get_state_cookie_t;  -- /usr/include/xcb/xinerama.h:410
   pragma Import (C, xcb_xinerama_get_state_unchecked, "xcb_xinerama_get_state_unchecked");

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
  -- * xcb_xinerama_get_state_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xinerama_get_state_reply_t * xcb_xinerama_get_state_reply
  -- ** 
  -- ** @param xcb_connection_t                 *c
  -- ** @param xcb_xinerama_get_state_cookie_t   cookie
  -- ** @param xcb_generic_error_t             **e
  -- ** @returns xcb_xinerama_get_state_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xinerama_get_state_reply
     (arg1 : System.Address;
      arg2 : xcb_xinerama_get_state_cookie_t;
      arg3 : System.Address) return access xcb_xinerama_get_state_reply_t;  -- /usr/include/xcb/xinerama.h:440
   pragma Import (C, xcb_xinerama_get_state_reply, "xcb_xinerama_get_state_reply");

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
  -- ** xcb_xinerama_get_screen_count_cookie_t xcb_xinerama_get_screen_count
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_xinerama_get_screen_count_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xinerama_get_screen_count (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xinerama_get_screen_count_cookie_t;  -- /usr/include/xcb/xinerama.h:464
   pragma Import (C, xcb_xinerama_get_screen_count, "xcb_xinerama_get_screen_count");

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
  -- ** xcb_xinerama_get_screen_count_cookie_t xcb_xinerama_get_screen_count_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_xinerama_get_screen_count_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xinerama_get_screen_count_unchecked (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xinerama_get_screen_count_cookie_t;  -- /usr/include/xcb/xinerama.h:490
   pragma Import (C, xcb_xinerama_get_screen_count_unchecked, "xcb_xinerama_get_screen_count_unchecked");

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
  -- * xcb_xinerama_get_screen_count_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xinerama_get_screen_count_reply_t * xcb_xinerama_get_screen_count_reply
  -- ** 
  -- ** @param xcb_connection_t                        *c
  -- ** @param xcb_xinerama_get_screen_count_cookie_t   cookie
  -- ** @param xcb_generic_error_t                    **e
  -- ** @returns xcb_xinerama_get_screen_count_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xinerama_get_screen_count_reply
     (arg1 : System.Address;
      arg2 : xcb_xinerama_get_screen_count_cookie_t;
      arg3 : System.Address) return access xcb_xinerama_get_screen_count_reply_t;  -- /usr/include/xcb/xinerama.h:520
   pragma Import (C, xcb_xinerama_get_screen_count_reply, "xcb_xinerama_get_screen_count_reply");

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
  -- ** xcb_xinerama_get_screen_size_cookie_t xcb_xinerama_get_screen_size
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @param uint32_t          screen
  -- ** @returns xcb_xinerama_get_screen_size_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xinerama_get_screen_size
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint32_t) return xcb_xinerama_get_screen_size_cookie_t;  -- /usr/include/xcb/xinerama.h:545
   pragma Import (C, xcb_xinerama_get_screen_size, "xcb_xinerama_get_screen_size");

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
  -- ** xcb_xinerama_get_screen_size_cookie_t xcb_xinerama_get_screen_size_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @param uint32_t          screen
  -- ** @returns xcb_xinerama_get_screen_size_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xinerama_get_screen_size_unchecked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint32_t) return xcb_xinerama_get_screen_size_cookie_t;  -- /usr/include/xcb/xinerama.h:573
   pragma Import (C, xcb_xinerama_get_screen_size_unchecked, "xcb_xinerama_get_screen_size_unchecked");

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
  -- * xcb_xinerama_get_screen_size_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xinerama_get_screen_size_reply_t * xcb_xinerama_get_screen_size_reply
  -- ** 
  -- ** @param xcb_connection_t                       *c
  -- ** @param xcb_xinerama_get_screen_size_cookie_t   cookie
  -- ** @param xcb_generic_error_t                   **e
  -- ** @returns xcb_xinerama_get_screen_size_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xinerama_get_screen_size_reply
     (arg1 : System.Address;
      arg2 : xcb_xinerama_get_screen_size_cookie_t;
      arg3 : System.Address) return access xcb_xinerama_get_screen_size_reply_t;  -- /usr/include/xcb/xinerama.h:604
   pragma Import (C, xcb_xinerama_get_screen_size_reply, "xcb_xinerama_get_screen_size_reply");

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
  -- ** xcb_xinerama_is_active_cookie_t xcb_xinerama_is_active
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_xinerama_is_active_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xinerama_is_active (arg1 : System.Address) return xcb_xinerama_is_active_cookie_t;  -- /usr/include/xcb/xinerama.h:627
   pragma Import (C, xcb_xinerama_is_active, "xcb_xinerama_is_active");

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
  -- ** xcb_xinerama_is_active_cookie_t xcb_xinerama_is_active_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_xinerama_is_active_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xinerama_is_active_unchecked (arg1 : System.Address) return xcb_xinerama_is_active_cookie_t;  -- /usr/include/xcb/xinerama.h:651
   pragma Import (C, xcb_xinerama_is_active_unchecked, "xcb_xinerama_is_active_unchecked");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_xinerama_is_active_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xinerama_is_active_reply_t * xcb_xinerama_is_active_reply
  -- ** 
  -- ** @param xcb_connection_t                 *c
  -- ** @param xcb_xinerama_is_active_cookie_t   cookie
  -- ** @param xcb_generic_error_t             **e
  -- ** @returns xcb_xinerama_is_active_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xinerama_is_active_reply
     (arg1 : System.Address;
      arg2 : xcb_xinerama_is_active_cookie_t;
      arg3 : System.Address) return access xcb_xinerama_is_active_reply_t;  -- /usr/include/xcb/xinerama.h:680
   pragma Import (C, xcb_xinerama_is_active_reply, "xcb_xinerama_is_active_reply");

  --*<  
  --*<  
  --*<  
   function xcb_xinerama_query_screens_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xinerama.h:685
   pragma Import (C, xcb_xinerama_query_screens_sizeof, "xcb_xinerama_query_screens_sizeof");

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
  -- ** xcb_xinerama_query_screens_cookie_t xcb_xinerama_query_screens
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_xinerama_query_screens_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xinerama_query_screens (arg1 : System.Address) return xcb_xinerama_query_screens_cookie_t;  -- /usr/include/xcb/xinerama.h:706
   pragma Import (C, xcb_xinerama_query_screens, "xcb_xinerama_query_screens");

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
  -- ** xcb_xinerama_query_screens_cookie_t xcb_xinerama_query_screens_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_xinerama_query_screens_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xinerama_query_screens_unchecked (arg1 : System.Address) return xcb_xinerama_query_screens_cookie_t;  -- /usr/include/xcb/xinerama.h:730
   pragma Import (C, xcb_xinerama_query_screens_unchecked, "xcb_xinerama_query_screens_unchecked");

  --****************************************************************************
  -- **
  -- ** xcb_xinerama_screen_info_t * xcb_xinerama_query_screens_screen_info
  -- ** 
  -- ** @param const xcb_xinerama_query_screens_reply_t *R
  -- ** @returns xcb_xinerama_screen_info_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xinerama_query_screens_screen_info (arg1 : System.Address) return access xcb_xinerama_screen_info_t;  -- /usr/include/xcb/xinerama.h:743
   pragma Import (C, xcb_xinerama_query_screens_screen_info, "xcb_xinerama_query_screens_screen_info");

  --****************************************************************************
  -- **
  -- ** int xcb_xinerama_query_screens_screen_info_length
  -- ** 
  -- ** @param const xcb_xinerama_query_screens_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xinerama_query_screens_screen_info_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xinerama.h:756
   pragma Import (C, xcb_xinerama_query_screens_screen_info_length, "xcb_xinerama_query_screens_screen_info_length");

  --****************************************************************************
  -- **
  -- ** xcb_xinerama_screen_info_iterator_t xcb_xinerama_query_screens_screen_info_iterator
  -- ** 
  -- ** @param const xcb_xinerama_query_screens_reply_t *R
  -- ** @returns xcb_xinerama_screen_info_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xinerama_query_screens_screen_info_iterator (arg1 : System.Address) return xcb_xinerama_screen_info_iterator_t;  -- /usr/include/xcb/xinerama.h:769
   pragma Import (C, xcb_xinerama_query_screens_screen_info_iterator, "xcb_xinerama_query_screens_screen_info_iterator");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_xinerama_query_screens_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xinerama_query_screens_reply_t * xcb_xinerama_query_screens_reply
  -- ** 
  -- ** @param xcb_connection_t                     *c
  -- ** @param xcb_xinerama_query_screens_cookie_t   cookie
  -- ** @param xcb_generic_error_t                 **e
  -- ** @returns xcb_xinerama_query_screens_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xinerama_query_screens_reply
     (arg1 : System.Address;
      arg2 : xcb_xinerama_query_screens_cookie_t;
      arg3 : System.Address) return access xcb_xinerama_query_screens_reply_t;  -- /usr/include/xcb/xinerama.h:798
   pragma Import (C, xcb_xinerama_query_screens_reply, "xcb_xinerama_query_screens_reply");

  --*<  
  --*<  
  --*
  -- * @}
  --  

end xcb_xinerama_h;
