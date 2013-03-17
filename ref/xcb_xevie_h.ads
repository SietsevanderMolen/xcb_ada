with Interfaces.C; use Interfaces.C;
with xcb_xcb_h;
with stdint_h;
with System;

package xcb_xevie_h is

   --  unsupported macro: XCB_XEVIE_MAJOR_VERSION 1
   --  unsupported macro: XCB_XEVIE_MINOR_VERSION 0
   --  unsupported macro: XCB_XEVIE_QUERY_VERSION 0
   --  unsupported macro: XCB_XEVIE_START 1
   --  unsupported macro: XCB_XEVIE_END 2
   --  unsupported macro: XCB_XEVIE_SEND 3
   --  unsupported macro: XCB_XEVIE_SELECT_INPUT 4
  -- * This file generated automatically from xevie.xml by c_client.py.
  -- * Edit at your peril.
  --  

  --*
  -- * @defgroup XCB_Xevie_API XCB Xevie API
  -- * @brief Xevie XCB Protocol Implementation.
  -- * @{
  -- * 

   xcb_xevie_id : aliased xcb_xcb_h.xcb_extension_t;  -- /usr/include/xcb/xevie.h:24
   pragma Import (C, xcb_xevie_id, "xcb_xevie_id");

  --*
  -- * @brief xcb_xevie_query_version_cookie_t
  -- * 

  --*<   
   type xcb_xevie_query_version_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xevie.h:30
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xevie_query_version_cookie_t);  -- /usr/include/xcb/xevie.h:29

  --* Opcode for xcb_xevie_query_version.  
  --*
  -- * @brief xcb_xevie_query_version_request_t
  -- * 

  --*<   
   type xcb_xevie_query_version_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xevie.h:40
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xevie.h:41
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xevie.h:42
      client_major_version : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xevie.h:43
      client_minor_version : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xevie.h:44
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xevie_query_version_request_t);  -- /usr/include/xcb/xevie.h:39

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xevie_query_version_reply_t
  -- * 

  --*<   
   type anon3959_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_xevie_query_version_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xevie.h:51
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xevie.h:52
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xevie.h:53
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xevie.h:54
      server_major_version : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xevie.h:55
      server_minor_version : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xevie.h:56
      pad1 : aliased anon3959_anon1939_array;  -- /usr/include/xcb/xevie.h:57
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xevie_query_version_reply_t);  -- /usr/include/xcb/xevie.h:50

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xevie_start_cookie_t
  -- * 

  --*<   
   type xcb_xevie_start_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xevie.h:64
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xevie_start_cookie_t);  -- /usr/include/xcb/xevie.h:63

  --* Opcode for xcb_xevie_start.  
  --*
  -- * @brief xcb_xevie_start_request_t
  -- * 

  --*<   
   type xcb_xevie_start_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xevie.h:74
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xevie.h:75
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xevie.h:76
      screen : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xevie.h:77
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xevie_start_request_t);  -- /usr/include/xcb/xevie.h:73

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xevie_start_reply_t
  -- * 

  --*<   
   type anon3967_anon2504_array is array (0 .. 23) of aliased stdint_h.uint8_t;
   type xcb_xevie_start_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xevie.h:84
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xevie.h:85
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xevie.h:86
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xevie.h:87
      pad1 : aliased anon3967_anon2504_array;  -- /usr/include/xcb/xevie.h:88
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xevie_start_reply_t);  -- /usr/include/xcb/xevie.h:83

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xevie_end_cookie_t
  -- * 

  --*<   
   type xcb_xevie_end_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xevie.h:95
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xevie_end_cookie_t);  -- /usr/include/xcb/xevie.h:94

  --* Opcode for xcb_xevie_end.  
  --*
  -- * @brief xcb_xevie_end_request_t
  -- * 

  --*<   
   type xcb_xevie_end_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xevie.h:105
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xevie.h:106
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xevie.h:107
      cmap : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xevie.h:108
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xevie_end_request_t);  -- /usr/include/xcb/xevie.h:104

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xevie_end_reply_t
  -- * 

  --*<   
   type anon3975_anon2504_array is array (0 .. 23) of aliased stdint_h.uint8_t;
   type xcb_xevie_end_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xevie.h:115
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xevie.h:116
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xevie.h:117
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xevie.h:118
      pad1 : aliased anon3975_anon2504_array;  -- /usr/include/xcb/xevie.h:119
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xevie_end_reply_t);  -- /usr/include/xcb/xevie.h:114

  --*<   
  --*<   
  --*<   
  --*<   
   type xcb_xevie_datatype_t is 
     (XCB_XEVIE_DATATYPE_UNMODIFIED,
      XCB_XEVIE_DATATYPE_MODIFIED);
   pragma Convention (C, xcb_xevie_datatype_t);  -- /usr/include/xcb/xevie.h:122

  --*
  -- * @brief xcb_xevie_event_t
  -- * 

  --*<   
   type anon3981_anon2206_array is array (0 .. 31) of aliased stdint_h.uint8_t;
   type xcb_xevie_event_t is record
      pad0 : aliased anon3981_anon2206_array;  -- /usr/include/xcb/xevie.h:131
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xevie_event_t);  -- /usr/include/xcb/xevie.h:130

  --*
  -- * @brief xcb_xevie_event_iterator_t
  -- * 

  --*<   
   type xcb_xevie_event_iterator_t is record
      data : access xcb_xevie_event_t;  -- /usr/include/xcb/xevie.h:138
      c_rem : aliased int;  -- /usr/include/xcb/xevie.h:139
      index : aliased int;  -- /usr/include/xcb/xevie.h:140
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xevie_event_iterator_t);  -- /usr/include/xcb/xevie.h:137

  --*<   
  --*<   
  --*
  -- * @brief xcb_xevie_send_cookie_t
  -- * 

  --*<   
   type xcb_xevie_send_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xevie.h:147
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xevie_send_cookie_t);  -- /usr/include/xcb/xevie.h:146

  --* Opcode for xcb_xevie_send.  
  --*
  -- * @brief xcb_xevie_send_request_t
  -- * 

  --*<   
   type anon3991_anon3993_array is array (0 .. 63) of aliased stdint_h.uint8_t;
   type xcb_xevie_send_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xevie.h:157
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xevie.h:158
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xevie.h:159
      event : aliased xcb_xevie_event_t;  -- /usr/include/xcb/xevie.h:160
      data_type : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xevie.h:161
      pad0 : aliased anon3991_anon3993_array;  -- /usr/include/xcb/xevie.h:162
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xevie_send_request_t);  -- /usr/include/xcb/xevie.h:156

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xevie_send_reply_t
  -- * 

  --*<   
   type anon3996_anon2504_array is array (0 .. 23) of aliased stdint_h.uint8_t;
   type xcb_xevie_send_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xevie.h:169
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xevie.h:170
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xevie.h:171
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xevie.h:172
      pad1 : aliased anon3996_anon2504_array;  -- /usr/include/xcb/xevie.h:173
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xevie_send_reply_t);  -- /usr/include/xcb/xevie.h:168

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xevie_select_input_cookie_t
  -- * 

  --*<   
   type xcb_xevie_select_input_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xevie.h:180
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xevie_select_input_cookie_t);  -- /usr/include/xcb/xevie.h:179

  --* Opcode for xcb_xevie_select_input.  
  --*
  -- * @brief xcb_xevie_select_input_request_t
  -- * 

  --*<   
   type xcb_xevie_select_input_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xevie.h:190
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xevie.h:191
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xevie.h:192
      event_mask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xevie.h:193
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xevie_select_input_request_t);  -- /usr/include/xcb/xevie.h:189

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xevie_select_input_reply_t
  -- * 

  --*<   
   type anon4004_anon2504_array is array (0 .. 23) of aliased stdint_h.uint8_t;
   type xcb_xevie_select_input_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xevie.h:200
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xevie.h:201
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xevie.h:202
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xevie.h:203
      pad1 : aliased anon4004_anon2504_array;  -- /usr/include/xcb/xevie.h:204
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xevie_select_input_reply_t);  -- /usr/include/xcb/xevie.h:199

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
  -- ** xcb_xevie_query_version_cookie_t xcb_xevie_query_version
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint16_t          client_major_version
  -- ** @param uint16_t          client_minor_version
  -- ** @returns xcb_xevie_query_version_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xevie_query_version
     (arg1 : System.Address;
      arg2 : stdint_h.uint16_t;
      arg3 : stdint_h.uint16_t) return xcb_xevie_query_version_cookie_t;  -- /usr/include/xcb/xevie.h:228
   pragma Import (C, xcb_xevie_query_version, "xcb_xevie_query_version");

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
  -- ** xcb_xevie_query_version_cookie_t xcb_xevie_query_version_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint16_t          client_major_version
  -- ** @param uint16_t          client_minor_version
  -- ** @returns xcb_xevie_query_version_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xevie_query_version_unchecked
     (arg1 : System.Address;
      arg2 : stdint_h.uint16_t;
      arg3 : stdint_h.uint16_t) return xcb_xevie_query_version_cookie_t;  -- /usr/include/xcb/xevie.h:256
   pragma Import (C, xcb_xevie_query_version_unchecked, "xcb_xevie_query_version_unchecked");

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
  -- * xcb_xevie_query_version_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xevie_query_version_reply_t * xcb_xevie_query_version_reply
  -- ** 
  -- ** @param xcb_connection_t                  *c
  -- ** @param xcb_xevie_query_version_cookie_t   cookie
  -- ** @param xcb_generic_error_t              **e
  -- ** @returns xcb_xevie_query_version_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xevie_query_version_reply
     (arg1 : System.Address;
      arg2 : xcb_xevie_query_version_cookie_t;
      arg3 : System.Address) return access xcb_xevie_query_version_reply_t;  -- /usr/include/xcb/xevie.h:287
   pragma Import (C, xcb_xevie_query_version_reply, "xcb_xevie_query_version_reply");

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
  -- ** xcb_xevie_start_cookie_t xcb_xevie_start
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          screen
  -- ** @returns xcb_xevie_start_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xevie_start (arg1 : System.Address; arg2 : stdint_h.uint32_t) return xcb_xevie_start_cookie_t;  -- /usr/include/xcb/xevie.h:311
   pragma Import (C, xcb_xevie_start, "xcb_xevie_start");

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
  -- ** xcb_xevie_start_cookie_t xcb_xevie_start_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          screen
  -- ** @returns xcb_xevie_start_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xevie_start_unchecked (arg1 : System.Address; arg2 : stdint_h.uint32_t) return xcb_xevie_start_cookie_t;  -- /usr/include/xcb/xevie.h:337
   pragma Import (C, xcb_xevie_start_unchecked, "xcb_xevie_start_unchecked");

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
  -- * xcb_xevie_start_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xevie_start_reply_t * xcb_xevie_start_reply
  -- ** 
  -- ** @param xcb_connection_t          *c
  -- ** @param xcb_xevie_start_cookie_t   cookie
  -- ** @param xcb_generic_error_t      **e
  -- ** @returns xcb_xevie_start_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xevie_start_reply
     (arg1 : System.Address;
      arg2 : xcb_xevie_start_cookie_t;
      arg3 : System.Address) return access xcb_xevie_start_reply_t;  -- /usr/include/xcb/xevie.h:367
   pragma Import (C, xcb_xevie_start_reply, "xcb_xevie_start_reply");

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
  -- ** xcb_xevie_end_cookie_t xcb_xevie_end
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          cmap
  -- ** @returns xcb_xevie_end_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xevie_end (arg1 : System.Address; arg2 : stdint_h.uint32_t) return xcb_xevie_end_cookie_t;  -- /usr/include/xcb/xevie.h:391
   pragma Import (C, xcb_xevie_end, "xcb_xevie_end");

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
  -- ** xcb_xevie_end_cookie_t xcb_xevie_end_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          cmap
  -- ** @returns xcb_xevie_end_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xevie_end_unchecked (arg1 : System.Address; arg2 : stdint_h.uint32_t) return xcb_xevie_end_cookie_t;  -- /usr/include/xcb/xevie.h:417
   pragma Import (C, xcb_xevie_end_unchecked, "xcb_xevie_end_unchecked");

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
  -- * xcb_xevie_end_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xevie_end_reply_t * xcb_xevie_end_reply
  -- ** 
  -- ** @param xcb_connection_t        *c
  -- ** @param xcb_xevie_end_cookie_t   cookie
  -- ** @param xcb_generic_error_t    **e
  -- ** @returns xcb_xevie_end_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xevie_end_reply
     (arg1 : System.Address;
      arg2 : xcb_xevie_end_cookie_t;
      arg3 : System.Address) return access xcb_xevie_end_reply_t;  -- /usr/include/xcb/xevie.h:447
   pragma Import (C, xcb_xevie_end_reply, "xcb_xevie_end_reply");

  --*<  
  --*<  
  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xevie_event_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xevie_event_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xevie_event_next
  -- ** 
  -- ** @param xcb_xevie_event_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xevie_event_next (arg1 : access xcb_xevie_event_iterator_t);  -- /usr/include/xcb/xevie.h:470
   pragma Import (C, xcb_xevie_event_next, "xcb_xevie_event_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xevie_event_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xevie_event_end
  -- ** 
  -- ** @param xcb_xevie_event_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xevie_event_end (arg1 : xcb_xevie_event_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xevie.h:492
   pragma Import (C, xcb_xevie_event_end, "xcb_xevie_event_end");

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
  -- ** xcb_xevie_send_cookie_t xcb_xevie_send
  -- ** 
  -- ** @param xcb_connection_t  *c
  -- ** @param xcb_xevie_event_t  event
  -- ** @param uint32_t           data_type
  -- ** @returns xcb_xevie_send_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xevie_send
     (arg1 : System.Address;
      arg2 : xcb_xevie_event_t;
      arg3 : stdint_h.uint32_t) return xcb_xevie_send_cookie_t;  -- /usr/include/xcb/xevie.h:515
   pragma Import (C, xcb_xevie_send, "xcb_xevie_send");

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
  -- ** xcb_xevie_send_cookie_t xcb_xevie_send_unchecked
  -- ** 
  -- ** @param xcb_connection_t  *c
  -- ** @param xcb_xevie_event_t  event
  -- ** @param uint32_t           data_type
  -- ** @returns xcb_xevie_send_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xevie_send_unchecked
     (arg1 : System.Address;
      arg2 : xcb_xevie_event_t;
      arg3 : stdint_h.uint32_t) return xcb_xevie_send_cookie_t;  -- /usr/include/xcb/xevie.h:543
   pragma Import (C, xcb_xevie_send_unchecked, "xcb_xevie_send_unchecked");

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
  -- * xcb_xevie_send_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xevie_send_reply_t * xcb_xevie_send_reply
  -- ** 
  -- ** @param xcb_connection_t         *c
  -- ** @param xcb_xevie_send_cookie_t   cookie
  -- ** @param xcb_generic_error_t     **e
  -- ** @returns xcb_xevie_send_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xevie_send_reply
     (arg1 : System.Address;
      arg2 : xcb_xevie_send_cookie_t;
      arg3 : System.Address) return access xcb_xevie_send_reply_t;  -- /usr/include/xcb/xevie.h:574
   pragma Import (C, xcb_xevie_send_reply, "xcb_xevie_send_reply");

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
  -- ** xcb_xevie_select_input_cookie_t xcb_xevie_select_input
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          event_mask
  -- ** @returns xcb_xevie_select_input_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xevie_select_input (arg1 : System.Address; arg2 : stdint_h.uint32_t) return xcb_xevie_select_input_cookie_t;  -- /usr/include/xcb/xevie.h:598
   pragma Import (C, xcb_xevie_select_input, "xcb_xevie_select_input");

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
  -- ** xcb_xevie_select_input_cookie_t xcb_xevie_select_input_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          event_mask
  -- ** @returns xcb_xevie_select_input_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xevie_select_input_unchecked (arg1 : System.Address; arg2 : stdint_h.uint32_t) return xcb_xevie_select_input_cookie_t;  -- /usr/include/xcb/xevie.h:624
   pragma Import (C, xcb_xevie_select_input_unchecked, "xcb_xevie_select_input_unchecked");

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
  -- * xcb_xevie_select_input_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xevie_select_input_reply_t * xcb_xevie_select_input_reply
  -- ** 
  -- ** @param xcb_connection_t                 *c
  -- ** @param xcb_xevie_select_input_cookie_t   cookie
  -- ** @param xcb_generic_error_t             **e
  -- ** @returns xcb_xevie_select_input_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xevie_select_input_reply
     (arg1 : System.Address;
      arg2 : xcb_xevie_select_input_cookie_t;
      arg3 : System.Address) return access xcb_xevie_select_input_reply_t;  -- /usr/include/xcb/xevie.h:654
   pragma Import (C, xcb_xevie_select_input_reply, "xcb_xevie_select_input_reply");

  --*<  
  --*<  
  --*
  -- * @}
  --  

end xcb_xevie_h;
