with Interfaces.C; use Interfaces.C;
with xcb_xcb_h;
with stdint_h;
with xcb_xproto_h;
with System;

package xcb_xprint_h is

   --  unsupported macro: XCB_XPRINT_MAJOR_VERSION 1
   --  unsupported macro: XCB_XPRINT_MINOR_VERSION 0
   --  unsupported macro: XCB_X_PRINT_PRINT_QUERY_VERSION 0
   --  unsupported macro: XCB_X_PRINT_PRINT_GET_PRINTER_LIST 1
   --  unsupported macro: XCB_X_PRINT_PRINT_REHASH_PRINTER_LIST 20
   --  unsupported macro: XCB_X_PRINT_CREATE_CONTEXT 2
   --  unsupported macro: XCB_X_PRINT_PRINT_SET_CONTEXT 3
   --  unsupported macro: XCB_X_PRINT_PRINT_GET_CONTEXT 4
   --  unsupported macro: XCB_X_PRINT_PRINT_DESTROY_CONTEXT 5
   --  unsupported macro: XCB_X_PRINT_PRINT_GET_SCREEN_OF_CONTEXT 6
   --  unsupported macro: XCB_X_PRINT_PRINT_START_JOB 7
   --  unsupported macro: XCB_X_PRINT_PRINT_END_JOB 8
   --  unsupported macro: XCB_X_PRINT_PRINT_START_DOC 9
   --  unsupported macro: XCB_X_PRINT_PRINT_END_DOC 10
   --  unsupported macro: XCB_X_PRINT_PRINT_PUT_DOCUMENT_DATA 11
   --  unsupported macro: XCB_X_PRINT_PRINT_GET_DOCUMENT_DATA 12
   --  unsupported macro: XCB_X_PRINT_PRINT_START_PAGE 13
   --  unsupported macro: XCB_X_PRINT_PRINT_END_PAGE 14
   --  unsupported macro: XCB_X_PRINT_PRINT_SELECT_INPUT 15
   --  unsupported macro: XCB_X_PRINT_PRINT_INPUT_SELECTED 16
   --  unsupported macro: XCB_X_PRINT_PRINT_GET_ATTRIBUTES 17
   --  unsupported macro: XCB_X_PRINT_PRINT_GET_ONE_ATTRIBUTES 19
   --  unsupported macro: XCB_X_PRINT_PRINT_SET_ATTRIBUTES 18
   --  unsupported macro: XCB_X_PRINT_PRINT_GET_PAGE_DIMENSIONS 21
   --  unsupported macro: XCB_X_PRINT_PRINT_QUERY_SCREENS 22
   --  unsupported macro: XCB_X_PRINT_PRINT_SET_IMAGE_RESOLUTION 23
   --  unsupported macro: XCB_X_PRINT_PRINT_GET_IMAGE_RESOLUTION 24
   --  unsupported macro: XCB_X_PRINT_NOTIFY 0
   --  unsupported macro: XCB_X_PRINT_ATTRIBUT_NOTIFY 1
   --  unsupported macro: XCB_X_PRINT_BAD_CONTEXT 0
   --  unsupported macro: XCB_X_PRINT_BAD_SEQUENCE 1
  -- * This file generated automatically from xprint.xml by c_client.py.
  -- * Edit at your peril.
  --  

  --*
  -- * @defgroup XCB_XPrint_API XCB XPrint API
  -- * @brief XPrint XCB Protocol Implementation.
  -- * @{
  -- * 

   xcb_x_print_id : aliased xcb_xcb_h.xcb_extension_t;  -- /usr/include/xcb/xprint.h:25
   pragma Import (C, xcb_x_print_id, "xcb_x_print_id");

   subtype xcb_x_print_string8_t is char;  -- /usr/include/xcb/xprint.h:27

  --*
  -- * @brief xcb_x_print_string8_iterator_t
  -- * 

  --*<   
   type xcb_x_print_string8_iterator_t is record
      data : access xcb_x_print_string8_t;  -- /usr/include/xcb/xprint.h:33
      c_rem : aliased int;  -- /usr/include/xcb/xprint.h:34
      index : aliased int;  -- /usr/include/xcb/xprint.h:35
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_string8_iterator_t);  -- /usr/include/xcb/xprint.h:32

  --*<   
  --*<   
  --*
  -- * @brief xcb_x_print_printer_t
  -- * 

  --*<   
   type xcb_x_print_printer_t is record
      nameLen : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xprint.h:42
      descLen : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xprint.h:43
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_printer_t);  -- /usr/include/xcb/xprint.h:41

  --*<   
  --*
  -- * @brief xcb_x_print_printer_iterator_t
  -- * 

  --*<   
   type xcb_x_print_printer_iterator_t is record
      data : access xcb_x_print_printer_t;  -- /usr/include/xcb/xprint.h:50
      c_rem : aliased int;  -- /usr/include/xcb/xprint.h:51
      index : aliased int;  -- /usr/include/xcb/xprint.h:52
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_printer_iterator_t);  -- /usr/include/xcb/xprint.h:49

  --*<   
  --*<   
   subtype xcb_x_print_pcontext_t is stdint_h.uint32_t;  -- /usr/include/xcb/xprint.h:55

  --*
  -- * @brief xcb_x_print_pcontext_iterator_t
  -- * 

  --*<   
   type xcb_x_print_pcontext_iterator_t is record
      data : access xcb_x_print_pcontext_t;  -- /usr/include/xcb/xprint.h:61
      c_rem : aliased int;  -- /usr/include/xcb/xprint.h:62
      index : aliased int;  -- /usr/include/xcb/xprint.h:63
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_pcontext_iterator_t);  -- /usr/include/xcb/xprint.h:60

  --*<   
  --*<   
   type xcb_x_print_get_doc_t is 
     (XCB_X_PRINT_GET_DOC_FINISHED,
      XCB_X_PRINT_GET_DOC_SECOND_CONSUMER);
   pragma Convention (C, xcb_x_print_get_doc_t);  -- /usr/include/xcb/xprint.h:66

   type xcb_x_print_ev_mask_t is 
     (XCB_X_PRINT_EV_MASK_NO_EVENT_MASK,
      XCB_X_PRINT_EV_MASK_PRINT_MASK,
      XCB_X_PRINT_EV_MASK_ATTRIBUTE_MASK);
   pragma Convention (C, xcb_x_print_ev_mask_t);  -- /usr/include/xcb/xprint.h:71

   subtype xcb_x_print_detail_t is unsigned;
   XCB_X_PRINT_DETAIL_START_JOB_NOTIFY : constant xcb_x_print_detail_t := 1;
   XCB_X_PRINT_DETAIL_END_JOB_NOTIFY : constant xcb_x_print_detail_t := 2;
   XCB_X_PRINT_DETAIL_START_DOC_NOTIFY : constant xcb_x_print_detail_t := 3;
   XCB_X_PRINT_DETAIL_END_DOC_NOTIFY : constant xcb_x_print_detail_t := 4;
   XCB_X_PRINT_DETAIL_START_PAGE_NOTIFY : constant xcb_x_print_detail_t := 5;
   XCB_X_PRINT_DETAIL_END_PAGE_NOTIFY : constant xcb_x_print_detail_t := 6;  -- /usr/include/xcb/xprint.h:77

   subtype xcb_x_print_attr_t is unsigned;
   XCB_X_PRINT_ATTR_JOB_ATTR : constant xcb_x_print_attr_t := 1;
   XCB_X_PRINT_ATTR_DOC_ATTR : constant xcb_x_print_attr_t := 2;
   XCB_X_PRINT_ATTR_PAGE_ATTR : constant xcb_x_print_attr_t := 3;
   XCB_X_PRINT_ATTR_PRINTER_ATTR : constant xcb_x_print_attr_t := 4;
   XCB_X_PRINT_ATTR_SERVER_ATTR : constant xcb_x_print_attr_t := 5;
   XCB_X_PRINT_ATTR_MEDIUM_ATTR : constant xcb_x_print_attr_t := 6;
   XCB_X_PRINT_ATTR_SPOOLER_ATTR : constant xcb_x_print_attr_t := 7;  -- /usr/include/xcb/xprint.h:86

  --*
  -- * @brief xcb_x_print_print_query_version_cookie_t
  -- * 

  --*<   
   type xcb_x_print_print_query_version_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xprint.h:100
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_query_version_cookie_t);  -- /usr/include/xcb/xprint.h:99

  --* Opcode for xcb_x_print_print_query_version.  
  --*
  -- * @brief xcb_x_print_print_query_version_request_t
  -- * 

  --*<   
   type xcb_x_print_print_query_version_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:110
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:111
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:112
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_query_version_request_t);  -- /usr/include/xcb/xprint.h:109

  --*<   
  --*<   
  --*
  -- * @brief xcb_x_print_print_query_version_reply_t
  -- * 

  --*<   
   type xcb_x_print_print_query_version_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:119
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:120
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:121
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xprint.h:122
      major_version : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:123
      minor_version : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:124
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_query_version_reply_t);  -- /usr/include/xcb/xprint.h:118

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_x_print_print_get_printer_list_cookie_t
  -- * 

  --*<   
   type xcb_x_print_print_get_printer_list_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xprint.h:131
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_get_printer_list_cookie_t);  -- /usr/include/xcb/xprint.h:130

  --* Opcode for xcb_x_print_print_get_printer_list.  
  --*
  -- * @brief xcb_x_print_print_get_printer_list_request_t
  -- * 

  --*<   
   type xcb_x_print_print_get_printer_list_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:141
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:142
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:143
      printerNameLen : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xprint.h:144
      localeLen : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xprint.h:145
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_get_printer_list_request_t);  -- /usr/include/xcb/xprint.h:140

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_x_print_print_get_printer_list_reply_t
  -- * 

  --*<   
   type anon3987_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_x_print_print_get_printer_list_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:152
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:153
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:154
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xprint.h:155
      listCount : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xprint.h:156
      pad1 : aliased anon3987_anon1939_array;  -- /usr/include/xcb/xprint.h:157
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_get_printer_list_reply_t);  -- /usr/include/xcb/xprint.h:151

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_x_print_print_rehash_printer_list.  
  --*
  -- * @brief xcb_x_print_print_rehash_printer_list_request_t
  -- * 

  --*<   
   type xcb_x_print_print_rehash_printer_list_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:167
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:168
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:169
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_rehash_printer_list_request_t);  -- /usr/include/xcb/xprint.h:166

  --*<   
  --*<   
  --* Opcode for xcb_x_print_create_context.  
  --*
  -- * @brief xcb_x_print_create_context_request_t
  -- * 

  --*<   
   type xcb_x_print_create_context_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:179
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:180
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:181
      context_id : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xprint.h:182
      printerNameLen : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xprint.h:183
      localeLen : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xprint.h:184
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_create_context_request_t);  -- /usr/include/xcb/xprint.h:178

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_x_print_print_set_context.  
  --*
  -- * @brief xcb_x_print_print_set_context_request_t
  -- * 

  --*<   
   type xcb_x_print_print_set_context_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:194
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:195
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:196
      context : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xprint.h:197
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_set_context_request_t);  -- /usr/include/xcb/xprint.h:193

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_x_print_print_get_context_cookie_t
  -- * 

  --*<   
   type xcb_x_print_print_get_context_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xprint.h:204
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_get_context_cookie_t);  -- /usr/include/xcb/xprint.h:203

  --* Opcode for xcb_x_print_print_get_context.  
  --*
  -- * @brief xcb_x_print_print_get_context_request_t
  -- * 

  --*<   
   type xcb_x_print_print_get_context_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:214
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:215
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:216
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_get_context_request_t);  -- /usr/include/xcb/xprint.h:213

  --*<   
  --*<   
  --*
  -- * @brief xcb_x_print_print_get_context_reply_t
  -- * 

  --*<   
   type xcb_x_print_print_get_context_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:223
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:224
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:225
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xprint.h:226
      context : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xprint.h:227
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_get_context_reply_t);  -- /usr/include/xcb/xprint.h:222

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_x_print_print_destroy_context.  
  --*
  -- * @brief xcb_x_print_print_destroy_context_request_t
  -- * 

  --*<   
   type xcb_x_print_print_destroy_context_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:237
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:238
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:239
      context : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xprint.h:240
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_destroy_context_request_t);  -- /usr/include/xcb/xprint.h:236

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_x_print_print_get_screen_of_context_cookie_t
  -- * 

  --*<   
   type xcb_x_print_print_get_screen_of_context_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xprint.h:247
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_get_screen_of_context_cookie_t);  -- /usr/include/xcb/xprint.h:246

  --* Opcode for xcb_x_print_print_get_screen_of_context.  
  --*
  -- * @brief xcb_x_print_print_get_screen_of_context_request_t
  -- * 

  --*<   
   type xcb_x_print_print_get_screen_of_context_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:257
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:258
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:259
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_get_screen_of_context_request_t);  -- /usr/include/xcb/xprint.h:256

  --*<   
  --*<   
  --*
  -- * @brief xcb_x_print_print_get_screen_of_context_reply_t
  -- * 

  --*<   
   type xcb_x_print_print_get_screen_of_context_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:266
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:267
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:268
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xprint.h:269
      root : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xprint.h:270
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_get_screen_of_context_reply_t);  -- /usr/include/xcb/xprint.h:265

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_x_print_print_start_job.  
  --*
  -- * @brief xcb_x_print_print_start_job_request_t
  -- * 

  --*<   
   type xcb_x_print_print_start_job_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:280
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:281
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:282
      output_mode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:283
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_start_job_request_t);  -- /usr/include/xcb/xprint.h:279

  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_x_print_print_end_job.  
  --*
  -- * @brief xcb_x_print_print_end_job_request_t
  -- * 

  --*<   
   type xcb_x_print_print_end_job_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:293
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:294
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:295
      cancel : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:296
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_end_job_request_t);  -- /usr/include/xcb/xprint.h:292

  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_x_print_print_start_doc.  
  --*
  -- * @brief xcb_x_print_print_start_doc_request_t
  -- * 

  --*<   
   type xcb_x_print_print_start_doc_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:306
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:307
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:308
      driver_mode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:309
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_start_doc_request_t);  -- /usr/include/xcb/xprint.h:305

  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_x_print_print_end_doc.  
  --*
  -- * @brief xcb_x_print_print_end_doc_request_t
  -- * 

  --*<   
   type xcb_x_print_print_end_doc_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:319
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:320
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:321
      cancel : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:322
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_end_doc_request_t);  -- /usr/include/xcb/xprint.h:318

  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_x_print_print_put_document_data.  
  --*
  -- * @brief xcb_x_print_print_put_document_data_request_t
  -- * 

  --*<   
   type xcb_x_print_print_put_document_data_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:332
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:333
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:334
      drawable : aliased xcb_xproto_h.xcb_drawable_t;  -- /usr/include/xcb/xprint.h:335
      len_data : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xprint.h:336
      len_fmt : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:337
      len_options : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:338
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_put_document_data_request_t);  -- /usr/include/xcb/xprint.h:331

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_x_print_print_get_document_data_cookie_t
  -- * 

  --*<   
   type xcb_x_print_print_get_document_data_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xprint.h:345
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_get_document_data_cookie_t);  -- /usr/include/xcb/xprint.h:344

  --* Opcode for xcb_x_print_print_get_document_data.  
  --*
  -- * @brief xcb_x_print_print_get_document_data_request_t
  -- * 

  --*<   
   type xcb_x_print_print_get_document_data_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:355
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:356
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:357
      context : aliased xcb_x_print_pcontext_t;  -- /usr/include/xcb/xprint.h:358
      max_bytes : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xprint.h:359
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_get_document_data_request_t);  -- /usr/include/xcb/xprint.h:354

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_x_print_print_get_document_data_reply_t
  -- * 

  --*<   
   type anon4025_anon2079_array is array (0 .. 11) of aliased stdint_h.uint8_t;
   type xcb_x_print_print_get_document_data_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:366
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:367
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:368
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xprint.h:369
      status_code : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xprint.h:370
      finished_flag : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xprint.h:371
      dataLen : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xprint.h:372
      pad1 : aliased anon4025_anon2079_array;  -- /usr/include/xcb/xprint.h:373
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_get_document_data_reply_t);  -- /usr/include/xcb/xprint.h:365

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_x_print_print_start_page.  
  --*
  -- * @brief xcb_x_print_print_start_page_request_t
  -- * 

  --*<   
   type xcb_x_print_print_start_page_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:383
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:384
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:385
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xprint.h:386
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_start_page_request_t);  -- /usr/include/xcb/xprint.h:382

  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_x_print_print_end_page.  
  --*
  -- * @brief xcb_x_print_print_end_page_request_t
  -- * 

  --*<   
   type anon4031_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_x_print_print_end_page_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:396
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:397
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:398
      cancel : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:399
      pad0 : aliased anon4031_anon1853_array;  -- /usr/include/xcb/xprint.h:400
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_end_page_request_t);  -- /usr/include/xcb/xprint.h:395

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_x_print_print_select_input.  
  --*
  -- * @brief xcb_x_print_print_select_input_request_t
  -- * 

  --*<   
   type xcb_x_print_print_select_input_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:410
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:411
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:412
      context : aliased xcb_x_print_pcontext_t;  -- /usr/include/xcb/xprint.h:413
      event_mask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xprint.h:414
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_select_input_request_t);  -- /usr/include/xcb/xprint.h:409

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_x_print_print_input_selected_cookie_t
  -- * 

  --*<   
   type xcb_x_print_print_input_selected_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xprint.h:421
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_input_selected_cookie_t);  -- /usr/include/xcb/xprint.h:420

  --* Opcode for xcb_x_print_print_input_selected.  
  --*
  -- * @brief xcb_x_print_print_input_selected_request_t
  -- * 

  --*<   
   type xcb_x_print_print_input_selected_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:431
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:432
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:433
      context : aliased xcb_x_print_pcontext_t;  -- /usr/include/xcb/xprint.h:434
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_input_selected_request_t);  -- /usr/include/xcb/xprint.h:430

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_x_print_print_input_selected_reply_t
  -- * 

  --*<   
   type xcb_x_print_print_input_selected_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:441
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:442
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:443
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xprint.h:444
      event_mask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xprint.h:445
      all_events_mask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xprint.h:446
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_input_selected_reply_t);  -- /usr/include/xcb/xprint.h:440

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_x_print_print_get_attributes_cookie_t
  -- * 

  --*<   
   type xcb_x_print_print_get_attributes_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xprint.h:453
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_get_attributes_cookie_t);  -- /usr/include/xcb/xprint.h:452

  --* Opcode for xcb_x_print_print_get_attributes.  
  --*
  -- * @brief xcb_x_print_print_get_attributes_request_t
  -- * 

  --*<   
   type anon4045_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_x_print_print_get_attributes_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:463
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:464
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:465
      context : aliased xcb_x_print_pcontext_t;  -- /usr/include/xcb/xprint.h:466
      pool : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:467
      pad0 : aliased anon4045_anon1853_array;  -- /usr/include/xcb/xprint.h:468
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_get_attributes_request_t);  -- /usr/include/xcb/xprint.h:462

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_x_print_print_get_attributes_reply_t
  -- * 

  --*<   
   type anon4049_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_x_print_print_get_attributes_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:475
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:476
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:477
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xprint.h:478
      stringLen : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xprint.h:479
      pad1 : aliased anon4049_anon1939_array;  -- /usr/include/xcb/xprint.h:480
      attributes : aliased xcb_x_print_string8_t;  -- /usr/include/xcb/xprint.h:481
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_get_attributes_reply_t);  -- /usr/include/xcb/xprint.h:474

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_x_print_print_get_one_attributes_cookie_t
  -- * 

  --*<   
   type xcb_x_print_print_get_one_attributes_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xprint.h:488
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_get_one_attributes_cookie_t);  -- /usr/include/xcb/xprint.h:487

  --* Opcode for xcb_x_print_print_get_one_attributes.  
  --*
  -- * @brief xcb_x_print_print_get_one_attributes_request_t
  -- * 

  --*<   
   type anon4055_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_x_print_print_get_one_attributes_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:498
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:499
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:500
      context : aliased xcb_x_print_pcontext_t;  -- /usr/include/xcb/xprint.h:501
      nameLen : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xprint.h:502
      pool : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:503
      pad0 : aliased anon4055_anon1853_array;  -- /usr/include/xcb/xprint.h:504
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_get_one_attributes_request_t);  -- /usr/include/xcb/xprint.h:497

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_x_print_print_get_one_attributes_reply_t
  -- * 

  --*<   
   type anon4059_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_x_print_print_get_one_attributes_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:511
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:512
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:513
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xprint.h:514
      valueLen : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xprint.h:515
      pad1 : aliased anon4059_anon1939_array;  -- /usr/include/xcb/xprint.h:516
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_get_one_attributes_reply_t);  -- /usr/include/xcb/xprint.h:510

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_x_print_print_set_attributes.  
  --*
  -- * @brief xcb_x_print_print_set_attributes_request_t
  -- * 

  --*<   
   type anon4063_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_x_print_print_set_attributes_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:526
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:527
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:528
      context : aliased xcb_x_print_pcontext_t;  -- /usr/include/xcb/xprint.h:529
      stringLen : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xprint.h:530
      pool : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:531
      rule : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:532
      pad0 : aliased anon4063_anon1795_array;  -- /usr/include/xcb/xprint.h:533
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_set_attributes_request_t);  -- /usr/include/xcb/xprint.h:525

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_x_print_print_get_page_dimensions_cookie_t
  -- * 

  --*<   
   type xcb_x_print_print_get_page_dimensions_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xprint.h:540
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_get_page_dimensions_cookie_t);  -- /usr/include/xcb/xprint.h:539

  --* Opcode for xcb_x_print_print_get_page_dimensions.  
  --*
  -- * @brief xcb_x_print_print_get_page_dimensions_request_t
  -- * 

  --*<   
   type xcb_x_print_print_get_page_dimensions_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:550
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:551
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:552
      context : aliased xcb_x_print_pcontext_t;  -- /usr/include/xcb/xprint.h:553
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_get_page_dimensions_request_t);  -- /usr/include/xcb/xprint.h:549

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_x_print_print_get_page_dimensions_reply_t
  -- * 

  --*<   
   type xcb_x_print_print_get_page_dimensions_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:560
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:561
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:562
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xprint.h:563
      width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:564
      height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:565
      offset_x : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:566
      offset_y : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:567
      reproducible_width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:568
      reproducible_height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:569
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_get_page_dimensions_reply_t);  -- /usr/include/xcb/xprint.h:559

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
  -- * @brief xcb_x_print_print_query_screens_cookie_t
  -- * 

  --*<   
   type xcb_x_print_print_query_screens_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xprint.h:576
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_query_screens_cookie_t);  -- /usr/include/xcb/xprint.h:575

  --* Opcode for xcb_x_print_print_query_screens.  
  --*
  -- * @brief xcb_x_print_print_query_screens_request_t
  -- * 

  --*<   
   type xcb_x_print_print_query_screens_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:586
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:587
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:588
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_query_screens_request_t);  -- /usr/include/xcb/xprint.h:585

  --*<   
  --*<   
  --*
  -- * @brief xcb_x_print_print_query_screens_reply_t
  -- * 

  --*<   
   type anon4077_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_x_print_print_query_screens_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:595
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:596
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:597
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xprint.h:598
      listCount : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xprint.h:599
      pad1 : aliased anon4077_anon1939_array;  -- /usr/include/xcb/xprint.h:600
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_query_screens_reply_t);  -- /usr/include/xcb/xprint.h:594

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_x_print_print_set_image_resolution_cookie_t
  -- * 

  --*<   
   type xcb_x_print_print_set_image_resolution_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xprint.h:607
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_set_image_resolution_cookie_t);  -- /usr/include/xcb/xprint.h:606

  --* Opcode for xcb_x_print_print_set_image_resolution.  
  --*
  -- * @brief xcb_x_print_print_set_image_resolution_request_t
  -- * 

  --*<   
   type xcb_x_print_print_set_image_resolution_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:617
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:618
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:619
      context : aliased xcb_x_print_pcontext_t;  -- /usr/include/xcb/xprint.h:620
      image_resolution : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:621
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_set_image_resolution_request_t);  -- /usr/include/xcb/xprint.h:616

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_x_print_print_set_image_resolution_reply_t
  -- * 

  --*<   
   type xcb_x_print_print_set_image_resolution_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:628
      status : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:629
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:630
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xprint.h:631
      previous_resolutions : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:632
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_set_image_resolution_reply_t);  -- /usr/include/xcb/xprint.h:627

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_x_print_print_get_image_resolution_cookie_t
  -- * 

  --*<   
   type xcb_x_print_print_get_image_resolution_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xprint.h:639
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_get_image_resolution_cookie_t);  -- /usr/include/xcb/xprint.h:638

  --* Opcode for xcb_x_print_print_get_image_resolution.  
  --*
  -- * @brief xcb_x_print_print_get_image_resolution_request_t
  -- * 

  --*<   
   type xcb_x_print_print_get_image_resolution_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:649
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:650
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:651
      context : aliased xcb_x_print_pcontext_t;  -- /usr/include/xcb/xprint.h:652
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_get_image_resolution_request_t);  -- /usr/include/xcb/xprint.h:648

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_x_print_print_get_image_resolution_reply_t
  -- * 

  --*<   
   type xcb_x_print_print_get_image_resolution_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:659
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:660
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:661
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xprint.h:662
      image_resolution : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:663
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_print_get_image_resolution_reply_t);  -- /usr/include/xcb/xprint.h:658

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_x_print_notify.  
  --*
  -- * @brief xcb_x_print_notify_event_t
  -- * 

  --*<   
   type xcb_x_print_notify_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:673
      detail : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:674
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:675
      context : aliased xcb_x_print_pcontext_t;  -- /usr/include/xcb/xprint.h:676
      cancel : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:677
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_notify_event_t);  -- /usr/include/xcb/xprint.h:672

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_x_print_attribut_notify.  
  --*
  -- * @brief xcb_x_print_attribut_notify_event_t
  -- * 

  --*<   
   type xcb_x_print_attribut_notify_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:687
      detail : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:688
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:689
      context : aliased xcb_x_print_pcontext_t;  -- /usr/include/xcb/xprint.h:690
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_attribut_notify_event_t);  -- /usr/include/xcb/xprint.h:686

  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_x_print_bad_context.  
  --*
  -- * @brief xcb_x_print_bad_context_error_t
  -- * 

  --*<   
   type xcb_x_print_bad_context_error_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:700
      error_code : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:701
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:702
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_bad_context_error_t);  -- /usr/include/xcb/xprint.h:699

  --*<   
  --*<   
  --* Opcode for xcb_x_print_bad_sequence.  
  --*
  -- * @brief xcb_x_print_bad_sequence_error_t
  -- * 

  --*<   
   type xcb_x_print_bad_sequence_error_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:712
      error_code : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:713
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xprint.h:714
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_x_print_bad_sequence_error_t);  -- /usr/include/xcb/xprint.h:711

  --*<   
  --*<   
  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_x_print_string8_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_x_print_string8_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_x_print_string8_next
  -- ** 
  -- ** @param xcb_x_print_string8_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_x_print_string8_next (arg1 : access xcb_x_print_string8_iterator_t);  -- /usr/include/xcb/xprint.h:736
   pragma Import (C, xcb_x_print_string8_next, "xcb_x_print_string8_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_x_print_string8_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_x_print_string8_end
  -- ** 
  -- ** @param xcb_x_print_string8_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_string8_end (arg1 : xcb_x_print_string8_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xprint.h:758
   pragma Import (C, xcb_x_print_string8_end, "xcb_x_print_string8_end");

  --*<  
   function xcb_x_print_printer_serialize
     (arg1 : System.Address;
      arg2 : System.Address;
      arg3 : access xcb_x_print_string8_t;
      arg4 : access xcb_x_print_string8_t) return int;  -- /usr/include/xcb/xprint.h:761
   pragma Import (C, xcb_x_print_printer_serialize, "xcb_x_print_printer_serialize");

  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_x_print_printer_unserialize (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xprint.h:767
   pragma Import (C, xcb_x_print_printer_unserialize, "xcb_x_print_printer_unserialize");

  --*<  
  --*<  
   function xcb_x_print_printer_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xprint.h:771
   pragma Import (C, xcb_x_print_printer_sizeof, "xcb_x_print_printer_sizeof");

  --****************************************************************************
  -- **
  -- ** xcb_x_print_string8_t * xcb_x_print_printer_name
  -- ** 
  -- ** @param const xcb_x_print_printer_t *R
  -- ** @returns xcb_x_print_string8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_printer_name (arg1 : System.Address) return access xcb_x_print_string8_t;  -- /usr/include/xcb/xprint.h:784
   pragma Import (C, xcb_x_print_printer_name, "xcb_x_print_printer_name");

  --****************************************************************************
  -- **
  -- ** int xcb_x_print_printer_name_length
  -- ** 
  -- ** @param const xcb_x_print_printer_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_printer_name_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xprint.h:797
   pragma Import (C, xcb_x_print_printer_name_length, "xcb_x_print_printer_name_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_x_print_printer_name_end
  -- ** 
  -- ** @param const xcb_x_print_printer_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_printer_name_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xprint.h:810
   pragma Import (C, xcb_x_print_printer_name_end, "xcb_x_print_printer_name_end");

  --****************************************************************************
  -- **
  -- ** xcb_x_print_string8_t * xcb_x_print_printer_description
  -- ** 
  -- ** @param const xcb_x_print_printer_t *R
  -- ** @returns xcb_x_print_string8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_printer_description (arg1 : System.Address) return access xcb_x_print_string8_t;  -- /usr/include/xcb/xprint.h:823
   pragma Import (C, xcb_x_print_printer_description, "xcb_x_print_printer_description");

  --****************************************************************************
  -- **
  -- ** int xcb_x_print_printer_description_length
  -- ** 
  -- ** @param const xcb_x_print_printer_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_printer_description_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xprint.h:836
   pragma Import (C, xcb_x_print_printer_description_length, "xcb_x_print_printer_description_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_x_print_printer_description_end
  -- ** 
  -- ** @param const xcb_x_print_printer_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_printer_description_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xprint.h:849
   pragma Import (C, xcb_x_print_printer_description_end, "xcb_x_print_printer_description_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_x_print_printer_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_x_print_printer_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_x_print_printer_next
  -- ** 
  -- ** @param xcb_x_print_printer_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_x_print_printer_next (arg1 : access xcb_x_print_printer_iterator_t);  -- /usr/include/xcb/xprint.h:870
   pragma Import (C, xcb_x_print_printer_next, "xcb_x_print_printer_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_x_print_printer_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_x_print_printer_end
  -- ** 
  -- ** @param xcb_x_print_printer_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_printer_end (arg1 : xcb_x_print_printer_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xprint.h:892
   pragma Import (C, xcb_x_print_printer_end, "xcb_x_print_printer_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_x_print_pcontext_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_x_print_pcontext_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_x_print_pcontext_next
  -- ** 
  -- ** @param xcb_x_print_pcontext_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_x_print_pcontext_next (arg1 : access xcb_x_print_pcontext_iterator_t);  -- /usr/include/xcb/xprint.h:913
   pragma Import (C, xcb_x_print_pcontext_next, "xcb_x_print_pcontext_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_x_print_pcontext_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_x_print_pcontext_end
  -- ** 
  -- ** @param xcb_x_print_pcontext_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_pcontext_end (arg1 : xcb_x_print_pcontext_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xprint.h:935
   pragma Import (C, xcb_x_print_pcontext_end, "xcb_x_print_pcontext_end");

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
  -- ** xcb_x_print_print_query_version_cookie_t xcb_x_print_print_query_version
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_x_print_print_query_version_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_query_version (arg1 : System.Address) return xcb_x_print_print_query_version_cookie_t;  -- /usr/include/xcb/xprint.h:956
   pragma Import (C, xcb_x_print_print_query_version, "xcb_x_print_print_query_version");

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
  -- ** xcb_x_print_print_query_version_cookie_t xcb_x_print_print_query_version_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_x_print_print_query_version_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_query_version_unchecked (arg1 : System.Address) return xcb_x_print_print_query_version_cookie_t;  -- /usr/include/xcb/xprint.h:980
   pragma Import (C, xcb_x_print_print_query_version_unchecked, "xcb_x_print_print_query_version_unchecked");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_x_print_print_query_version_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_x_print_print_query_version_reply_t * xcb_x_print_print_query_version_reply
  -- ** 
  -- ** @param xcb_connection_t                          *c
  -- ** @param xcb_x_print_print_query_version_cookie_t   cookie
  -- ** @param xcb_generic_error_t                      **e
  -- ** @returns xcb_x_print_print_query_version_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_query_version_reply
     (arg1 : System.Address;
      arg2 : xcb_x_print_print_query_version_cookie_t;
      arg3 : System.Address) return access xcb_x_print_print_query_version_reply_t;  -- /usr/include/xcb/xprint.h:1009
   pragma Import (C, xcb_x_print_print_query_version_reply, "xcb_x_print_print_query_version_reply");

  --*<  
  --*<  
  --*<  
   function xcb_x_print_print_get_printer_list_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xprint.h:1014
   pragma Import (C, xcb_x_print_print_get_printer_list_sizeof, "xcb_x_print_print_get_printer_list_sizeof");

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
  -- ** xcb_x_print_print_get_printer_list_cookie_t xcb_x_print_print_get_printer_list
  -- ** 
  -- ** @param xcb_connection_t            *c
  -- ** @param uint32_t                     printerNameLen
  -- ** @param uint32_t                     localeLen
  -- ** @param const xcb_x_print_string8_t *printer_name
  -- ** @param const xcb_x_print_string8_t *locale
  -- ** @returns xcb_x_print_print_get_printer_list_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_get_printer_list
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : stdint_h.uint32_t;
      arg4 : access xcb_x_print_string8_t;
      arg5 : access xcb_x_print_string8_t) return xcb_x_print_print_get_printer_list_cookie_t;  -- /usr/include/xcb/xprint.h:1039
   pragma Import (C, xcb_x_print_print_get_printer_list, "xcb_x_print_print_get_printer_list");

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
  -- * This form can be used only if the request will cause
  -- * a reply to be generated. Any returned error will be
  -- * placed in the event queue.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_x_print_print_get_printer_list_cookie_t xcb_x_print_print_get_printer_list_unchecked
  -- ** 
  -- ** @param xcb_connection_t            *c
  -- ** @param uint32_t                     printerNameLen
  -- ** @param uint32_t                     localeLen
  -- ** @param const xcb_x_print_string8_t *printer_name
  -- ** @param const xcb_x_print_string8_t *locale
  -- ** @returns xcb_x_print_print_get_printer_list_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_get_printer_list_unchecked
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : stdint_h.uint32_t;
      arg4 : access xcb_x_print_string8_t;
      arg5 : access xcb_x_print_string8_t) return xcb_x_print_print_get_printer_list_cookie_t;  -- /usr/include/xcb/xprint.h:1071
   pragma Import (C, xcb_x_print_print_get_printer_list_unchecked, "xcb_x_print_print_get_printer_list_unchecked");

  --*<  
  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** int xcb_x_print_print_get_printer_list_printers_length
  -- ** 
  -- ** @param const xcb_x_print_print_get_printer_list_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_get_printer_list_printers_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xprint.h:1088
   pragma Import (C, xcb_x_print_print_get_printer_list_printers_length, "xcb_x_print_print_get_printer_list_printers_length");

  --****************************************************************************
  -- **
  -- ** xcb_x_print_printer_iterator_t xcb_x_print_print_get_printer_list_printers_iterator
  -- ** 
  -- ** @param const xcb_x_print_print_get_printer_list_reply_t *R
  -- ** @returns xcb_x_print_printer_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_get_printer_list_printers_iterator (arg1 : System.Address) return xcb_x_print_printer_iterator_t;  -- /usr/include/xcb/xprint.h:1101
   pragma Import (C, xcb_x_print_print_get_printer_list_printers_iterator, "xcb_x_print_print_get_printer_list_printers_iterator");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_x_print_print_get_printer_list_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_x_print_print_get_printer_list_reply_t * xcb_x_print_print_get_printer_list_reply
  -- ** 
  -- ** @param xcb_connection_t                             *c
  -- ** @param xcb_x_print_print_get_printer_list_cookie_t   cookie
  -- ** @param xcb_generic_error_t                         **e
  -- ** @returns xcb_x_print_print_get_printer_list_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_get_printer_list_reply
     (arg1 : System.Address;
      arg2 : xcb_x_print_print_get_printer_list_cookie_t;
      arg3 : System.Address) return access xcb_x_print_print_get_printer_list_reply_t;  -- /usr/include/xcb/xprint.h:1130
   pragma Import (C, xcb_x_print_print_get_printer_list_reply, "xcb_x_print_print_get_printer_list_reply");

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
  -- ** xcb_void_cookie_t xcb_x_print_print_rehash_printer_list_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_rehash_printer_list_checked (arg1 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xprint.h:1156
   pragma Import (C, xcb_x_print_print_rehash_printer_list_checked, "xcb_x_print_print_rehash_printer_list_checked");

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
  -- ** xcb_void_cookie_t xcb_x_print_print_rehash_printer_list
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_rehash_printer_list (arg1 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xprint.h:1177
   pragma Import (C, xcb_x_print_print_rehash_printer_list, "xcb_x_print_print_rehash_printer_list");

  --*<  
   function xcb_x_print_create_context_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xprint.h:1180
   pragma Import (C, xcb_x_print_create_context_sizeof, "xcb_x_print_create_context_sizeof");

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
  -- ** xcb_void_cookie_t xcb_x_print_create_context_checked
  -- ** 
  -- ** @param xcb_connection_t            *c
  -- ** @param uint32_t                     context_id
  -- ** @param uint32_t                     printerNameLen
  -- ** @param uint32_t                     localeLen
  -- ** @param const xcb_x_print_string8_t *printerName
  -- ** @param const xcb_x_print_string8_t *locale
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_create_context_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t;
      arg5 : access xcb_x_print_string8_t;
      arg6 : access xcb_x_print_string8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xprint.h:1209
   pragma Import (C, xcb_x_print_create_context_checked, "xcb_x_print_create_context_checked");

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
  -- ** xcb_void_cookie_t xcb_x_print_create_context
  -- ** 
  -- ** @param xcb_connection_t            *c
  -- ** @param uint32_t                     context_id
  -- ** @param uint32_t                     printerNameLen
  -- ** @param uint32_t                     localeLen
  -- ** @param const xcb_x_print_string8_t *printerName
  -- ** @param const xcb_x_print_string8_t *locale
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_create_context
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t;
      arg5 : access xcb_x_print_string8_t;
      arg6 : access xcb_x_print_string8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xprint.h:1240
   pragma Import (C, xcb_x_print_create_context, "xcb_x_print_create_context");

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
  -- ** xcb_void_cookie_t xcb_x_print_print_set_context_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          context
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_set_context_checked (arg1 : System.Address; arg2 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xprint.h:1270
   pragma Import (C, xcb_x_print_print_set_context_checked, "xcb_x_print_print_set_context_checked");

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
  -- ** xcb_void_cookie_t xcb_x_print_print_set_context
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          context
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_set_context (arg1 : System.Address; arg2 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xprint.h:1293
   pragma Import (C, xcb_x_print_print_set_context, "xcb_x_print_print_set_context");

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
  -- ** xcb_x_print_print_get_context_cookie_t xcb_x_print_print_get_context
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_x_print_print_get_context_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_get_context (arg1 : System.Address) return xcb_x_print_print_get_context_cookie_t;  -- /usr/include/xcb/xprint.h:1315
   pragma Import (C, xcb_x_print_print_get_context, "xcb_x_print_print_get_context");

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
  -- ** xcb_x_print_print_get_context_cookie_t xcb_x_print_print_get_context_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_x_print_print_get_context_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_get_context_unchecked (arg1 : System.Address) return xcb_x_print_print_get_context_cookie_t;  -- /usr/include/xcb/xprint.h:1339
   pragma Import (C, xcb_x_print_print_get_context_unchecked, "xcb_x_print_print_get_context_unchecked");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_x_print_print_get_context_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_x_print_print_get_context_reply_t * xcb_x_print_print_get_context_reply
  -- ** 
  -- ** @param xcb_connection_t                        *c
  -- ** @param xcb_x_print_print_get_context_cookie_t   cookie
  -- ** @param xcb_generic_error_t                    **e
  -- ** @returns xcb_x_print_print_get_context_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_get_context_reply
     (arg1 : System.Address;
      arg2 : xcb_x_print_print_get_context_cookie_t;
      arg3 : System.Address) return access xcb_x_print_print_get_context_reply_t;  -- /usr/include/xcb/xprint.h:1368
   pragma Import (C, xcb_x_print_print_get_context_reply, "xcb_x_print_print_get_context_reply");

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
  -- ** xcb_void_cookie_t xcb_x_print_print_destroy_context_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          context
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_destroy_context_checked (arg1 : System.Address; arg2 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xprint.h:1395
   pragma Import (C, xcb_x_print_print_destroy_context_checked, "xcb_x_print_print_destroy_context_checked");

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
  -- ** xcb_void_cookie_t xcb_x_print_print_destroy_context
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          context
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_destroy_context (arg1 : System.Address; arg2 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xprint.h:1418
   pragma Import (C, xcb_x_print_print_destroy_context, "xcb_x_print_print_destroy_context");

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
  -- ** xcb_x_print_print_get_screen_of_context_cookie_t xcb_x_print_print_get_screen_of_context
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_x_print_print_get_screen_of_context_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_get_screen_of_context (arg1 : System.Address) return xcb_x_print_print_get_screen_of_context_cookie_t;  -- /usr/include/xcb/xprint.h:1440
   pragma Import (C, xcb_x_print_print_get_screen_of_context, "xcb_x_print_print_get_screen_of_context");

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
  -- ** xcb_x_print_print_get_screen_of_context_cookie_t xcb_x_print_print_get_screen_of_context_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_x_print_print_get_screen_of_context_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_get_screen_of_context_unchecked (arg1 : System.Address) return xcb_x_print_print_get_screen_of_context_cookie_t;  -- /usr/include/xcb/xprint.h:1464
   pragma Import (C, xcb_x_print_print_get_screen_of_context_unchecked, "xcb_x_print_print_get_screen_of_context_unchecked");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_x_print_print_get_screen_of_context_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_x_print_print_get_screen_of_context_reply_t * xcb_x_print_print_get_screen_of_context_reply
  -- ** 
  -- ** @param xcb_connection_t                                  *c
  -- ** @param xcb_x_print_print_get_screen_of_context_cookie_t   cookie
  -- ** @param xcb_generic_error_t                              **e
  -- ** @returns xcb_x_print_print_get_screen_of_context_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_get_screen_of_context_reply
     (arg1 : System.Address;
      arg2 : xcb_x_print_print_get_screen_of_context_cookie_t;
      arg3 : System.Address) return access xcb_x_print_print_get_screen_of_context_reply_t;  -- /usr/include/xcb/xprint.h:1493
   pragma Import (C, xcb_x_print_print_get_screen_of_context_reply, "xcb_x_print_print_get_screen_of_context_reply");

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
  -- ** xcb_void_cookie_t xcb_x_print_print_start_job_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           output_mode
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_start_job_checked (arg1 : System.Address; arg2 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xprint.h:1520
   pragma Import (C, xcb_x_print_print_start_job_checked, "xcb_x_print_print_start_job_checked");

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
  -- ** xcb_void_cookie_t xcb_x_print_print_start_job
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           output_mode
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_start_job (arg1 : System.Address; arg2 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xprint.h:1543
   pragma Import (C, xcb_x_print_print_start_job, "xcb_x_print_print_start_job");

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
  -- ** xcb_void_cookie_t xcb_x_print_print_end_job_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           cancel
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_end_job_checked (arg1 : System.Address; arg2 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xprint.h:1569
   pragma Import (C, xcb_x_print_print_end_job_checked, "xcb_x_print_print_end_job_checked");

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
  -- ** xcb_void_cookie_t xcb_x_print_print_end_job
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           cancel
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_end_job (arg1 : System.Address; arg2 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xprint.h:1592
   pragma Import (C, xcb_x_print_print_end_job, "xcb_x_print_print_end_job");

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
  -- ** xcb_void_cookie_t xcb_x_print_print_start_doc_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           driver_mode
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_start_doc_checked (arg1 : System.Address; arg2 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xprint.h:1618
   pragma Import (C, xcb_x_print_print_start_doc_checked, "xcb_x_print_print_start_doc_checked");

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
  -- ** xcb_void_cookie_t xcb_x_print_print_start_doc
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           driver_mode
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_start_doc (arg1 : System.Address; arg2 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xprint.h:1641
   pragma Import (C, xcb_x_print_print_start_doc, "xcb_x_print_print_start_doc");

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
  -- ** xcb_void_cookie_t xcb_x_print_print_end_doc_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           cancel
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_end_doc_checked (arg1 : System.Address; arg2 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xprint.h:1667
   pragma Import (C, xcb_x_print_print_end_doc_checked, "xcb_x_print_print_end_doc_checked");

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
  -- ** xcb_void_cookie_t xcb_x_print_print_end_doc
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           cancel
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_end_doc (arg1 : System.Address; arg2 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xprint.h:1690
   pragma Import (C, xcb_x_print_print_end_doc, "xcb_x_print_print_end_doc");

  --*<  
  --*<  
   function xcb_x_print_print_put_document_data_sizeof
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/xprint.h:1694
   pragma Import (C, xcb_x_print_print_put_document_data_sizeof, "xcb_x_print_print_put_document_data_sizeof");

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
  -- ** xcb_void_cookie_t xcb_x_print_print_put_document_data_checked
  -- ** 
  -- ** @param xcb_connection_t            *c
  -- ** @param xcb_drawable_t               drawable
  -- ** @param uint32_t                     len_data
  -- ** @param uint16_t                     len_fmt
  -- ** @param uint16_t                     len_options
  -- ** @param const uint8_t               *data
  -- ** @param uint32_t                     doc_format_len
  -- ** @param const xcb_x_print_string8_t *doc_format
  -- ** @param uint32_t                     options_len
  -- ** @param const xcb_x_print_string8_t *options
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_put_document_data_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_drawable_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint16_t;
      arg6 : access stdint_h.uint8_t;
      arg7 : stdint_h.uint32_t;
      arg8 : access xcb_x_print_string8_t;
      arg9 : stdint_h.uint32_t;
      arg10 : access xcb_x_print_string8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xprint.h:1729
   pragma Import (C, xcb_x_print_print_put_document_data_checked, "xcb_x_print_print_put_document_data_checked");

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
  -- ** xcb_void_cookie_t xcb_x_print_print_put_document_data
  -- ** 
  -- ** @param xcb_connection_t            *c
  -- ** @param xcb_drawable_t               drawable
  -- ** @param uint32_t                     len_data
  -- ** @param uint16_t                     len_fmt
  -- ** @param uint16_t                     len_options
  -- ** @param const uint8_t               *data
  -- ** @param uint32_t                     doc_format_len
  -- ** @param const xcb_x_print_string8_t *doc_format
  -- ** @param uint32_t                     options_len
  -- ** @param const xcb_x_print_string8_t *options
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_put_document_data
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_drawable_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint16_t;
      arg6 : access stdint_h.uint8_t;
      arg7 : stdint_h.uint32_t;
      arg8 : access xcb_x_print_string8_t;
      arg9 : stdint_h.uint32_t;
      arg10 : access xcb_x_print_string8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xprint.h:1768
   pragma Import (C, xcb_x_print_print_put_document_data, "xcb_x_print_print_put_document_data");

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
   function xcb_x_print_print_get_document_data_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xprint.h:1780
   pragma Import (C, xcb_x_print_print_get_document_data_sizeof, "xcb_x_print_print_get_document_data_sizeof");

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
  -- ** xcb_x_print_print_get_document_data_cookie_t xcb_x_print_print_get_document_data
  -- ** 
  -- ** @param xcb_connection_t       *c
  -- ** @param xcb_x_print_pcontext_t  context
  -- ** @param uint32_t                max_bytes
  -- ** @returns xcb_x_print_print_get_document_data_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_get_document_data
     (arg1 : System.Address;
      arg2 : xcb_x_print_pcontext_t;
      arg3 : stdint_h.uint32_t) return xcb_x_print_print_get_document_data_cookie_t;  -- /usr/include/xcb/xprint.h:1803
   pragma Import (C, xcb_x_print_print_get_document_data, "xcb_x_print_print_get_document_data");

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
  -- ** xcb_x_print_print_get_document_data_cookie_t xcb_x_print_print_get_document_data_unchecked
  -- ** 
  -- ** @param xcb_connection_t       *c
  -- ** @param xcb_x_print_pcontext_t  context
  -- ** @param uint32_t                max_bytes
  -- ** @returns xcb_x_print_print_get_document_data_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_get_document_data_unchecked
     (arg1 : System.Address;
      arg2 : xcb_x_print_pcontext_t;
      arg3 : stdint_h.uint32_t) return xcb_x_print_print_get_document_data_cookie_t;  -- /usr/include/xcb/xprint.h:1831
   pragma Import (C, xcb_x_print_print_get_document_data_unchecked, "xcb_x_print_print_get_document_data_unchecked");

  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** uint8_t * xcb_x_print_print_get_document_data_data
  -- ** 
  -- ** @param const xcb_x_print_print_get_document_data_reply_t *R
  -- ** @returns uint8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_get_document_data_data (arg1 : System.Address) return access stdint_h.uint8_t;  -- /usr/include/xcb/xprint.h:1846
   pragma Import (C, xcb_x_print_print_get_document_data_data, "xcb_x_print_print_get_document_data_data");

  --****************************************************************************
  -- **
  -- ** int xcb_x_print_print_get_document_data_data_length
  -- ** 
  -- ** @param const xcb_x_print_print_get_document_data_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_get_document_data_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xprint.h:1859
   pragma Import (C, xcb_x_print_print_get_document_data_data_length, "xcb_x_print_print_get_document_data_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_x_print_print_get_document_data_data_end
  -- ** 
  -- ** @param const xcb_x_print_print_get_document_data_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_get_document_data_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xprint.h:1872
   pragma Import (C, xcb_x_print_print_get_document_data_data_end, "xcb_x_print_print_get_document_data_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_x_print_print_get_document_data_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_x_print_print_get_document_data_reply_t * xcb_x_print_print_get_document_data_reply
  -- ** 
  -- ** @param xcb_connection_t                              *c
  -- ** @param xcb_x_print_print_get_document_data_cookie_t   cookie
  -- ** @param xcb_generic_error_t                          **e
  -- ** @returns xcb_x_print_print_get_document_data_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_get_document_data_reply
     (arg1 : System.Address;
      arg2 : xcb_x_print_print_get_document_data_cookie_t;
      arg3 : System.Address) return access xcb_x_print_print_get_document_data_reply_t;  -- /usr/include/xcb/xprint.h:1901
   pragma Import (C, xcb_x_print_print_get_document_data_reply, "xcb_x_print_print_get_document_data_reply");

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
  -- ** xcb_void_cookie_t xcb_x_print_print_start_page_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_start_page_checked (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xprint.h:1928
   pragma Import (C, xcb_x_print_print_start_page_checked, "xcb_x_print_print_start_page_checked");

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
  -- ** xcb_void_cookie_t xcb_x_print_print_start_page
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_start_page (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xprint.h:1951
   pragma Import (C, xcb_x_print_print_start_page, "xcb_x_print_print_start_page");

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
  -- ** xcb_void_cookie_t xcb_x_print_print_end_page_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           cancel
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_end_page_checked (arg1 : System.Address; arg2 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xprint.h:1977
   pragma Import (C, xcb_x_print_print_end_page_checked, "xcb_x_print_print_end_page_checked");

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
  -- ** xcb_void_cookie_t xcb_x_print_print_end_page
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           cancel
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_end_page (arg1 : System.Address; arg2 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xprint.h:2000
   pragma Import (C, xcb_x_print_print_end_page, "xcb_x_print_print_end_page");

  --*<  
  --*<  
   function xcb_x_print_print_select_input_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xprint.h:2004
   pragma Import (C, xcb_x_print_print_select_input_sizeof, "xcb_x_print_print_select_input_sizeof");

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
  -- ** xcb_void_cookie_t xcb_x_print_print_select_input_checked
  -- ** 
  -- ** @param xcb_connection_t       *c
  -- ** @param xcb_x_print_pcontext_t  context
  -- ** @param uint32_t                event_mask
  -- ** @param const uint32_t         *event_list
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_select_input_checked
     (arg1 : System.Address;
      arg2 : xcb_x_print_pcontext_t;
      arg3 : stdint_h.uint32_t;
      arg4 : access stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xprint.h:2031
   pragma Import (C, xcb_x_print_print_select_input_checked, "xcb_x_print_print_select_input_checked");

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
  -- ** xcb_void_cookie_t xcb_x_print_print_select_input
  -- ** 
  -- ** @param xcb_connection_t       *c
  -- ** @param xcb_x_print_pcontext_t  context
  -- ** @param uint32_t                event_mask
  -- ** @param const uint32_t         *event_list
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_select_input
     (arg1 : System.Address;
      arg2 : xcb_x_print_pcontext_t;
      arg3 : stdint_h.uint32_t;
      arg4 : access stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xprint.h:2058
   pragma Import (C, xcb_x_print_print_select_input, "xcb_x_print_print_select_input");

  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_x_print_print_input_selected_serialize
     (arg1 : System.Address;
      arg2 : System.Address;
      arg3 : access stdint_h.uint32_t;
      arg4 : access stdint_h.uint32_t) return int;  -- /usr/include/xcb/xprint.h:2064
   pragma Import (C, xcb_x_print_print_input_selected_serialize, "xcb_x_print_print_input_selected_serialize");

  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_x_print_print_input_selected_unserialize (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xprint.h:2070
   pragma Import (C, xcb_x_print_print_input_selected_unserialize, "xcb_x_print_print_input_selected_unserialize");

  --*<  
  --*<  
   function xcb_x_print_print_input_selected_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xprint.h:2074
   pragma Import (C, xcb_x_print_print_input_selected_sizeof, "xcb_x_print_print_input_selected_sizeof");

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
  -- ** xcb_x_print_print_input_selected_cookie_t xcb_x_print_print_input_selected
  -- ** 
  -- ** @param xcb_connection_t       *c
  -- ** @param xcb_x_print_pcontext_t  context
  -- ** @returns xcb_x_print_print_input_selected_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_input_selected (arg1 : System.Address; arg2 : xcb_x_print_pcontext_t) return xcb_x_print_print_input_selected_cookie_t;  -- /usr/include/xcb/xprint.h:2096
   pragma Import (C, xcb_x_print_print_input_selected, "xcb_x_print_print_input_selected");

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
  -- ** xcb_x_print_print_input_selected_cookie_t xcb_x_print_print_input_selected_unchecked
  -- ** 
  -- ** @param xcb_connection_t       *c
  -- ** @param xcb_x_print_pcontext_t  context
  -- ** @returns xcb_x_print_print_input_selected_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_input_selected_unchecked (arg1 : System.Address; arg2 : xcb_x_print_pcontext_t) return xcb_x_print_print_input_selected_cookie_t;  -- /usr/include/xcb/xprint.h:2122
   pragma Import (C, xcb_x_print_print_input_selected_unchecked, "xcb_x_print_print_input_selected_unchecked");

  --*<  
  --****************************************************************************
  -- **
  -- ** uint32_t * xcb_x_print_print_input_selected_event_list
  -- ** 
  -- ** @param const xcb_x_print_print_input_selected_reply_t *R
  -- ** @returns uint32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_input_selected_event_list (arg1 : System.Address) return access stdint_h.uint32_t;  -- /usr/include/xcb/xprint.h:2136
   pragma Import (C, xcb_x_print_print_input_selected_event_list, "xcb_x_print_print_input_selected_event_list");

  --****************************************************************************
  -- **
  -- ** int xcb_x_print_print_input_selected_event_list_length
  -- ** 
  -- ** @param const xcb_x_print_print_input_selected_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_input_selected_event_list_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xprint.h:2149
   pragma Import (C, xcb_x_print_print_input_selected_event_list_length, "xcb_x_print_print_input_selected_event_list_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_x_print_print_input_selected_event_list_end
  -- ** 
  -- ** @param const xcb_x_print_print_input_selected_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_input_selected_event_list_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xprint.h:2162
   pragma Import (C, xcb_x_print_print_input_selected_event_list_end, "xcb_x_print_print_input_selected_event_list_end");

  --****************************************************************************
  -- **
  -- ** uint32_t * xcb_x_print_print_input_selected_all_events_list
  -- ** 
  -- ** @param const xcb_x_print_print_input_selected_reply_t *R
  -- ** @returns uint32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_input_selected_all_events_list (arg1 : System.Address) return access stdint_h.uint32_t;  -- /usr/include/xcb/xprint.h:2175
   pragma Import (C, xcb_x_print_print_input_selected_all_events_list, "xcb_x_print_print_input_selected_all_events_list");

  --****************************************************************************
  -- **
  -- ** int xcb_x_print_print_input_selected_all_events_list_length
  -- ** 
  -- ** @param const xcb_x_print_print_input_selected_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_input_selected_all_events_list_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xprint.h:2188
   pragma Import (C, xcb_x_print_print_input_selected_all_events_list_length, "xcb_x_print_print_input_selected_all_events_list_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_x_print_print_input_selected_all_events_list_end
  -- ** 
  -- ** @param const xcb_x_print_print_input_selected_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_input_selected_all_events_list_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xprint.h:2201
   pragma Import (C, xcb_x_print_print_input_selected_all_events_list_end, "xcb_x_print_print_input_selected_all_events_list_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_x_print_print_input_selected_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_x_print_print_input_selected_reply_t * xcb_x_print_print_input_selected_reply
  -- ** 
  -- ** @param xcb_connection_t                           *c
  -- ** @param xcb_x_print_print_input_selected_cookie_t   cookie
  -- ** @param xcb_generic_error_t                       **e
  -- ** @returns xcb_x_print_print_input_selected_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_input_selected_reply
     (arg1 : System.Address;
      arg2 : xcb_x_print_print_input_selected_cookie_t;
      arg3 : System.Address) return access xcb_x_print_print_input_selected_reply_t;  -- /usr/include/xcb/xprint.h:2230
   pragma Import (C, xcb_x_print_print_input_selected_reply, "xcb_x_print_print_input_selected_reply");

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
  -- ** xcb_x_print_print_get_attributes_cookie_t xcb_x_print_print_get_attributes
  -- ** 
  -- ** @param xcb_connection_t       *c
  -- ** @param xcb_x_print_pcontext_t  context
  -- ** @param uint8_t                 pool
  -- ** @returns xcb_x_print_print_get_attributes_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_get_attributes
     (arg1 : System.Address;
      arg2 : xcb_x_print_pcontext_t;
      arg3 : stdint_h.uint8_t) return xcb_x_print_print_get_attributes_cookie_t;  -- /usr/include/xcb/xprint.h:2255
   pragma Import (C, xcb_x_print_print_get_attributes, "xcb_x_print_print_get_attributes");

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
  -- ** xcb_x_print_print_get_attributes_cookie_t xcb_x_print_print_get_attributes_unchecked
  -- ** 
  -- ** @param xcb_connection_t       *c
  -- ** @param xcb_x_print_pcontext_t  context
  -- ** @param uint8_t                 pool
  -- ** @returns xcb_x_print_print_get_attributes_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_get_attributes_unchecked
     (arg1 : System.Address;
      arg2 : xcb_x_print_pcontext_t;
      arg3 : stdint_h.uint8_t) return xcb_x_print_print_get_attributes_cookie_t;  -- /usr/include/xcb/xprint.h:2283
   pragma Import (C, xcb_x_print_print_get_attributes_unchecked, "xcb_x_print_print_get_attributes_unchecked");

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
  -- * xcb_x_print_print_get_attributes_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_x_print_print_get_attributes_reply_t * xcb_x_print_print_get_attributes_reply
  -- ** 
  -- ** @param xcb_connection_t                           *c
  -- ** @param xcb_x_print_print_get_attributes_cookie_t   cookie
  -- ** @param xcb_generic_error_t                       **e
  -- ** @returns xcb_x_print_print_get_attributes_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_get_attributes_reply
     (arg1 : System.Address;
      arg2 : xcb_x_print_print_get_attributes_cookie_t;
      arg3 : System.Address) return access xcb_x_print_print_get_attributes_reply_t;  -- /usr/include/xcb/xprint.h:2314
   pragma Import (C, xcb_x_print_print_get_attributes_reply, "xcb_x_print_print_get_attributes_reply");

  --*<  
  --*<  
  --*<  
   function xcb_x_print_print_get_one_attributes_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xprint.h:2319
   pragma Import (C, xcb_x_print_print_get_one_attributes_sizeof, "xcb_x_print_print_get_one_attributes_sizeof");

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
  -- ** xcb_x_print_print_get_one_attributes_cookie_t xcb_x_print_print_get_one_attributes
  -- ** 
  -- ** @param xcb_connection_t            *c
  -- ** @param xcb_x_print_pcontext_t       context
  -- ** @param uint32_t                     nameLen
  -- ** @param uint8_t                      pool
  -- ** @param const xcb_x_print_string8_t *name
  -- ** @returns xcb_x_print_print_get_one_attributes_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_get_one_attributes
     (arg1 : System.Address;
      arg2 : xcb_x_print_pcontext_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint8_t;
      arg5 : access xcb_x_print_string8_t) return xcb_x_print_print_get_one_attributes_cookie_t;  -- /usr/include/xcb/xprint.h:2344
   pragma Import (C, xcb_x_print_print_get_one_attributes, "xcb_x_print_print_get_one_attributes");

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
  -- * This form can be used only if the request will cause
  -- * a reply to be generated. Any returned error will be
  -- * placed in the event queue.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_x_print_print_get_one_attributes_cookie_t xcb_x_print_print_get_one_attributes_unchecked
  -- ** 
  -- ** @param xcb_connection_t            *c
  -- ** @param xcb_x_print_pcontext_t       context
  -- ** @param uint32_t                     nameLen
  -- ** @param uint8_t                      pool
  -- ** @param const xcb_x_print_string8_t *name
  -- ** @returns xcb_x_print_print_get_one_attributes_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_get_one_attributes_unchecked
     (arg1 : System.Address;
      arg2 : xcb_x_print_pcontext_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint8_t;
      arg5 : access xcb_x_print_string8_t) return xcb_x_print_print_get_one_attributes_cookie_t;  -- /usr/include/xcb/xprint.h:2376
   pragma Import (C, xcb_x_print_print_get_one_attributes_unchecked, "xcb_x_print_print_get_one_attributes_unchecked");

  --*<  
  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_x_print_string8_t * xcb_x_print_print_get_one_attributes_value
  -- ** 
  -- ** @param const xcb_x_print_print_get_one_attributes_reply_t *R
  -- ** @returns xcb_x_print_string8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_get_one_attributes_value (arg1 : System.Address) return access xcb_x_print_string8_t;  -- /usr/include/xcb/xprint.h:2393
   pragma Import (C, xcb_x_print_print_get_one_attributes_value, "xcb_x_print_print_get_one_attributes_value");

  --****************************************************************************
  -- **
  -- ** int xcb_x_print_print_get_one_attributes_value_length
  -- ** 
  -- ** @param const xcb_x_print_print_get_one_attributes_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_get_one_attributes_value_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xprint.h:2406
   pragma Import (C, xcb_x_print_print_get_one_attributes_value_length, "xcb_x_print_print_get_one_attributes_value_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_x_print_print_get_one_attributes_value_end
  -- ** 
  -- ** @param const xcb_x_print_print_get_one_attributes_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_get_one_attributes_value_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xprint.h:2419
   pragma Import (C, xcb_x_print_print_get_one_attributes_value_end, "xcb_x_print_print_get_one_attributes_value_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_x_print_print_get_one_attributes_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_x_print_print_get_one_attributes_reply_t * xcb_x_print_print_get_one_attributes_reply
  -- ** 
  -- ** @param xcb_connection_t                               *c
  -- ** @param xcb_x_print_print_get_one_attributes_cookie_t   cookie
  -- ** @param xcb_generic_error_t                           **e
  -- ** @returns xcb_x_print_print_get_one_attributes_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_get_one_attributes_reply
     (arg1 : System.Address;
      arg2 : xcb_x_print_print_get_one_attributes_cookie_t;
      arg3 : System.Address) return access xcb_x_print_print_get_one_attributes_reply_t;  -- /usr/include/xcb/xprint.h:2448
   pragma Import (C, xcb_x_print_print_get_one_attributes_reply, "xcb_x_print_print_get_one_attributes_reply");

  --*<  
  --*<  
  --*<  
   function xcb_x_print_print_set_attributes_sizeof (arg1 : System.Address; arg2 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/xprint.h:2453
   pragma Import (C, xcb_x_print_print_set_attributes_sizeof, "xcb_x_print_print_set_attributes_sizeof");

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
  -- ** xcb_void_cookie_t xcb_x_print_print_set_attributes_checked
  -- ** 
  -- ** @param xcb_connection_t            *c
  -- ** @param xcb_x_print_pcontext_t       context
  -- ** @param uint32_t                     stringLen
  -- ** @param uint8_t                      pool
  -- ** @param uint8_t                      rule
  -- ** @param uint32_t                     attributes_len
  -- ** @param const xcb_x_print_string8_t *attributes
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_set_attributes_checked
     (arg1 : System.Address;
      arg2 : xcb_x_print_pcontext_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint8_t;
      arg6 : stdint_h.uint32_t;
      arg7 : access xcb_x_print_string8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xprint.h:2484
   pragma Import (C, xcb_x_print_print_set_attributes_checked, "xcb_x_print_print_set_attributes_checked");

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
  -- ** xcb_void_cookie_t xcb_x_print_print_set_attributes
  -- ** 
  -- ** @param xcb_connection_t            *c
  -- ** @param xcb_x_print_pcontext_t       context
  -- ** @param uint32_t                     stringLen
  -- ** @param uint8_t                      pool
  -- ** @param uint8_t                      rule
  -- ** @param uint32_t                     attributes_len
  -- ** @param const xcb_x_print_string8_t *attributes
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_set_attributes
     (arg1 : System.Address;
      arg2 : xcb_x_print_pcontext_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint8_t;
      arg6 : stdint_h.uint32_t;
      arg7 : access xcb_x_print_string8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xprint.h:2517
   pragma Import (C, xcb_x_print_print_set_attributes, "xcb_x_print_print_set_attributes");

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
  -- ** xcb_x_print_print_get_page_dimensions_cookie_t xcb_x_print_print_get_page_dimensions
  -- ** 
  -- ** @param xcb_connection_t       *c
  -- ** @param xcb_x_print_pcontext_t  context
  -- ** @returns xcb_x_print_print_get_page_dimensions_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_get_page_dimensions (arg1 : System.Address; arg2 : xcb_x_print_pcontext_t) return xcb_x_print_print_get_page_dimensions_cookie_t;  -- /usr/include/xcb/xprint.h:2545
   pragma Import (C, xcb_x_print_print_get_page_dimensions, "xcb_x_print_print_get_page_dimensions");

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
  -- ** xcb_x_print_print_get_page_dimensions_cookie_t xcb_x_print_print_get_page_dimensions_unchecked
  -- ** 
  -- ** @param xcb_connection_t       *c
  -- ** @param xcb_x_print_pcontext_t  context
  -- ** @returns xcb_x_print_print_get_page_dimensions_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_get_page_dimensions_unchecked (arg1 : System.Address; arg2 : xcb_x_print_pcontext_t) return xcb_x_print_print_get_page_dimensions_cookie_t;  -- /usr/include/xcb/xprint.h:2571
   pragma Import (C, xcb_x_print_print_get_page_dimensions_unchecked, "xcb_x_print_print_get_page_dimensions_unchecked");

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
  -- * xcb_x_print_print_get_page_dimensions_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_x_print_print_get_page_dimensions_reply_t * xcb_x_print_print_get_page_dimensions_reply
  -- ** 
  -- ** @param xcb_connection_t                                *c
  -- ** @param xcb_x_print_print_get_page_dimensions_cookie_t   cookie
  -- ** @param xcb_generic_error_t                            **e
  -- ** @returns xcb_x_print_print_get_page_dimensions_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_get_page_dimensions_reply
     (arg1 : System.Address;
      arg2 : xcb_x_print_print_get_page_dimensions_cookie_t;
      arg3 : System.Address) return access xcb_x_print_print_get_page_dimensions_reply_t;  -- /usr/include/xcb/xprint.h:2601
   pragma Import (C, xcb_x_print_print_get_page_dimensions_reply, "xcb_x_print_print_get_page_dimensions_reply");

  --*<  
  --*<  
  --*<  
   function xcb_x_print_print_query_screens_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xprint.h:2606
   pragma Import (C, xcb_x_print_print_query_screens_sizeof, "xcb_x_print_print_query_screens_sizeof");

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
  -- ** xcb_x_print_print_query_screens_cookie_t xcb_x_print_print_query_screens
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_x_print_print_query_screens_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_query_screens (arg1 : System.Address) return xcb_x_print_print_query_screens_cookie_t;  -- /usr/include/xcb/xprint.h:2627
   pragma Import (C, xcb_x_print_print_query_screens, "xcb_x_print_print_query_screens");

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
  -- ** xcb_x_print_print_query_screens_cookie_t xcb_x_print_print_query_screens_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_x_print_print_query_screens_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_query_screens_unchecked (arg1 : System.Address) return xcb_x_print_print_query_screens_cookie_t;  -- /usr/include/xcb/xprint.h:2651
   pragma Import (C, xcb_x_print_print_query_screens_unchecked, "xcb_x_print_print_query_screens_unchecked");

  --****************************************************************************
  -- **
  -- ** xcb_window_t * xcb_x_print_print_query_screens_roots
  -- ** 
  -- ** @param const xcb_x_print_print_query_screens_reply_t *R
  -- ** @returns xcb_window_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_query_screens_roots (arg1 : System.Address) return access xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xprint.h:2664
   pragma Import (C, xcb_x_print_print_query_screens_roots, "xcb_x_print_print_query_screens_roots");

  --****************************************************************************
  -- **
  -- ** int xcb_x_print_print_query_screens_roots_length
  -- ** 
  -- ** @param const xcb_x_print_print_query_screens_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_query_screens_roots_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xprint.h:2677
   pragma Import (C, xcb_x_print_print_query_screens_roots_length, "xcb_x_print_print_query_screens_roots_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_x_print_print_query_screens_roots_end
  -- ** 
  -- ** @param const xcb_x_print_print_query_screens_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_query_screens_roots_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xprint.h:2690
   pragma Import (C, xcb_x_print_print_query_screens_roots_end, "xcb_x_print_print_query_screens_roots_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_x_print_print_query_screens_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_x_print_print_query_screens_reply_t * xcb_x_print_print_query_screens_reply
  -- ** 
  -- ** @param xcb_connection_t                          *c
  -- ** @param xcb_x_print_print_query_screens_cookie_t   cookie
  -- ** @param xcb_generic_error_t                      **e
  -- ** @returns xcb_x_print_print_query_screens_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_query_screens_reply
     (arg1 : System.Address;
      arg2 : xcb_x_print_print_query_screens_cookie_t;
      arg3 : System.Address) return access xcb_x_print_print_query_screens_reply_t;  -- /usr/include/xcb/xprint.h:2719
   pragma Import (C, xcb_x_print_print_query_screens_reply, "xcb_x_print_print_query_screens_reply");

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
  -- ** xcb_x_print_print_set_image_resolution_cookie_t xcb_x_print_print_set_image_resolution
  -- ** 
  -- ** @param xcb_connection_t       *c
  -- ** @param xcb_x_print_pcontext_t  context
  -- ** @param uint16_t                image_resolution
  -- ** @returns xcb_x_print_print_set_image_resolution_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_set_image_resolution
     (arg1 : System.Address;
      arg2 : xcb_x_print_pcontext_t;
      arg3 : stdint_h.uint16_t) return xcb_x_print_print_set_image_resolution_cookie_t;  -- /usr/include/xcb/xprint.h:2744
   pragma Import (C, xcb_x_print_print_set_image_resolution, "xcb_x_print_print_set_image_resolution");

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
  -- ** xcb_x_print_print_set_image_resolution_cookie_t xcb_x_print_print_set_image_resolution_unchecked
  -- ** 
  -- ** @param xcb_connection_t       *c
  -- ** @param xcb_x_print_pcontext_t  context
  -- ** @param uint16_t                image_resolution
  -- ** @returns xcb_x_print_print_set_image_resolution_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_set_image_resolution_unchecked
     (arg1 : System.Address;
      arg2 : xcb_x_print_pcontext_t;
      arg3 : stdint_h.uint16_t) return xcb_x_print_print_set_image_resolution_cookie_t;  -- /usr/include/xcb/xprint.h:2772
   pragma Import (C, xcb_x_print_print_set_image_resolution_unchecked, "xcb_x_print_print_set_image_resolution_unchecked");

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
  -- * xcb_x_print_print_set_image_resolution_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_x_print_print_set_image_resolution_reply_t * xcb_x_print_print_set_image_resolution_reply
  -- ** 
  -- ** @param xcb_connection_t                                 *c
  -- ** @param xcb_x_print_print_set_image_resolution_cookie_t   cookie
  -- ** @param xcb_generic_error_t                             **e
  -- ** @returns xcb_x_print_print_set_image_resolution_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_set_image_resolution_reply
     (arg1 : System.Address;
      arg2 : xcb_x_print_print_set_image_resolution_cookie_t;
      arg3 : System.Address) return access xcb_x_print_print_set_image_resolution_reply_t;  -- /usr/include/xcb/xprint.h:2803
   pragma Import (C, xcb_x_print_print_set_image_resolution_reply, "xcb_x_print_print_set_image_resolution_reply");

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
  -- ** xcb_x_print_print_get_image_resolution_cookie_t xcb_x_print_print_get_image_resolution
  -- ** 
  -- ** @param xcb_connection_t       *c
  -- ** @param xcb_x_print_pcontext_t  context
  -- ** @returns xcb_x_print_print_get_image_resolution_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_get_image_resolution (arg1 : System.Address; arg2 : xcb_x_print_pcontext_t) return xcb_x_print_print_get_image_resolution_cookie_t;  -- /usr/include/xcb/xprint.h:2827
   pragma Import (C, xcb_x_print_print_get_image_resolution, "xcb_x_print_print_get_image_resolution");

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
  -- ** xcb_x_print_print_get_image_resolution_cookie_t xcb_x_print_print_get_image_resolution_unchecked
  -- ** 
  -- ** @param xcb_connection_t       *c
  -- ** @param xcb_x_print_pcontext_t  context
  -- ** @returns xcb_x_print_print_get_image_resolution_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_get_image_resolution_unchecked (arg1 : System.Address; arg2 : xcb_x_print_pcontext_t) return xcb_x_print_print_get_image_resolution_cookie_t;  -- /usr/include/xcb/xprint.h:2853
   pragma Import (C, xcb_x_print_print_get_image_resolution_unchecked, "xcb_x_print_print_get_image_resolution_unchecked");

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
  -- * xcb_x_print_print_get_image_resolution_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_x_print_print_get_image_resolution_reply_t * xcb_x_print_print_get_image_resolution_reply
  -- ** 
  -- ** @param xcb_connection_t                                 *c
  -- ** @param xcb_x_print_print_get_image_resolution_cookie_t   cookie
  -- ** @param xcb_generic_error_t                             **e
  -- ** @returns xcb_x_print_print_get_image_resolution_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_x_print_print_get_image_resolution_reply
     (arg1 : System.Address;
      arg2 : xcb_x_print_print_get_image_resolution_cookie_t;
      arg3 : System.Address) return access xcb_x_print_print_get_image_resolution_reply_t;  -- /usr/include/xcb/xprint.h:2883
   pragma Import (C, xcb_x_print_print_get_image_resolution_reply, "xcb_x_print_print_get_image_resolution_reply");

  --*<  
  --*<  
  --*
  -- * @}
  --  

end xcb_xprint_h;
