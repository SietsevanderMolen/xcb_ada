with Interfaces.C; use Interfaces.C;
with xcb_xcb_h;
with stdint_h;
with System;

package xcb_record_h is

   --  unsupported macro: XCB_RECORD_MAJOR_VERSION 1
   --  unsupported macro: XCB_RECORD_MINOR_VERSION 13
   --  unsupported macro: XCB_RECORD_BAD_CONTEXT 0
   --  unsupported macro: XCB_RECORD_QUERY_VERSION 0
   --  unsupported macro: XCB_RECORD_CREATE_CONTEXT 1
   --  unsupported macro: XCB_RECORD_REGISTER_CLIENTS 2
   --  unsupported macro: XCB_RECORD_UNREGISTER_CLIENTS 3
   --  unsupported macro: XCB_RECORD_GET_CONTEXT 4
   --  unsupported macro: XCB_RECORD_ENABLE_CONTEXT 5
   --  unsupported macro: XCB_RECORD_DISABLE_CONTEXT 6
   --  unsupported macro: XCB_RECORD_FREE_CONTEXT 7
  -- * This file generated automatically from record.xml by c_client.py.
  -- * Edit at your peril.
  --  

  --*
  -- * @defgroup XCB_Record_API XCB Record API
  -- * @brief Record XCB Protocol Implementation.
  -- * @{
  -- * 

   xcb_record_id : aliased xcb_xcb_h.xcb_extension_t;  -- /usr/include/xcb/record.h:24
   pragma Import (C, xcb_record_id, "xcb_record_id");

   subtype xcb_record_context_t is stdint_h.uint32_t;  -- /usr/include/xcb/record.h:26

  --*
  -- * @brief xcb_record_context_iterator_t
  -- * 

  --*<   
   type xcb_record_context_iterator_t is record
      data : access xcb_record_context_t;  -- /usr/include/xcb/record.h:32
      c_rem : aliased int;  -- /usr/include/xcb/record.h:33
      index : aliased int;  -- /usr/include/xcb/record.h:34
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_record_context_iterator_t);  -- /usr/include/xcb/record.h:31

  --*<   
  --*<   
  --*
  -- * @brief xcb_record_range_8_t
  -- * 

  --*<   
   type xcb_record_range_8_t is record
      first : aliased stdint_h.uint8_t;  -- /usr/include/xcb/record.h:41
      last : aliased stdint_h.uint8_t;  -- /usr/include/xcb/record.h:42
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_record_range_8_t);  -- /usr/include/xcb/record.h:40

  --*<   
  --*
  -- * @brief xcb_record_range_8_iterator_t
  -- * 

  --*<   
   type xcb_record_range_8_iterator_t is record
      data : access xcb_record_range_8_t;  -- /usr/include/xcb/record.h:49
      c_rem : aliased int;  -- /usr/include/xcb/record.h:50
      index : aliased int;  -- /usr/include/xcb/record.h:51
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_record_range_8_iterator_t);  -- /usr/include/xcb/record.h:48

  --*<   
  --*<   
  --*
  -- * @brief xcb_record_range_16_t
  -- * 

  --*<   
   type xcb_record_range_16_t is record
      first : aliased stdint_h.uint16_t;  -- /usr/include/xcb/record.h:58
      last : aliased stdint_h.uint16_t;  -- /usr/include/xcb/record.h:59
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_record_range_16_t);  -- /usr/include/xcb/record.h:57

  --*<   
  --*
  -- * @brief xcb_record_range_16_iterator_t
  -- * 

  --*<   
   type xcb_record_range_16_iterator_t is record
      data : access xcb_record_range_16_t;  -- /usr/include/xcb/record.h:66
      c_rem : aliased int;  -- /usr/include/xcb/record.h:67
      index : aliased int;  -- /usr/include/xcb/record.h:68
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_record_range_16_iterator_t);  -- /usr/include/xcb/record.h:65

  --*<   
  --*<   
  --*
  -- * @brief xcb_record_ext_range_t
  -- * 

  --*<   
   type xcb_record_ext_range_t is record
      major : aliased xcb_record_range_8_t;  -- /usr/include/xcb/record.h:75
      minor : aliased xcb_record_range_16_t;  -- /usr/include/xcb/record.h:76
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_record_ext_range_t);  -- /usr/include/xcb/record.h:74

  --*<   
  --*
  -- * @brief xcb_record_ext_range_iterator_t
  -- * 

  --*<   
   type xcb_record_ext_range_iterator_t is record
      data : access xcb_record_ext_range_t;  -- /usr/include/xcb/record.h:83
      c_rem : aliased int;  -- /usr/include/xcb/record.h:84
      index : aliased int;  -- /usr/include/xcb/record.h:85
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_record_ext_range_iterator_t);  -- /usr/include/xcb/record.h:82

  --*<   
  --*<   
  --*
  -- * @brief xcb_record_range_t
  -- * 

  --*<   
   type xcb_record_range_t is record
      core_requests : aliased xcb_record_range_8_t;  -- /usr/include/xcb/record.h:92
      core_replies : aliased xcb_record_range_8_t;  -- /usr/include/xcb/record.h:93
      ext_requests : aliased xcb_record_ext_range_t;  -- /usr/include/xcb/record.h:94
      ext_replies : aliased xcb_record_ext_range_t;  -- /usr/include/xcb/record.h:95
      delivered_events : aliased xcb_record_range_8_t;  -- /usr/include/xcb/record.h:96
      device_events : aliased xcb_record_range_8_t;  -- /usr/include/xcb/record.h:97
      errors : aliased xcb_record_range_8_t;  -- /usr/include/xcb/record.h:98
      client_started : aliased stdint_h.uint8_t;  -- /usr/include/xcb/record.h:99
      client_died : aliased stdint_h.uint8_t;  -- /usr/include/xcb/record.h:100
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_record_range_t);  -- /usr/include/xcb/record.h:91

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_record_range_iterator_t
  -- * 

  --*<   
   type xcb_record_range_iterator_t is record
      data : access xcb_record_range_t;  -- /usr/include/xcb/record.h:107
      c_rem : aliased int;  -- /usr/include/xcb/record.h:108
      index : aliased int;  -- /usr/include/xcb/record.h:109
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_record_range_iterator_t);  -- /usr/include/xcb/record.h:106

  --*<   
  --*<   
   subtype xcb_record_element_header_t is stdint_h.uint8_t;  -- /usr/include/xcb/record.h:112

  --*
  -- * @brief xcb_record_element_header_iterator_t
  -- * 

  --*<   
   type xcb_record_element_header_iterator_t is record
      data : access xcb_record_element_header_t;  -- /usr/include/xcb/record.h:118
      c_rem : aliased int;  -- /usr/include/xcb/record.h:119
      index : aliased int;  -- /usr/include/xcb/record.h:120
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_record_element_header_iterator_t);  -- /usr/include/xcb/record.h:117

  --*<   
  --*<   
   subtype xcb_record_h_type_t is unsigned;
   XCB_RECORD_H_TYPE_FROM_SERVER_TIME : constant xcb_record_h_type_t := 1;
   XCB_RECORD_H_TYPE_FROM_CLIENT_TIME : constant xcb_record_h_type_t := 2;
   XCB_RECORD_H_TYPE_FROM_CLIENT_SEQUENCE : constant xcb_record_h_type_t := 4;  -- /usr/include/xcb/record.h:123

   subtype xcb_record_client_spec_t is stdint_h.uint32_t;  -- /usr/include/xcb/record.h:129

  --*
  -- * @brief xcb_record_client_spec_iterator_t
  -- * 

  --*<   
   type xcb_record_client_spec_iterator_t is record
      data : access xcb_record_client_spec_t;  -- /usr/include/xcb/record.h:135
      c_rem : aliased int;  -- /usr/include/xcb/record.h:136
      index : aliased int;  -- /usr/include/xcb/record.h:137
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_record_client_spec_iterator_t);  -- /usr/include/xcb/record.h:134

  --*<   
  --*<   
   subtype xcb_record_cs_t is unsigned;
   XCB_RECORD_CS_CURRENT_CLIENTS : constant xcb_record_cs_t := 1;
   XCB_RECORD_CS_FUTURE_CLIENTS : constant xcb_record_cs_t := 2;
   XCB_RECORD_CS_ALL_CLIENTS : constant xcb_record_cs_t := 3;  -- /usr/include/xcb/record.h:140

  --*
  -- * @brief xcb_record_client_info_t
  -- * 

  --*<   
   type xcb_record_client_info_t is record
      client_resource : aliased xcb_record_client_spec_t;  -- /usr/include/xcb/record.h:150
      num_ranges : aliased stdint_h.uint32_t;  -- /usr/include/xcb/record.h:151
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_record_client_info_t);  -- /usr/include/xcb/record.h:149

  --*<   
  --*
  -- * @brief xcb_record_client_info_iterator_t
  -- * 

  --*<   
   type xcb_record_client_info_iterator_t is record
      data : access xcb_record_client_info_t;  -- /usr/include/xcb/record.h:158
      c_rem : aliased int;  -- /usr/include/xcb/record.h:159
      index : aliased int;  -- /usr/include/xcb/record.h:160
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_record_client_info_iterator_t);  -- /usr/include/xcb/record.h:157

  --*<   
  --*<   
  --* Opcode for xcb_record_bad_context.  
  --*
  -- * @brief xcb_record_bad_context_error_t
  -- * 

  --*<   
   type xcb_record_bad_context_error_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/record.h:170
      error_code : aliased stdint_h.uint8_t;  -- /usr/include/xcb/record.h:171
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/record.h:172
      invalid_record : aliased stdint_h.uint32_t;  -- /usr/include/xcb/record.h:173
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_record_bad_context_error_t);  -- /usr/include/xcb/record.h:169

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_record_query_version_cookie_t
  -- * 

  --*<   
   type xcb_record_query_version_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/record.h:180
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_record_query_version_cookie_t);  -- /usr/include/xcb/record.h:179

  --* Opcode for xcb_record_query_version.  
  --*
  -- * @brief xcb_record_query_version_request_t
  -- * 

  --*<   
   type xcb_record_query_version_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/record.h:190
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/record.h:191
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/record.h:192
      major_version : aliased stdint_h.uint16_t;  -- /usr/include/xcb/record.h:193
      minor_version : aliased stdint_h.uint16_t;  -- /usr/include/xcb/record.h:194
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_record_query_version_request_t);  -- /usr/include/xcb/record.h:189

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_record_query_version_reply_t
  -- * 

  --*<   
   type xcb_record_query_version_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/record.h:201
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/record.h:202
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/record.h:203
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/record.h:204
      major_version : aliased stdint_h.uint16_t;  -- /usr/include/xcb/record.h:205
      minor_version : aliased stdint_h.uint16_t;  -- /usr/include/xcb/record.h:206
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_record_query_version_reply_t);  -- /usr/include/xcb/record.h:200

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_record_create_context.  
  --*
  -- * @brief xcb_record_create_context_request_t
  -- * 

  --*<   
   type anon4009_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_record_create_context_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/record.h:216
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/record.h:217
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/record.h:218
      context : aliased xcb_record_context_t;  -- /usr/include/xcb/record.h:219
      element_header : aliased xcb_record_element_header_t;  -- /usr/include/xcb/record.h:220
      pad0 : aliased anon4009_anon1853_array;  -- /usr/include/xcb/record.h:221
      num_client_specs : aliased stdint_h.uint32_t;  -- /usr/include/xcb/record.h:222
      num_ranges : aliased stdint_h.uint32_t;  -- /usr/include/xcb/record.h:223
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_record_create_context_request_t);  -- /usr/include/xcb/record.h:215

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_record_register_clients.  
  --*
  -- * @brief xcb_record_register_clients_request_t
  -- * 

  --*<   
   type anon4013_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_record_register_clients_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/record.h:233
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/record.h:234
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/record.h:235
      context : aliased xcb_record_context_t;  -- /usr/include/xcb/record.h:236
      element_header : aliased xcb_record_element_header_t;  -- /usr/include/xcb/record.h:237
      pad0 : aliased anon4013_anon1853_array;  -- /usr/include/xcb/record.h:238
      num_client_specs : aliased stdint_h.uint32_t;  -- /usr/include/xcb/record.h:239
      num_ranges : aliased stdint_h.uint32_t;  -- /usr/include/xcb/record.h:240
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_record_register_clients_request_t);  -- /usr/include/xcb/record.h:232

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_record_unregister_clients.  
  --*
  -- * @brief xcb_record_unregister_clients_request_t
  -- * 

  --*<   
   type xcb_record_unregister_clients_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/record.h:250
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/record.h:251
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/record.h:252
      context : aliased xcb_record_context_t;  -- /usr/include/xcb/record.h:253
      num_client_specs : aliased stdint_h.uint32_t;  -- /usr/include/xcb/record.h:254
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_record_unregister_clients_request_t);  -- /usr/include/xcb/record.h:249

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_record_get_context_cookie_t
  -- * 

  --*<   
   type xcb_record_get_context_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/record.h:261
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_record_get_context_cookie_t);  -- /usr/include/xcb/record.h:260

  --* Opcode for xcb_record_get_context.  
  --*
  -- * @brief xcb_record_get_context_request_t
  -- * 

  --*<   
   type xcb_record_get_context_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/record.h:271
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/record.h:272
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/record.h:273
      context : aliased xcb_record_context_t;  -- /usr/include/xcb/record.h:274
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_record_get_context_request_t);  -- /usr/include/xcb/record.h:270

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_record_get_context_reply_t
  -- * 

  --*<   
   type anon4023_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type anon4023_anon4027_array is array (0 .. 15) of aliased stdint_h.uint8_t;
   type xcb_record_get_context_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/record.h:281
      enabled : aliased stdint_h.uint8_t;  -- /usr/include/xcb/record.h:282
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/record.h:283
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/record.h:284
      element_header : aliased xcb_record_element_header_t;  -- /usr/include/xcb/record.h:285
      pad0 : aliased anon4023_anon1853_array;  -- /usr/include/xcb/record.h:286
      num_intercepted_clients : aliased stdint_h.uint32_t;  -- /usr/include/xcb/record.h:287
      pad1 : aliased anon4023_anon4027_array;  -- /usr/include/xcb/record.h:288
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_record_get_context_reply_t);  -- /usr/include/xcb/record.h:280

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_record_enable_context_cookie_t
  -- * 

  --*<   
   type xcb_record_enable_context_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/record.h:295
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_record_enable_context_cookie_t);  -- /usr/include/xcb/record.h:294

  --* Opcode for xcb_record_enable_context.  
  --*
  -- * @brief xcb_record_enable_context_request_t
  -- * 

  --*<   
   type xcb_record_enable_context_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/record.h:305
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/record.h:306
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/record.h:307
      context : aliased xcb_record_context_t;  -- /usr/include/xcb/record.h:308
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_record_enable_context_request_t);  -- /usr/include/xcb/record.h:304

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_record_enable_context_reply_t
  -- * 

  --*<   
   type anon4034_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type anon4034_anon2427_array is array (0 .. 7) of aliased stdint_h.uint8_t;
   type xcb_record_enable_context_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/record.h:315
      category : aliased stdint_h.uint8_t;  -- /usr/include/xcb/record.h:316
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/record.h:317
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/record.h:318
      element_header : aliased xcb_record_element_header_t;  -- /usr/include/xcb/record.h:319
      client_swapped : aliased stdint_h.uint8_t;  -- /usr/include/xcb/record.h:320
      pad0 : aliased anon4034_anon1795_array;  -- /usr/include/xcb/record.h:321
      xid_base : aliased stdint_h.uint32_t;  -- /usr/include/xcb/record.h:322
      server_time : aliased stdint_h.uint32_t;  -- /usr/include/xcb/record.h:323
      rec_sequence_num : aliased stdint_h.uint32_t;  -- /usr/include/xcb/record.h:324
      pad1 : aliased anon4034_anon2427_array;  -- /usr/include/xcb/record.h:325
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_record_enable_context_reply_t);  -- /usr/include/xcb/record.h:314

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
  --* Opcode for xcb_record_disable_context.  
  --*
  -- * @brief xcb_record_disable_context_request_t
  -- * 

  --*<   
   type xcb_record_disable_context_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/record.h:335
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/record.h:336
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/record.h:337
      context : aliased xcb_record_context_t;  -- /usr/include/xcb/record.h:338
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_record_disable_context_request_t);  -- /usr/include/xcb/record.h:334

  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_record_free_context.  
  --*
  -- * @brief xcb_record_free_context_request_t
  -- * 

  --*<   
   type xcb_record_free_context_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/record.h:348
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/record.h:349
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/record.h:350
      context : aliased xcb_record_context_t;  -- /usr/include/xcb/record.h:351
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_record_free_context_request_t);  -- /usr/include/xcb/record.h:347

  --*<   
  --*<   
  --*<   
  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_record_context_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_record_context_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_record_context_next
  -- ** 
  -- ** @param xcb_record_context_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_record_context_next (arg1 : access xcb_record_context_iterator_t);  -- /usr/include/xcb/record.h:373
   pragma Import (C, xcb_record_context_next, "xcb_record_context_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_record_context_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_record_context_end
  -- ** 
  -- ** @param xcb_record_context_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_record_context_end (arg1 : xcb_record_context_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/record.h:395
   pragma Import (C, xcb_record_context_end, "xcb_record_context_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_record_range_8_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_record_range_8_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_record_range_8_next
  -- ** 
  -- ** @param xcb_record_range_8_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_record_range_8_next (arg1 : access xcb_record_range_8_iterator_t);  -- /usr/include/xcb/record.h:416
   pragma Import (C, xcb_record_range_8_next, "xcb_record_range_8_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_record_range_8_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_record_range_8_end
  -- ** 
  -- ** @param xcb_record_range_8_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_record_range_8_end (arg1 : xcb_record_range_8_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/record.h:438
   pragma Import (C, xcb_record_range_8_end, "xcb_record_range_8_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_record_range_16_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_record_range_16_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_record_range_16_next
  -- ** 
  -- ** @param xcb_record_range_16_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_record_range_16_next (arg1 : access xcb_record_range_16_iterator_t);  -- /usr/include/xcb/record.h:459
   pragma Import (C, xcb_record_range_16_next, "xcb_record_range_16_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_record_range_16_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_record_range_16_end
  -- ** 
  -- ** @param xcb_record_range_16_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_record_range_16_end (arg1 : xcb_record_range_16_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/record.h:481
   pragma Import (C, xcb_record_range_16_end, "xcb_record_range_16_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_record_ext_range_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_record_ext_range_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_record_ext_range_next
  -- ** 
  -- ** @param xcb_record_ext_range_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_record_ext_range_next (arg1 : access xcb_record_ext_range_iterator_t);  -- /usr/include/xcb/record.h:502
   pragma Import (C, xcb_record_ext_range_next, "xcb_record_ext_range_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_record_ext_range_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_record_ext_range_end
  -- ** 
  -- ** @param xcb_record_ext_range_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_record_ext_range_end (arg1 : xcb_record_ext_range_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/record.h:524
   pragma Import (C, xcb_record_ext_range_end, "xcb_record_ext_range_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_record_range_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_record_range_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_record_range_next
  -- ** 
  -- ** @param xcb_record_range_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_record_range_next (arg1 : access xcb_record_range_iterator_t);  -- /usr/include/xcb/record.h:545
   pragma Import (C, xcb_record_range_next, "xcb_record_range_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_record_range_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_record_range_end
  -- ** 
  -- ** @param xcb_record_range_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_record_range_end (arg1 : xcb_record_range_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/record.h:567
   pragma Import (C, xcb_record_range_end, "xcb_record_range_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_record_element_header_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_record_element_header_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_record_element_header_next
  -- ** 
  -- ** @param xcb_record_element_header_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_record_element_header_next (arg1 : access xcb_record_element_header_iterator_t);  -- /usr/include/xcb/record.h:588
   pragma Import (C, xcb_record_element_header_next, "xcb_record_element_header_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_record_element_header_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_record_element_header_end
  -- ** 
  -- ** @param xcb_record_element_header_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_record_element_header_end (arg1 : xcb_record_element_header_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/record.h:610
   pragma Import (C, xcb_record_element_header_end, "xcb_record_element_header_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_record_client_spec_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_record_client_spec_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_record_client_spec_next
  -- ** 
  -- ** @param xcb_record_client_spec_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_record_client_spec_next (arg1 : access xcb_record_client_spec_iterator_t);  -- /usr/include/xcb/record.h:631
   pragma Import (C, xcb_record_client_spec_next, "xcb_record_client_spec_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_record_client_spec_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_record_client_spec_end
  -- ** 
  -- ** @param xcb_record_client_spec_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_record_client_spec_end (arg1 : xcb_record_client_spec_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/record.h:653
   pragma Import (C, xcb_record_client_spec_end, "xcb_record_client_spec_end");

  --*<  
   function xcb_record_client_info_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/record.h:656
   pragma Import (C, xcb_record_client_info_sizeof, "xcb_record_client_info_sizeof");

  --****************************************************************************
  -- **
  -- ** xcb_record_range_t * xcb_record_client_info_ranges
  -- ** 
  -- ** @param const xcb_record_client_info_t *R
  -- ** @returns xcb_record_range_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_record_client_info_ranges (arg1 : System.Address) return access xcb_record_range_t;  -- /usr/include/xcb/record.h:669
   pragma Import (C, xcb_record_client_info_ranges, "xcb_record_client_info_ranges");

  --****************************************************************************
  -- **
  -- ** int xcb_record_client_info_ranges_length
  -- ** 
  -- ** @param const xcb_record_client_info_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_record_client_info_ranges_length (arg1 : System.Address) return int;  -- /usr/include/xcb/record.h:682
   pragma Import (C, xcb_record_client_info_ranges_length, "xcb_record_client_info_ranges_length");

  --****************************************************************************
  -- **
  -- ** xcb_record_range_iterator_t xcb_record_client_info_ranges_iterator
  -- ** 
  -- ** @param const xcb_record_client_info_t *R
  -- ** @returns xcb_record_range_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_record_client_info_ranges_iterator (arg1 : System.Address) return xcb_record_range_iterator_t;  -- /usr/include/xcb/record.h:695
   pragma Import (C, xcb_record_client_info_ranges_iterator, "xcb_record_client_info_ranges_iterator");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_record_client_info_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_record_client_info_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_record_client_info_next
  -- ** 
  -- ** @param xcb_record_client_info_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_record_client_info_next (arg1 : access xcb_record_client_info_iterator_t);  -- /usr/include/xcb/record.h:716
   pragma Import (C, xcb_record_client_info_next, "xcb_record_client_info_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_record_client_info_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_record_client_info_end
  -- ** 
  -- ** @param xcb_record_client_info_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_record_client_info_end (arg1 : xcb_record_client_info_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/record.h:738
   pragma Import (C, xcb_record_client_info_end, "xcb_record_client_info_end");

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
  -- ** xcb_record_query_version_cookie_t xcb_record_query_version
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint16_t          major_version
  -- ** @param uint16_t          minor_version
  -- ** @returns xcb_record_query_version_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_record_query_version
     (arg1 : System.Address;
      arg2 : stdint_h.uint16_t;
      arg3 : stdint_h.uint16_t) return xcb_record_query_version_cookie_t;  -- /usr/include/xcb/record.h:761
   pragma Import (C, xcb_record_query_version, "xcb_record_query_version");

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
  -- ** xcb_record_query_version_cookie_t xcb_record_query_version_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint16_t          major_version
  -- ** @param uint16_t          minor_version
  -- ** @returns xcb_record_query_version_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_record_query_version_unchecked
     (arg1 : System.Address;
      arg2 : stdint_h.uint16_t;
      arg3 : stdint_h.uint16_t) return xcb_record_query_version_cookie_t;  -- /usr/include/xcb/record.h:789
   pragma Import (C, xcb_record_query_version_unchecked, "xcb_record_query_version_unchecked");

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
  -- * xcb_record_query_version_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_record_query_version_reply_t * xcb_record_query_version_reply
  -- ** 
  -- ** @param xcb_connection_t                   *c
  -- ** @param xcb_record_query_version_cookie_t   cookie
  -- ** @param xcb_generic_error_t               **e
  -- ** @returns xcb_record_query_version_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_record_query_version_reply
     (arg1 : System.Address;
      arg2 : xcb_record_query_version_cookie_t;
      arg3 : System.Address) return access xcb_record_query_version_reply_t;  -- /usr/include/xcb/record.h:820
   pragma Import (C, xcb_record_query_version_reply, "xcb_record_query_version_reply");

  --*<  
  --*<  
  --*<  
   function xcb_record_create_context_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/record.h:825
   pragma Import (C, xcb_record_create_context_sizeof, "xcb_record_create_context_sizeof");

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
  -- ** xcb_void_cookie_t xcb_record_create_context_checked
  -- ** 
  -- ** @param xcb_connection_t               *c
  -- ** @param xcb_record_context_t            context
  -- ** @param xcb_record_element_header_t     element_header
  -- ** @param uint32_t                        num_client_specs
  -- ** @param uint32_t                        num_ranges
  -- ** @param const xcb_record_client_spec_t *client_specs
  -- ** @param const xcb_record_range_t       *ranges
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_record_create_context_checked
     (arg1 : System.Address;
      arg2 : xcb_record_context_t;
      arg3 : xcb_record_element_header_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : access xcb_record_client_spec_t;
      arg7 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/record.h:855
   pragma Import (C, xcb_record_create_context_checked, "xcb_record_create_context_checked");

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
  -- ** xcb_void_cookie_t xcb_record_create_context
  -- ** 
  -- ** @param xcb_connection_t               *c
  -- ** @param xcb_record_context_t            context
  -- ** @param xcb_record_element_header_t     element_header
  -- ** @param uint32_t                        num_client_specs
  -- ** @param uint32_t                        num_ranges
  -- ** @param const xcb_record_client_spec_t *client_specs
  -- ** @param const xcb_record_range_t       *ranges
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_record_create_context
     (arg1 : System.Address;
      arg2 : xcb_record_context_t;
      arg3 : xcb_record_element_header_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : access xcb_record_client_spec_t;
      arg7 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/record.h:888
   pragma Import (C, xcb_record_create_context, "xcb_record_create_context");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_record_register_clients_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/record.h:897
   pragma Import (C, xcb_record_register_clients_sizeof, "xcb_record_register_clients_sizeof");

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
  -- ** xcb_void_cookie_t xcb_record_register_clients_checked
  -- ** 
  -- ** @param xcb_connection_t               *c
  -- ** @param xcb_record_context_t            context
  -- ** @param xcb_record_element_header_t     element_header
  -- ** @param uint32_t                        num_client_specs
  -- ** @param uint32_t                        num_ranges
  -- ** @param const xcb_record_client_spec_t *client_specs
  -- ** @param const xcb_record_range_t       *ranges
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_record_register_clients_checked
     (arg1 : System.Address;
      arg2 : xcb_record_context_t;
      arg3 : xcb_record_element_header_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : access xcb_record_client_spec_t;
      arg7 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/record.h:927
   pragma Import (C, xcb_record_register_clients_checked, "xcb_record_register_clients_checked");

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
  -- ** xcb_void_cookie_t xcb_record_register_clients
  -- ** 
  -- ** @param xcb_connection_t               *c
  -- ** @param xcb_record_context_t            context
  -- ** @param xcb_record_element_header_t     element_header
  -- ** @param uint32_t                        num_client_specs
  -- ** @param uint32_t                        num_ranges
  -- ** @param const xcb_record_client_spec_t *client_specs
  -- ** @param const xcb_record_range_t       *ranges
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_record_register_clients
     (arg1 : System.Address;
      arg2 : xcb_record_context_t;
      arg3 : xcb_record_element_header_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : access xcb_record_client_spec_t;
      arg7 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/record.h:960
   pragma Import (C, xcb_record_register_clients, "xcb_record_register_clients");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_record_unregister_clients_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/record.h:969
   pragma Import (C, xcb_record_unregister_clients_sizeof, "xcb_record_unregister_clients_sizeof");

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
  -- ** xcb_void_cookie_t xcb_record_unregister_clients_checked
  -- ** 
  -- ** @param xcb_connection_t               *c
  -- ** @param xcb_record_context_t            context
  -- ** @param uint32_t                        num_client_specs
  -- ** @param const xcb_record_client_spec_t *client_specs
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_record_unregister_clients_checked
     (arg1 : System.Address;
      arg2 : xcb_record_context_t;
      arg3 : stdint_h.uint32_t;
      arg4 : access xcb_record_client_spec_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/record.h:996
   pragma Import (C, xcb_record_unregister_clients_checked, "xcb_record_unregister_clients_checked");

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
  -- ** xcb_void_cookie_t xcb_record_unregister_clients
  -- ** 
  -- ** @param xcb_connection_t               *c
  -- ** @param xcb_record_context_t            context
  -- ** @param uint32_t                        num_client_specs
  -- ** @param const xcb_record_client_spec_t *client_specs
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_record_unregister_clients
     (arg1 : System.Address;
      arg2 : xcb_record_context_t;
      arg3 : stdint_h.uint32_t;
      arg4 : access xcb_record_client_spec_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/record.h:1023
   pragma Import (C, xcb_record_unregister_clients, "xcb_record_unregister_clients");

  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_record_get_context_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/record.h:1029
   pragma Import (C, xcb_record_get_context_sizeof, "xcb_record_get_context_sizeof");

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
  -- ** xcb_record_get_context_cookie_t xcb_record_get_context
  -- ** 
  -- ** @param xcb_connection_t     *c
  -- ** @param xcb_record_context_t  context
  -- ** @returns xcb_record_get_context_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_record_get_context (arg1 : System.Address; arg2 : xcb_record_context_t) return xcb_record_get_context_cookie_t;  -- /usr/include/xcb/record.h:1051
   pragma Import (C, xcb_record_get_context, "xcb_record_get_context");

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
  -- ** xcb_record_get_context_cookie_t xcb_record_get_context_unchecked
  -- ** 
  -- ** @param xcb_connection_t     *c
  -- ** @param xcb_record_context_t  context
  -- ** @returns xcb_record_get_context_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_record_get_context_unchecked (arg1 : System.Address; arg2 : xcb_record_context_t) return xcb_record_get_context_cookie_t;  -- /usr/include/xcb/record.h:1077
   pragma Import (C, xcb_record_get_context_unchecked, "xcb_record_get_context_unchecked");

  --*<  
  --****************************************************************************
  -- **
  -- ** int xcb_record_get_context_intercepted_clients_length
  -- ** 
  -- ** @param const xcb_record_get_context_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_record_get_context_intercepted_clients_length (arg1 : System.Address) return int;  -- /usr/include/xcb/record.h:1091
   pragma Import (C, xcb_record_get_context_intercepted_clients_length, "xcb_record_get_context_intercepted_clients_length");

  --****************************************************************************
  -- **
  -- ** xcb_record_client_info_iterator_t xcb_record_get_context_intercepted_clients_iterator
  -- ** 
  -- ** @param const xcb_record_get_context_reply_t *R
  -- ** @returns xcb_record_client_info_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_record_get_context_intercepted_clients_iterator (arg1 : System.Address) return xcb_record_client_info_iterator_t;  -- /usr/include/xcb/record.h:1104
   pragma Import (C, xcb_record_get_context_intercepted_clients_iterator, "xcb_record_get_context_intercepted_clients_iterator");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_record_get_context_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_record_get_context_reply_t * xcb_record_get_context_reply
  -- ** 
  -- ** @param xcb_connection_t                 *c
  -- ** @param xcb_record_get_context_cookie_t   cookie
  -- ** @param xcb_generic_error_t             **e
  -- ** @returns xcb_record_get_context_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_record_get_context_reply
     (arg1 : System.Address;
      arg2 : xcb_record_get_context_cookie_t;
      arg3 : System.Address) return access xcb_record_get_context_reply_t;  -- /usr/include/xcb/record.h:1133
   pragma Import (C, xcb_record_get_context_reply, "xcb_record_get_context_reply");

  --*<  
  --*<  
  --*<  
   function xcb_record_enable_context_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/record.h:1138
   pragma Import (C, xcb_record_enable_context_sizeof, "xcb_record_enable_context_sizeof");

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
  -- ** xcb_record_enable_context_cookie_t xcb_record_enable_context
  -- ** 
  -- ** @param xcb_connection_t     *c
  -- ** @param xcb_record_context_t  context
  -- ** @returns xcb_record_enable_context_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_record_enable_context (arg1 : System.Address; arg2 : xcb_record_context_t) return xcb_record_enable_context_cookie_t;  -- /usr/include/xcb/record.h:1160
   pragma Import (C, xcb_record_enable_context, "xcb_record_enable_context");

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
  -- ** xcb_record_enable_context_cookie_t xcb_record_enable_context_unchecked
  -- ** 
  -- ** @param xcb_connection_t     *c
  -- ** @param xcb_record_context_t  context
  -- ** @returns xcb_record_enable_context_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_record_enable_context_unchecked (arg1 : System.Address; arg2 : xcb_record_context_t) return xcb_record_enable_context_cookie_t;  -- /usr/include/xcb/record.h:1186
   pragma Import (C, xcb_record_enable_context_unchecked, "xcb_record_enable_context_unchecked");

  --*<  
  --****************************************************************************
  -- **
  -- ** uint8_t * xcb_record_enable_context_data
  -- ** 
  -- ** @param const xcb_record_enable_context_reply_t *R
  -- ** @returns uint8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_record_enable_context_data (arg1 : System.Address) return access stdint_h.uint8_t;  -- /usr/include/xcb/record.h:1200
   pragma Import (C, xcb_record_enable_context_data, "xcb_record_enable_context_data");

  --****************************************************************************
  -- **
  -- ** int xcb_record_enable_context_data_length
  -- ** 
  -- ** @param const xcb_record_enable_context_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_record_enable_context_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/record.h:1213
   pragma Import (C, xcb_record_enable_context_data_length, "xcb_record_enable_context_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_record_enable_context_data_end
  -- ** 
  -- ** @param const xcb_record_enable_context_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_record_enable_context_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/record.h:1226
   pragma Import (C, xcb_record_enable_context_data_end, "xcb_record_enable_context_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_record_enable_context_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_record_enable_context_reply_t * xcb_record_enable_context_reply
  -- ** 
  -- ** @param xcb_connection_t                    *c
  -- ** @param xcb_record_enable_context_cookie_t   cookie
  -- ** @param xcb_generic_error_t                **e
  -- ** @returns xcb_record_enable_context_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_record_enable_context_reply
     (arg1 : System.Address;
      arg2 : xcb_record_enable_context_cookie_t;
      arg3 : System.Address) return access xcb_record_enable_context_reply_t;  -- /usr/include/xcb/record.h:1255
   pragma Import (C, xcb_record_enable_context_reply, "xcb_record_enable_context_reply");

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
  -- ** xcb_void_cookie_t xcb_record_disable_context_checked
  -- ** 
  -- ** @param xcb_connection_t     *c
  -- ** @param xcb_record_context_t  context
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_record_disable_context_checked (arg1 : System.Address; arg2 : xcb_record_context_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/record.h:1282
   pragma Import (C, xcb_record_disable_context_checked, "xcb_record_disable_context_checked");

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
  -- ** xcb_void_cookie_t xcb_record_disable_context
  -- ** 
  -- ** @param xcb_connection_t     *c
  -- ** @param xcb_record_context_t  context
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_record_disable_context (arg1 : System.Address; arg2 : xcb_record_context_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/record.h:1305
   pragma Import (C, xcb_record_disable_context, "xcb_record_disable_context");

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
  -- ** xcb_void_cookie_t xcb_record_free_context_checked
  -- ** 
  -- ** @param xcb_connection_t     *c
  -- ** @param xcb_record_context_t  context
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_record_free_context_checked (arg1 : System.Address; arg2 : xcb_record_context_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/record.h:1331
   pragma Import (C, xcb_record_free_context_checked, "xcb_record_free_context_checked");

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
  -- ** xcb_void_cookie_t xcb_record_free_context
  -- ** 
  -- ** @param xcb_connection_t     *c
  -- ** @param xcb_record_context_t  context
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_record_free_context (arg1 : System.Address; arg2 : xcb_record_context_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/record.h:1354
   pragma Import (C, xcb_record_free_context, "xcb_record_free_context");

  --*<  
  --*
  -- * @}
  --  

end xcb_record_h;
