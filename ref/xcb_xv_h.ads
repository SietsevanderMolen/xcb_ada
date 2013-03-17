with Interfaces.C; use Interfaces.C;
with xcb_xcb_h;
with stdint_h;
with sys_types_h;
with xcb_xproto_h;
with xcb_shm_h;
with System;
with Interfaces.C.Strings;

package xcb_xv_h is

   --  unsupported macro: XCB_XV_MAJOR_VERSION 2
   --  unsupported macro: XCB_XV_MINOR_VERSION 2
   --  unsupported macro: XCB_XV_BAD_PORT 0
   --  unsupported macro: XCB_XV_BAD_ENCODING 1
   --  unsupported macro: XCB_XV_BAD_CONTROL 2
   --  unsupported macro: XCB_XV_VIDEO_NOTIFY 0
   --  unsupported macro: XCB_XV_PORT_NOTIFY 1
   --  unsupported macro: XCB_XV_QUERY_EXTENSION 0
   --  unsupported macro: XCB_XV_QUERY_ADAPTORS 1
   --  unsupported macro: XCB_XV_QUERY_ENCODINGS 2
   --  unsupported macro: XCB_XV_GRAB_PORT 3
   --  unsupported macro: XCB_XV_UNGRAB_PORT 4
   --  unsupported macro: XCB_XV_PUT_VIDEO 5
   --  unsupported macro: XCB_XV_PUT_STILL 6
   --  unsupported macro: XCB_XV_GET_VIDEO 7
   --  unsupported macro: XCB_XV_GET_STILL 8
   --  unsupported macro: XCB_XV_STOP_VIDEO 9
   --  unsupported macro: XCB_XV_SELECT_VIDEO_NOTIFY 10
   --  unsupported macro: XCB_XV_SELECT_PORT_NOTIFY 11
   --  unsupported macro: XCB_XV_QUERY_BEST_SIZE 12
   --  unsupported macro: XCB_XV_SET_PORT_ATTRIBUTE 13
   --  unsupported macro: XCB_XV_GET_PORT_ATTRIBUTE 14
   --  unsupported macro: XCB_XV_QUERY_PORT_ATTRIBUTES 15
   --  unsupported macro: XCB_XV_LIST_IMAGE_FORMATS 16
   --  unsupported macro: XCB_XV_QUERY_IMAGE_ATTRIBUTES 17
   --  unsupported macro: XCB_XV_PUT_IMAGE 18
   --  unsupported macro: XCB_XV_SHM_PUT_IMAGE 19
  -- * This file generated automatically from xv.xml by c_client.py.
  -- * Edit at your peril.
  --  

  --*
  -- * @defgroup XCB_Xv_API XCB Xv API
  -- * @brief Xv XCB Protocol Implementation.
  -- * @{
  -- * 

   xcb_xv_id : aliased xcb_xcb_h.xcb_extension_t;  -- /usr/include/xcb/xv.h:26
   pragma Import (C, xcb_xv_id, "xcb_xv_id");

   subtype xcb_xv_port_t is stdint_h.uint32_t;  -- /usr/include/xcb/xv.h:28

  --*
  -- * @brief xcb_xv_port_iterator_t
  -- * 

  --*<   
   type xcb_xv_port_iterator_t is record
      data : access xcb_xv_port_t;  -- /usr/include/xcb/xv.h:34
      c_rem : aliased int;  -- /usr/include/xcb/xv.h:35
      index : aliased int;  -- /usr/include/xcb/xv.h:36
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_port_iterator_t);  -- /usr/include/xcb/xv.h:33

  --*<   
  --*<   
   subtype xcb_xv_encoding_t is stdint_h.uint32_t;  -- /usr/include/xcb/xv.h:39

  --*
  -- * @brief xcb_xv_encoding_iterator_t
  -- * 

  --*<   
   type xcb_xv_encoding_iterator_t is record
      data : access xcb_xv_encoding_t;  -- /usr/include/xcb/xv.h:45
      c_rem : aliased int;  -- /usr/include/xcb/xv.h:46
      index : aliased int;  -- /usr/include/xcb/xv.h:47
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_encoding_iterator_t);  -- /usr/include/xcb/xv.h:44

  --*<   
  --*<   
   subtype xcb_xv_type_t is unsigned;
   XCB_XV_TYPE_INPUT_MASK : constant xcb_xv_type_t := 1;
   XCB_XV_TYPE_OUTPUT_MASK : constant xcb_xv_type_t := 2;
   XCB_XV_TYPE_VIDEO_MASK : constant xcb_xv_type_t := 4;
   XCB_XV_TYPE_STILL_MASK : constant xcb_xv_type_t := 8;
   XCB_XV_TYPE_IMAGE_MASK : constant xcb_xv_type_t := 16;  -- /usr/include/xcb/xv.h:50

   type xcb_xv_image_format_info_type_t is 
     (XCB_XV_IMAGE_FORMAT_INFO_TYPE_RGB,
      XCB_XV_IMAGE_FORMAT_INFO_TYPE_YUV);
   pragma Convention (C, xcb_xv_image_format_info_type_t);  -- /usr/include/xcb/xv.h:58

   type xcb_xv_image_format_info_format_t is 
     (XCB_XV_IMAGE_FORMAT_INFO_FORMAT_PACKED,
      XCB_XV_IMAGE_FORMAT_INFO_FORMAT_PLANAR);
   pragma Convention (C, xcb_xv_image_format_info_format_t);  -- /usr/include/xcb/xv.h:63

   subtype xcb_xv_attribute_flag_t is unsigned;
   XCB_XV_ATTRIBUTE_FLAG_GETTABLE : constant xcb_xv_attribute_flag_t := 1;
   XCB_XV_ATTRIBUTE_FLAG_SETTABLE : constant xcb_xv_attribute_flag_t := 2;  -- /usr/include/xcb/xv.h:68

   type xcb_xv_video_notify_reason_t is 
     (XCB_XV_VIDEO_NOTIFY_REASON_STARTED,
      XCB_XV_VIDEO_NOTIFY_REASON_STOPPED,
      XCB_XV_VIDEO_NOTIFY_REASON_BUSY,
      XCB_XV_VIDEO_NOTIFY_REASON_PREEMPTED,
      XCB_XV_VIDEO_NOTIFY_REASON_HARD_ERROR);
   pragma Convention (C, xcb_xv_video_notify_reason_t);  -- /usr/include/xcb/xv.h:73

   type xcb_xv_scanline_order_t is 
     (XCB_XV_SCANLINE_ORDER_TOP_TO_BOTTOM,
      XCB_XV_SCANLINE_ORDER_BOTTOM_TO_TOP);
   pragma Convention (C, xcb_xv_scanline_order_t);  -- /usr/include/xcb/xv.h:81

   type xcb_xv_grab_port_status_t is 
     (XCB_XV_GRAB_PORT_STATUS_SUCCESS,
      XCB_XV_GRAB_PORT_STATUS_BAD_EXTENSION,
      XCB_XV_GRAB_PORT_STATUS_ALREADY_GRABBED,
      XCB_XV_GRAB_PORT_STATUS_INVALID_TIME,
      XCB_XV_GRAB_PORT_STATUS_BAD_REPLY,
      XCB_XV_GRAB_PORT_STATUS_BAD_ALLOC);
   pragma Convention (C, xcb_xv_grab_port_status_t);  -- /usr/include/xcb/xv.h:86

  --*
  -- * @brief xcb_xv_rational_t
  -- * 

  --*<   
   type xcb_xv_rational_t is record
      numerator : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xv.h:99
      denominator : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xv.h:100
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_rational_t);  -- /usr/include/xcb/xv.h:98

  --*<   
  --*
  -- * @brief xcb_xv_rational_iterator_t
  -- * 

  --*<   
   type xcb_xv_rational_iterator_t is record
      data : access xcb_xv_rational_t;  -- /usr/include/xcb/xv.h:107
      c_rem : aliased int;  -- /usr/include/xcb/xv.h:108
      index : aliased int;  -- /usr/include/xcb/xv.h:109
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_rational_iterator_t);  -- /usr/include/xcb/xv.h:106

  --*<   
  --*<   
  --*
  -- * @brief xcb_xv_format_t
  -- * 

  --*<   
   type anon4057_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_xv_format_t is record
      visual : aliased xcb_xproto_h.xcb_visualid_t;  -- /usr/include/xcb/xv.h:116
      depth : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:117
      pad0 : aliased anon4057_anon1853_array;  -- /usr/include/xcb/xv.h:118
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_format_t);  -- /usr/include/xcb/xv.h:115

  --*<   
  --*<   
  --*
  -- * @brief xcb_xv_format_iterator_t
  -- * 

  --*<   
   type xcb_xv_format_iterator_t is record
      data : access xcb_xv_format_t;  -- /usr/include/xcb/xv.h:125
      c_rem : aliased int;  -- /usr/include/xcb/xv.h:126
      index : aliased int;  -- /usr/include/xcb/xv.h:127
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_format_iterator_t);  -- /usr/include/xcb/xv.h:124

  --*<   
  --*<   
  --*
  -- * @brief xcb_xv_adaptor_info_t
  -- * 

  --*<   
   type xcb_xv_adaptor_info_t is record
      base_id : aliased xcb_xv_port_t;  -- /usr/include/xcb/xv.h:134
      name_size : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:135
      num_ports : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:136
      num_formats : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:137
      c_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:138
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:139
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_adaptor_info_t);  -- /usr/include/xcb/xv.h:133

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xv_adaptor_info_iterator_t
  -- * 

  --*<   
   type xcb_xv_adaptor_info_iterator_t is record
      data : access xcb_xv_adaptor_info_t;  -- /usr/include/xcb/xv.h:146
      c_rem : aliased int;  -- /usr/include/xcb/xv.h:147
      index : aliased int;  -- /usr/include/xcb/xv.h:148
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_adaptor_info_iterator_t);  -- /usr/include/xcb/xv.h:145

  --*<   
  --*<   
  --*
  -- * @brief xcb_xv_encoding_info_t
  -- * 

  --*<   
   type anon4071_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_xv_encoding_info_t is record
      encoding : aliased xcb_xv_encoding_t;  -- /usr/include/xcb/xv.h:155
      name_size : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:156
      width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:157
      height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:158
      pad0 : aliased anon4071_anon1795_array;  -- /usr/include/xcb/xv.h:159
      rate : aliased xcb_xv_rational_t;  -- /usr/include/xcb/xv.h:160
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_encoding_info_t);  -- /usr/include/xcb/xv.h:154

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xv_encoding_info_iterator_t
  -- * 

  --*<   
   type xcb_xv_encoding_info_iterator_t is record
      data : access xcb_xv_encoding_info_t;  -- /usr/include/xcb/xv.h:167
      c_rem : aliased int;  -- /usr/include/xcb/xv.h:168
      index : aliased int;  -- /usr/include/xcb/xv.h:169
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_encoding_info_iterator_t);  -- /usr/include/xcb/xv.h:166

  --*<   
  --*<   
  --*
  -- * @brief xcb_xv_image_t
  -- * 

  --*<   
   type xcb_xv_image_t is record
      id : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xv.h:176
      width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:177
      height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:178
      data_size : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xv.h:179
      num_planes : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xv.h:180
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_image_t);  -- /usr/include/xcb/xv.h:175

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xv_image_iterator_t
  -- * 

  --*<   
   type xcb_xv_image_iterator_t is record
      data : access xcb_xv_image_t;  -- /usr/include/xcb/xv.h:187
      c_rem : aliased int;  -- /usr/include/xcb/xv.h:188
      index : aliased int;  -- /usr/include/xcb/xv.h:189
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_image_iterator_t);  -- /usr/include/xcb/xv.h:186

  --*<   
  --*<   
  --*
  -- * @brief xcb_xv_attribute_info_t
  -- * 

  --*<   
   type xcb_xv_attribute_info_t is record
      flags : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xv.h:196
      min : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xv.h:197
      max : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xv.h:198
      size : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xv.h:199
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_attribute_info_t);  -- /usr/include/xcb/xv.h:195

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xv_attribute_info_iterator_t
  -- * 

  --*<   
   type xcb_xv_attribute_info_iterator_t is record
      data : access xcb_xv_attribute_info_t;  -- /usr/include/xcb/xv.h:206
      c_rem : aliased int;  -- /usr/include/xcb/xv.h:207
      index : aliased int;  -- /usr/include/xcb/xv.h:208
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_attribute_info_iterator_t);  -- /usr/include/xcb/xv.h:205

  --*<   
  --*<   
  --*
  -- * @brief xcb_xv_image_format_info_t
  -- * 

  --*<   
   type anon4091_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type anon4091_anon4095_array is array (0 .. 15) of aliased stdint_h.uint8_t;
   type anon4091_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type anon4091_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type anon4091_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type anon4091_anon2206_array is array (0 .. 31) of aliased stdint_h.uint8_t;
   type anon4091_anon4106_array is array (0 .. 10) of aliased stdint_h.uint8_t;
   type xcb_xv_image_format_info_t is record
      id : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xv.h:215
      c_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:216
      byte_order : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:217
      pad0 : aliased anon4091_anon1795_array;  -- /usr/include/xcb/xv.h:218
      guid : aliased anon4091_anon4095_array;  -- /usr/include/xcb/xv.h:219
      bpp : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:220
      num_planes : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:221
      pad1 : aliased anon4091_anon1795_array;  -- /usr/include/xcb/xv.h:222
      depth : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:223
      pad2 : aliased anon4091_anon1853_array;  -- /usr/include/xcb/xv.h:224
      red_mask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xv.h:225
      green_mask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xv.h:226
      blue_mask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xv.h:227
      format : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:228
      pad3 : aliased anon4091_anon1853_array;  -- /usr/include/xcb/xv.h:229
      y_sample_bits : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xv.h:230
      u_sample_bits : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xv.h:231
      v_sample_bits : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xv.h:232
      vhorz_y_period : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xv.h:233
      vhorz_u_period : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xv.h:234
      vhorz_v_period : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xv.h:235
      vvert_y_period : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xv.h:236
      vvert_u_period : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xv.h:237
      vvert_v_period : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xv.h:238
      vcomp_order : aliased anon4091_anon2206_array;  -- /usr/include/xcb/xv.h:239
      vscanline_order : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:240
      pad4 : aliased anon4091_anon4106_array;  -- /usr/include/xcb/xv.h:241
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_image_format_info_t);  -- /usr/include/xcb/xv.h:214

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
  --*<   
  --*<   
  --*
  -- * @brief xcb_xv_image_format_info_iterator_t
  -- * 

  --*<   
   type xcb_xv_image_format_info_iterator_t is record
      data : access xcb_xv_image_format_info_t;  -- /usr/include/xcb/xv.h:248
      c_rem : aliased int;  -- /usr/include/xcb/xv.h:249
      index : aliased int;  -- /usr/include/xcb/xv.h:250
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_image_format_info_iterator_t);  -- /usr/include/xcb/xv.h:247

  --*<   
  --*<   
  --* Opcode for xcb_xv_bad_port.  
  --*
  -- * @brief xcb_xv_bad_port_error_t
  -- * 

  --*<   
   type xcb_xv_bad_port_error_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:260
      error_code : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:261
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:262
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_bad_port_error_t);  -- /usr/include/xcb/xv.h:259

  --*<   
  --*<   
  --* Opcode for xcb_xv_bad_encoding.  
  --*
  -- * @brief xcb_xv_bad_encoding_error_t
  -- * 

  --*<   
   type xcb_xv_bad_encoding_error_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:272
      error_code : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:273
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:274
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_bad_encoding_error_t);  -- /usr/include/xcb/xv.h:271

  --*<   
  --*<   
  --* Opcode for xcb_xv_bad_control.  
  --*
  -- * @brief xcb_xv_bad_control_error_t
  -- * 

  --*<   
   type xcb_xv_bad_control_error_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:284
      error_code : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:285
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:286
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_bad_control_error_t);  -- /usr/include/xcb/xv.h:283

  --*<   
  --*<   
  --* Opcode for xcb_xv_video_notify.  
  --*
  -- * @brief xcb_xv_video_notify_event_t
  -- * 

  --*<   
   type xcb_xv_video_notify_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:296
      reason : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:297
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:298
      time : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/xv.h:299
      drawable : aliased xcb_xproto_h.xcb_drawable_t;  -- /usr/include/xcb/xv.h:300
      port : aliased xcb_xv_port_t;  -- /usr/include/xcb/xv.h:301
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_video_notify_event_t);  -- /usr/include/xcb/xv.h:295

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xv_port_notify.  
  --*
  -- * @brief xcb_xv_port_notify_event_t
  -- * 

  --*<   
   type xcb_xv_port_notify_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:311
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:312
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:313
      time : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/xv.h:314
      port : aliased xcb_xv_port_t;  -- /usr/include/xcb/xv.h:315
      attribute : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xv.h:316
      value : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xv.h:317
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_port_notify_event_t);  -- /usr/include/xcb/xv.h:310

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xv_query_extension_cookie_t
  -- * 

  --*<   
   type xcb_xv_query_extension_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xv.h:324
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_query_extension_cookie_t);  -- /usr/include/xcb/xv.h:323

  --* Opcode for xcb_xv_query_extension.  
  --*
  -- * @brief xcb_xv_query_extension_request_t
  -- * 

  --*<   
   type xcb_xv_query_extension_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:334
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:335
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:336
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_query_extension_request_t);  -- /usr/include/xcb/xv.h:333

  --*<   
  --*<   
  --*
  -- * @brief xcb_xv_query_extension_reply_t
  -- * 

  --*<   
   type xcb_xv_query_extension_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:343
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:344
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:345
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xv.h:346
      major : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:347
      minor : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:348
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_query_extension_reply_t);  -- /usr/include/xcb/xv.h:342

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xv_query_adaptors_cookie_t
  -- * 

  --*<   
   type xcb_xv_query_adaptors_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xv.h:355
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_query_adaptors_cookie_t);  -- /usr/include/xcb/xv.h:354

  --* Opcode for xcb_xv_query_adaptors.  
  --*
  -- * @brief xcb_xv_query_adaptors_request_t
  -- * 

  --*<   
   type xcb_xv_query_adaptors_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:365
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:366
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:367
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xv.h:368
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_query_adaptors_request_t);  -- /usr/include/xcb/xv.h:364

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xv_query_adaptors_reply_t
  -- * 

  --*<   
   type anon4133_anon2060_array is array (0 .. 21) of aliased stdint_h.uint8_t;
   type xcb_xv_query_adaptors_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:375
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:376
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:377
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xv.h:378
      num_adaptors : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:379
      pad1 : aliased anon4133_anon2060_array;  -- /usr/include/xcb/xv.h:380
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_query_adaptors_reply_t);  -- /usr/include/xcb/xv.h:374

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xv_query_encodings_cookie_t
  -- * 

  --*<   
   type xcb_xv_query_encodings_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xv.h:387
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_query_encodings_cookie_t);  -- /usr/include/xcb/xv.h:386

  --* Opcode for xcb_xv_query_encodings.  
  --*
  -- * @brief xcb_xv_query_encodings_request_t
  -- * 

  --*<   
   type xcb_xv_query_encodings_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:397
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:398
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:399
      port : aliased xcb_xv_port_t;  -- /usr/include/xcb/xv.h:400
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_query_encodings_request_t);  -- /usr/include/xcb/xv.h:396

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xv_query_encodings_reply_t
  -- * 

  --*<   
   type anon4141_anon2060_array is array (0 .. 21) of aliased stdint_h.uint8_t;
   type xcb_xv_query_encodings_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:407
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:408
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:409
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xv.h:410
      num_encodings : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:411
      pad1 : aliased anon4141_anon2060_array;  -- /usr/include/xcb/xv.h:412
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_query_encodings_reply_t);  -- /usr/include/xcb/xv.h:406

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xv_grab_port_cookie_t
  -- * 

  --*<   
   type xcb_xv_grab_port_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xv.h:419
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_grab_port_cookie_t);  -- /usr/include/xcb/xv.h:418

  --* Opcode for xcb_xv_grab_port.  
  --*
  -- * @brief xcb_xv_grab_port_request_t
  -- * 

  --*<   
   type xcb_xv_grab_port_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:429
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:430
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:431
      port : aliased xcb_xv_port_t;  -- /usr/include/xcb/xv.h:432
      time : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/xv.h:433
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_grab_port_request_t);  -- /usr/include/xcb/xv.h:428

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xv_grab_port_reply_t
  -- * 

  --*<   
   type xcb_xv_grab_port_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:440
      result : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:441
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:442
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xv.h:443
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_grab_port_reply_t);  -- /usr/include/xcb/xv.h:439

  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xv_ungrab_port.  
  --*
  -- * @brief xcb_xv_ungrab_port_request_t
  -- * 

  --*<   
   type xcb_xv_ungrab_port_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:453
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:454
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:455
      port : aliased xcb_xv_port_t;  -- /usr/include/xcb/xv.h:456
      time : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/xv.h:457
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_ungrab_port_request_t);  -- /usr/include/xcb/xv.h:452

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xv_put_video.  
  --*
  -- * @brief xcb_xv_put_video_request_t
  -- * 

  --*<   
   type xcb_xv_put_video_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:467
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:468
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:469
      port : aliased xcb_xv_port_t;  -- /usr/include/xcb/xv.h:470
      drawable : aliased xcb_xproto_h.xcb_drawable_t;  -- /usr/include/xcb/xv.h:471
      gc : aliased xcb_xproto_h.xcb_gcontext_t;  -- /usr/include/xcb/xv.h:472
      vid_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xv.h:473
      vid_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xv.h:474
      vid_w : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:475
      vid_h : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:476
      drw_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xv.h:477
      drw_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xv.h:478
      drw_w : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:479
      drw_h : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:480
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_put_video_request_t);  -- /usr/include/xcb/xv.h:466

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
  --*<   
  --* Opcode for xcb_xv_put_still.  
  --*
  -- * @brief xcb_xv_put_still_request_t
  -- * 

  --*<   
   type xcb_xv_put_still_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:490
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:491
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:492
      port : aliased xcb_xv_port_t;  -- /usr/include/xcb/xv.h:493
      drawable : aliased xcb_xproto_h.xcb_drawable_t;  -- /usr/include/xcb/xv.h:494
      gc : aliased xcb_xproto_h.xcb_gcontext_t;  -- /usr/include/xcb/xv.h:495
      vid_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xv.h:496
      vid_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xv.h:497
      vid_w : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:498
      vid_h : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:499
      drw_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xv.h:500
      drw_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xv.h:501
      drw_w : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:502
      drw_h : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:503
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_put_still_request_t);  -- /usr/include/xcb/xv.h:489

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
  --*<   
  --* Opcode for xcb_xv_get_video.  
  --*
  -- * @brief xcb_xv_get_video_request_t
  -- * 

  --*<   
   type xcb_xv_get_video_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:513
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:514
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:515
      port : aliased xcb_xv_port_t;  -- /usr/include/xcb/xv.h:516
      drawable : aliased xcb_xproto_h.xcb_drawable_t;  -- /usr/include/xcb/xv.h:517
      gc : aliased xcb_xproto_h.xcb_gcontext_t;  -- /usr/include/xcb/xv.h:518
      vid_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xv.h:519
      vid_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xv.h:520
      vid_w : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:521
      vid_h : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:522
      drw_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xv.h:523
      drw_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xv.h:524
      drw_w : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:525
      drw_h : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:526
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_get_video_request_t);  -- /usr/include/xcb/xv.h:512

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
  --*<   
  --* Opcode for xcb_xv_get_still.  
  --*
  -- * @brief xcb_xv_get_still_request_t
  -- * 

  --*<   
   type xcb_xv_get_still_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:536
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:537
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:538
      port : aliased xcb_xv_port_t;  -- /usr/include/xcb/xv.h:539
      drawable : aliased xcb_xproto_h.xcb_drawable_t;  -- /usr/include/xcb/xv.h:540
      gc : aliased xcb_xproto_h.xcb_gcontext_t;  -- /usr/include/xcb/xv.h:541
      vid_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xv.h:542
      vid_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xv.h:543
      vid_w : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:544
      vid_h : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:545
      drw_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xv.h:546
      drw_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xv.h:547
      drw_w : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:548
      drw_h : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:549
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_get_still_request_t);  -- /usr/include/xcb/xv.h:535

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
  --*<   
  --* Opcode for xcb_xv_stop_video.  
  --*
  -- * @brief xcb_xv_stop_video_request_t
  -- * 

  --*<   
   type xcb_xv_stop_video_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:559
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:560
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:561
      port : aliased xcb_xv_port_t;  -- /usr/include/xcb/xv.h:562
      drawable : aliased xcb_xproto_h.xcb_drawable_t;  -- /usr/include/xcb/xv.h:563
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_stop_video_request_t);  -- /usr/include/xcb/xv.h:558

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xv_select_video_notify.  
  --*
  -- * @brief xcb_xv_select_video_notify_request_t
  -- * 

  --*<   
   type anon4163_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_xv_select_video_notify_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:573
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:574
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:575
      drawable : aliased xcb_xproto_h.xcb_drawable_t;  -- /usr/include/xcb/xv.h:576
      onoff : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:577
      pad0 : aliased anon4163_anon1853_array;  -- /usr/include/xcb/xv.h:578
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_select_video_notify_request_t);  -- /usr/include/xcb/xv.h:572

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xv_select_port_notify.  
  --*
  -- * @brief xcb_xv_select_port_notify_request_t
  -- * 

  --*<   
   type anon4167_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_xv_select_port_notify_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:588
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:589
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:590
      port : aliased xcb_xv_port_t;  -- /usr/include/xcb/xv.h:591
      onoff : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:592
      pad0 : aliased anon4167_anon1853_array;  -- /usr/include/xcb/xv.h:593
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_select_port_notify_request_t);  -- /usr/include/xcb/xv.h:587

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xv_query_best_size_cookie_t
  -- * 

  --*<   
   type xcb_xv_query_best_size_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xv.h:600
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_query_best_size_cookie_t);  -- /usr/include/xcb/xv.h:599

  --* Opcode for xcb_xv_query_best_size.  
  --*
  -- * @brief xcb_xv_query_best_size_request_t
  -- * 

  --*<   
   type anon4173_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_xv_query_best_size_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:610
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:611
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:612
      port : aliased xcb_xv_port_t;  -- /usr/include/xcb/xv.h:613
      vid_w : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:614
      vid_h : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:615
      drw_w : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:616
      drw_h : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:617
      motion : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:618
      pad0 : aliased anon4173_anon1853_array;  -- /usr/include/xcb/xv.h:619
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_query_best_size_request_t);  -- /usr/include/xcb/xv.h:609

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
  -- * @brief xcb_xv_query_best_size_reply_t
  -- * 

  --*<   
   type xcb_xv_query_best_size_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:626
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:627
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:628
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xv.h:629
      actual_width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:630
      actual_height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:631
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_query_best_size_reply_t);  -- /usr/include/xcb/xv.h:625

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xv_set_port_attribute.  
  --*
  -- * @brief xcb_xv_set_port_attribute_request_t
  -- * 

  --*<   
   type xcb_xv_set_port_attribute_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:641
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:642
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:643
      port : aliased xcb_xv_port_t;  -- /usr/include/xcb/xv.h:644
      attribute : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xv.h:645
      value : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xv.h:646
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_set_port_attribute_request_t);  -- /usr/include/xcb/xv.h:640

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xv_get_port_attribute_cookie_t
  -- * 

  --*<   
   type xcb_xv_get_port_attribute_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xv.h:653
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_get_port_attribute_cookie_t);  -- /usr/include/xcb/xv.h:652

  --* Opcode for xcb_xv_get_port_attribute.  
  --*
  -- * @brief xcb_xv_get_port_attribute_request_t
  -- * 

  --*<   
   type xcb_xv_get_port_attribute_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:663
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:664
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:665
      port : aliased xcb_xv_port_t;  -- /usr/include/xcb/xv.h:666
      attribute : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xv.h:667
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_get_port_attribute_request_t);  -- /usr/include/xcb/xv.h:662

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xv_get_port_attribute_reply_t
  -- * 

  --*<   
   type xcb_xv_get_port_attribute_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:674
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:675
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:676
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xv.h:677
      value : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xv.h:678
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_get_port_attribute_reply_t);  -- /usr/include/xcb/xv.h:673

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xv_query_port_attributes_cookie_t
  -- * 

  --*<   
   type xcb_xv_query_port_attributes_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xv.h:685
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_query_port_attributes_cookie_t);  -- /usr/include/xcb/xv.h:684

  --* Opcode for xcb_xv_query_port_attributes.  
  --*
  -- * @brief xcb_xv_query_port_attributes_request_t
  -- * 

  --*<   
   type xcb_xv_query_port_attributes_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:695
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:696
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:697
      port : aliased xcb_xv_port_t;  -- /usr/include/xcb/xv.h:698
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_query_port_attributes_request_t);  -- /usr/include/xcb/xv.h:694

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xv_query_port_attributes_reply_t
  -- * 

  --*<   
   type anon4191_anon4095_array is array (0 .. 15) of aliased stdint_h.uint8_t;
   type xcb_xv_query_port_attributes_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:705
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:706
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:707
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xv.h:708
      num_attributes : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xv.h:709
      text_size : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xv.h:710
      pad1 : aliased anon4191_anon4095_array;  -- /usr/include/xcb/xv.h:711
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_query_port_attributes_reply_t);  -- /usr/include/xcb/xv.h:704

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xv_list_image_formats_cookie_t
  -- * 

  --*<   
   type xcb_xv_list_image_formats_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xv.h:718
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_list_image_formats_cookie_t);  -- /usr/include/xcb/xv.h:717

  --* Opcode for xcb_xv_list_image_formats.  
  --*
  -- * @brief xcb_xv_list_image_formats_request_t
  -- * 

  --*<   
   type xcb_xv_list_image_formats_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:728
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:729
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:730
      port : aliased xcb_xv_port_t;  -- /usr/include/xcb/xv.h:731
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_list_image_formats_request_t);  -- /usr/include/xcb/xv.h:727

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xv_list_image_formats_reply_t
  -- * 

  --*<   
   type anon4199_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_xv_list_image_formats_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:738
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:739
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:740
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xv.h:741
      num_formats : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xv.h:742
      pad1 : aliased anon4199_anon1939_array;  -- /usr/include/xcb/xv.h:743
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_list_image_formats_reply_t);  -- /usr/include/xcb/xv.h:737

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xv_query_image_attributes_cookie_t
  -- * 

  --*<   
   type xcb_xv_query_image_attributes_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xv.h:750
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_query_image_attributes_cookie_t);  -- /usr/include/xcb/xv.h:749

  --* Opcode for xcb_xv_query_image_attributes.  
  --*
  -- * @brief xcb_xv_query_image_attributes_request_t
  -- * 

  --*<   
   type xcb_xv_query_image_attributes_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:760
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:761
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:762
      port : aliased xcb_xv_port_t;  -- /usr/include/xcb/xv.h:763
      id : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xv.h:764
      width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:765
      height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:766
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_query_image_attributes_request_t);  -- /usr/include/xcb/xv.h:759

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xv_query_image_attributes_reply_t
  -- * 

  --*<   
   type anon4207_anon2079_array is array (0 .. 11) of aliased stdint_h.uint8_t;
   type xcb_xv_query_image_attributes_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:773
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:774
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:775
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xv.h:776
      num_planes : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xv.h:777
      data_size : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xv.h:778
      width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:779
      height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:780
      pad1 : aliased anon4207_anon2079_array;  -- /usr/include/xcb/xv.h:781
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_query_image_attributes_reply_t);  -- /usr/include/xcb/xv.h:772

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xv_put_image.  
  --*
  -- * @brief xcb_xv_put_image_request_t
  -- * 

  --*<   
   type xcb_xv_put_image_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:791
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:792
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:793
      port : aliased xcb_xv_port_t;  -- /usr/include/xcb/xv.h:794
      drawable : aliased xcb_xproto_h.xcb_drawable_t;  -- /usr/include/xcb/xv.h:795
      gc : aliased xcb_xproto_h.xcb_gcontext_t;  -- /usr/include/xcb/xv.h:796
      id : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xv.h:797
      src_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xv.h:798
      src_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xv.h:799
      src_w : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:800
      src_h : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:801
      drw_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xv.h:802
      drw_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xv.h:803
      drw_w : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:804
      drw_h : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:805
      width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:806
      height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:807
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_put_image_request_t);  -- /usr/include/xcb/xv.h:790

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
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xv_shm_put_image.  
  --*
  -- * @brief xcb_xv_shm_put_image_request_t
  -- * 

  --*<   
   type anon4213_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_xv_shm_put_image_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:817
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:818
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:819
      port : aliased xcb_xv_port_t;  -- /usr/include/xcb/xv.h:820
      drawable : aliased xcb_xproto_h.xcb_drawable_t;  -- /usr/include/xcb/xv.h:821
      gc : aliased xcb_xproto_h.xcb_gcontext_t;  -- /usr/include/xcb/xv.h:822
      shmseg : aliased xcb_shm_h.xcb_shm_seg_t;  -- /usr/include/xcb/xv.h:823
      id : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xv.h:824
      offset : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xv.h:825
      src_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xv.h:826
      src_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xv.h:827
      src_w : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:828
      src_h : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:829
      drw_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xv.h:830
      drw_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xv.h:831
      drw_w : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:832
      drw_h : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:833
      width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:834
      height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xv.h:835
      send_event : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:836
      pad0 : aliased anon4213_anon1853_array;  -- /usr/include/xcb/xv.h:837
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xv_shm_put_image_request_t);  -- /usr/include/xcb/xv.h:816

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
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xv_port_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xv_port_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xv_port_next
  -- ** 
  -- ** @param xcb_xv_port_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xv_port_next (arg1 : access xcb_xv_port_iterator_t);  -- /usr/include/xcb/xv.h:859
   pragma Import (C, xcb_xv_port_next, "xcb_xv_port_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xv_port_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xv_port_end
  -- ** 
  -- ** @param xcb_xv_port_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_port_end (arg1 : xcb_xv_port_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xv.h:881
   pragma Import (C, xcb_xv_port_end, "xcb_xv_port_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xv_encoding_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xv_encoding_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xv_encoding_next
  -- ** 
  -- ** @param xcb_xv_encoding_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xv_encoding_next (arg1 : access xcb_xv_encoding_iterator_t);  -- /usr/include/xcb/xv.h:902
   pragma Import (C, xcb_xv_encoding_next, "xcb_xv_encoding_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xv_encoding_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xv_encoding_end
  -- ** 
  -- ** @param xcb_xv_encoding_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_encoding_end (arg1 : xcb_xv_encoding_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xv.h:924
   pragma Import (C, xcb_xv_encoding_end, "xcb_xv_encoding_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xv_rational_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xv_rational_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xv_rational_next
  -- ** 
  -- ** @param xcb_xv_rational_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xv_rational_next (arg1 : access xcb_xv_rational_iterator_t);  -- /usr/include/xcb/xv.h:945
   pragma Import (C, xcb_xv_rational_next, "xcb_xv_rational_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xv_rational_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xv_rational_end
  -- ** 
  -- ** @param xcb_xv_rational_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_rational_end (arg1 : xcb_xv_rational_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xv.h:967
   pragma Import (C, xcb_xv_rational_end, "xcb_xv_rational_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xv_format_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xv_format_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xv_format_next
  -- ** 
  -- ** @param xcb_xv_format_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xv_format_next (arg1 : access xcb_xv_format_iterator_t);  -- /usr/include/xcb/xv.h:988
   pragma Import (C, xcb_xv_format_next, "xcb_xv_format_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xv_format_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xv_format_end
  -- ** 
  -- ** @param xcb_xv_format_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_format_end (arg1 : xcb_xv_format_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xv.h:1010
   pragma Import (C, xcb_xv_format_end, "xcb_xv_format_end");

  --*<  
   function xcb_xv_adaptor_info_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xv.h:1013
   pragma Import (C, xcb_xv_adaptor_info_sizeof, "xcb_xv_adaptor_info_sizeof");

  --****************************************************************************
  -- **
  -- ** char * xcb_xv_adaptor_info_name
  -- ** 
  -- ** @param const xcb_xv_adaptor_info_t *R
  -- ** @returns char *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_adaptor_info_name (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/xv.h:1026
   pragma Import (C, xcb_xv_adaptor_info_name, "xcb_xv_adaptor_info_name");

  --****************************************************************************
  -- **
  -- ** int xcb_xv_adaptor_info_name_length
  -- ** 
  -- ** @param const xcb_xv_adaptor_info_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_adaptor_info_name_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xv.h:1039
   pragma Import (C, xcb_xv_adaptor_info_name_length, "xcb_xv_adaptor_info_name_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xv_adaptor_info_name_end
  -- ** 
  -- ** @param const xcb_xv_adaptor_info_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_adaptor_info_name_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xv.h:1052
   pragma Import (C, xcb_xv_adaptor_info_name_end, "xcb_xv_adaptor_info_name_end");

  --****************************************************************************
  -- **
  -- ** xcb_xv_format_t * xcb_xv_adaptor_info_formats
  -- ** 
  -- ** @param const xcb_xv_adaptor_info_t *R
  -- ** @returns xcb_xv_format_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_adaptor_info_formats (arg1 : System.Address) return access xcb_xv_format_t;  -- /usr/include/xcb/xv.h:1065
   pragma Import (C, xcb_xv_adaptor_info_formats, "xcb_xv_adaptor_info_formats");

  --****************************************************************************
  -- **
  -- ** int xcb_xv_adaptor_info_formats_length
  -- ** 
  -- ** @param const xcb_xv_adaptor_info_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_adaptor_info_formats_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xv.h:1078
   pragma Import (C, xcb_xv_adaptor_info_formats_length, "xcb_xv_adaptor_info_formats_length");

  --****************************************************************************
  -- **
  -- ** xcb_xv_format_iterator_t xcb_xv_adaptor_info_formats_iterator
  -- ** 
  -- ** @param const xcb_xv_adaptor_info_t *R
  -- ** @returns xcb_xv_format_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_adaptor_info_formats_iterator (arg1 : System.Address) return xcb_xv_format_iterator_t;  -- /usr/include/xcb/xv.h:1091
   pragma Import (C, xcb_xv_adaptor_info_formats_iterator, "xcb_xv_adaptor_info_formats_iterator");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xv_adaptor_info_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xv_adaptor_info_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xv_adaptor_info_next
  -- ** 
  -- ** @param xcb_xv_adaptor_info_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xv_adaptor_info_next (arg1 : access xcb_xv_adaptor_info_iterator_t);  -- /usr/include/xcb/xv.h:1112
   pragma Import (C, xcb_xv_adaptor_info_next, "xcb_xv_adaptor_info_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xv_adaptor_info_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xv_adaptor_info_end
  -- ** 
  -- ** @param xcb_xv_adaptor_info_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_adaptor_info_end (arg1 : xcb_xv_adaptor_info_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xv.h:1134
   pragma Import (C, xcb_xv_adaptor_info_end, "xcb_xv_adaptor_info_end");

  --*<  
   function xcb_xv_encoding_info_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xv.h:1137
   pragma Import (C, xcb_xv_encoding_info_sizeof, "xcb_xv_encoding_info_sizeof");

  --****************************************************************************
  -- **
  -- ** char * xcb_xv_encoding_info_name
  -- ** 
  -- ** @param const xcb_xv_encoding_info_t *R
  -- ** @returns char *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_encoding_info_name (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/xv.h:1150
   pragma Import (C, xcb_xv_encoding_info_name, "xcb_xv_encoding_info_name");

  --****************************************************************************
  -- **
  -- ** int xcb_xv_encoding_info_name_length
  -- ** 
  -- ** @param const xcb_xv_encoding_info_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_encoding_info_name_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xv.h:1163
   pragma Import (C, xcb_xv_encoding_info_name_length, "xcb_xv_encoding_info_name_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xv_encoding_info_name_end
  -- ** 
  -- ** @param const xcb_xv_encoding_info_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_encoding_info_name_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xv.h:1176
   pragma Import (C, xcb_xv_encoding_info_name_end, "xcb_xv_encoding_info_name_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xv_encoding_info_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xv_encoding_info_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xv_encoding_info_next
  -- ** 
  -- ** @param xcb_xv_encoding_info_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xv_encoding_info_next (arg1 : access xcb_xv_encoding_info_iterator_t);  -- /usr/include/xcb/xv.h:1197
   pragma Import (C, xcb_xv_encoding_info_next, "xcb_xv_encoding_info_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xv_encoding_info_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xv_encoding_info_end
  -- ** 
  -- ** @param xcb_xv_encoding_info_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_encoding_info_end (arg1 : xcb_xv_encoding_info_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xv.h:1219
   pragma Import (C, xcb_xv_encoding_info_end, "xcb_xv_encoding_info_end");

  --*<  
   function xcb_xv_image_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xv.h:1222
   pragma Import (C, xcb_xv_image_sizeof, "xcb_xv_image_sizeof");

  --****************************************************************************
  -- **
  -- ** uint32_t * xcb_xv_image_pitches
  -- ** 
  -- ** @param const xcb_xv_image_t *R
  -- ** @returns uint32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_image_pitches (arg1 : System.Address) return access stdint_h.uint32_t;  -- /usr/include/xcb/xv.h:1235
   pragma Import (C, xcb_xv_image_pitches, "xcb_xv_image_pitches");

  --****************************************************************************
  -- **
  -- ** int xcb_xv_image_pitches_length
  -- ** 
  -- ** @param const xcb_xv_image_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_image_pitches_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xv.h:1248
   pragma Import (C, xcb_xv_image_pitches_length, "xcb_xv_image_pitches_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xv_image_pitches_end
  -- ** 
  -- ** @param const xcb_xv_image_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_image_pitches_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xv.h:1261
   pragma Import (C, xcb_xv_image_pitches_end, "xcb_xv_image_pitches_end");

  --****************************************************************************
  -- **
  -- ** uint32_t * xcb_xv_image_offsets
  -- ** 
  -- ** @param const xcb_xv_image_t *R
  -- ** @returns uint32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_image_offsets (arg1 : System.Address) return access stdint_h.uint32_t;  -- /usr/include/xcb/xv.h:1274
   pragma Import (C, xcb_xv_image_offsets, "xcb_xv_image_offsets");

  --****************************************************************************
  -- **
  -- ** int xcb_xv_image_offsets_length
  -- ** 
  -- ** @param const xcb_xv_image_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_image_offsets_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xv.h:1287
   pragma Import (C, xcb_xv_image_offsets_length, "xcb_xv_image_offsets_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xv_image_offsets_end
  -- ** 
  -- ** @param const xcb_xv_image_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_image_offsets_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xv.h:1300
   pragma Import (C, xcb_xv_image_offsets_end, "xcb_xv_image_offsets_end");

  --****************************************************************************
  -- **
  -- ** uint8_t * xcb_xv_image_data
  -- ** 
  -- ** @param const xcb_xv_image_t *R
  -- ** @returns uint8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_image_data (arg1 : System.Address) return access stdint_h.uint8_t;  -- /usr/include/xcb/xv.h:1313
   pragma Import (C, xcb_xv_image_data, "xcb_xv_image_data");

  --****************************************************************************
  -- **
  -- ** int xcb_xv_image_data_length
  -- ** 
  -- ** @param const xcb_xv_image_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_image_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xv.h:1326
   pragma Import (C, xcb_xv_image_data_length, "xcb_xv_image_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xv_image_data_end
  -- ** 
  -- ** @param const xcb_xv_image_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_image_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xv.h:1339
   pragma Import (C, xcb_xv_image_data_end, "xcb_xv_image_data_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xv_image_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xv_image_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xv_image_next
  -- ** 
  -- ** @param xcb_xv_image_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xv_image_next (arg1 : access xcb_xv_image_iterator_t);  -- /usr/include/xcb/xv.h:1360
   pragma Import (C, xcb_xv_image_next, "xcb_xv_image_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xv_image_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xv_image_end
  -- ** 
  -- ** @param xcb_xv_image_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_image_end (arg1 : xcb_xv_image_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xv.h:1382
   pragma Import (C, xcb_xv_image_end, "xcb_xv_image_end");

  --*<  
   function xcb_xv_attribute_info_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xv.h:1385
   pragma Import (C, xcb_xv_attribute_info_sizeof, "xcb_xv_attribute_info_sizeof");

  --****************************************************************************
  -- **
  -- ** char * xcb_xv_attribute_info_name
  -- ** 
  -- ** @param const xcb_xv_attribute_info_t *R
  -- ** @returns char *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_attribute_info_name (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/xv.h:1398
   pragma Import (C, xcb_xv_attribute_info_name, "xcb_xv_attribute_info_name");

  --****************************************************************************
  -- **
  -- ** int xcb_xv_attribute_info_name_length
  -- ** 
  -- ** @param const xcb_xv_attribute_info_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_attribute_info_name_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xv.h:1411
   pragma Import (C, xcb_xv_attribute_info_name_length, "xcb_xv_attribute_info_name_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xv_attribute_info_name_end
  -- ** 
  -- ** @param const xcb_xv_attribute_info_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_attribute_info_name_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xv.h:1424
   pragma Import (C, xcb_xv_attribute_info_name_end, "xcb_xv_attribute_info_name_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xv_attribute_info_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xv_attribute_info_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xv_attribute_info_next
  -- ** 
  -- ** @param xcb_xv_attribute_info_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xv_attribute_info_next (arg1 : access xcb_xv_attribute_info_iterator_t);  -- /usr/include/xcb/xv.h:1445
   pragma Import (C, xcb_xv_attribute_info_next, "xcb_xv_attribute_info_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xv_attribute_info_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xv_attribute_info_end
  -- ** 
  -- ** @param xcb_xv_attribute_info_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_attribute_info_end (arg1 : xcb_xv_attribute_info_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xv.h:1467
   pragma Import (C, xcb_xv_attribute_info_end, "xcb_xv_attribute_info_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xv_image_format_info_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xv_image_format_info_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xv_image_format_info_next
  -- ** 
  -- ** @param xcb_xv_image_format_info_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xv_image_format_info_next (arg1 : access xcb_xv_image_format_info_iterator_t);  -- /usr/include/xcb/xv.h:1488
   pragma Import (C, xcb_xv_image_format_info_next, "xcb_xv_image_format_info_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xv_image_format_info_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xv_image_format_info_end
  -- ** 
  -- ** @param xcb_xv_image_format_info_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_image_format_info_end (arg1 : xcb_xv_image_format_info_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xv.h:1510
   pragma Import (C, xcb_xv_image_format_info_end, "xcb_xv_image_format_info_end");

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
  -- ** xcb_xv_query_extension_cookie_t xcb_xv_query_extension
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_xv_query_extension_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_query_extension (arg1 : System.Address) return xcb_xv_query_extension_cookie_t;  -- /usr/include/xcb/xv.h:1531
   pragma Import (C, xcb_xv_query_extension, "xcb_xv_query_extension");

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
  -- ** xcb_xv_query_extension_cookie_t xcb_xv_query_extension_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_xv_query_extension_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_query_extension_unchecked (arg1 : System.Address) return xcb_xv_query_extension_cookie_t;  -- /usr/include/xcb/xv.h:1555
   pragma Import (C, xcb_xv_query_extension_unchecked, "xcb_xv_query_extension_unchecked");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_xv_query_extension_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xv_query_extension_reply_t * xcb_xv_query_extension_reply
  -- ** 
  -- ** @param xcb_connection_t                 *c
  -- ** @param xcb_xv_query_extension_cookie_t   cookie
  -- ** @param xcb_generic_error_t             **e
  -- ** @returns xcb_xv_query_extension_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_query_extension_reply
     (arg1 : System.Address;
      arg2 : xcb_xv_query_extension_cookie_t;
      arg3 : System.Address) return access xcb_xv_query_extension_reply_t;  -- /usr/include/xcb/xv.h:1584
   pragma Import (C, xcb_xv_query_extension_reply, "xcb_xv_query_extension_reply");

  --*<  
  --*<  
  --*<  
   function xcb_xv_query_adaptors_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xv.h:1589
   pragma Import (C, xcb_xv_query_adaptors_sizeof, "xcb_xv_query_adaptors_sizeof");

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
  -- ** xcb_xv_query_adaptors_cookie_t xcb_xv_query_adaptors
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_xv_query_adaptors_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_query_adaptors (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xv_query_adaptors_cookie_t;  -- /usr/include/xcb/xv.h:1611
   pragma Import (C, xcb_xv_query_adaptors, "xcb_xv_query_adaptors");

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
  -- ** xcb_xv_query_adaptors_cookie_t xcb_xv_query_adaptors_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_xv_query_adaptors_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_query_adaptors_unchecked (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xv_query_adaptors_cookie_t;  -- /usr/include/xcb/xv.h:1637
   pragma Import (C, xcb_xv_query_adaptors_unchecked, "xcb_xv_query_adaptors_unchecked");

  --*<  
  --****************************************************************************
  -- **
  -- ** int xcb_xv_query_adaptors_info_length
  -- ** 
  -- ** @param const xcb_xv_query_adaptors_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_query_adaptors_info_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xv.h:1651
   pragma Import (C, xcb_xv_query_adaptors_info_length, "xcb_xv_query_adaptors_info_length");

  --****************************************************************************
  -- **
  -- ** xcb_xv_adaptor_info_iterator_t xcb_xv_query_adaptors_info_iterator
  -- ** 
  -- ** @param const xcb_xv_query_adaptors_reply_t *R
  -- ** @returns xcb_xv_adaptor_info_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_query_adaptors_info_iterator (arg1 : System.Address) return xcb_xv_adaptor_info_iterator_t;  -- /usr/include/xcb/xv.h:1664
   pragma Import (C, xcb_xv_query_adaptors_info_iterator, "xcb_xv_query_adaptors_info_iterator");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_xv_query_adaptors_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xv_query_adaptors_reply_t * xcb_xv_query_adaptors_reply
  -- ** 
  -- ** @param xcb_connection_t                *c
  -- ** @param xcb_xv_query_adaptors_cookie_t   cookie
  -- ** @param xcb_generic_error_t            **e
  -- ** @returns xcb_xv_query_adaptors_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_query_adaptors_reply
     (arg1 : System.Address;
      arg2 : xcb_xv_query_adaptors_cookie_t;
      arg3 : System.Address) return access xcb_xv_query_adaptors_reply_t;  -- /usr/include/xcb/xv.h:1693
   pragma Import (C, xcb_xv_query_adaptors_reply, "xcb_xv_query_adaptors_reply");

  --*<  
  --*<  
  --*<  
   function xcb_xv_query_encodings_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xv.h:1698
   pragma Import (C, xcb_xv_query_encodings_sizeof, "xcb_xv_query_encodings_sizeof");

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
  -- ** xcb_xv_query_encodings_cookie_t xcb_xv_query_encodings
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_xv_port_t     port
  -- ** @returns xcb_xv_query_encodings_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_query_encodings (arg1 : System.Address; arg2 : xcb_xv_port_t) return xcb_xv_query_encodings_cookie_t;  -- /usr/include/xcb/xv.h:1720
   pragma Import (C, xcb_xv_query_encodings, "xcb_xv_query_encodings");

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
  -- ** xcb_xv_query_encodings_cookie_t xcb_xv_query_encodings_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_xv_port_t     port
  -- ** @returns xcb_xv_query_encodings_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_query_encodings_unchecked (arg1 : System.Address; arg2 : xcb_xv_port_t) return xcb_xv_query_encodings_cookie_t;  -- /usr/include/xcb/xv.h:1746
   pragma Import (C, xcb_xv_query_encodings_unchecked, "xcb_xv_query_encodings_unchecked");

  --*<  
  --****************************************************************************
  -- **
  -- ** int xcb_xv_query_encodings_info_length
  -- ** 
  -- ** @param const xcb_xv_query_encodings_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_query_encodings_info_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xv.h:1760
   pragma Import (C, xcb_xv_query_encodings_info_length, "xcb_xv_query_encodings_info_length");

  --****************************************************************************
  -- **
  -- ** xcb_xv_encoding_info_iterator_t xcb_xv_query_encodings_info_iterator
  -- ** 
  -- ** @param const xcb_xv_query_encodings_reply_t *R
  -- ** @returns xcb_xv_encoding_info_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_query_encodings_info_iterator (arg1 : System.Address) return xcb_xv_encoding_info_iterator_t;  -- /usr/include/xcb/xv.h:1773
   pragma Import (C, xcb_xv_query_encodings_info_iterator, "xcb_xv_query_encodings_info_iterator");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_xv_query_encodings_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xv_query_encodings_reply_t * xcb_xv_query_encodings_reply
  -- ** 
  -- ** @param xcb_connection_t                 *c
  -- ** @param xcb_xv_query_encodings_cookie_t   cookie
  -- ** @param xcb_generic_error_t             **e
  -- ** @returns xcb_xv_query_encodings_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_query_encodings_reply
     (arg1 : System.Address;
      arg2 : xcb_xv_query_encodings_cookie_t;
      arg3 : System.Address) return access xcb_xv_query_encodings_reply_t;  -- /usr/include/xcb/xv.h:1802
   pragma Import (C, xcb_xv_query_encodings_reply, "xcb_xv_query_encodings_reply");

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
  -- ** xcb_xv_grab_port_cookie_t xcb_xv_grab_port
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_xv_port_t     port
  -- ** @param xcb_timestamp_t   time
  -- ** @returns xcb_xv_grab_port_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_grab_port
     (arg1 : System.Address;
      arg2 : xcb_xv_port_t;
      arg3 : xcb_xproto_h.xcb_timestamp_t) return xcb_xv_grab_port_cookie_t;  -- /usr/include/xcb/xv.h:1827
   pragma Import (C, xcb_xv_grab_port, "xcb_xv_grab_port");

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
  -- ** xcb_xv_grab_port_cookie_t xcb_xv_grab_port_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_xv_port_t     port
  -- ** @param xcb_timestamp_t   time
  -- ** @returns xcb_xv_grab_port_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_grab_port_unchecked
     (arg1 : System.Address;
      arg2 : xcb_xv_port_t;
      arg3 : xcb_xproto_h.xcb_timestamp_t) return xcb_xv_grab_port_cookie_t;  -- /usr/include/xcb/xv.h:1855
   pragma Import (C, xcb_xv_grab_port_unchecked, "xcb_xv_grab_port_unchecked");

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
  -- * xcb_xv_grab_port_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xv_grab_port_reply_t * xcb_xv_grab_port_reply
  -- ** 
  -- ** @param xcb_connection_t           *c
  -- ** @param xcb_xv_grab_port_cookie_t   cookie
  -- ** @param xcb_generic_error_t       **e
  -- ** @returns xcb_xv_grab_port_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_grab_port_reply
     (arg1 : System.Address;
      arg2 : xcb_xv_grab_port_cookie_t;
      arg3 : System.Address) return access xcb_xv_grab_port_reply_t;  -- /usr/include/xcb/xv.h:1886
   pragma Import (C, xcb_xv_grab_port_reply, "xcb_xv_grab_port_reply");

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
  -- ** xcb_void_cookie_t xcb_xv_ungrab_port_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_xv_port_t     port
  -- ** @param xcb_timestamp_t   time
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_ungrab_port_checked
     (arg1 : System.Address;
      arg2 : xcb_xv_port_t;
      arg3 : xcb_xproto_h.xcb_timestamp_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xv.h:1914
   pragma Import (C, xcb_xv_ungrab_port_checked, "xcb_xv_ungrab_port_checked");

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
  -- ** xcb_void_cookie_t xcb_xv_ungrab_port
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_xv_port_t     port
  -- ** @param xcb_timestamp_t   time
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_ungrab_port
     (arg1 : System.Address;
      arg2 : xcb_xv_port_t;
      arg3 : xcb_xproto_h.xcb_timestamp_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xv.h:1939
   pragma Import (C, xcb_xv_ungrab_port, "xcb_xv_ungrab_port");

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
  -- ** xcb_void_cookie_t xcb_xv_put_video_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_xv_port_t     port
  -- ** @param xcb_drawable_t    drawable
  -- ** @param xcb_gcontext_t    gc
  -- ** @param int16_t           vid_x
  -- ** @param int16_t           vid_y
  -- ** @param uint16_t          vid_w
  -- ** @param uint16_t          vid_h
  -- ** @param int16_t           drw_x
  -- ** @param int16_t           drw_y
  -- ** @param uint16_t          drw_w
  -- ** @param uint16_t          drw_h
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_put_video_checked
     (arg1 : System.Address;
      arg2 : xcb_xv_port_t;
      arg3 : xcb_xproto_h.xcb_drawable_t;
      arg4 : xcb_xproto_h.xcb_gcontext_t;
      arg5 : sys_types_h.int16_t;
      arg6 : sys_types_h.int16_t;
      arg7 : stdint_h.uint16_t;
      arg8 : stdint_h.uint16_t;
      arg9 : sys_types_h.int16_t;
      arg10 : sys_types_h.int16_t;
      arg11 : stdint_h.uint16_t;
      arg12 : stdint_h.uint16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xv.h:1976
   pragma Import (C, xcb_xv_put_video_checked, "xcb_xv_put_video_checked");

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
  -- ** xcb_void_cookie_t xcb_xv_put_video
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_xv_port_t     port
  -- ** @param xcb_drawable_t    drawable
  -- ** @param xcb_gcontext_t    gc
  -- ** @param int16_t           vid_x
  -- ** @param int16_t           vid_y
  -- ** @param uint16_t          vid_w
  -- ** @param uint16_t          vid_h
  -- ** @param int16_t           drw_x
  -- ** @param int16_t           drw_y
  -- ** @param uint16_t          drw_w
  -- ** @param uint16_t          drw_h
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_put_video
     (arg1 : System.Address;
      arg2 : xcb_xv_port_t;
      arg3 : xcb_xproto_h.xcb_drawable_t;
      arg4 : xcb_xproto_h.xcb_gcontext_t;
      arg5 : sys_types_h.int16_t;
      arg6 : sys_types_h.int16_t;
      arg7 : stdint_h.uint16_t;
      arg8 : stdint_h.uint16_t;
      arg9 : sys_types_h.int16_t;
      arg10 : sys_types_h.int16_t;
      arg11 : stdint_h.uint16_t;
      arg12 : stdint_h.uint16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xv.h:2019
   pragma Import (C, xcb_xv_put_video, "xcb_xv_put_video");

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
  -- ** xcb_void_cookie_t xcb_xv_put_still_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_xv_port_t     port
  -- ** @param xcb_drawable_t    drawable
  -- ** @param xcb_gcontext_t    gc
  -- ** @param int16_t           vid_x
  -- ** @param int16_t           vid_y
  -- ** @param uint16_t          vid_w
  -- ** @param uint16_t          vid_h
  -- ** @param int16_t           drw_x
  -- ** @param int16_t           drw_y
  -- ** @param uint16_t          drw_w
  -- ** @param uint16_t          drw_h
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_put_still_checked
     (arg1 : System.Address;
      arg2 : xcb_xv_port_t;
      arg3 : xcb_xproto_h.xcb_drawable_t;
      arg4 : xcb_xproto_h.xcb_gcontext_t;
      arg5 : sys_types_h.int16_t;
      arg6 : sys_types_h.int16_t;
      arg7 : stdint_h.uint16_t;
      arg8 : stdint_h.uint16_t;
      arg9 : sys_types_h.int16_t;
      arg10 : sys_types_h.int16_t;
      arg11 : stdint_h.uint16_t;
      arg12 : stdint_h.uint16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xv.h:2065
   pragma Import (C, xcb_xv_put_still_checked, "xcb_xv_put_still_checked");

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
  -- ** xcb_void_cookie_t xcb_xv_put_still
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_xv_port_t     port
  -- ** @param xcb_drawable_t    drawable
  -- ** @param xcb_gcontext_t    gc
  -- ** @param int16_t           vid_x
  -- ** @param int16_t           vid_y
  -- ** @param uint16_t          vid_w
  -- ** @param uint16_t          vid_h
  -- ** @param int16_t           drw_x
  -- ** @param int16_t           drw_y
  -- ** @param uint16_t          drw_w
  -- ** @param uint16_t          drw_h
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_put_still
     (arg1 : System.Address;
      arg2 : xcb_xv_port_t;
      arg3 : xcb_xproto_h.xcb_drawable_t;
      arg4 : xcb_xproto_h.xcb_gcontext_t;
      arg5 : sys_types_h.int16_t;
      arg6 : sys_types_h.int16_t;
      arg7 : stdint_h.uint16_t;
      arg8 : stdint_h.uint16_t;
      arg9 : sys_types_h.int16_t;
      arg10 : sys_types_h.int16_t;
      arg11 : stdint_h.uint16_t;
      arg12 : stdint_h.uint16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xv.h:2108
   pragma Import (C, xcb_xv_put_still, "xcb_xv_put_still");

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
  -- ** xcb_void_cookie_t xcb_xv_get_video_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_xv_port_t     port
  -- ** @param xcb_drawable_t    drawable
  -- ** @param xcb_gcontext_t    gc
  -- ** @param int16_t           vid_x
  -- ** @param int16_t           vid_y
  -- ** @param uint16_t          vid_w
  -- ** @param uint16_t          vid_h
  -- ** @param int16_t           drw_x
  -- ** @param int16_t           drw_y
  -- ** @param uint16_t          drw_w
  -- ** @param uint16_t          drw_h
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_get_video_checked
     (arg1 : System.Address;
      arg2 : xcb_xv_port_t;
      arg3 : xcb_xproto_h.xcb_drawable_t;
      arg4 : xcb_xproto_h.xcb_gcontext_t;
      arg5 : sys_types_h.int16_t;
      arg6 : sys_types_h.int16_t;
      arg7 : stdint_h.uint16_t;
      arg8 : stdint_h.uint16_t;
      arg9 : sys_types_h.int16_t;
      arg10 : sys_types_h.int16_t;
      arg11 : stdint_h.uint16_t;
      arg12 : stdint_h.uint16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xv.h:2154
   pragma Import (C, xcb_xv_get_video_checked, "xcb_xv_get_video_checked");

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
  -- ** xcb_void_cookie_t xcb_xv_get_video
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_xv_port_t     port
  -- ** @param xcb_drawable_t    drawable
  -- ** @param xcb_gcontext_t    gc
  -- ** @param int16_t           vid_x
  -- ** @param int16_t           vid_y
  -- ** @param uint16_t          vid_w
  -- ** @param uint16_t          vid_h
  -- ** @param int16_t           drw_x
  -- ** @param int16_t           drw_y
  -- ** @param uint16_t          drw_w
  -- ** @param uint16_t          drw_h
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_get_video
     (arg1 : System.Address;
      arg2 : xcb_xv_port_t;
      arg3 : xcb_xproto_h.xcb_drawable_t;
      arg4 : xcb_xproto_h.xcb_gcontext_t;
      arg5 : sys_types_h.int16_t;
      arg6 : sys_types_h.int16_t;
      arg7 : stdint_h.uint16_t;
      arg8 : stdint_h.uint16_t;
      arg9 : sys_types_h.int16_t;
      arg10 : sys_types_h.int16_t;
      arg11 : stdint_h.uint16_t;
      arg12 : stdint_h.uint16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xv.h:2197
   pragma Import (C, xcb_xv_get_video, "xcb_xv_get_video");

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
  -- ** xcb_void_cookie_t xcb_xv_get_still_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_xv_port_t     port
  -- ** @param xcb_drawable_t    drawable
  -- ** @param xcb_gcontext_t    gc
  -- ** @param int16_t           vid_x
  -- ** @param int16_t           vid_y
  -- ** @param uint16_t          vid_w
  -- ** @param uint16_t          vid_h
  -- ** @param int16_t           drw_x
  -- ** @param int16_t           drw_y
  -- ** @param uint16_t          drw_w
  -- ** @param uint16_t          drw_h
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_get_still_checked
     (arg1 : System.Address;
      arg2 : xcb_xv_port_t;
      arg3 : xcb_xproto_h.xcb_drawable_t;
      arg4 : xcb_xproto_h.xcb_gcontext_t;
      arg5 : sys_types_h.int16_t;
      arg6 : sys_types_h.int16_t;
      arg7 : stdint_h.uint16_t;
      arg8 : stdint_h.uint16_t;
      arg9 : sys_types_h.int16_t;
      arg10 : sys_types_h.int16_t;
      arg11 : stdint_h.uint16_t;
      arg12 : stdint_h.uint16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xv.h:2243
   pragma Import (C, xcb_xv_get_still_checked, "xcb_xv_get_still_checked");

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
  -- ** xcb_void_cookie_t xcb_xv_get_still
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_xv_port_t     port
  -- ** @param xcb_drawable_t    drawable
  -- ** @param xcb_gcontext_t    gc
  -- ** @param int16_t           vid_x
  -- ** @param int16_t           vid_y
  -- ** @param uint16_t          vid_w
  -- ** @param uint16_t          vid_h
  -- ** @param int16_t           drw_x
  -- ** @param int16_t           drw_y
  -- ** @param uint16_t          drw_w
  -- ** @param uint16_t          drw_h
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_get_still
     (arg1 : System.Address;
      arg2 : xcb_xv_port_t;
      arg3 : xcb_xproto_h.xcb_drawable_t;
      arg4 : xcb_xproto_h.xcb_gcontext_t;
      arg5 : sys_types_h.int16_t;
      arg6 : sys_types_h.int16_t;
      arg7 : stdint_h.uint16_t;
      arg8 : stdint_h.uint16_t;
      arg9 : sys_types_h.int16_t;
      arg10 : sys_types_h.int16_t;
      arg11 : stdint_h.uint16_t;
      arg12 : stdint_h.uint16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xv.h:2286
   pragma Import (C, xcb_xv_get_still, "xcb_xv_get_still");

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
  -- ** xcb_void_cookie_t xcb_xv_stop_video_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_xv_port_t     port
  -- ** @param xcb_drawable_t    drawable
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_stop_video_checked
     (arg1 : System.Address;
      arg2 : xcb_xv_port_t;
      arg3 : xcb_xproto_h.xcb_drawable_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xv.h:2323
   pragma Import (C, xcb_xv_stop_video_checked, "xcb_xv_stop_video_checked");

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
  -- ** xcb_void_cookie_t xcb_xv_stop_video
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_xv_port_t     port
  -- ** @param xcb_drawable_t    drawable
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_stop_video
     (arg1 : System.Address;
      arg2 : xcb_xv_port_t;
      arg3 : xcb_xproto_h.xcb_drawable_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xv.h:2348
   pragma Import (C, xcb_xv_stop_video, "xcb_xv_stop_video");

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
  -- ** xcb_void_cookie_t xcb_xv_select_video_notify_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    drawable
  -- ** @param uint8_t           onoff
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_select_video_notify_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_drawable_t;
      arg3 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xv.h:2376
   pragma Import (C, xcb_xv_select_video_notify_checked, "xcb_xv_select_video_notify_checked");

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
  -- ** xcb_void_cookie_t xcb_xv_select_video_notify
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    drawable
  -- ** @param uint8_t           onoff
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_select_video_notify
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_drawable_t;
      arg3 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xv.h:2401
   pragma Import (C, xcb_xv_select_video_notify, "xcb_xv_select_video_notify");

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
  -- ** xcb_void_cookie_t xcb_xv_select_port_notify_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_xv_port_t     port
  -- ** @param uint8_t           onoff
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_select_port_notify_checked
     (arg1 : System.Address;
      arg2 : xcb_xv_port_t;
      arg3 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xv.h:2429
   pragma Import (C, xcb_xv_select_port_notify_checked, "xcb_xv_select_port_notify_checked");

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
  -- ** xcb_void_cookie_t xcb_xv_select_port_notify
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_xv_port_t     port
  -- ** @param uint8_t           onoff
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_select_port_notify
     (arg1 : System.Address;
      arg2 : xcb_xv_port_t;
      arg3 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xv.h:2454
   pragma Import (C, xcb_xv_select_port_notify, "xcb_xv_select_port_notify");

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
  -- ** xcb_xv_query_best_size_cookie_t xcb_xv_query_best_size
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_xv_port_t     port
  -- ** @param uint16_t          vid_w
  -- ** @param uint16_t          vid_h
  -- ** @param uint16_t          drw_w
  -- ** @param uint16_t          drw_h
  -- ** @param uint8_t           motion
  -- ** @returns xcb_xv_query_best_size_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_query_best_size
     (arg1 : System.Address;
      arg2 : xcb_xv_port_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint16_t;
      arg7 : stdint_h.uint8_t) return xcb_xv_query_best_size_cookie_t;  -- /usr/include/xcb/xv.h:2483
   pragma Import (C, xcb_xv_query_best_size, "xcb_xv_query_best_size");

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
  -- ** xcb_xv_query_best_size_cookie_t xcb_xv_query_best_size_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_xv_port_t     port
  -- ** @param uint16_t          vid_w
  -- ** @param uint16_t          vid_h
  -- ** @param uint16_t          drw_w
  -- ** @param uint16_t          drw_h
  -- ** @param uint8_t           motion
  -- ** @returns xcb_xv_query_best_size_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_query_best_size_unchecked
     (arg1 : System.Address;
      arg2 : xcb_xv_port_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint16_t;
      arg7 : stdint_h.uint8_t) return xcb_xv_query_best_size_cookie_t;  -- /usr/include/xcb/xv.h:2519
   pragma Import (C, xcb_xv_query_best_size_unchecked, "xcb_xv_query_best_size_unchecked");

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
  -- * xcb_xv_query_best_size_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xv_query_best_size_reply_t * xcb_xv_query_best_size_reply
  -- ** 
  -- ** @param xcb_connection_t                 *c
  -- ** @param xcb_xv_query_best_size_cookie_t   cookie
  -- ** @param xcb_generic_error_t             **e
  -- ** @returns xcb_xv_query_best_size_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_query_best_size_reply
     (arg1 : System.Address;
      arg2 : xcb_xv_query_best_size_cookie_t;
      arg3 : System.Address) return access xcb_xv_query_best_size_reply_t;  -- /usr/include/xcb/xv.h:2554
   pragma Import (C, xcb_xv_query_best_size_reply, "xcb_xv_query_best_size_reply");

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
  -- ** xcb_void_cookie_t xcb_xv_set_port_attribute_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_xv_port_t     port
  -- ** @param xcb_atom_t        attribute
  -- ** @param int32_t           value
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_set_port_attribute_checked
     (arg1 : System.Address;
      arg2 : xcb_xv_port_t;
      arg3 : xcb_xproto_h.xcb_atom_t;
      arg4 : sys_types_h.int32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xv.h:2583
   pragma Import (C, xcb_xv_set_port_attribute_checked, "xcb_xv_set_port_attribute_checked");

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
  -- ** xcb_void_cookie_t xcb_xv_set_port_attribute
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_xv_port_t     port
  -- ** @param xcb_atom_t        attribute
  -- ** @param int32_t           value
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_set_port_attribute
     (arg1 : System.Address;
      arg2 : xcb_xv_port_t;
      arg3 : xcb_xproto_h.xcb_atom_t;
      arg4 : sys_types_h.int32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xv.h:2610
   pragma Import (C, xcb_xv_set_port_attribute, "xcb_xv_set_port_attribute");

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
  -- ** xcb_xv_get_port_attribute_cookie_t xcb_xv_get_port_attribute
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_xv_port_t     port
  -- ** @param xcb_atom_t        attribute
  -- ** @returns xcb_xv_get_port_attribute_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_get_port_attribute
     (arg1 : System.Address;
      arg2 : xcb_xv_port_t;
      arg3 : xcb_xproto_h.xcb_atom_t) return xcb_xv_get_port_attribute_cookie_t;  -- /usr/include/xcb/xv.h:2636
   pragma Import (C, xcb_xv_get_port_attribute, "xcb_xv_get_port_attribute");

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
  -- ** xcb_xv_get_port_attribute_cookie_t xcb_xv_get_port_attribute_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_xv_port_t     port
  -- ** @param xcb_atom_t        attribute
  -- ** @returns xcb_xv_get_port_attribute_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_get_port_attribute_unchecked
     (arg1 : System.Address;
      arg2 : xcb_xv_port_t;
      arg3 : xcb_xproto_h.xcb_atom_t) return xcb_xv_get_port_attribute_cookie_t;  -- /usr/include/xcb/xv.h:2664
   pragma Import (C, xcb_xv_get_port_attribute_unchecked, "xcb_xv_get_port_attribute_unchecked");

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
  -- * xcb_xv_get_port_attribute_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xv_get_port_attribute_reply_t * xcb_xv_get_port_attribute_reply
  -- ** 
  -- ** @param xcb_connection_t                    *c
  -- ** @param xcb_xv_get_port_attribute_cookie_t   cookie
  -- ** @param xcb_generic_error_t                **e
  -- ** @returns xcb_xv_get_port_attribute_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_get_port_attribute_reply
     (arg1 : System.Address;
      arg2 : xcb_xv_get_port_attribute_cookie_t;
      arg3 : System.Address) return access xcb_xv_get_port_attribute_reply_t;  -- /usr/include/xcb/xv.h:2695
   pragma Import (C, xcb_xv_get_port_attribute_reply, "xcb_xv_get_port_attribute_reply");

  --*<  
  --*<  
  --*<  
   function xcb_xv_query_port_attributes_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xv.h:2700
   pragma Import (C, xcb_xv_query_port_attributes_sizeof, "xcb_xv_query_port_attributes_sizeof");

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
  -- ** xcb_xv_query_port_attributes_cookie_t xcb_xv_query_port_attributes
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_xv_port_t     port
  -- ** @returns xcb_xv_query_port_attributes_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_query_port_attributes (arg1 : System.Address; arg2 : xcb_xv_port_t) return xcb_xv_query_port_attributes_cookie_t;  -- /usr/include/xcb/xv.h:2722
   pragma Import (C, xcb_xv_query_port_attributes, "xcb_xv_query_port_attributes");

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
  -- ** xcb_xv_query_port_attributes_cookie_t xcb_xv_query_port_attributes_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_xv_port_t     port
  -- ** @returns xcb_xv_query_port_attributes_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_query_port_attributes_unchecked (arg1 : System.Address; arg2 : xcb_xv_port_t) return xcb_xv_query_port_attributes_cookie_t;  -- /usr/include/xcb/xv.h:2748
   pragma Import (C, xcb_xv_query_port_attributes_unchecked, "xcb_xv_query_port_attributes_unchecked");

  --*<  
  --****************************************************************************
  -- **
  -- ** int xcb_xv_query_port_attributes_attributes_length
  -- ** 
  -- ** @param const xcb_xv_query_port_attributes_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_query_port_attributes_attributes_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xv.h:2762
   pragma Import (C, xcb_xv_query_port_attributes_attributes_length, "xcb_xv_query_port_attributes_attributes_length");

  --****************************************************************************
  -- **
  -- ** xcb_xv_attribute_info_iterator_t xcb_xv_query_port_attributes_attributes_iterator
  -- ** 
  -- ** @param const xcb_xv_query_port_attributes_reply_t *R
  -- ** @returns xcb_xv_attribute_info_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_query_port_attributes_attributes_iterator (arg1 : System.Address) return xcb_xv_attribute_info_iterator_t;  -- /usr/include/xcb/xv.h:2775
   pragma Import (C, xcb_xv_query_port_attributes_attributes_iterator, "xcb_xv_query_port_attributes_attributes_iterator");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_xv_query_port_attributes_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xv_query_port_attributes_reply_t * xcb_xv_query_port_attributes_reply
  -- ** 
  -- ** @param xcb_connection_t                       *c
  -- ** @param xcb_xv_query_port_attributes_cookie_t   cookie
  -- ** @param xcb_generic_error_t                   **e
  -- ** @returns xcb_xv_query_port_attributes_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_query_port_attributes_reply
     (arg1 : System.Address;
      arg2 : xcb_xv_query_port_attributes_cookie_t;
      arg3 : System.Address) return access xcb_xv_query_port_attributes_reply_t;  -- /usr/include/xcb/xv.h:2804
   pragma Import (C, xcb_xv_query_port_attributes_reply, "xcb_xv_query_port_attributes_reply");

  --*<  
  --*<  
  --*<  
   function xcb_xv_list_image_formats_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xv.h:2809
   pragma Import (C, xcb_xv_list_image_formats_sizeof, "xcb_xv_list_image_formats_sizeof");

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
  -- ** xcb_xv_list_image_formats_cookie_t xcb_xv_list_image_formats
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_xv_port_t     port
  -- ** @returns xcb_xv_list_image_formats_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_list_image_formats (arg1 : System.Address; arg2 : xcb_xv_port_t) return xcb_xv_list_image_formats_cookie_t;  -- /usr/include/xcb/xv.h:2831
   pragma Import (C, xcb_xv_list_image_formats, "xcb_xv_list_image_formats");

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
  -- ** xcb_xv_list_image_formats_cookie_t xcb_xv_list_image_formats_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_xv_port_t     port
  -- ** @returns xcb_xv_list_image_formats_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_list_image_formats_unchecked (arg1 : System.Address; arg2 : xcb_xv_port_t) return xcb_xv_list_image_formats_cookie_t;  -- /usr/include/xcb/xv.h:2857
   pragma Import (C, xcb_xv_list_image_formats_unchecked, "xcb_xv_list_image_formats_unchecked");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xv_image_format_info_t * xcb_xv_list_image_formats_format
  -- ** 
  -- ** @param const xcb_xv_list_image_formats_reply_t *R
  -- ** @returns xcb_xv_image_format_info_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_list_image_formats_format (arg1 : System.Address) return access xcb_xv_image_format_info_t;  -- /usr/include/xcb/xv.h:2871
   pragma Import (C, xcb_xv_list_image_formats_format, "xcb_xv_list_image_formats_format");

  --****************************************************************************
  -- **
  -- ** int xcb_xv_list_image_formats_format_length
  -- ** 
  -- ** @param const xcb_xv_list_image_formats_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_list_image_formats_format_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xv.h:2884
   pragma Import (C, xcb_xv_list_image_formats_format_length, "xcb_xv_list_image_formats_format_length");

  --****************************************************************************
  -- **
  -- ** xcb_xv_image_format_info_iterator_t xcb_xv_list_image_formats_format_iterator
  -- ** 
  -- ** @param const xcb_xv_list_image_formats_reply_t *R
  -- ** @returns xcb_xv_image_format_info_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_list_image_formats_format_iterator (arg1 : System.Address) return xcb_xv_image_format_info_iterator_t;  -- /usr/include/xcb/xv.h:2897
   pragma Import (C, xcb_xv_list_image_formats_format_iterator, "xcb_xv_list_image_formats_format_iterator");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_xv_list_image_formats_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xv_list_image_formats_reply_t * xcb_xv_list_image_formats_reply
  -- ** 
  -- ** @param xcb_connection_t                    *c
  -- ** @param xcb_xv_list_image_formats_cookie_t   cookie
  -- ** @param xcb_generic_error_t                **e
  -- ** @returns xcb_xv_list_image_formats_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_list_image_formats_reply
     (arg1 : System.Address;
      arg2 : xcb_xv_list_image_formats_cookie_t;
      arg3 : System.Address) return access xcb_xv_list_image_formats_reply_t;  -- /usr/include/xcb/xv.h:2926
   pragma Import (C, xcb_xv_list_image_formats_reply, "xcb_xv_list_image_formats_reply");

  --*<  
  --*<  
  --*<  
   function xcb_xv_query_image_attributes_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xv.h:2931
   pragma Import (C, xcb_xv_query_image_attributes_sizeof, "xcb_xv_query_image_attributes_sizeof");

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
  -- ** xcb_xv_query_image_attributes_cookie_t xcb_xv_query_image_attributes
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_xv_port_t     port
  -- ** @param uint32_t          id
  -- ** @param uint16_t          width
  -- ** @param uint16_t          height
  -- ** @returns xcb_xv_query_image_attributes_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_query_image_attributes
     (arg1 : System.Address;
      arg2 : xcb_xv_port_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint16_t) return xcb_xv_query_image_attributes_cookie_t;  -- /usr/include/xcb/xv.h:2956
   pragma Import (C, xcb_xv_query_image_attributes, "xcb_xv_query_image_attributes");

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
  -- ** xcb_xv_query_image_attributes_cookie_t xcb_xv_query_image_attributes_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_xv_port_t     port
  -- ** @param uint32_t          id
  -- ** @param uint16_t          width
  -- ** @param uint16_t          height
  -- ** @returns xcb_xv_query_image_attributes_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_query_image_attributes_unchecked
     (arg1 : System.Address;
      arg2 : xcb_xv_port_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint16_t) return xcb_xv_query_image_attributes_cookie_t;  -- /usr/include/xcb/xv.h:2988
   pragma Import (C, xcb_xv_query_image_attributes_unchecked, "xcb_xv_query_image_attributes_unchecked");

  --*<  
  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** uint32_t * xcb_xv_query_image_attributes_pitches
  -- ** 
  -- ** @param const xcb_xv_query_image_attributes_reply_t *R
  -- ** @returns uint32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_query_image_attributes_pitches (arg1 : System.Address) return access stdint_h.uint32_t;  -- /usr/include/xcb/xv.h:3005
   pragma Import (C, xcb_xv_query_image_attributes_pitches, "xcb_xv_query_image_attributes_pitches");

  --****************************************************************************
  -- **
  -- ** int xcb_xv_query_image_attributes_pitches_length
  -- ** 
  -- ** @param const xcb_xv_query_image_attributes_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_query_image_attributes_pitches_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xv.h:3018
   pragma Import (C, xcb_xv_query_image_attributes_pitches_length, "xcb_xv_query_image_attributes_pitches_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xv_query_image_attributes_pitches_end
  -- ** 
  -- ** @param const xcb_xv_query_image_attributes_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_query_image_attributes_pitches_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xv.h:3031
   pragma Import (C, xcb_xv_query_image_attributes_pitches_end, "xcb_xv_query_image_attributes_pitches_end");

  --****************************************************************************
  -- **
  -- ** uint32_t * xcb_xv_query_image_attributes_offsets
  -- ** 
  -- ** @param const xcb_xv_query_image_attributes_reply_t *R
  -- ** @returns uint32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_query_image_attributes_offsets (arg1 : System.Address) return access stdint_h.uint32_t;  -- /usr/include/xcb/xv.h:3044
   pragma Import (C, xcb_xv_query_image_attributes_offsets, "xcb_xv_query_image_attributes_offsets");

  --****************************************************************************
  -- **
  -- ** int xcb_xv_query_image_attributes_offsets_length
  -- ** 
  -- ** @param const xcb_xv_query_image_attributes_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_query_image_attributes_offsets_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xv.h:3057
   pragma Import (C, xcb_xv_query_image_attributes_offsets_length, "xcb_xv_query_image_attributes_offsets_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xv_query_image_attributes_offsets_end
  -- ** 
  -- ** @param const xcb_xv_query_image_attributes_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_query_image_attributes_offsets_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xv.h:3070
   pragma Import (C, xcb_xv_query_image_attributes_offsets_end, "xcb_xv_query_image_attributes_offsets_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_xv_query_image_attributes_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xv_query_image_attributes_reply_t * xcb_xv_query_image_attributes_reply
  -- ** 
  -- ** @param xcb_connection_t                        *c
  -- ** @param xcb_xv_query_image_attributes_cookie_t   cookie
  -- ** @param xcb_generic_error_t                    **e
  -- ** @returns xcb_xv_query_image_attributes_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_query_image_attributes_reply
     (arg1 : System.Address;
      arg2 : xcb_xv_query_image_attributes_cookie_t;
      arg3 : System.Address) return access xcb_xv_query_image_attributes_reply_t;  -- /usr/include/xcb/xv.h:3099
   pragma Import (C, xcb_xv_query_image_attributes_reply, "xcb_xv_query_image_attributes_reply");

  --*<  
  --*<  
  --*<  
   function xcb_xv_put_image_sizeof (arg1 : System.Address; arg2 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/xv.h:3104
   pragma Import (C, xcb_xv_put_image_sizeof, "xcb_xv_put_image_sizeof");

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
  -- ** xcb_void_cookie_t xcb_xv_put_image_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_xv_port_t     port
  -- ** @param xcb_drawable_t    drawable
  -- ** @param xcb_gcontext_t    gc
  -- ** @param uint32_t          id
  -- ** @param int16_t           src_x
  -- ** @param int16_t           src_y
  -- ** @param uint16_t          src_w
  -- ** @param uint16_t          src_h
  -- ** @param int16_t           drw_x
  -- ** @param int16_t           drw_y
  -- ** @param uint16_t          drw_w
  -- ** @param uint16_t          drw_h
  -- ** @param uint16_t          width
  -- ** @param uint16_t          height
  -- ** @param uint32_t          data_len
  -- ** @param const uint8_t    *data
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_put_image_checked
     (arg1 : System.Address;
      arg2 : xcb_xv_port_t;
      arg3 : xcb_xproto_h.xcb_drawable_t;
      arg4 : xcb_xproto_h.xcb_gcontext_t;
      arg5 : stdint_h.uint32_t;
      arg6 : sys_types_h.int16_t;
      arg7 : sys_types_h.int16_t;
      arg8 : stdint_h.uint16_t;
      arg9 : stdint_h.uint16_t;
      arg10 : sys_types_h.int16_t;
      arg11 : sys_types_h.int16_t;
      arg12 : stdint_h.uint16_t;
      arg13 : stdint_h.uint16_t;
      arg14 : stdint_h.uint16_t;
      arg15 : stdint_h.uint16_t;
      arg16 : stdint_h.uint32_t;
      arg17 : access stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xv.h:3145
   pragma Import (C, xcb_xv_put_image_checked, "xcb_xv_put_image_checked");

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
  -- ** xcb_void_cookie_t xcb_xv_put_image
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_xv_port_t     port
  -- ** @param xcb_drawable_t    drawable
  -- ** @param xcb_gcontext_t    gc
  -- ** @param uint32_t          id
  -- ** @param int16_t           src_x
  -- ** @param int16_t           src_y
  -- ** @param uint16_t          src_w
  -- ** @param uint16_t          src_h
  -- ** @param int16_t           drw_x
  -- ** @param int16_t           drw_y
  -- ** @param uint16_t          drw_w
  -- ** @param uint16_t          drw_h
  -- ** @param uint16_t          width
  -- ** @param uint16_t          height
  -- ** @param uint32_t          data_len
  -- ** @param const uint8_t    *data
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_put_image
     (arg1 : System.Address;
      arg2 : xcb_xv_port_t;
      arg3 : xcb_xproto_h.xcb_drawable_t;
      arg4 : xcb_xproto_h.xcb_gcontext_t;
      arg5 : stdint_h.uint32_t;
      arg6 : sys_types_h.int16_t;
      arg7 : sys_types_h.int16_t;
      arg8 : stdint_h.uint16_t;
      arg9 : stdint_h.uint16_t;
      arg10 : sys_types_h.int16_t;
      arg11 : sys_types_h.int16_t;
      arg12 : stdint_h.uint16_t;
      arg13 : stdint_h.uint16_t;
      arg14 : stdint_h.uint16_t;
      arg15 : stdint_h.uint16_t;
      arg16 : stdint_h.uint32_t;
      arg17 : access stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xv.h:3198
   pragma Import (C, xcb_xv_put_image, "xcb_xv_put_image");

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
  -- ** xcb_void_cookie_t xcb_xv_shm_put_image_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_xv_port_t     port
  -- ** @param xcb_drawable_t    drawable
  -- ** @param xcb_gcontext_t    gc
  -- ** @param xcb_shm_seg_t     shmseg
  -- ** @param uint32_t          id
  -- ** @param uint32_t          offset
  -- ** @param int16_t           src_x
  -- ** @param int16_t           src_y
  -- ** @param uint16_t          src_w
  -- ** @param uint16_t          src_h
  -- ** @param int16_t           drw_x
  -- ** @param int16_t           drw_y
  -- ** @param uint16_t          drw_w
  -- ** @param uint16_t          drw_h
  -- ** @param uint16_t          width
  -- ** @param uint16_t          height
  -- ** @param uint8_t           send_event
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_shm_put_image_checked
     (arg1 : System.Address;
      arg2 : xcb_xv_port_t;
      arg3 : xcb_xproto_h.xcb_drawable_t;
      arg4 : xcb_xproto_h.xcb_gcontext_t;
      arg5 : xcb_shm_h.xcb_shm_seg_t;
      arg6 : stdint_h.uint32_t;
      arg7 : stdint_h.uint32_t;
      arg8 : sys_types_h.int16_t;
      arg9 : sys_types_h.int16_t;
      arg10 : stdint_h.uint16_t;
      arg11 : stdint_h.uint16_t;
      arg12 : sys_types_h.int16_t;
      arg13 : sys_types_h.int16_t;
      arg14 : stdint_h.uint16_t;
      arg15 : stdint_h.uint16_t;
      arg16 : stdint_h.uint16_t;
      arg17 : stdint_h.uint16_t;
      arg18 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xv.h:3255
   pragma Import (C, xcb_xv_shm_put_image_checked, "xcb_xv_shm_put_image_checked");

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
  -- ** xcb_void_cookie_t xcb_xv_shm_put_image
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_xv_port_t     port
  -- ** @param xcb_drawable_t    drawable
  -- ** @param xcb_gcontext_t    gc
  -- ** @param xcb_shm_seg_t     shmseg
  -- ** @param uint32_t          id
  -- ** @param uint32_t          offset
  -- ** @param int16_t           src_x
  -- ** @param int16_t           src_y
  -- ** @param uint16_t          src_w
  -- ** @param uint16_t          src_h
  -- ** @param int16_t           drw_x
  -- ** @param int16_t           drw_y
  -- ** @param uint16_t          drw_w
  -- ** @param uint16_t          drw_h
  -- ** @param uint16_t          width
  -- ** @param uint16_t          height
  -- ** @param uint8_t           send_event
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xv_shm_put_image
     (arg1 : System.Address;
      arg2 : xcb_xv_port_t;
      arg3 : xcb_xproto_h.xcb_drawable_t;
      arg4 : xcb_xproto_h.xcb_gcontext_t;
      arg5 : xcb_shm_h.xcb_shm_seg_t;
      arg6 : stdint_h.uint32_t;
      arg7 : stdint_h.uint32_t;
      arg8 : sys_types_h.int16_t;
      arg9 : sys_types_h.int16_t;
      arg10 : stdint_h.uint16_t;
      arg11 : stdint_h.uint16_t;
      arg12 : sys_types_h.int16_t;
      arg13 : sys_types_h.int16_t;
      arg14 : stdint_h.uint16_t;
      arg15 : stdint_h.uint16_t;
      arg16 : stdint_h.uint16_t;
      arg17 : stdint_h.uint16_t;
      arg18 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xv.h:3310
   pragma Import (C, xcb_xv_shm_put_image, "xcb_xv_shm_put_image");

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
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*
  -- * @}
  --  

end xcb_xv_h;
