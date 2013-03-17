with Interfaces.C; use Interfaces.C;
with xcb_xcb_h;
with stdint_h;
with System;

package xcb_xc_misc_h is

   --  unsupported macro: XCB_XCMISC_MAJOR_VERSION 1
   --  unsupported macro: XCB_XCMISC_MINOR_VERSION 1
   --  unsupported macro: XCB_XC_MISC_GET_VERSION 0
   --  unsupported macro: XCB_XC_MISC_GET_XID_RANGE 1
   --  unsupported macro: XCB_XC_MISC_GET_XID_LIST 2
  -- * This file generated automatically from xc_misc.xml by c_client.py.
  -- * Edit at your peril.
  --  

  --*
  -- * @defgroup XCB_XCMisc_API XCB XCMisc API
  -- * @brief XCMisc XCB Protocol Implementation.
  -- * @{
  -- * 

   xcb_xc_misc_id : aliased xcb_xcb_h.xcb_extension_t;  -- /usr/include/xcb/xc_misc.h:24
   pragma Import (C, xcb_xc_misc_id, "xcb_xc_misc_id");

  --*
  -- * @brief xcb_xc_misc_get_version_cookie_t
  -- * 

  --*<   
   type xcb_xc_misc_get_version_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xc_misc.h:30
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xc_misc_get_version_cookie_t);  -- /usr/include/xcb/xc_misc.h:29

  --* Opcode for xcb_xc_misc_get_version.  
  --*
  -- * @brief xcb_xc_misc_get_version_request_t
  -- * 

  --*<   
   type xcb_xc_misc_get_version_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xc_misc.h:40
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xc_misc.h:41
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xc_misc.h:42
      client_major_version : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xc_misc.h:43
      client_minor_version : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xc_misc.h:44
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xc_misc_get_version_request_t);  -- /usr/include/xcb/xc_misc.h:39

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xc_misc_get_version_reply_t
  -- * 

  --*<   
   type xcb_xc_misc_get_version_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xc_misc.h:51
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xc_misc.h:52
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xc_misc.h:53
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xc_misc.h:54
      server_major_version : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xc_misc.h:55
      server_minor_version : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xc_misc.h:56
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xc_misc_get_version_reply_t);  -- /usr/include/xcb/xc_misc.h:50

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xc_misc_get_xid_range_cookie_t
  -- * 

  --*<   
   type xcb_xc_misc_get_xid_range_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xc_misc.h:63
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xc_misc_get_xid_range_cookie_t);  -- /usr/include/xcb/xc_misc.h:62

  --* Opcode for xcb_xc_misc_get_xid_range.  
  --*
  -- * @brief xcb_xc_misc_get_xid_range_request_t
  -- * 

  --*<   
   type xcb_xc_misc_get_xid_range_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xc_misc.h:73
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xc_misc.h:74
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xc_misc.h:75
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xc_misc_get_xid_range_request_t);  -- /usr/include/xcb/xc_misc.h:72

  --*<   
  --*<   
  --*
  -- * @brief xcb_xc_misc_get_xid_range_reply_t
  -- * 

  --*<   
   type xcb_xc_misc_get_xid_range_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xc_misc.h:82
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xc_misc.h:83
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xc_misc.h:84
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xc_misc.h:85
      start_id : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xc_misc.h:86
      count : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xc_misc.h:87
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xc_misc_get_xid_range_reply_t);  -- /usr/include/xcb/xc_misc.h:81

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xc_misc_get_xid_list_cookie_t
  -- * 

  --*<   
   type xcb_xc_misc_get_xid_list_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xc_misc.h:94
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xc_misc_get_xid_list_cookie_t);  -- /usr/include/xcb/xc_misc.h:93

  --* Opcode for xcb_xc_misc_get_xid_list.  
  --*
  -- * @brief xcb_xc_misc_get_xid_list_request_t
  -- * 

  --*<   
   type xcb_xc_misc_get_xid_list_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xc_misc.h:104
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xc_misc.h:105
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xc_misc.h:106
      count : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xc_misc.h:107
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xc_misc_get_xid_list_request_t);  -- /usr/include/xcb/xc_misc.h:103

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xc_misc_get_xid_list_reply_t
  -- * 

  --*<   
   type anon3971_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_xc_misc_get_xid_list_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xc_misc.h:114
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xc_misc.h:115
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xc_misc.h:116
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xc_misc.h:117
      ids_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xc_misc.h:118
      pad1 : aliased anon3971_anon1939_array;  -- /usr/include/xcb/xc_misc.h:119
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xc_misc_get_xid_list_reply_t);  -- /usr/include/xcb/xc_misc.h:113

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
  -- ** xcb_xc_misc_get_version_cookie_t xcb_xc_misc_get_version
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint16_t          client_major_version
  -- ** @param uint16_t          client_minor_version
  -- ** @returns xcb_xc_misc_get_version_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xc_misc_get_version
     (arg1 : System.Address;
      arg2 : stdint_h.uint16_t;
      arg3 : stdint_h.uint16_t) return xcb_xc_misc_get_version_cookie_t;  -- /usr/include/xcb/xc_misc.h:143
   pragma Import (C, xcb_xc_misc_get_version, "xcb_xc_misc_get_version");

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
  -- ** xcb_xc_misc_get_version_cookie_t xcb_xc_misc_get_version_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint16_t          client_major_version
  -- ** @param uint16_t          client_minor_version
  -- ** @returns xcb_xc_misc_get_version_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xc_misc_get_version_unchecked
     (arg1 : System.Address;
      arg2 : stdint_h.uint16_t;
      arg3 : stdint_h.uint16_t) return xcb_xc_misc_get_version_cookie_t;  -- /usr/include/xcb/xc_misc.h:171
   pragma Import (C, xcb_xc_misc_get_version_unchecked, "xcb_xc_misc_get_version_unchecked");

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
  -- * xcb_xc_misc_get_version_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xc_misc_get_version_reply_t * xcb_xc_misc_get_version_reply
  -- ** 
  -- ** @param xcb_connection_t                  *c
  -- ** @param xcb_xc_misc_get_version_cookie_t   cookie
  -- ** @param xcb_generic_error_t              **e
  -- ** @returns xcb_xc_misc_get_version_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xc_misc_get_version_reply
     (arg1 : System.Address;
      arg2 : xcb_xc_misc_get_version_cookie_t;
      arg3 : System.Address) return access xcb_xc_misc_get_version_reply_t;  -- /usr/include/xcb/xc_misc.h:202
   pragma Import (C, xcb_xc_misc_get_version_reply, "xcb_xc_misc_get_version_reply");

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
  -- ** xcb_xc_misc_get_xid_range_cookie_t xcb_xc_misc_get_xid_range
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_xc_misc_get_xid_range_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xc_misc_get_xid_range (arg1 : System.Address) return xcb_xc_misc_get_xid_range_cookie_t;  -- /usr/include/xcb/xc_misc.h:225
   pragma Import (C, xcb_xc_misc_get_xid_range, "xcb_xc_misc_get_xid_range");

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
  -- ** xcb_xc_misc_get_xid_range_cookie_t xcb_xc_misc_get_xid_range_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_xc_misc_get_xid_range_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xc_misc_get_xid_range_unchecked (arg1 : System.Address) return xcb_xc_misc_get_xid_range_cookie_t;  -- /usr/include/xcb/xc_misc.h:249
   pragma Import (C, xcb_xc_misc_get_xid_range_unchecked, "xcb_xc_misc_get_xid_range_unchecked");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_xc_misc_get_xid_range_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xc_misc_get_xid_range_reply_t * xcb_xc_misc_get_xid_range_reply
  -- ** 
  -- ** @param xcb_connection_t                    *c
  -- ** @param xcb_xc_misc_get_xid_range_cookie_t   cookie
  -- ** @param xcb_generic_error_t                **e
  -- ** @returns xcb_xc_misc_get_xid_range_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xc_misc_get_xid_range_reply
     (arg1 : System.Address;
      arg2 : xcb_xc_misc_get_xid_range_cookie_t;
      arg3 : System.Address) return access xcb_xc_misc_get_xid_range_reply_t;  -- /usr/include/xcb/xc_misc.h:278
   pragma Import (C, xcb_xc_misc_get_xid_range_reply, "xcb_xc_misc_get_xid_range_reply");

  --*<  
  --*<  
  --*<  
   function xcb_xc_misc_get_xid_list_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xc_misc.h:283
   pragma Import (C, xcb_xc_misc_get_xid_list_sizeof, "xcb_xc_misc_get_xid_list_sizeof");

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
  -- ** xcb_xc_misc_get_xid_list_cookie_t xcb_xc_misc_get_xid_list
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          count
  -- ** @returns xcb_xc_misc_get_xid_list_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xc_misc_get_xid_list (arg1 : System.Address; arg2 : stdint_h.uint32_t) return xcb_xc_misc_get_xid_list_cookie_t;  -- /usr/include/xcb/xc_misc.h:305
   pragma Import (C, xcb_xc_misc_get_xid_list, "xcb_xc_misc_get_xid_list");

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
  -- ** xcb_xc_misc_get_xid_list_cookie_t xcb_xc_misc_get_xid_list_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          count
  -- ** @returns xcb_xc_misc_get_xid_list_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xc_misc_get_xid_list_unchecked (arg1 : System.Address; arg2 : stdint_h.uint32_t) return xcb_xc_misc_get_xid_list_cookie_t;  -- /usr/include/xcb/xc_misc.h:331
   pragma Import (C, xcb_xc_misc_get_xid_list_unchecked, "xcb_xc_misc_get_xid_list_unchecked");

  --*<  
  --****************************************************************************
  -- **
  -- ** uint32_t * xcb_xc_misc_get_xid_list_ids
  -- ** 
  -- ** @param const xcb_xc_misc_get_xid_list_reply_t *R
  -- ** @returns uint32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xc_misc_get_xid_list_ids (arg1 : System.Address) return access stdint_h.uint32_t;  -- /usr/include/xcb/xc_misc.h:345
   pragma Import (C, xcb_xc_misc_get_xid_list_ids, "xcb_xc_misc_get_xid_list_ids");

  --****************************************************************************
  -- **
  -- ** int xcb_xc_misc_get_xid_list_ids_length
  -- ** 
  -- ** @param const xcb_xc_misc_get_xid_list_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xc_misc_get_xid_list_ids_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xc_misc.h:358
   pragma Import (C, xcb_xc_misc_get_xid_list_ids_length, "xcb_xc_misc_get_xid_list_ids_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xc_misc_get_xid_list_ids_end
  -- ** 
  -- ** @param const xcb_xc_misc_get_xid_list_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xc_misc_get_xid_list_ids_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xc_misc.h:371
   pragma Import (C, xcb_xc_misc_get_xid_list_ids_end, "xcb_xc_misc_get_xid_list_ids_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_xc_misc_get_xid_list_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xc_misc_get_xid_list_reply_t * xcb_xc_misc_get_xid_list_reply
  -- ** 
  -- ** @param xcb_connection_t                   *c
  -- ** @param xcb_xc_misc_get_xid_list_cookie_t   cookie
  -- ** @param xcb_generic_error_t               **e
  -- ** @returns xcb_xc_misc_get_xid_list_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xc_misc_get_xid_list_reply
     (arg1 : System.Address;
      arg2 : xcb_xc_misc_get_xid_list_cookie_t;
      arg3 : System.Address) return access xcb_xc_misc_get_xid_list_reply_t;  -- /usr/include/xcb/xc_misc.h:400
   pragma Import (C, xcb_xc_misc_get_xid_list_reply, "xcb_xc_misc_get_xid_list_reply");

  --*<  
  --*<  
  --*
  -- * @}
  --  

end xcb_xc_misc_h;
