with Interfaces.C; use Interfaces.C;
with xcb_xcb_h;
with stdint_h;
with xcb_xproto_h;
with xcb_xfixes_h;
with System;

package xcb_damage_h is

   --  unsupported macro: XCB_DAMAGE_MAJOR_VERSION 1
   --  unsupported macro: XCB_DAMAGE_MINOR_VERSION 1
   --  unsupported macro: XCB_DAMAGE_BAD_DAMAGE 0
   --  unsupported macro: XCB_DAMAGE_QUERY_VERSION 0
   --  unsupported macro: XCB_DAMAGE_CREATE 1
   --  unsupported macro: XCB_DAMAGE_DESTROY 2
   --  unsupported macro: XCB_DAMAGE_SUBTRACT 3
   --  unsupported macro: XCB_DAMAGE_ADD 4
   --  unsupported macro: XCB_DAMAGE_NOTIFY 0
  -- * This file generated automatically from damage.xml by c_client.py.
  -- * Edit at your peril.
  --  

  --*
  -- * @defgroup XCB_Damage_API XCB Damage API
  -- * @brief Damage XCB Protocol Implementation.
  -- * @{
  -- * 

   xcb_damage_id : aliased xcb_xcb_h.xcb_extension_t;  -- /usr/include/xcb/damage.h:28
   pragma Import (C, xcb_damage_id, "xcb_damage_id");

   subtype xcb_damage_damage_t is stdint_h.uint32_t;  -- /usr/include/xcb/damage.h:30

  --*
  -- * @brief xcb_damage_damage_iterator_t
  -- * 

  --*<   
   type xcb_damage_damage_iterator_t is record
      data : access xcb_damage_damage_t;  -- /usr/include/xcb/damage.h:36
      c_rem : aliased int;  -- /usr/include/xcb/damage.h:37
      index : aliased int;  -- /usr/include/xcb/damage.h:38
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_damage_damage_iterator_t);  -- /usr/include/xcb/damage.h:35

  --*<   
  --*<   
   type xcb_damage_report_level_t is 
     (XCB_DAMAGE_REPORT_LEVEL_RAW_RECTANGLES,
      XCB_DAMAGE_REPORT_LEVEL_DELTA_RECTANGLES,
      XCB_DAMAGE_REPORT_LEVEL_BOUNDING_BOX,
      XCB_DAMAGE_REPORT_LEVEL_NON_EMPTY);
   pragma Convention (C, xcb_damage_report_level_t);  -- /usr/include/xcb/damage.h:41

  --* Opcode for xcb_damage_bad_damage.  
  --*
  -- * @brief xcb_damage_bad_damage_error_t
  -- * 

  --*<   
   type xcb_damage_bad_damage_error_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/damage.h:55
      error_code : aliased stdint_h.uint8_t;  -- /usr/include/xcb/damage.h:56
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/damage.h:57
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_damage_bad_damage_error_t);  -- /usr/include/xcb/damage.h:54

  --*<   
  --*<   
  --*
  -- * @brief xcb_damage_query_version_cookie_t
  -- * 

  --*<   
   type xcb_damage_query_version_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/damage.h:64
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_damage_query_version_cookie_t);  -- /usr/include/xcb/damage.h:63

  --* Opcode for xcb_damage_query_version.  
  --*
  -- * @brief xcb_damage_query_version_request_t
  -- * 

  --*<   
   type xcb_damage_query_version_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/damage.h:74
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/damage.h:75
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/damage.h:76
      client_major_version : aliased stdint_h.uint32_t;  -- /usr/include/xcb/damage.h:77
      client_minor_version : aliased stdint_h.uint32_t;  -- /usr/include/xcb/damage.h:78
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_damage_query_version_request_t);  -- /usr/include/xcb/damage.h:73

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_damage_query_version_reply_t
  -- * 

  --*<   
   type anon5094_anon4083_array is array (0 .. 15) of aliased stdint_h.uint8_t;
   type xcb_damage_query_version_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/damage.h:85
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/damage.h:86
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/damage.h:87
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/damage.h:88
      major_version : aliased stdint_h.uint32_t;  -- /usr/include/xcb/damage.h:89
      minor_version : aliased stdint_h.uint32_t;  -- /usr/include/xcb/damage.h:90
      pad1 : aliased anon5094_anon4083_array;  -- /usr/include/xcb/damage.h:91
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_damage_query_version_reply_t);  -- /usr/include/xcb/damage.h:84

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_damage_create.  
  --*
  -- * @brief xcb_damage_create_request_t
  -- * 

  --*<   
   type anon5098_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_damage_create_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/damage.h:101
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/damage.h:102
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/damage.h:103
      damage : aliased xcb_damage_damage_t;  -- /usr/include/xcb/damage.h:104
      drawable : aliased xcb_xproto_h.xcb_drawable_t;  -- /usr/include/xcb/damage.h:105
      level : aliased stdint_h.uint8_t;  -- /usr/include/xcb/damage.h:106
      pad0 : aliased anon5098_anon1853_array;  -- /usr/include/xcb/damage.h:107
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_damage_create_request_t);  -- /usr/include/xcb/damage.h:100

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_damage_destroy.  
  --*
  -- * @brief xcb_damage_destroy_request_t
  -- * 

  --*<   
   type xcb_damage_destroy_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/damage.h:117
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/damage.h:118
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/damage.h:119
      damage : aliased xcb_damage_damage_t;  -- /usr/include/xcb/damage.h:120
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_damage_destroy_request_t);  -- /usr/include/xcb/damage.h:116

  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_damage_subtract.  
  --*
  -- * @brief xcb_damage_subtract_request_t
  -- * 

  --*<   
   type xcb_damage_subtract_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/damage.h:130
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/damage.h:131
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/damage.h:132
      damage : aliased xcb_damage_damage_t;  -- /usr/include/xcb/damage.h:133
      repair : aliased xcb_xfixes_h.xcb_xfixes_region_t;  -- /usr/include/xcb/damage.h:134
      parts : aliased xcb_xfixes_h.xcb_xfixes_region_t;  -- /usr/include/xcb/damage.h:135
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_damage_subtract_request_t);  -- /usr/include/xcb/damage.h:129

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_damage_add.  
  --*
  -- * @brief xcb_damage_add_request_t
  -- * 

  --*<   
   type xcb_damage_add_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/damage.h:145
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/damage.h:146
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/damage.h:147
      drawable : aliased xcb_xproto_h.xcb_drawable_t;  -- /usr/include/xcb/damage.h:148
      region : aliased xcb_xfixes_h.xcb_xfixes_region_t;  -- /usr/include/xcb/damage.h:149
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_damage_add_request_t);  -- /usr/include/xcb/damage.h:144

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_damage_notify.  
  --*
  -- * @brief xcb_damage_notify_event_t
  -- * 

  --*<   
   type xcb_damage_notify_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/damage.h:159
      level : aliased stdint_h.uint8_t;  -- /usr/include/xcb/damage.h:160
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/damage.h:161
      drawable : aliased xcb_xproto_h.xcb_drawable_t;  -- /usr/include/xcb/damage.h:162
      damage : aliased xcb_damage_damage_t;  -- /usr/include/xcb/damage.h:163
      timestamp : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/damage.h:164
      area : aliased xcb_xproto_h.xcb_rectangle_t;  -- /usr/include/xcb/damage.h:165
      geometry : aliased xcb_xproto_h.xcb_rectangle_t;  -- /usr/include/xcb/damage.h:166
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_damage_notify_event_t);  -- /usr/include/xcb/damage.h:158

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_damage_damage_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_damage_damage_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_damage_damage_next
  -- ** 
  -- ** @param xcb_damage_damage_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_damage_damage_next (arg1 : access xcb_damage_damage_iterator_t);  -- /usr/include/xcb/damage.h:188
   pragma Import (C, xcb_damage_damage_next, "xcb_damage_damage_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_damage_damage_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_damage_damage_end
  -- ** 
  -- ** @param xcb_damage_damage_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_damage_damage_end (arg1 : xcb_damage_damage_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/damage.h:210
   pragma Import (C, xcb_damage_damage_end, "xcb_damage_damage_end");

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
  -- ** xcb_damage_query_version_cookie_t xcb_damage_query_version
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          client_major_version
  -- ** @param uint32_t          client_minor_version
  -- ** @returns xcb_damage_query_version_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_damage_query_version
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : stdint_h.uint32_t) return xcb_damage_query_version_cookie_t;  -- /usr/include/xcb/damage.h:233
   pragma Import (C, xcb_damage_query_version, "xcb_damage_query_version");

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
  -- ** xcb_damage_query_version_cookie_t xcb_damage_query_version_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          client_major_version
  -- ** @param uint32_t          client_minor_version
  -- ** @returns xcb_damage_query_version_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_damage_query_version_unchecked
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : stdint_h.uint32_t) return xcb_damage_query_version_cookie_t;  -- /usr/include/xcb/damage.h:261
   pragma Import (C, xcb_damage_query_version_unchecked, "xcb_damage_query_version_unchecked");

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
  -- * xcb_damage_query_version_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_damage_query_version_reply_t * xcb_damage_query_version_reply
  -- ** 
  -- ** @param xcb_connection_t                   *c
  -- ** @param xcb_damage_query_version_cookie_t   cookie
  -- ** @param xcb_generic_error_t               **e
  -- ** @returns xcb_damage_query_version_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_damage_query_version_reply
     (arg1 : System.Address;
      arg2 : xcb_damage_query_version_cookie_t;
      arg3 : System.Address) return access xcb_damage_query_version_reply_t;  -- /usr/include/xcb/damage.h:292
   pragma Import (C, xcb_damage_query_version_reply, "xcb_damage_query_version_reply");

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
  -- ** xcb_void_cookie_t xcb_damage_create_checked
  -- ** 
  -- ** @param xcb_connection_t    *c
  -- ** @param xcb_damage_damage_t  damage
  -- ** @param xcb_drawable_t       drawable
  -- ** @param uint8_t              level
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_damage_create_checked
     (arg1 : System.Address;
      arg2 : xcb_damage_damage_t;
      arg3 : xcb_xproto_h.xcb_drawable_t;
      arg4 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/damage.h:321
   pragma Import (C, xcb_damage_create_checked, "xcb_damage_create_checked");

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
  -- ** xcb_void_cookie_t xcb_damage_create
  -- ** 
  -- ** @param xcb_connection_t    *c
  -- ** @param xcb_damage_damage_t  damage
  -- ** @param xcb_drawable_t       drawable
  -- ** @param uint8_t              level
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_damage_create
     (arg1 : System.Address;
      arg2 : xcb_damage_damage_t;
      arg3 : xcb_xproto_h.xcb_drawable_t;
      arg4 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/damage.h:348
   pragma Import (C, xcb_damage_create, "xcb_damage_create");

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
  -- ** xcb_void_cookie_t xcb_damage_destroy_checked
  -- ** 
  -- ** @param xcb_connection_t    *c
  -- ** @param xcb_damage_damage_t  damage
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_damage_destroy_checked (arg1 : System.Address; arg2 : xcb_damage_damage_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/damage.h:376
   pragma Import (C, xcb_damage_destroy_checked, "xcb_damage_destroy_checked");

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
  -- ** xcb_void_cookie_t xcb_damage_destroy
  -- ** 
  -- ** @param xcb_connection_t    *c
  -- ** @param xcb_damage_damage_t  damage
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_damage_destroy (arg1 : System.Address; arg2 : xcb_damage_damage_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/damage.h:399
   pragma Import (C, xcb_damage_destroy, "xcb_damage_destroy");

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
  -- ** xcb_void_cookie_t xcb_damage_subtract_checked
  -- ** 
  -- ** @param xcb_connection_t    *c
  -- ** @param xcb_damage_damage_t  damage
  -- ** @param xcb_xfixes_region_t  repair
  -- ** @param xcb_xfixes_region_t  parts
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_damage_subtract_checked
     (arg1 : System.Address;
      arg2 : xcb_damage_damage_t;
      arg3 : xcb_xfixes_h.xcb_xfixes_region_t;
      arg4 : xcb_xfixes_h.xcb_xfixes_region_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/damage.h:427
   pragma Import (C, xcb_damage_subtract_checked, "xcb_damage_subtract_checked");

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
  -- ** xcb_void_cookie_t xcb_damage_subtract
  -- ** 
  -- ** @param xcb_connection_t    *c
  -- ** @param xcb_damage_damage_t  damage
  -- ** @param xcb_xfixes_region_t  repair
  -- ** @param xcb_xfixes_region_t  parts
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_damage_subtract
     (arg1 : System.Address;
      arg2 : xcb_damage_damage_t;
      arg3 : xcb_xfixes_h.xcb_xfixes_region_t;
      arg4 : xcb_xfixes_h.xcb_xfixes_region_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/damage.h:454
   pragma Import (C, xcb_damage_subtract, "xcb_damage_subtract");

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
  -- ** xcb_void_cookie_t xcb_damage_add_checked
  -- ** 
  -- ** @param xcb_connection_t    *c
  -- ** @param xcb_drawable_t       drawable
  -- ** @param xcb_xfixes_region_t  region
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_damage_add_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_drawable_t;
      arg3 : xcb_xfixes_h.xcb_xfixes_region_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/damage.h:483
   pragma Import (C, xcb_damage_add_checked, "xcb_damage_add_checked");

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
  -- ** xcb_void_cookie_t xcb_damage_add
  -- ** 
  -- ** @param xcb_connection_t    *c
  -- ** @param xcb_drawable_t       drawable
  -- ** @param xcb_xfixes_region_t  region
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_damage_add
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_drawable_t;
      arg3 : xcb_xfixes_h.xcb_xfixes_region_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/damage.h:508
   pragma Import (C, xcb_damage_add, "xcb_damage_add");

  --*<  
  --*<  
  --*
  -- * @}
  --  

end xcb_damage_h;
