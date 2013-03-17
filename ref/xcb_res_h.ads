with Interfaces.C; use Interfaces.C;
with xcb_xcb_h;
with stdint_h;
with xcb_xproto_h;
with System;

package xcb_res_h is

   --  unsupported macro: XCB_RES_MAJOR_VERSION 1
   --  unsupported macro: XCB_RES_MINOR_VERSION 0
   --  unsupported macro: XCB_RES_QUERY_VERSION 0
   --  unsupported macro: XCB_RES_QUERY_CLIENTS 1
   --  unsupported macro: XCB_RES_QUERY_CLIENT_RESOURCES 2
   --  unsupported macro: XCB_RES_QUERY_CLIENT_PIXMAP_BYTES 3
  -- * This file generated automatically from res.xml by c_client.py.
  -- * Edit at your peril.
  --  

  --*
  -- * @defgroup XCB_Res_API XCB Res API
  -- * @brief Res XCB Protocol Implementation.
  -- * @{
  -- * 

   xcb_res_id : aliased xcb_xcb_h.xcb_extension_t;  -- /usr/include/xcb/res.h:25
   pragma Import (C, xcb_res_id, "xcb_res_id");

  --*
  -- * @brief xcb_res_client_t
  -- * 

  --*<   
   type xcb_res_client_t is record
      resource_base : aliased stdint_h.uint32_t;  -- /usr/include/xcb/res.h:31
      resource_mask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/res.h:32
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_res_client_t);  -- /usr/include/xcb/res.h:30

  --*<   
  --*
  -- * @brief xcb_res_client_iterator_t
  -- * 

  --*<   
   type xcb_res_client_iterator_t is record
      data : access xcb_res_client_t;  -- /usr/include/xcb/res.h:39
      c_rem : aliased int;  -- /usr/include/xcb/res.h:40
      index : aliased int;  -- /usr/include/xcb/res.h:41
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_res_client_iterator_t);  -- /usr/include/xcb/res.h:38

  --*<   
  --*<   
  --*
  -- * @brief xcb_res_type_t
  -- * 

  --*<   
   type xcb_res_type_t is record
      resource_type : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/res.h:48
      count : aliased stdint_h.uint32_t;  -- /usr/include/xcb/res.h:49
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_res_type_t);  -- /usr/include/xcb/res.h:47

  --*<   
  --*
  -- * @brief xcb_res_type_iterator_t
  -- * 

  --*<   
   type xcb_res_type_iterator_t is record
      data : access xcb_res_type_t;  -- /usr/include/xcb/res.h:56
      c_rem : aliased int;  -- /usr/include/xcb/res.h:57
      index : aliased int;  -- /usr/include/xcb/res.h:58
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_res_type_iterator_t);  -- /usr/include/xcb/res.h:55

  --*<   
  --*<   
  --*
  -- * @brief xcb_res_query_version_cookie_t
  -- * 

  --*<   
   type xcb_res_query_version_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/res.h:65
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_res_query_version_cookie_t);  -- /usr/include/xcb/res.h:64

  --* Opcode for xcb_res_query_version.  
  --*
  -- * @brief xcb_res_query_version_request_t
  -- * 

  --*<   
   type xcb_res_query_version_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/res.h:75
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/res.h:76
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/res.h:77
      client_major : aliased stdint_h.uint8_t;  -- /usr/include/xcb/res.h:78
      client_minor : aliased stdint_h.uint8_t;  -- /usr/include/xcb/res.h:79
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_res_query_version_request_t);  -- /usr/include/xcb/res.h:74

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_res_query_version_reply_t
  -- * 

  --*<   
   type xcb_res_query_version_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/res.h:86
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/res.h:87
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/res.h:88
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/res.h:89
      server_major : aliased stdint_h.uint16_t;  -- /usr/include/xcb/res.h:90
      server_minor : aliased stdint_h.uint16_t;  -- /usr/include/xcb/res.h:91
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_res_query_version_reply_t);  -- /usr/include/xcb/res.h:85

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_res_query_clients_cookie_t
  -- * 

  --*<   
   type xcb_res_query_clients_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/res.h:98
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_res_query_clients_cookie_t);  -- /usr/include/xcb/res.h:97

  --* Opcode for xcb_res_query_clients.  
  --*
  -- * @brief xcb_res_query_clients_request_t
  -- * 

  --*<   
   type xcb_res_query_clients_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/res.h:108
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/res.h:109
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/res.h:110
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_res_query_clients_request_t);  -- /usr/include/xcb/res.h:107

  --*<   
  --*<   
  --*
  -- * @brief xcb_res_query_clients_reply_t
  -- * 

  --*<   
   type anon3977_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_res_query_clients_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/res.h:117
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/res.h:118
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/res.h:119
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/res.h:120
      num_clients : aliased stdint_h.uint32_t;  -- /usr/include/xcb/res.h:121
      pad1 : aliased anon3977_anon1939_array;  -- /usr/include/xcb/res.h:122
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_res_query_clients_reply_t);  -- /usr/include/xcb/res.h:116

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_res_query_client_resources_cookie_t
  -- * 

  --*<   
   type xcb_res_query_client_resources_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/res.h:129
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_res_query_client_resources_cookie_t);  -- /usr/include/xcb/res.h:128

  --* Opcode for xcb_res_query_client_resources.  
  --*
  -- * @brief xcb_res_query_client_resources_request_t
  -- * 

  --*<   
   type xcb_res_query_client_resources_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/res.h:139
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/res.h:140
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/res.h:141
      xid : aliased stdint_h.uint32_t;  -- /usr/include/xcb/res.h:142
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_res_query_client_resources_request_t);  -- /usr/include/xcb/res.h:138

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_res_query_client_resources_reply_t
  -- * 

  --*<   
   type anon3985_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_res_query_client_resources_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/res.h:149
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/res.h:150
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/res.h:151
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/res.h:152
      num_types : aliased stdint_h.uint32_t;  -- /usr/include/xcb/res.h:153
      pad1 : aliased anon3985_anon1939_array;  -- /usr/include/xcb/res.h:154
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_res_query_client_resources_reply_t);  -- /usr/include/xcb/res.h:148

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_res_query_client_pixmap_bytes_cookie_t
  -- * 

  --*<   
   type xcb_res_query_client_pixmap_bytes_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/res.h:161
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_res_query_client_pixmap_bytes_cookie_t);  -- /usr/include/xcb/res.h:160

  --* Opcode for xcb_res_query_client_pixmap_bytes.  
  --*
  -- * @brief xcb_res_query_client_pixmap_bytes_request_t
  -- * 

  --*<   
   type xcb_res_query_client_pixmap_bytes_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/res.h:171
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/res.h:172
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/res.h:173
      xid : aliased stdint_h.uint32_t;  -- /usr/include/xcb/res.h:174
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_res_query_client_pixmap_bytes_request_t);  -- /usr/include/xcb/res.h:170

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_res_query_client_pixmap_bytes_reply_t
  -- * 

  --*<   
   type xcb_res_query_client_pixmap_bytes_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/res.h:181
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/res.h:182
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/res.h:183
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/res.h:184
      bytes : aliased stdint_h.uint32_t;  -- /usr/include/xcb/res.h:185
      bytes_overflow : aliased stdint_h.uint32_t;  -- /usr/include/xcb/res.h:186
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_res_query_client_pixmap_bytes_reply_t);  -- /usr/include/xcb/res.h:180

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_res_client_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_res_client_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_res_client_next
  -- ** 
  -- ** @param xcb_res_client_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_res_client_next (arg1 : access xcb_res_client_iterator_t);  -- /usr/include/xcb/res.h:208
   pragma Import (C, xcb_res_client_next, "xcb_res_client_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_res_client_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_res_client_end
  -- ** 
  -- ** @param xcb_res_client_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_res_client_end (arg1 : xcb_res_client_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/res.h:230
   pragma Import (C, xcb_res_client_end, "xcb_res_client_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_res_type_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_res_type_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_res_type_next
  -- ** 
  -- ** @param xcb_res_type_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_res_type_next (arg1 : access xcb_res_type_iterator_t);  -- /usr/include/xcb/res.h:251
   pragma Import (C, xcb_res_type_next, "xcb_res_type_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_res_type_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_res_type_end
  -- ** 
  -- ** @param xcb_res_type_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_res_type_end (arg1 : xcb_res_type_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/res.h:273
   pragma Import (C, xcb_res_type_end, "xcb_res_type_end");

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
  -- ** xcb_res_query_version_cookie_t xcb_res_query_version
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           client_major
  -- ** @param uint8_t           client_minor
  -- ** @returns xcb_res_query_version_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_res_query_version
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint8_t) return xcb_res_query_version_cookie_t;  -- /usr/include/xcb/res.h:296
   pragma Import (C, xcb_res_query_version, "xcb_res_query_version");

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
  -- ** xcb_res_query_version_cookie_t xcb_res_query_version_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           client_major
  -- ** @param uint8_t           client_minor
  -- ** @returns xcb_res_query_version_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_res_query_version_unchecked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint8_t) return xcb_res_query_version_cookie_t;  -- /usr/include/xcb/res.h:324
   pragma Import (C, xcb_res_query_version_unchecked, "xcb_res_query_version_unchecked");

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
  -- * xcb_res_query_version_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_res_query_version_reply_t * xcb_res_query_version_reply
  -- ** 
  -- ** @param xcb_connection_t                *c
  -- ** @param xcb_res_query_version_cookie_t   cookie
  -- ** @param xcb_generic_error_t            **e
  -- ** @returns xcb_res_query_version_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_res_query_version_reply
     (arg1 : System.Address;
      arg2 : xcb_res_query_version_cookie_t;
      arg3 : System.Address) return access xcb_res_query_version_reply_t;  -- /usr/include/xcb/res.h:355
   pragma Import (C, xcb_res_query_version_reply, "xcb_res_query_version_reply");

  --*<  
  --*<  
  --*<  
   function xcb_res_query_clients_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/res.h:360
   pragma Import (C, xcb_res_query_clients_sizeof, "xcb_res_query_clients_sizeof");

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
  -- ** xcb_res_query_clients_cookie_t xcb_res_query_clients
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_res_query_clients_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_res_query_clients (arg1 : System.Address) return xcb_res_query_clients_cookie_t;  -- /usr/include/xcb/res.h:381
   pragma Import (C, xcb_res_query_clients, "xcb_res_query_clients");

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
  -- ** xcb_res_query_clients_cookie_t xcb_res_query_clients_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_res_query_clients_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_res_query_clients_unchecked (arg1 : System.Address) return xcb_res_query_clients_cookie_t;  -- /usr/include/xcb/res.h:405
   pragma Import (C, xcb_res_query_clients_unchecked, "xcb_res_query_clients_unchecked");

  --****************************************************************************
  -- **
  -- ** xcb_res_client_t * xcb_res_query_clients_clients
  -- ** 
  -- ** @param const xcb_res_query_clients_reply_t *R
  -- ** @returns xcb_res_client_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_res_query_clients_clients (arg1 : System.Address) return access xcb_res_client_t;  -- /usr/include/xcb/res.h:418
   pragma Import (C, xcb_res_query_clients_clients, "xcb_res_query_clients_clients");

  --****************************************************************************
  -- **
  -- ** int xcb_res_query_clients_clients_length
  -- ** 
  -- ** @param const xcb_res_query_clients_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_res_query_clients_clients_length (arg1 : System.Address) return int;  -- /usr/include/xcb/res.h:431
   pragma Import (C, xcb_res_query_clients_clients_length, "xcb_res_query_clients_clients_length");

  --****************************************************************************
  -- **
  -- ** xcb_res_client_iterator_t xcb_res_query_clients_clients_iterator
  -- ** 
  -- ** @param const xcb_res_query_clients_reply_t *R
  -- ** @returns xcb_res_client_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_res_query_clients_clients_iterator (arg1 : System.Address) return xcb_res_client_iterator_t;  -- /usr/include/xcb/res.h:444
   pragma Import (C, xcb_res_query_clients_clients_iterator, "xcb_res_query_clients_clients_iterator");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_res_query_clients_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_res_query_clients_reply_t * xcb_res_query_clients_reply
  -- ** 
  -- ** @param xcb_connection_t                *c
  -- ** @param xcb_res_query_clients_cookie_t   cookie
  -- ** @param xcb_generic_error_t            **e
  -- ** @returns xcb_res_query_clients_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_res_query_clients_reply
     (arg1 : System.Address;
      arg2 : xcb_res_query_clients_cookie_t;
      arg3 : System.Address) return access xcb_res_query_clients_reply_t;  -- /usr/include/xcb/res.h:473
   pragma Import (C, xcb_res_query_clients_reply, "xcb_res_query_clients_reply");

  --*<  
  --*<  
  --*<  
   function xcb_res_query_client_resources_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/res.h:478
   pragma Import (C, xcb_res_query_client_resources_sizeof, "xcb_res_query_client_resources_sizeof");

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
  -- ** xcb_res_query_client_resources_cookie_t xcb_res_query_client_resources
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          xid
  -- ** @returns xcb_res_query_client_resources_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_res_query_client_resources (arg1 : System.Address; arg2 : stdint_h.uint32_t) return xcb_res_query_client_resources_cookie_t;  -- /usr/include/xcb/res.h:500
   pragma Import (C, xcb_res_query_client_resources, "xcb_res_query_client_resources");

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
  -- ** xcb_res_query_client_resources_cookie_t xcb_res_query_client_resources_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          xid
  -- ** @returns xcb_res_query_client_resources_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_res_query_client_resources_unchecked (arg1 : System.Address; arg2 : stdint_h.uint32_t) return xcb_res_query_client_resources_cookie_t;  -- /usr/include/xcb/res.h:526
   pragma Import (C, xcb_res_query_client_resources_unchecked, "xcb_res_query_client_resources_unchecked");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_res_type_t * xcb_res_query_client_resources_types
  -- ** 
  -- ** @param const xcb_res_query_client_resources_reply_t *R
  -- ** @returns xcb_res_type_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_res_query_client_resources_types (arg1 : System.Address) return access xcb_res_type_t;  -- /usr/include/xcb/res.h:540
   pragma Import (C, xcb_res_query_client_resources_types, "xcb_res_query_client_resources_types");

  --****************************************************************************
  -- **
  -- ** int xcb_res_query_client_resources_types_length
  -- ** 
  -- ** @param const xcb_res_query_client_resources_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_res_query_client_resources_types_length (arg1 : System.Address) return int;  -- /usr/include/xcb/res.h:553
   pragma Import (C, xcb_res_query_client_resources_types_length, "xcb_res_query_client_resources_types_length");

  --****************************************************************************
  -- **
  -- ** xcb_res_type_iterator_t xcb_res_query_client_resources_types_iterator
  -- ** 
  -- ** @param const xcb_res_query_client_resources_reply_t *R
  -- ** @returns xcb_res_type_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_res_query_client_resources_types_iterator (arg1 : System.Address) return xcb_res_type_iterator_t;  -- /usr/include/xcb/res.h:566
   pragma Import (C, xcb_res_query_client_resources_types_iterator, "xcb_res_query_client_resources_types_iterator");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_res_query_client_resources_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_res_query_client_resources_reply_t * xcb_res_query_client_resources_reply
  -- ** 
  -- ** @param xcb_connection_t                         *c
  -- ** @param xcb_res_query_client_resources_cookie_t   cookie
  -- ** @param xcb_generic_error_t                     **e
  -- ** @returns xcb_res_query_client_resources_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_res_query_client_resources_reply
     (arg1 : System.Address;
      arg2 : xcb_res_query_client_resources_cookie_t;
      arg3 : System.Address) return access xcb_res_query_client_resources_reply_t;  -- /usr/include/xcb/res.h:595
   pragma Import (C, xcb_res_query_client_resources_reply, "xcb_res_query_client_resources_reply");

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
  -- ** xcb_res_query_client_pixmap_bytes_cookie_t xcb_res_query_client_pixmap_bytes
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          xid
  -- ** @returns xcb_res_query_client_pixmap_bytes_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_res_query_client_pixmap_bytes (arg1 : System.Address; arg2 : stdint_h.uint32_t) return xcb_res_query_client_pixmap_bytes_cookie_t;  -- /usr/include/xcb/res.h:619
   pragma Import (C, xcb_res_query_client_pixmap_bytes, "xcb_res_query_client_pixmap_bytes");

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
  -- ** xcb_res_query_client_pixmap_bytes_cookie_t xcb_res_query_client_pixmap_bytes_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          xid
  -- ** @returns xcb_res_query_client_pixmap_bytes_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_res_query_client_pixmap_bytes_unchecked (arg1 : System.Address; arg2 : stdint_h.uint32_t) return xcb_res_query_client_pixmap_bytes_cookie_t;  -- /usr/include/xcb/res.h:645
   pragma Import (C, xcb_res_query_client_pixmap_bytes_unchecked, "xcb_res_query_client_pixmap_bytes_unchecked");

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
  -- * xcb_res_query_client_pixmap_bytes_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_res_query_client_pixmap_bytes_reply_t * xcb_res_query_client_pixmap_bytes_reply
  -- ** 
  -- ** @param xcb_connection_t                            *c
  -- ** @param xcb_res_query_client_pixmap_bytes_cookie_t   cookie
  -- ** @param xcb_generic_error_t                        **e
  -- ** @returns xcb_res_query_client_pixmap_bytes_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_res_query_client_pixmap_bytes_reply
     (arg1 : System.Address;
      arg2 : xcb_res_query_client_pixmap_bytes_cookie_t;
      arg3 : System.Address) return access xcb_res_query_client_pixmap_bytes_reply_t;  -- /usr/include/xcb/res.h:675
   pragma Import (C, xcb_res_query_client_pixmap_bytes_reply, "xcb_res_query_client_pixmap_bytes_reply");

  --*<  
  --*<  
  --*
  -- * @}
  --  

end xcb_res_h;
