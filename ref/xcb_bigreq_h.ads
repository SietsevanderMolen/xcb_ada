with Interfaces.C; use Interfaces.C;
with xcb_xcb_h;
with stdint_h;
with System;

package xcb_bigreq_h is

   --  unsupported macro: XCB_BIGREQUESTS_MAJOR_VERSION 0
   --  unsupported macro: XCB_BIGREQUESTS_MINOR_VERSION 0
   --  unsupported macro: XCB_BIG_REQUESTS_ENABLE 0
  -- * This file generated automatically from bigreq.xml by c_client.py.
  -- * Edit at your peril.
  --  

  --*
  -- * @defgroup XCB_BigRequests_API XCB BigRequests API
  -- * @brief BigRequests XCB Protocol Implementation.
  -- * @{
  -- * 

   xcb_big_requests_id : aliased xcb_xcb_h.xcb_extension_t;  -- /usr/include/xcb/bigreq.h:24
   pragma Import (C, xcb_big_requests_id, "xcb_big_requests_id");

  --*
  -- * @brief xcb_big_requests_enable_cookie_t
  -- * 

  --*<   
   type xcb_big_requests_enable_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/bigreq.h:30
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_big_requests_enable_cookie_t);  -- /usr/include/xcb/bigreq.h:29

  --* Opcode for xcb_big_requests_enable.  
  --*
  -- * @brief xcb_big_requests_enable_request_t
  -- * 

  --*<   
   type xcb_big_requests_enable_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/bigreq.h:40
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/bigreq.h:41
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/bigreq.h:42
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_big_requests_enable_request_t);  -- /usr/include/xcb/bigreq.h:39

  --*<   
  --*<   
  --*
  -- * @brief xcb_big_requests_enable_reply_t
  -- * 

  --*<   
   type xcb_big_requests_enable_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/bigreq.h:49
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/bigreq.h:50
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/bigreq.h:51
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/bigreq.h:52
      maximum_request_length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/bigreq.h:53
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_big_requests_enable_reply_t);  -- /usr/include/xcb/bigreq.h:48

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
  -- ** xcb_big_requests_enable_cookie_t xcb_big_requests_enable
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_big_requests_enable_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_big_requests_enable (arg1 : System.Address) return xcb_big_requests_enable_cookie_t;  -- /usr/include/xcb/bigreq.h:75
   pragma Import (C, xcb_big_requests_enable, "xcb_big_requests_enable");

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
  -- ** xcb_big_requests_enable_cookie_t xcb_big_requests_enable_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_big_requests_enable_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_big_requests_enable_unchecked (arg1 : System.Address) return xcb_big_requests_enable_cookie_t;  -- /usr/include/xcb/bigreq.h:99
   pragma Import (C, xcb_big_requests_enable_unchecked, "xcb_big_requests_enable_unchecked");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_big_requests_enable_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_big_requests_enable_reply_t * xcb_big_requests_enable_reply
  -- ** 
  -- ** @param xcb_connection_t                  *c
  -- ** @param xcb_big_requests_enable_cookie_t   cookie
  -- ** @param xcb_generic_error_t              **e
  -- ** @returns xcb_big_requests_enable_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_big_requests_enable_reply
     (arg1 : System.Address;
      arg2 : xcb_big_requests_enable_cookie_t;
      arg3 : System.Address) return access xcb_big_requests_enable_reply_t;  -- /usr/include/xcb/bigreq.h:128
   pragma Import (C, xcb_big_requests_enable_reply, "xcb_big_requests_enable_reply");

  --*<  
  --*<  
  --*
  -- * @}
  --  

end xcb_bigreq_h;
