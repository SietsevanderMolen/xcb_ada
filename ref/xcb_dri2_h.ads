with Interfaces.C; use Interfaces.C;
with xcb_xcb_h;
with stdint_h;
with xcb_xproto_h;
with System;
with Interfaces.C.Strings;

package xcb_dri2_h is

   --  unsupported macro: XCB_DRI2_MAJOR_VERSION 1
   --  unsupported macro: XCB_DRI2_MINOR_VERSION 4
   --  unsupported macro: XCB_DRI2_QUERY_VERSION 0
   --  unsupported macro: XCB_DRI2_CONNECT 1
   --  unsupported macro: XCB_DRI2_AUTHENTICATE 2
   --  unsupported macro: XCB_DRI2_CREATE_DRAWABLE 3
   --  unsupported macro: XCB_DRI2_DESTROY_DRAWABLE 4
   --  unsupported macro: XCB_DRI2_GET_BUFFERS 5
   --  unsupported macro: XCB_DRI2_COPY_REGION 6
   --  unsupported macro: XCB_DRI2_GET_BUFFERS_WITH_FORMAT 7
   --  unsupported macro: XCB_DRI2_SWAP_BUFFERS 8
   --  unsupported macro: XCB_DRI2_GET_MSC 9
   --  unsupported macro: XCB_DRI2_WAIT_MSC 10
   --  unsupported macro: XCB_DRI2_WAIT_SBC 11
   --  unsupported macro: XCB_DRI2_SWAP_INTERVAL 12
   --  unsupported macro: XCB_DRI2_GET_PARAM 13
   --  unsupported macro: XCB_DRI2_BUFFER_SWAP_COMPLETE 0
   --  unsupported macro: XCB_DRI2_INVALIDATE_BUFFERS 1
  -- * This file generated automatically from dri2.xml by c_client.py.
  -- * Edit at your peril.
  --  

  --*
  -- * @defgroup XCB_DRI2_API XCB DRI2 API
  -- * @brief DRI2 XCB Protocol Implementation.
  -- * @{
  -- * 

   xcb_dri2_id : aliased xcb_xcb_h.xcb_extension_t;  -- /usr/include/xcb/dri2.h:25
   pragma Import (C, xcb_dri2_id, "xcb_dri2_id");

   type xcb_dri2_attachment_t is 
     (XCB_DRI2_ATTACHMENT_BUFFER_FRONT_LEFT,
      XCB_DRI2_ATTACHMENT_BUFFER_BACK_LEFT,
      XCB_DRI2_ATTACHMENT_BUFFER_FRONT_RIGHT,
      XCB_DRI2_ATTACHMENT_BUFFER_BACK_RIGHT,
      XCB_DRI2_ATTACHMENT_BUFFER_DEPTH,
      XCB_DRI2_ATTACHMENT_BUFFER_STENCIL,
      XCB_DRI2_ATTACHMENT_BUFFER_ACCUM,
      XCB_DRI2_ATTACHMENT_BUFFER_FAKE_FRONT_LEFT,
      XCB_DRI2_ATTACHMENT_BUFFER_FAKE_FRONT_RIGHT,
      XCB_DRI2_ATTACHMENT_BUFFER_DEPTH_STENCIL,
      XCB_DRI2_ATTACHMENT_BUFFER_HIZ);
   pragma Convention (C, xcb_dri2_attachment_t);  -- /usr/include/xcb/dri2.h:27

   type xcb_dri2_driver_type_t is 
     (XCB_DRI2_DRIVER_TYPE_DRI,
      XCB_DRI2_DRIVER_TYPE_VDPAU);
   pragma Convention (C, xcb_dri2_driver_type_t);  -- /usr/include/xcb/dri2.h:41

   subtype xcb_dri2_event_type_t is unsigned;
   XCB_DRI2_EVENT_TYPE_EXCHANGE_COMPLETE : constant xcb_dri2_event_type_t := 1;
   XCB_DRI2_EVENT_TYPE_BLIT_COMPLETE : constant xcb_dri2_event_type_t := 2;
   XCB_DRI2_EVENT_TYPE_FLIP_COMPLETE : constant xcb_dri2_event_type_t := 3;  -- /usr/include/xcb/dri2.h:46

  --*
  -- * @brief xcb_dri2_dri2_buffer_t
  -- * 

  --*<   
   type xcb_dri2_dri2_buffer_t is record
      attachment : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:56
      name : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:57
      pitch : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:58
      cpp : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:59
      flags : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:60
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dri2_dri2_buffer_t);  -- /usr/include/xcb/dri2.h:55

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_dri2_dri2_buffer_iterator_t
  -- * 

  --*<   
   type xcb_dri2_dri2_buffer_iterator_t is record
      data : access xcb_dri2_dri2_buffer_t;  -- /usr/include/xcb/dri2.h:67
      c_rem : aliased int;  -- /usr/include/xcb/dri2.h:68
      index : aliased int;  -- /usr/include/xcb/dri2.h:69
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dri2_dri2_buffer_iterator_t);  -- /usr/include/xcb/dri2.h:66

  --*<   
  --*<   
  --*
  -- * @brief xcb_dri2_attach_format_t
  -- * 

  --*<   
   type xcb_dri2_attach_format_t is record
      attachment : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:76
      format : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:77
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dri2_attach_format_t);  -- /usr/include/xcb/dri2.h:75

  --*<   
  --*
  -- * @brief xcb_dri2_attach_format_iterator_t
  -- * 

  --*<   
   type xcb_dri2_attach_format_iterator_t is record
      data : access xcb_dri2_attach_format_t;  -- /usr/include/xcb/dri2.h:84
      c_rem : aliased int;  -- /usr/include/xcb/dri2.h:85
      index : aliased int;  -- /usr/include/xcb/dri2.h:86
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dri2_attach_format_iterator_t);  -- /usr/include/xcb/dri2.h:83

  --*<   
  --*<   
  --*
  -- * @brief xcb_dri2_query_version_cookie_t
  -- * 

  --*<   
   type xcb_dri2_query_version_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/dri2.h:93
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dri2_query_version_cookie_t);  -- /usr/include/xcb/dri2.h:92

  --* Opcode for xcb_dri2_query_version.  
  --*
  -- * @brief xcb_dri2_query_version_request_t
  -- * 

  --*<   
   type xcb_dri2_query_version_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:103
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:104
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dri2.h:105
      major_version : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:106
      minor_version : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:107
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dri2_query_version_request_t);  -- /usr/include/xcb/dri2.h:102

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_dri2_query_version_reply_t
  -- * 

  --*<   
   type xcb_dri2_query_version_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:114
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:115
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dri2.h:116
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:117
      major_version : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:118
      minor_version : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:119
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dri2_query_version_reply_t);  -- /usr/include/xcb/dri2.h:113

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_dri2_connect_cookie_t
  -- * 

  --*<   
   type xcb_dri2_connect_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/dri2.h:126
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dri2_connect_cookie_t);  -- /usr/include/xcb/dri2.h:125

  --* Opcode for xcb_dri2_connect.  
  --*
  -- * @brief xcb_dri2_connect_request_t
  -- * 

  --*<   
   type xcb_dri2_connect_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:136
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:137
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dri2.h:138
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/dri2.h:139
      driver_type : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:140
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dri2_connect_request_t);  -- /usr/include/xcb/dri2.h:135

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_dri2_connect_reply_t
  -- * 

  --*<   
   type anon3983_anon3985_array is array (0 .. 15) of aliased stdint_h.uint8_t;
   type xcb_dri2_connect_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:147
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:148
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dri2.h:149
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:150
      driver_name_length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:151
      device_name_length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:152
      pad1 : aliased anon3983_anon3985_array;  -- /usr/include/xcb/dri2.h:153
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dri2_connect_reply_t);  -- /usr/include/xcb/dri2.h:146

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_dri2_authenticate_cookie_t
  -- * 

  --*<   
   type xcb_dri2_authenticate_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/dri2.h:160
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dri2_authenticate_cookie_t);  -- /usr/include/xcb/dri2.h:159

  --* Opcode for xcb_dri2_authenticate.  
  --*
  -- * @brief xcb_dri2_authenticate_request_t
  -- * 

  --*<   
   type xcb_dri2_authenticate_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:170
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:171
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dri2.h:172
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/dri2.h:173
      magic : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:174
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dri2_authenticate_request_t);  -- /usr/include/xcb/dri2.h:169

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_dri2_authenticate_reply_t
  -- * 

  --*<   
   type xcb_dri2_authenticate_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:181
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:182
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dri2.h:183
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:184
      authenticated : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:185
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dri2_authenticate_reply_t);  -- /usr/include/xcb/dri2.h:180

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_dri2_create_drawable.  
  --*
  -- * @brief xcb_dri2_create_drawable_request_t
  -- * 

  --*<   
   type xcb_dri2_create_drawable_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:195
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:196
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dri2.h:197
      drawable : aliased xcb_xproto_h.xcb_drawable_t;  -- /usr/include/xcb/dri2.h:198
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dri2_create_drawable_request_t);  -- /usr/include/xcb/dri2.h:194

  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_dri2_destroy_drawable.  
  --*
  -- * @brief xcb_dri2_destroy_drawable_request_t
  -- * 

  --*<   
   type xcb_dri2_destroy_drawable_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:208
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:209
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dri2.h:210
      drawable : aliased xcb_xproto_h.xcb_drawable_t;  -- /usr/include/xcb/dri2.h:211
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dri2_destroy_drawable_request_t);  -- /usr/include/xcb/dri2.h:207

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_dri2_get_buffers_cookie_t
  -- * 

  --*<   
   type xcb_dri2_get_buffers_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/dri2.h:218
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dri2_get_buffers_cookie_t);  -- /usr/include/xcb/dri2.h:217

  --* Opcode for xcb_dri2_get_buffers.  
  --*
  -- * @brief xcb_dri2_get_buffers_request_t
  -- * 

  --*<   
   type xcb_dri2_get_buffers_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:228
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:229
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dri2.h:230
      drawable : aliased xcb_xproto_h.xcb_drawable_t;  -- /usr/include/xcb/dri2.h:231
      count : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:232
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dri2_get_buffers_request_t);  -- /usr/include/xcb/dri2.h:227

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_dri2_get_buffers_reply_t
  -- * 

  --*<   
   type anon4002_anon2079_array is array (0 .. 11) of aliased stdint_h.uint8_t;
   type xcb_dri2_get_buffers_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:239
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:240
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dri2.h:241
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:242
      width : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:243
      height : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:244
      count : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:245
      pad1 : aliased anon4002_anon2079_array;  -- /usr/include/xcb/dri2.h:246
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dri2_get_buffers_reply_t);  -- /usr/include/xcb/dri2.h:238

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_dri2_copy_region_cookie_t
  -- * 

  --*<   
   type xcb_dri2_copy_region_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/dri2.h:253
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dri2_copy_region_cookie_t);  -- /usr/include/xcb/dri2.h:252

  --* Opcode for xcb_dri2_copy_region.  
  --*
  -- * @brief xcb_dri2_copy_region_request_t
  -- * 

  --*<   
   type xcb_dri2_copy_region_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:263
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:264
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dri2.h:265
      drawable : aliased xcb_xproto_h.xcb_drawable_t;  -- /usr/include/xcb/dri2.h:266
      region : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:267
      dest : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:268
      src : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:269
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dri2_copy_region_request_t);  -- /usr/include/xcb/dri2.h:262

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_dri2_copy_region_reply_t
  -- * 

  --*<   
   type xcb_dri2_copy_region_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:276
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:277
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dri2.h:278
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:279
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dri2_copy_region_reply_t);  -- /usr/include/xcb/dri2.h:275

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_dri2_get_buffers_with_format_cookie_t
  -- * 

  --*<   
   type xcb_dri2_get_buffers_with_format_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/dri2.h:286
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dri2_get_buffers_with_format_cookie_t);  -- /usr/include/xcb/dri2.h:285

  --* Opcode for xcb_dri2_get_buffers_with_format.  
  --*
  -- * @brief xcb_dri2_get_buffers_with_format_request_t
  -- * 

  --*<   
   type xcb_dri2_get_buffers_with_format_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:296
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:297
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dri2.h:298
      drawable : aliased xcb_xproto_h.xcb_drawable_t;  -- /usr/include/xcb/dri2.h:299
      count : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:300
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dri2_get_buffers_with_format_request_t);  -- /usr/include/xcb/dri2.h:295

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_dri2_get_buffers_with_format_reply_t
  -- * 

  --*<   
   type anon4016_anon2079_array is array (0 .. 11) of aliased stdint_h.uint8_t;
   type xcb_dri2_get_buffers_with_format_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:307
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:308
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dri2.h:309
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:310
      width : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:311
      height : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:312
      count : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:313
      pad1 : aliased anon4016_anon2079_array;  -- /usr/include/xcb/dri2.h:314
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dri2_get_buffers_with_format_reply_t);  -- /usr/include/xcb/dri2.h:306

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_dri2_swap_buffers_cookie_t
  -- * 

  --*<   
   type xcb_dri2_swap_buffers_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/dri2.h:321
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dri2_swap_buffers_cookie_t);  -- /usr/include/xcb/dri2.h:320

  --* Opcode for xcb_dri2_swap_buffers.  
  --*
  -- * @brief xcb_dri2_swap_buffers_request_t
  -- * 

  --*<   
   type xcb_dri2_swap_buffers_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:331
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:332
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dri2.h:333
      drawable : aliased xcb_xproto_h.xcb_drawable_t;  -- /usr/include/xcb/dri2.h:334
      target_msc_hi : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:335
      target_msc_lo : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:336
      divisor_hi : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:337
      divisor_lo : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:338
      remainder_hi : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:339
      remainder_lo : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:340
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dri2_swap_buffers_request_t);  -- /usr/include/xcb/dri2.h:330

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
  -- * @brief xcb_dri2_swap_buffers_reply_t
  -- * 

  --*<   
   type xcb_dri2_swap_buffers_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:347
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:348
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dri2.h:349
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:350
      swap_hi : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:351
      swap_lo : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:352
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dri2_swap_buffers_reply_t);  -- /usr/include/xcb/dri2.h:346

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_dri2_get_msc_cookie_t
  -- * 

  --*<   
   type xcb_dri2_get_msc_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/dri2.h:359
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dri2_get_msc_cookie_t);  -- /usr/include/xcb/dri2.h:358

  --* Opcode for xcb_dri2_get_msc.  
  --*
  -- * @brief xcb_dri2_get_msc_request_t
  -- * 

  --*<   
   type xcb_dri2_get_msc_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:369
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:370
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dri2.h:371
      drawable : aliased xcb_xproto_h.xcb_drawable_t;  -- /usr/include/xcb/dri2.h:372
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dri2_get_msc_request_t);  -- /usr/include/xcb/dri2.h:368

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_dri2_get_msc_reply_t
  -- * 

  --*<   
   type xcb_dri2_get_msc_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:379
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:380
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dri2.h:381
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:382
      ust_hi : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:383
      ust_lo : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:384
      msc_hi : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:385
      msc_lo : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:386
      sbc_hi : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:387
      sbc_lo : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:388
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dri2_get_msc_reply_t);  -- /usr/include/xcb/dri2.h:378

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
  -- * @brief xcb_dri2_wait_msc_cookie_t
  -- * 

  --*<   
   type xcb_dri2_wait_msc_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/dri2.h:395
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dri2_wait_msc_cookie_t);  -- /usr/include/xcb/dri2.h:394

  --* Opcode for xcb_dri2_wait_msc.  
  --*
  -- * @brief xcb_dri2_wait_msc_request_t
  -- * 

  --*<   
   type xcb_dri2_wait_msc_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:405
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:406
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dri2.h:407
      drawable : aliased xcb_xproto_h.xcb_drawable_t;  -- /usr/include/xcb/dri2.h:408
      target_msc_hi : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:409
      target_msc_lo : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:410
      divisor_hi : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:411
      divisor_lo : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:412
      remainder_hi : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:413
      remainder_lo : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:414
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dri2_wait_msc_request_t);  -- /usr/include/xcb/dri2.h:404

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
  -- * @brief xcb_dri2_wait_msc_reply_t
  -- * 

  --*<   
   type xcb_dri2_wait_msc_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:421
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:422
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dri2.h:423
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:424
      ust_hi : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:425
      ust_lo : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:426
      msc_hi : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:427
      msc_lo : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:428
      sbc_hi : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:429
      sbc_lo : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:430
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dri2_wait_msc_reply_t);  -- /usr/include/xcb/dri2.h:420

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
  -- * @brief xcb_dri2_wait_sbc_cookie_t
  -- * 

  --*<   
   type xcb_dri2_wait_sbc_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/dri2.h:437
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dri2_wait_sbc_cookie_t);  -- /usr/include/xcb/dri2.h:436

  --* Opcode for xcb_dri2_wait_sbc.  
  --*
  -- * @brief xcb_dri2_wait_sbc_request_t
  -- * 

  --*<   
   type xcb_dri2_wait_sbc_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:447
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:448
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dri2.h:449
      drawable : aliased xcb_xproto_h.xcb_drawable_t;  -- /usr/include/xcb/dri2.h:450
      target_sbc_hi : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:451
      target_sbc_lo : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:452
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dri2_wait_sbc_request_t);  -- /usr/include/xcb/dri2.h:446

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_dri2_wait_sbc_reply_t
  -- * 

  --*<   
   type xcb_dri2_wait_sbc_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:459
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:460
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dri2.h:461
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:462
      ust_hi : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:463
      ust_lo : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:464
      msc_hi : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:465
      msc_lo : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:466
      sbc_hi : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:467
      sbc_lo : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:468
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dri2_wait_sbc_reply_t);  -- /usr/include/xcb/dri2.h:458

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_dri2_swap_interval.  
  --*
  -- * @brief xcb_dri2_swap_interval_request_t
  -- * 

  --*<   
   type xcb_dri2_swap_interval_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:478
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:479
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dri2.h:480
      drawable : aliased xcb_xproto_h.xcb_drawable_t;  -- /usr/include/xcb/dri2.h:481
      interval : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:482
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dri2_swap_interval_request_t);  -- /usr/include/xcb/dri2.h:477

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_dri2_get_param_cookie_t
  -- * 

  --*<   
   type xcb_dri2_get_param_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/dri2.h:489
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dri2_get_param_cookie_t);  -- /usr/include/xcb/dri2.h:488

  --* Opcode for xcb_dri2_get_param.  
  --*
  -- * @brief xcb_dri2_get_param_request_t
  -- * 

  --*<   
   type xcb_dri2_get_param_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:499
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:500
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dri2.h:501
      drawable : aliased xcb_xproto_h.xcb_drawable_t;  -- /usr/include/xcb/dri2.h:502
      param : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:503
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dri2_get_param_request_t);  -- /usr/include/xcb/dri2.h:498

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_dri2_get_param_reply_t
  -- * 

  --*<   
   type xcb_dri2_get_param_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:510
      is_param_recognized : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:511
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dri2.h:512
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:513
      value_hi : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:514
      value_lo : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:515
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dri2_get_param_reply_t);  -- /usr/include/xcb/dri2.h:509

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_dri2_buffer_swap_complete.  
  --*
  -- * @brief xcb_dri2_buffer_swap_complete_event_t
  -- * 

  --*<   
   type anon4052_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_dri2_buffer_swap_complete_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:525
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:526
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dri2.h:527
      event_type : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dri2.h:528
      pad1 : aliased anon4052_anon1795_array;  -- /usr/include/xcb/dri2.h:529
      drawable : aliased xcb_xproto_h.xcb_drawable_t;  -- /usr/include/xcb/dri2.h:530
      ust_hi : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:531
      ust_lo : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:532
      msc_hi : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:533
      msc_lo : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:534
      sbc : aliased stdint_h.uint32_t;  -- /usr/include/xcb/dri2.h:535
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dri2_buffer_swap_complete_event_t);  -- /usr/include/xcb/dri2.h:524

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
  --* Opcode for xcb_dri2_invalidate_buffers.  
  --*
  -- * @brief xcb_dri2_invalidate_buffers_event_t
  -- * 

  --*<   
   type xcb_dri2_invalidate_buffers_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:545
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/dri2.h:546
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/dri2.h:547
      drawable : aliased xcb_xproto_h.xcb_drawable_t;  -- /usr/include/xcb/dri2.h:548
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_dri2_invalidate_buffers_event_t);  -- /usr/include/xcb/dri2.h:544

  --*<   
  --*<   
  --*<   
  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_dri2_dri2_buffer_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_dri2_dri2_buffer_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_dri2_dri2_buffer_next
  -- ** 
  -- ** @param xcb_dri2_dri2_buffer_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_dri2_dri2_buffer_next (arg1 : access xcb_dri2_dri2_buffer_iterator_t);  -- /usr/include/xcb/dri2.h:570
   pragma Import (C, xcb_dri2_dri2_buffer_next, "xcb_dri2_dri2_buffer_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_dri2_dri2_buffer_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_dri2_dri2_buffer_end
  -- ** 
  -- ** @param xcb_dri2_dri2_buffer_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_dri2_buffer_end (arg1 : xcb_dri2_dri2_buffer_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/dri2.h:592
   pragma Import (C, xcb_dri2_dri2_buffer_end, "xcb_dri2_dri2_buffer_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_dri2_attach_format_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_dri2_attach_format_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_dri2_attach_format_next
  -- ** 
  -- ** @param xcb_dri2_attach_format_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_dri2_attach_format_next (arg1 : access xcb_dri2_attach_format_iterator_t);  -- /usr/include/xcb/dri2.h:613
   pragma Import (C, xcb_dri2_attach_format_next, "xcb_dri2_attach_format_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_dri2_attach_format_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_dri2_attach_format_end
  -- ** 
  -- ** @param xcb_dri2_attach_format_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_attach_format_end (arg1 : xcb_dri2_attach_format_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/dri2.h:635
   pragma Import (C, xcb_dri2_attach_format_end, "xcb_dri2_attach_format_end");

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
  -- ** xcb_dri2_query_version_cookie_t xcb_dri2_query_version
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          major_version
  -- ** @param uint32_t          minor_version
  -- ** @returns xcb_dri2_query_version_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_query_version
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : stdint_h.uint32_t) return xcb_dri2_query_version_cookie_t;  -- /usr/include/xcb/dri2.h:658
   pragma Import (C, xcb_dri2_query_version, "xcb_dri2_query_version");

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
  -- ** xcb_dri2_query_version_cookie_t xcb_dri2_query_version_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          major_version
  -- ** @param uint32_t          minor_version
  -- ** @returns xcb_dri2_query_version_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_query_version_unchecked
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : stdint_h.uint32_t) return xcb_dri2_query_version_cookie_t;  -- /usr/include/xcb/dri2.h:686
   pragma Import (C, xcb_dri2_query_version_unchecked, "xcb_dri2_query_version_unchecked");

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
  -- * xcb_dri2_query_version_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_dri2_query_version_reply_t * xcb_dri2_query_version_reply
  -- ** 
  -- ** @param xcb_connection_t                 *c
  -- ** @param xcb_dri2_query_version_cookie_t   cookie
  -- ** @param xcb_generic_error_t             **e
  -- ** @returns xcb_dri2_query_version_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_query_version_reply
     (arg1 : System.Address;
      arg2 : xcb_dri2_query_version_cookie_t;
      arg3 : System.Address) return access xcb_dri2_query_version_reply_t;  -- /usr/include/xcb/dri2.h:717
   pragma Import (C, xcb_dri2_query_version_reply, "xcb_dri2_query_version_reply");

  --*<  
  --*<  
  --*<  
   function xcb_dri2_connect_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/dri2.h:722
   pragma Import (C, xcb_dri2_connect_sizeof, "xcb_dri2_connect_sizeof");

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
  -- ** xcb_dri2_connect_cookie_t xcb_dri2_connect
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @param uint32_t          driver_type
  -- ** @returns xcb_dri2_connect_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_connect
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint32_t) return xcb_dri2_connect_cookie_t;  -- /usr/include/xcb/dri2.h:745
   pragma Import (C, xcb_dri2_connect, "xcb_dri2_connect");

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
  -- ** xcb_dri2_connect_cookie_t xcb_dri2_connect_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @param uint32_t          driver_type
  -- ** @returns xcb_dri2_connect_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_connect_unchecked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint32_t) return xcb_dri2_connect_cookie_t;  -- /usr/include/xcb/dri2.h:773
   pragma Import (C, xcb_dri2_connect_unchecked, "xcb_dri2_connect_unchecked");

  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** char * xcb_dri2_connect_driver_name
  -- ** 
  -- ** @param const xcb_dri2_connect_reply_t *R
  -- ** @returns char *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_connect_driver_name (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/dri2.h:788
   pragma Import (C, xcb_dri2_connect_driver_name, "xcb_dri2_connect_driver_name");

  --****************************************************************************
  -- **
  -- ** int xcb_dri2_connect_driver_name_length
  -- ** 
  -- ** @param const xcb_dri2_connect_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_connect_driver_name_length (arg1 : System.Address) return int;  -- /usr/include/xcb/dri2.h:801
   pragma Import (C, xcb_dri2_connect_driver_name_length, "xcb_dri2_connect_driver_name_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_dri2_connect_driver_name_end
  -- ** 
  -- ** @param const xcb_dri2_connect_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_connect_driver_name_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/dri2.h:814
   pragma Import (C, xcb_dri2_connect_driver_name_end, "xcb_dri2_connect_driver_name_end");

  --****************************************************************************
  -- **
  -- ** void * xcb_dri2_connect_alignment_pad
  -- ** 
  -- ** @param const xcb_dri2_connect_reply_t *R
  -- ** @returns void *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_connect_alignment_pad (arg1 : System.Address) return System.Address;  -- /usr/include/xcb/dri2.h:827
   pragma Import (C, xcb_dri2_connect_alignment_pad, "xcb_dri2_connect_alignment_pad");

  --****************************************************************************
  -- **
  -- ** int xcb_dri2_connect_alignment_pad_length
  -- ** 
  -- ** @param const xcb_dri2_connect_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_connect_alignment_pad_length (arg1 : System.Address) return int;  -- /usr/include/xcb/dri2.h:840
   pragma Import (C, xcb_dri2_connect_alignment_pad_length, "xcb_dri2_connect_alignment_pad_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_dri2_connect_alignment_pad_end
  -- ** 
  -- ** @param const xcb_dri2_connect_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_connect_alignment_pad_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/dri2.h:853
   pragma Import (C, xcb_dri2_connect_alignment_pad_end, "xcb_dri2_connect_alignment_pad_end");

  --****************************************************************************
  -- **
  -- ** char * xcb_dri2_connect_device_name
  -- ** 
  -- ** @param const xcb_dri2_connect_reply_t *R
  -- ** @returns char *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_connect_device_name (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/dri2.h:866
   pragma Import (C, xcb_dri2_connect_device_name, "xcb_dri2_connect_device_name");

  --****************************************************************************
  -- **
  -- ** int xcb_dri2_connect_device_name_length
  -- ** 
  -- ** @param const xcb_dri2_connect_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_connect_device_name_length (arg1 : System.Address) return int;  -- /usr/include/xcb/dri2.h:879
   pragma Import (C, xcb_dri2_connect_device_name_length, "xcb_dri2_connect_device_name_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_dri2_connect_device_name_end
  -- ** 
  -- ** @param const xcb_dri2_connect_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_connect_device_name_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/dri2.h:892
   pragma Import (C, xcb_dri2_connect_device_name_end, "xcb_dri2_connect_device_name_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_dri2_connect_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_dri2_connect_reply_t * xcb_dri2_connect_reply
  -- ** 
  -- ** @param xcb_connection_t           *c
  -- ** @param xcb_dri2_connect_cookie_t   cookie
  -- ** @param xcb_generic_error_t       **e
  -- ** @returns xcb_dri2_connect_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_connect_reply
     (arg1 : System.Address;
      arg2 : xcb_dri2_connect_cookie_t;
      arg3 : System.Address) return access xcb_dri2_connect_reply_t;  -- /usr/include/xcb/dri2.h:921
   pragma Import (C, xcb_dri2_connect_reply, "xcb_dri2_connect_reply");

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
  -- ** xcb_dri2_authenticate_cookie_t xcb_dri2_authenticate
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @param uint32_t          magic
  -- ** @returns xcb_dri2_authenticate_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_authenticate
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint32_t) return xcb_dri2_authenticate_cookie_t;  -- /usr/include/xcb/dri2.h:946
   pragma Import (C, xcb_dri2_authenticate, "xcb_dri2_authenticate");

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
  -- ** xcb_dri2_authenticate_cookie_t xcb_dri2_authenticate_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @param uint32_t          magic
  -- ** @returns xcb_dri2_authenticate_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_authenticate_unchecked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint32_t) return xcb_dri2_authenticate_cookie_t;  -- /usr/include/xcb/dri2.h:974
   pragma Import (C, xcb_dri2_authenticate_unchecked, "xcb_dri2_authenticate_unchecked");

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
  -- * xcb_dri2_authenticate_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_dri2_authenticate_reply_t * xcb_dri2_authenticate_reply
  -- ** 
  -- ** @param xcb_connection_t                *c
  -- ** @param xcb_dri2_authenticate_cookie_t   cookie
  -- ** @param xcb_generic_error_t            **e
  -- ** @returns xcb_dri2_authenticate_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_authenticate_reply
     (arg1 : System.Address;
      arg2 : xcb_dri2_authenticate_cookie_t;
      arg3 : System.Address) return access xcb_dri2_authenticate_reply_t;  -- /usr/include/xcb/dri2.h:1005
   pragma Import (C, xcb_dri2_authenticate_reply, "xcb_dri2_authenticate_reply");

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
  -- ** xcb_void_cookie_t xcb_dri2_create_drawable_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    drawable
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_create_drawable_checked (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_drawable_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/dri2.h:1032
   pragma Import (C, xcb_dri2_create_drawable_checked, "xcb_dri2_create_drawable_checked");

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
  -- ** xcb_void_cookie_t xcb_dri2_create_drawable
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    drawable
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_create_drawable (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_drawable_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/dri2.h:1055
   pragma Import (C, xcb_dri2_create_drawable, "xcb_dri2_create_drawable");

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
  -- ** xcb_void_cookie_t xcb_dri2_destroy_drawable_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    drawable
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_destroy_drawable_checked (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_drawable_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/dri2.h:1081
   pragma Import (C, xcb_dri2_destroy_drawable_checked, "xcb_dri2_destroy_drawable_checked");

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
  -- ** xcb_void_cookie_t xcb_dri2_destroy_drawable
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    drawable
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_destroy_drawable (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_drawable_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/dri2.h:1104
   pragma Import (C, xcb_dri2_destroy_drawable, "xcb_dri2_destroy_drawable");

  --*<  
  --*<  
   function xcb_dri2_get_buffers_sizeof (arg1 : System.Address; arg2 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/dri2.h:1108
   pragma Import (C, xcb_dri2_get_buffers_sizeof, "xcb_dri2_get_buffers_sizeof");

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
  -- ** xcb_dri2_get_buffers_cookie_t xcb_dri2_get_buffers
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    drawable
  -- ** @param uint32_t          count
  -- ** @param uint32_t          attachments_len
  -- ** @param const uint32_t   *attachments
  -- ** @returns xcb_dri2_get_buffers_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_get_buffers
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_drawable_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t;
      arg5 : access stdint_h.uint32_t) return xcb_dri2_get_buffers_cookie_t;  -- /usr/include/xcb/dri2.h:1134
   pragma Import (C, xcb_dri2_get_buffers, "xcb_dri2_get_buffers");

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
  -- ** xcb_dri2_get_buffers_cookie_t xcb_dri2_get_buffers_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    drawable
  -- ** @param uint32_t          count
  -- ** @param uint32_t          attachments_len
  -- ** @param const uint32_t   *attachments
  -- ** @returns xcb_dri2_get_buffers_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_get_buffers_unchecked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_drawable_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t;
      arg5 : access stdint_h.uint32_t) return xcb_dri2_get_buffers_cookie_t;  -- /usr/include/xcb/dri2.h:1166
   pragma Import (C, xcb_dri2_get_buffers_unchecked, "xcb_dri2_get_buffers_unchecked");

  --*<  
  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_dri2_dri2_buffer_t * xcb_dri2_get_buffers_buffers
  -- ** 
  -- ** @param const xcb_dri2_get_buffers_reply_t *R
  -- ** @returns xcb_dri2_dri2_buffer_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_get_buffers_buffers (arg1 : System.Address) return access xcb_dri2_dri2_buffer_t;  -- /usr/include/xcb/dri2.h:1183
   pragma Import (C, xcb_dri2_get_buffers_buffers, "xcb_dri2_get_buffers_buffers");

  --****************************************************************************
  -- **
  -- ** int xcb_dri2_get_buffers_buffers_length
  -- ** 
  -- ** @param const xcb_dri2_get_buffers_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_get_buffers_buffers_length (arg1 : System.Address) return int;  -- /usr/include/xcb/dri2.h:1196
   pragma Import (C, xcb_dri2_get_buffers_buffers_length, "xcb_dri2_get_buffers_buffers_length");

  --****************************************************************************
  -- **
  -- ** xcb_dri2_dri2_buffer_iterator_t xcb_dri2_get_buffers_buffers_iterator
  -- ** 
  -- ** @param const xcb_dri2_get_buffers_reply_t *R
  -- ** @returns xcb_dri2_dri2_buffer_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_get_buffers_buffers_iterator (arg1 : System.Address) return xcb_dri2_dri2_buffer_iterator_t;  -- /usr/include/xcb/dri2.h:1209
   pragma Import (C, xcb_dri2_get_buffers_buffers_iterator, "xcb_dri2_get_buffers_buffers_iterator");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_dri2_get_buffers_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_dri2_get_buffers_reply_t * xcb_dri2_get_buffers_reply
  -- ** 
  -- ** @param xcb_connection_t               *c
  -- ** @param xcb_dri2_get_buffers_cookie_t   cookie
  -- ** @param xcb_generic_error_t           **e
  -- ** @returns xcb_dri2_get_buffers_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_get_buffers_reply
     (arg1 : System.Address;
      arg2 : xcb_dri2_get_buffers_cookie_t;
      arg3 : System.Address) return access xcb_dri2_get_buffers_reply_t;  -- /usr/include/xcb/dri2.h:1238
   pragma Import (C, xcb_dri2_get_buffers_reply, "xcb_dri2_get_buffers_reply");

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
  -- ** xcb_dri2_copy_region_cookie_t xcb_dri2_copy_region
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    drawable
  -- ** @param uint32_t          region
  -- ** @param uint32_t          dest
  -- ** @param uint32_t          src
  -- ** @returns xcb_dri2_copy_region_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_copy_region
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_drawable_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t) return xcb_dri2_copy_region_cookie_t;  -- /usr/include/xcb/dri2.h:1265
   pragma Import (C, xcb_dri2_copy_region, "xcb_dri2_copy_region");

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
  -- ** xcb_dri2_copy_region_cookie_t xcb_dri2_copy_region_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    drawable
  -- ** @param uint32_t          region
  -- ** @param uint32_t          dest
  -- ** @param uint32_t          src
  -- ** @returns xcb_dri2_copy_region_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_copy_region_unchecked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_drawable_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t) return xcb_dri2_copy_region_cookie_t;  -- /usr/include/xcb/dri2.h:1297
   pragma Import (C, xcb_dri2_copy_region_unchecked, "xcb_dri2_copy_region_unchecked");

  --*<  
  --*<  
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
  -- * xcb_dri2_copy_region_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_dri2_copy_region_reply_t * xcb_dri2_copy_region_reply
  -- ** 
  -- ** @param xcb_connection_t               *c
  -- ** @param xcb_dri2_copy_region_cookie_t   cookie
  -- ** @param xcb_generic_error_t           **e
  -- ** @returns xcb_dri2_copy_region_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_copy_region_reply
     (arg1 : System.Address;
      arg2 : xcb_dri2_copy_region_cookie_t;
      arg3 : System.Address) return access xcb_dri2_copy_region_reply_t;  -- /usr/include/xcb/dri2.h:1330
   pragma Import (C, xcb_dri2_copy_region_reply, "xcb_dri2_copy_region_reply");

  --*<  
  --*<  
  --*<  
   function xcb_dri2_get_buffers_with_format_sizeof (arg1 : System.Address; arg2 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/dri2.h:1335
   pragma Import (C, xcb_dri2_get_buffers_with_format_sizeof, "xcb_dri2_get_buffers_with_format_sizeof");

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
  -- ** xcb_dri2_get_buffers_with_format_cookie_t xcb_dri2_get_buffers_with_format
  -- ** 
  -- ** @param xcb_connection_t               *c
  -- ** @param xcb_drawable_t                  drawable
  -- ** @param uint32_t                        count
  -- ** @param uint32_t                        attachments_len
  -- ** @param const xcb_dri2_attach_format_t *attachments
  -- ** @returns xcb_dri2_get_buffers_with_format_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_get_buffers_with_format
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_drawable_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t;
      arg5 : System.Address) return xcb_dri2_get_buffers_with_format_cookie_t;  -- /usr/include/xcb/dri2.h:1361
   pragma Import (C, xcb_dri2_get_buffers_with_format, "xcb_dri2_get_buffers_with_format");

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
  -- ** xcb_dri2_get_buffers_with_format_cookie_t xcb_dri2_get_buffers_with_format_unchecked
  -- ** 
  -- ** @param xcb_connection_t               *c
  -- ** @param xcb_drawable_t                  drawable
  -- ** @param uint32_t                        count
  -- ** @param uint32_t                        attachments_len
  -- ** @param const xcb_dri2_attach_format_t *attachments
  -- ** @returns xcb_dri2_get_buffers_with_format_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_get_buffers_with_format_unchecked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_drawable_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t;
      arg5 : System.Address) return xcb_dri2_get_buffers_with_format_cookie_t;  -- /usr/include/xcb/dri2.h:1393
   pragma Import (C, xcb_dri2_get_buffers_with_format_unchecked, "xcb_dri2_get_buffers_with_format_unchecked");

  --*<  
  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_dri2_dri2_buffer_t * xcb_dri2_get_buffers_with_format_buffers
  -- ** 
  -- ** @param const xcb_dri2_get_buffers_with_format_reply_t *R
  -- ** @returns xcb_dri2_dri2_buffer_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_get_buffers_with_format_buffers (arg1 : System.Address) return access xcb_dri2_dri2_buffer_t;  -- /usr/include/xcb/dri2.h:1410
   pragma Import (C, xcb_dri2_get_buffers_with_format_buffers, "xcb_dri2_get_buffers_with_format_buffers");

  --****************************************************************************
  -- **
  -- ** int xcb_dri2_get_buffers_with_format_buffers_length
  -- ** 
  -- ** @param const xcb_dri2_get_buffers_with_format_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_get_buffers_with_format_buffers_length (arg1 : System.Address) return int;  -- /usr/include/xcb/dri2.h:1423
   pragma Import (C, xcb_dri2_get_buffers_with_format_buffers_length, "xcb_dri2_get_buffers_with_format_buffers_length");

  --****************************************************************************
  -- **
  -- ** xcb_dri2_dri2_buffer_iterator_t xcb_dri2_get_buffers_with_format_buffers_iterator
  -- ** 
  -- ** @param const xcb_dri2_get_buffers_with_format_reply_t *R
  -- ** @returns xcb_dri2_dri2_buffer_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_get_buffers_with_format_buffers_iterator (arg1 : System.Address) return xcb_dri2_dri2_buffer_iterator_t;  -- /usr/include/xcb/dri2.h:1436
   pragma Import (C, xcb_dri2_get_buffers_with_format_buffers_iterator, "xcb_dri2_get_buffers_with_format_buffers_iterator");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_dri2_get_buffers_with_format_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_dri2_get_buffers_with_format_reply_t * xcb_dri2_get_buffers_with_format_reply
  -- ** 
  -- ** @param xcb_connection_t                           *c
  -- ** @param xcb_dri2_get_buffers_with_format_cookie_t   cookie
  -- ** @param xcb_generic_error_t                       **e
  -- ** @returns xcb_dri2_get_buffers_with_format_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_get_buffers_with_format_reply
     (arg1 : System.Address;
      arg2 : xcb_dri2_get_buffers_with_format_cookie_t;
      arg3 : System.Address) return access xcb_dri2_get_buffers_with_format_reply_t;  -- /usr/include/xcb/dri2.h:1465
   pragma Import (C, xcb_dri2_get_buffers_with_format_reply, "xcb_dri2_get_buffers_with_format_reply");

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
  -- ** xcb_dri2_swap_buffers_cookie_t xcb_dri2_swap_buffers
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    drawable
  -- ** @param uint32_t          target_msc_hi
  -- ** @param uint32_t          target_msc_lo
  -- ** @param uint32_t          divisor_hi
  -- ** @param uint32_t          divisor_lo
  -- ** @param uint32_t          remainder_hi
  -- ** @param uint32_t          remainder_lo
  -- ** @returns xcb_dri2_swap_buffers_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_swap_buffers
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_drawable_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : stdint_h.uint32_t;
      arg7 : stdint_h.uint32_t;
      arg8 : stdint_h.uint32_t) return xcb_dri2_swap_buffers_cookie_t;  -- /usr/include/xcb/dri2.h:1495
   pragma Import (C, xcb_dri2_swap_buffers, "xcb_dri2_swap_buffers");

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
  -- * This form can be used only if the request will cause
  -- * a reply to be generated. Any returned error will be
  -- * placed in the event queue.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_dri2_swap_buffers_cookie_t xcb_dri2_swap_buffers_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    drawable
  -- ** @param uint32_t          target_msc_hi
  -- ** @param uint32_t          target_msc_lo
  -- ** @param uint32_t          divisor_hi
  -- ** @param uint32_t          divisor_lo
  -- ** @param uint32_t          remainder_hi
  -- ** @param uint32_t          remainder_lo
  -- ** @returns xcb_dri2_swap_buffers_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_swap_buffers_unchecked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_drawable_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : stdint_h.uint32_t;
      arg7 : stdint_h.uint32_t;
      arg8 : stdint_h.uint32_t) return xcb_dri2_swap_buffers_cookie_t;  -- /usr/include/xcb/dri2.h:1533
   pragma Import (C, xcb_dri2_swap_buffers_unchecked, "xcb_dri2_swap_buffers_unchecked");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
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
  -- * xcb_dri2_swap_buffers_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_dri2_swap_buffers_reply_t * xcb_dri2_swap_buffers_reply
  -- ** 
  -- ** @param xcb_connection_t                *c
  -- ** @param xcb_dri2_swap_buffers_cookie_t   cookie
  -- ** @param xcb_generic_error_t            **e
  -- ** @returns xcb_dri2_swap_buffers_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_swap_buffers_reply
     (arg1 : System.Address;
      arg2 : xcb_dri2_swap_buffers_cookie_t;
      arg3 : System.Address) return access xcb_dri2_swap_buffers_reply_t;  -- /usr/include/xcb/dri2.h:1569
   pragma Import (C, xcb_dri2_swap_buffers_reply, "xcb_dri2_swap_buffers_reply");

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
  -- ** xcb_dri2_get_msc_cookie_t xcb_dri2_get_msc
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    drawable
  -- ** @returns xcb_dri2_get_msc_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_get_msc (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_drawable_t) return xcb_dri2_get_msc_cookie_t;  -- /usr/include/xcb/dri2.h:1593
   pragma Import (C, xcb_dri2_get_msc, "xcb_dri2_get_msc");

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
  -- ** xcb_dri2_get_msc_cookie_t xcb_dri2_get_msc_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    drawable
  -- ** @returns xcb_dri2_get_msc_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_get_msc_unchecked (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_drawable_t) return xcb_dri2_get_msc_cookie_t;  -- /usr/include/xcb/dri2.h:1619
   pragma Import (C, xcb_dri2_get_msc_unchecked, "xcb_dri2_get_msc_unchecked");

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
  -- * xcb_dri2_get_msc_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_dri2_get_msc_reply_t * xcb_dri2_get_msc_reply
  -- ** 
  -- ** @param xcb_connection_t           *c
  -- ** @param xcb_dri2_get_msc_cookie_t   cookie
  -- ** @param xcb_generic_error_t       **e
  -- ** @returns xcb_dri2_get_msc_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_get_msc_reply
     (arg1 : System.Address;
      arg2 : xcb_dri2_get_msc_cookie_t;
      arg3 : System.Address) return access xcb_dri2_get_msc_reply_t;  -- /usr/include/xcb/dri2.h:1649
   pragma Import (C, xcb_dri2_get_msc_reply, "xcb_dri2_get_msc_reply");

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
  -- ** xcb_dri2_wait_msc_cookie_t xcb_dri2_wait_msc
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    drawable
  -- ** @param uint32_t          target_msc_hi
  -- ** @param uint32_t          target_msc_lo
  -- ** @param uint32_t          divisor_hi
  -- ** @param uint32_t          divisor_lo
  -- ** @param uint32_t          remainder_hi
  -- ** @param uint32_t          remainder_lo
  -- ** @returns xcb_dri2_wait_msc_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_wait_msc
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_drawable_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : stdint_h.uint32_t;
      arg7 : stdint_h.uint32_t;
      arg8 : stdint_h.uint32_t) return xcb_dri2_wait_msc_cookie_t;  -- /usr/include/xcb/dri2.h:1679
   pragma Import (C, xcb_dri2_wait_msc, "xcb_dri2_wait_msc");

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
  -- * This form can be used only if the request will cause
  -- * a reply to be generated. Any returned error will be
  -- * placed in the event queue.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_dri2_wait_msc_cookie_t xcb_dri2_wait_msc_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    drawable
  -- ** @param uint32_t          target_msc_hi
  -- ** @param uint32_t          target_msc_lo
  -- ** @param uint32_t          divisor_hi
  -- ** @param uint32_t          divisor_lo
  -- ** @param uint32_t          remainder_hi
  -- ** @param uint32_t          remainder_lo
  -- ** @returns xcb_dri2_wait_msc_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_wait_msc_unchecked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_drawable_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : stdint_h.uint32_t;
      arg7 : stdint_h.uint32_t;
      arg8 : stdint_h.uint32_t) return xcb_dri2_wait_msc_cookie_t;  -- /usr/include/xcb/dri2.h:1717
   pragma Import (C, xcb_dri2_wait_msc_unchecked, "xcb_dri2_wait_msc_unchecked");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
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
  -- * xcb_dri2_wait_msc_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_dri2_wait_msc_reply_t * xcb_dri2_wait_msc_reply
  -- ** 
  -- ** @param xcb_connection_t            *c
  -- ** @param xcb_dri2_wait_msc_cookie_t   cookie
  -- ** @param xcb_generic_error_t        **e
  -- ** @returns xcb_dri2_wait_msc_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_wait_msc_reply
     (arg1 : System.Address;
      arg2 : xcb_dri2_wait_msc_cookie_t;
      arg3 : System.Address) return access xcb_dri2_wait_msc_reply_t;  -- /usr/include/xcb/dri2.h:1753
   pragma Import (C, xcb_dri2_wait_msc_reply, "xcb_dri2_wait_msc_reply");

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
  -- ** xcb_dri2_wait_sbc_cookie_t xcb_dri2_wait_sbc
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    drawable
  -- ** @param uint32_t          target_sbc_hi
  -- ** @param uint32_t          target_sbc_lo
  -- ** @returns xcb_dri2_wait_sbc_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_wait_sbc
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_drawable_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_dri2_wait_sbc_cookie_t;  -- /usr/include/xcb/dri2.h:1779
   pragma Import (C, xcb_dri2_wait_sbc, "xcb_dri2_wait_sbc");

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
  -- ** xcb_dri2_wait_sbc_cookie_t xcb_dri2_wait_sbc_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    drawable
  -- ** @param uint32_t          target_sbc_hi
  -- ** @param uint32_t          target_sbc_lo
  -- ** @returns xcb_dri2_wait_sbc_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_wait_sbc_unchecked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_drawable_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_dri2_wait_sbc_cookie_t;  -- /usr/include/xcb/dri2.h:1809
   pragma Import (C, xcb_dri2_wait_sbc_unchecked, "xcb_dri2_wait_sbc_unchecked");

  --*<  
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
  -- * xcb_dri2_wait_sbc_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_dri2_wait_sbc_reply_t * xcb_dri2_wait_sbc_reply
  -- ** 
  -- ** @param xcb_connection_t            *c
  -- ** @param xcb_dri2_wait_sbc_cookie_t   cookie
  -- ** @param xcb_generic_error_t        **e
  -- ** @returns xcb_dri2_wait_sbc_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_wait_sbc_reply
     (arg1 : System.Address;
      arg2 : xcb_dri2_wait_sbc_cookie_t;
      arg3 : System.Address) return access xcb_dri2_wait_sbc_reply_t;  -- /usr/include/xcb/dri2.h:1841
   pragma Import (C, xcb_dri2_wait_sbc_reply, "xcb_dri2_wait_sbc_reply");

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
  -- ** xcb_void_cookie_t xcb_dri2_swap_interval_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    drawable
  -- ** @param uint32_t          interval
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_swap_interval_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_drawable_t;
      arg3 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/dri2.h:1869
   pragma Import (C, xcb_dri2_swap_interval_checked, "xcb_dri2_swap_interval_checked");

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
  -- ** xcb_void_cookie_t xcb_dri2_swap_interval
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    drawable
  -- ** @param uint32_t          interval
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_swap_interval
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_drawable_t;
      arg3 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/dri2.h:1894
   pragma Import (C, xcb_dri2_swap_interval, "xcb_dri2_swap_interval");

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
  -- ** xcb_dri2_get_param_cookie_t xcb_dri2_get_param
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    drawable
  -- ** @param uint32_t          param
  -- ** @returns xcb_dri2_get_param_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_get_param
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_drawable_t;
      arg3 : stdint_h.uint32_t) return xcb_dri2_get_param_cookie_t;  -- /usr/include/xcb/dri2.h:1919
   pragma Import (C, xcb_dri2_get_param, "xcb_dri2_get_param");

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
  -- ** xcb_dri2_get_param_cookie_t xcb_dri2_get_param_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    drawable
  -- ** @param uint32_t          param
  -- ** @returns xcb_dri2_get_param_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_get_param_unchecked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_drawable_t;
      arg3 : stdint_h.uint32_t) return xcb_dri2_get_param_cookie_t;  -- /usr/include/xcb/dri2.h:1947
   pragma Import (C, xcb_dri2_get_param_unchecked, "xcb_dri2_get_param_unchecked");

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
  -- * xcb_dri2_get_param_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_dri2_get_param_reply_t * xcb_dri2_get_param_reply
  -- ** 
  -- ** @param xcb_connection_t             *c
  -- ** @param xcb_dri2_get_param_cookie_t   cookie
  -- ** @param xcb_generic_error_t         **e
  -- ** @returns xcb_dri2_get_param_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_dri2_get_param_reply
     (arg1 : System.Address;
      arg2 : xcb_dri2_get_param_cookie_t;
      arg3 : System.Address) return access xcb_dri2_get_param_reply_t;  -- /usr/include/xcb/dri2.h:1978
   pragma Import (C, xcb_dri2_get_param_reply, "xcb_dri2_get_param_reply");

  --*<  
  --*<  
  --*
  -- * @}
  --  

end xcb_dri2_h;
