with Interfaces.C; use Interfaces.C;
with xcb_xcb_h;
with stdint_h;
with xcb_xproto_h;
with sys_types_h;
with xcb_render_h;
with System;
with Interfaces.C.Strings;

package xcb_randr_h is

   --  unsupported macro: XCB_RANDR_MAJOR_VERSION 1
   --  unsupported macro: XCB_RANDR_MINOR_VERSION 3
   --  unsupported macro: XCB_RANDR_BAD_OUTPUT 0
   --  unsupported macro: XCB_RANDR_BAD_CRTC 1
   --  unsupported macro: XCB_RANDR_BAD_MODE 2
   --  unsupported macro: XCB_RANDR_QUERY_VERSION 0
   --  unsupported macro: XCB_RANDR_SET_SCREEN_CONFIG 2
   --  unsupported macro: XCB_RANDR_SELECT_INPUT 4
   --  unsupported macro: XCB_RANDR_GET_SCREEN_INFO 5
   --  unsupported macro: XCB_RANDR_GET_SCREEN_SIZE_RANGE 6
   --  unsupported macro: XCB_RANDR_SET_SCREEN_SIZE 7
   --  unsupported macro: XCB_RANDR_GET_SCREEN_RESOURCES 8
   --  unsupported macro: XCB_RANDR_GET_OUTPUT_INFO 9
   --  unsupported macro: XCB_RANDR_LIST_OUTPUT_PROPERTIES 10
   --  unsupported macro: XCB_RANDR_QUERY_OUTPUT_PROPERTY 11
   --  unsupported macro: XCB_RANDR_CONFIGURE_OUTPUT_PROPERTY 12
   --  unsupported macro: XCB_RANDR_CHANGE_OUTPUT_PROPERTY 13
   --  unsupported macro: XCB_RANDR_DELETE_OUTPUT_PROPERTY 14
   --  unsupported macro: XCB_RANDR_GET_OUTPUT_PROPERTY 15
   --  unsupported macro: XCB_RANDR_CREATE_MODE 16
   --  unsupported macro: XCB_RANDR_DESTROY_MODE 17
   --  unsupported macro: XCB_RANDR_ADD_OUTPUT_MODE 18
   --  unsupported macro: XCB_RANDR_DELETE_OUTPUT_MODE 19
   --  unsupported macro: XCB_RANDR_GET_CRTC_INFO 20
   --  unsupported macro: XCB_RANDR_SET_CRTC_CONFIG 21
   --  unsupported macro: XCB_RANDR_GET_CRTC_GAMMA_SIZE 22
   --  unsupported macro: XCB_RANDR_GET_CRTC_GAMMA 23
   --  unsupported macro: XCB_RANDR_SET_CRTC_GAMMA 24
   --  unsupported macro: XCB_RANDR_GET_SCREEN_RESOURCES_CURRENT 25
   --  unsupported macro: XCB_RANDR_SET_CRTC_TRANSFORM 26
   --  unsupported macro: XCB_RANDR_GET_CRTC_TRANSFORM 27
   --  unsupported macro: XCB_RANDR_GET_PANNING 28
   --  unsupported macro: XCB_RANDR_SET_PANNING 29
   --  unsupported macro: XCB_RANDR_SET_OUTPUT_PRIMARY 30
   --  unsupported macro: XCB_RANDR_GET_OUTPUT_PRIMARY 31
   --  unsupported macro: XCB_RANDR_SCREEN_CHANGE_NOTIFY 0
   --  unsupported macro: XCB_RANDR_NOTIFY 1
  -- * This file generated automatically from randr.xml by c_client.py.
  -- * Edit at your peril.
  --  

  --*
  -- * @defgroup XCB_RandR_API XCB RandR API
  -- * @brief RandR XCB Protocol Implementation.
  -- * @{
  -- * 

   xcb_randr_id : aliased xcb_xcb_h.xcb_extension_t;  -- /usr/include/xcb/randr.h:26
   pragma Import (C, xcb_randr_id, "xcb_randr_id");

   subtype xcb_randr_mode_t is stdint_h.uint32_t;  -- /usr/include/xcb/randr.h:28

  --*
  -- * @brief xcb_randr_mode_iterator_t
  -- * 

  --*<   
   type xcb_randr_mode_iterator_t is record
      data : access xcb_randr_mode_t;  -- /usr/include/xcb/randr.h:34
      c_rem : aliased int;  -- /usr/include/xcb/randr.h:35
      index : aliased int;  -- /usr/include/xcb/randr.h:36
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_mode_iterator_t);  -- /usr/include/xcb/randr.h:33

  --*<   
  --*<   
   subtype xcb_randr_crtc_t is stdint_h.uint32_t;  -- /usr/include/xcb/randr.h:39

  --*
  -- * @brief xcb_randr_crtc_iterator_t
  -- * 

  --*<   
   type xcb_randr_crtc_iterator_t is record
      data : access xcb_randr_crtc_t;  -- /usr/include/xcb/randr.h:45
      c_rem : aliased int;  -- /usr/include/xcb/randr.h:46
      index : aliased int;  -- /usr/include/xcb/randr.h:47
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_crtc_iterator_t);  -- /usr/include/xcb/randr.h:44

  --*<   
  --*<   
   subtype xcb_randr_output_t is stdint_h.uint32_t;  -- /usr/include/xcb/randr.h:50

  --*
  -- * @brief xcb_randr_output_iterator_t
  -- * 

  --*<   
   type xcb_randr_output_iterator_t is record
      data : access xcb_randr_output_t;  -- /usr/include/xcb/randr.h:56
      c_rem : aliased int;  -- /usr/include/xcb/randr.h:57
      index : aliased int;  -- /usr/include/xcb/randr.h:58
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_output_iterator_t);  -- /usr/include/xcb/randr.h:55

  --*<   
  --*<   
  --* Opcode for xcb_randr_bad_output.  
  --*
  -- * @brief xcb_randr_bad_output_error_t
  -- * 

  --*<   
   type xcb_randr_bad_output_error_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:68
      error_code : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:69
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:70
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_bad_output_error_t);  -- /usr/include/xcb/randr.h:67

  --*<   
  --*<   
  --* Opcode for xcb_randr_bad_crtc.  
  --*
  -- * @brief xcb_randr_bad_crtc_error_t
  -- * 

  --*<   
   type xcb_randr_bad_crtc_error_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:80
      error_code : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:81
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:82
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_bad_crtc_error_t);  -- /usr/include/xcb/randr.h:79

  --*<   
  --*<   
  --* Opcode for xcb_randr_bad_mode.  
  --*
  -- * @brief xcb_randr_bad_mode_error_t
  -- * 

  --*<   
   type xcb_randr_bad_mode_error_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:92
      error_code : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:93
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:94
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_bad_mode_error_t);  -- /usr/include/xcb/randr.h:91

  --*<   
  --*<   
   subtype xcb_randr_rotation_t is unsigned;
   XCB_RANDR_ROTATION_ROTATE_0 : constant xcb_randr_rotation_t := 1;
   XCB_RANDR_ROTATION_ROTATE_90 : constant xcb_randr_rotation_t := 2;
   XCB_RANDR_ROTATION_ROTATE_180 : constant xcb_randr_rotation_t := 4;
   XCB_RANDR_ROTATION_ROTATE_270 : constant xcb_randr_rotation_t := 8;
   XCB_RANDR_ROTATION_REFLECT_X : constant xcb_randr_rotation_t := 16;
   XCB_RANDR_ROTATION_REFLECT_Y : constant xcb_randr_rotation_t := 32;  -- /usr/include/xcb/randr.h:97

  --*
  -- * @brief xcb_randr_screen_size_t
  -- * 

  --*<   
   type xcb_randr_screen_size_t is record
      width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:110
      height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:111
      mwidth : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:112
      mheight : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:113
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_screen_size_t);  -- /usr/include/xcb/randr.h:109

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_randr_screen_size_iterator_t
  -- * 

  --*<   
   type xcb_randr_screen_size_iterator_t is record
      data : access xcb_randr_screen_size_t;  -- /usr/include/xcb/randr.h:120
      c_rem : aliased int;  -- /usr/include/xcb/randr.h:121
      index : aliased int;  -- /usr/include/xcb/randr.h:122
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_screen_size_iterator_t);  -- /usr/include/xcb/randr.h:119

  --*<   
  --*<   
  --*
  -- * @brief xcb_randr_refresh_rates_t
  -- * 

  --*<   
   type xcb_randr_refresh_rates_t is record
      nRates : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:129
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_refresh_rates_t);  -- /usr/include/xcb/randr.h:128

  --*
  -- * @brief xcb_randr_refresh_rates_iterator_t
  -- * 

  --*<   
   type xcb_randr_refresh_rates_iterator_t is record
      data : access xcb_randr_refresh_rates_t;  -- /usr/include/xcb/randr.h:136
      c_rem : aliased int;  -- /usr/include/xcb/randr.h:137
      index : aliased int;  -- /usr/include/xcb/randr.h:138
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_refresh_rates_iterator_t);  -- /usr/include/xcb/randr.h:135

  --*<   
  --*<   
  --*
  -- * @brief xcb_randr_query_version_cookie_t
  -- * 

  --*<   
   type xcb_randr_query_version_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/randr.h:145
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_query_version_cookie_t);  -- /usr/include/xcb/randr.h:144

  --* Opcode for xcb_randr_query_version.  
  --*
  -- * @brief xcb_randr_query_version_request_t
  -- * 

  --*<   
   type xcb_randr_query_version_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:155
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:156
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:157
      major_version : aliased stdint_h.uint32_t;  -- /usr/include/xcb/randr.h:158
      minor_version : aliased stdint_h.uint32_t;  -- /usr/include/xcb/randr.h:159
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_query_version_request_t);  -- /usr/include/xcb/randr.h:154

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_randr_query_version_reply_t
  -- * 

  --*<   
   type anon4642_anon4083_array is array (0 .. 15) of aliased stdint_h.uint8_t;
   type xcb_randr_query_version_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:166
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:167
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:168
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/randr.h:169
      major_version : aliased stdint_h.uint32_t;  -- /usr/include/xcb/randr.h:170
      minor_version : aliased stdint_h.uint32_t;  -- /usr/include/xcb/randr.h:171
      pad1 : aliased anon4642_anon4083_array;  -- /usr/include/xcb/randr.h:172
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_query_version_reply_t);  -- /usr/include/xcb/randr.h:165

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
   type xcb_randr_set_config_t is 
     (XCB_RANDR_SET_CONFIG_SUCCESS,
      XCB_RANDR_SET_CONFIG_INVALID_CONFIG_TIME,
      XCB_RANDR_SET_CONFIG_INVALID_TIME,
      XCB_RANDR_SET_CONFIG_FAILED);
   pragma Convention (C, xcb_randr_set_config_t);  -- /usr/include/xcb/randr.h:175

  --*
  -- * @brief xcb_randr_set_screen_config_cookie_t
  -- * 

  --*<   
   type xcb_randr_set_screen_config_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/randr.h:186
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_set_screen_config_cookie_t);  -- /usr/include/xcb/randr.h:185

  --* Opcode for xcb_randr_set_screen_config.  
  --*
  -- * @brief xcb_randr_set_screen_config_request_t
  -- * 

  --*<   
   type anon4650_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_randr_set_screen_config_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:196
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:197
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:198
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/randr.h:199
      timestamp : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/randr.h:200
      config_timestamp : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/randr.h:201
      sizeID : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:202
      rotation : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:203
      rate : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:204
      pad0 : aliased anon4650_anon1795_array;  -- /usr/include/xcb/randr.h:205
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_set_screen_config_request_t);  -- /usr/include/xcb/randr.h:195

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
  -- * @brief xcb_randr_set_screen_config_reply_t
  -- * 

  --*<   
   type anon4654_anon4656_array is array (0 .. 9) of aliased stdint_h.uint8_t;
   type xcb_randr_set_screen_config_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:212
      status : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:213
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:214
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/randr.h:215
      new_timestamp : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/randr.h:216
      config_timestamp : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/randr.h:217
      root : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/randr.h:218
      subpixel_order : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:219
      pad0 : aliased anon4654_anon4656_array;  -- /usr/include/xcb/randr.h:220
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_set_screen_config_reply_t);  -- /usr/include/xcb/randr.h:211

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
   subtype xcb_randr_notify_mask_t is unsigned;
   XCB_RANDR_NOTIFY_MASK_SCREEN_CHANGE : constant xcb_randr_notify_mask_t := 1;
   XCB_RANDR_NOTIFY_MASK_CRTC_CHANGE : constant xcb_randr_notify_mask_t := 2;
   XCB_RANDR_NOTIFY_MASK_OUTPUT_CHANGE : constant xcb_randr_notify_mask_t := 4;
   XCB_RANDR_NOTIFY_MASK_OUTPUT_PROPERTY : constant xcb_randr_notify_mask_t := 8;  -- /usr/include/xcb/randr.h:223

  --* Opcode for xcb_randr_select_input.  
  --*
  -- * @brief xcb_randr_select_input_request_t
  -- * 

  --*<   
   type anon4661_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_randr_select_input_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:237
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:238
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:239
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/randr.h:240
      enable : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:241
      pad0 : aliased anon4661_anon1795_array;  -- /usr/include/xcb/randr.h:242
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_select_input_request_t);  -- /usr/include/xcb/randr.h:236

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_randr_get_screen_info_cookie_t
  -- * 

  --*<   
   type xcb_randr_get_screen_info_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/randr.h:249
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_get_screen_info_cookie_t);  -- /usr/include/xcb/randr.h:248

  --* Opcode for xcb_randr_get_screen_info.  
  --*
  -- * @brief xcb_randr_get_screen_info_request_t
  -- * 

  --*<   
   type xcb_randr_get_screen_info_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:259
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:260
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:261
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/randr.h:262
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_get_screen_info_request_t);  -- /usr/include/xcb/randr.h:258

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_randr_get_screen_info_reply_t
  -- * 

  --*<   
   type anon4669_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_randr_get_screen_info_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:269
      rotations : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:270
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:271
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/randr.h:272
      root : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/randr.h:273
      timestamp : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/randr.h:274
      config_timestamp : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/randr.h:275
      nSizes : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:276
      sizeID : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:277
      rotation : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:278
      rate : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:279
      nInfo : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:280
      pad0 : aliased anon4669_anon1795_array;  -- /usr/include/xcb/randr.h:281
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_get_screen_info_reply_t);  -- /usr/include/xcb/randr.h:268

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
  -- * @brief xcb_randr_get_screen_size_range_cookie_t
  -- * 

  --*<   
   type xcb_randr_get_screen_size_range_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/randr.h:288
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_get_screen_size_range_cookie_t);  -- /usr/include/xcb/randr.h:287

  --* Opcode for xcb_randr_get_screen_size_range.  
  --*
  -- * @brief xcb_randr_get_screen_size_range_request_t
  -- * 

  --*<   
   type xcb_randr_get_screen_size_range_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:298
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:299
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:300
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/randr.h:301
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_get_screen_size_range_request_t);  -- /usr/include/xcb/randr.h:297

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_randr_get_screen_size_range_reply_t
  -- * 

  --*<   
   type anon4677_anon4083_array is array (0 .. 15) of aliased stdint_h.uint8_t;
   type xcb_randr_get_screen_size_range_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:308
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:309
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:310
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/randr.h:311
      min_width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:312
      min_height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:313
      max_width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:314
      max_height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:315
      pad1 : aliased anon4677_anon4083_array;  -- /usr/include/xcb/randr.h:316
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_get_screen_size_range_reply_t);  -- /usr/include/xcb/randr.h:307

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_randr_set_screen_size.  
  --*
  -- * @brief xcb_randr_set_screen_size_request_t
  -- * 

  --*<   
   type xcb_randr_set_screen_size_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:326
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:327
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:328
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/randr.h:329
      width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:330
      height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:331
      mm_width : aliased stdint_h.uint32_t;  -- /usr/include/xcb/randr.h:332
      mm_height : aliased stdint_h.uint32_t;  -- /usr/include/xcb/randr.h:333
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_set_screen_size_request_t);  -- /usr/include/xcb/randr.h:325

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
   subtype xcb_randr_mode_flag_t is unsigned;
   XCB_RANDR_MODE_FLAG_HSYNC_POSITIVE : constant xcb_randr_mode_flag_t := 1;
   XCB_RANDR_MODE_FLAG_HSYNC_NEGATIVE : constant xcb_randr_mode_flag_t := 2;
   XCB_RANDR_MODE_FLAG_VSYNC_POSITIVE : constant xcb_randr_mode_flag_t := 4;
   XCB_RANDR_MODE_FLAG_VSYNC_NEGATIVE : constant xcb_randr_mode_flag_t := 8;
   XCB_RANDR_MODE_FLAG_INTERLACE : constant xcb_randr_mode_flag_t := 16;
   XCB_RANDR_MODE_FLAG_DOUBLE_SCAN : constant xcb_randr_mode_flag_t := 32;
   XCB_RANDR_MODE_FLAG_CSYNC : constant xcb_randr_mode_flag_t := 64;
   XCB_RANDR_MODE_FLAG_CSYNC_POSITIVE : constant xcb_randr_mode_flag_t := 128;
   XCB_RANDR_MODE_FLAG_CSYNC_NEGATIVE : constant xcb_randr_mode_flag_t := 256;
   XCB_RANDR_MODE_FLAG_HSKEW_PRESENT : constant xcb_randr_mode_flag_t := 512;
   XCB_RANDR_MODE_FLAG_BCAST : constant xcb_randr_mode_flag_t := 1024;
   XCB_RANDR_MODE_FLAG_PIXEL_MULTIPLEX : constant xcb_randr_mode_flag_t := 2048;
   XCB_RANDR_MODE_FLAG_DOUBLE_CLOCK : constant xcb_randr_mode_flag_t := 4096;
   XCB_RANDR_MODE_FLAG_HALVE_CLOCK : constant xcb_randr_mode_flag_t := 8192;  -- /usr/include/xcb/randr.h:336

  --*
  -- * @brief xcb_randr_mode_info_t
  -- * 

  --*<   
   type xcb_randr_mode_info_t is record
      id : aliased stdint_h.uint32_t;  -- /usr/include/xcb/randr.h:357
      width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:358
      height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:359
      dot_clock : aliased stdint_h.uint32_t;  -- /usr/include/xcb/randr.h:360
      hsync_start : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:361
      hsync_end : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:362
      htotal : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:363
      hskew : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:364
      vsync_start : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:365
      vsync_end : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:366
      vtotal : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:367
      name_len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:368
      mode_flags : aliased stdint_h.uint32_t;  -- /usr/include/xcb/randr.h:369
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_mode_info_t);  -- /usr/include/xcb/randr.h:356

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
  -- * @brief xcb_randr_mode_info_iterator_t
  -- * 

  --*<   
   type xcb_randr_mode_info_iterator_t is record
      data : access xcb_randr_mode_info_t;  -- /usr/include/xcb/randr.h:376
      c_rem : aliased int;  -- /usr/include/xcb/randr.h:377
      index : aliased int;  -- /usr/include/xcb/randr.h:378
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_mode_info_iterator_t);  -- /usr/include/xcb/randr.h:375

  --*<   
  --*<   
  --*
  -- * @brief xcb_randr_get_screen_resources_cookie_t
  -- * 

  --*<   
   type xcb_randr_get_screen_resources_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/randr.h:385
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_get_screen_resources_cookie_t);  -- /usr/include/xcb/randr.h:384

  --* Opcode for xcb_randr_get_screen_resources.  
  --*
  -- * @brief xcb_randr_get_screen_resources_request_t
  -- * 

  --*<   
   type xcb_randr_get_screen_resources_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:395
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:396
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:397
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/randr.h:398
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_get_screen_resources_request_t);  -- /usr/include/xcb/randr.h:394

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_randr_get_screen_resources_reply_t
  -- * 

  --*<   
   type anon4695_anon2427_array is array (0 .. 7) of aliased stdint_h.uint8_t;
   type xcb_randr_get_screen_resources_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:405
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:406
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:407
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/randr.h:408
      timestamp : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/randr.h:409
      config_timestamp : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/randr.h:410
      num_crtcs : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:411
      num_outputs : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:412
      num_modes : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:413
      names_len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:414
      pad1 : aliased anon4695_anon2427_array;  -- /usr/include/xcb/randr.h:415
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_get_screen_resources_reply_t);  -- /usr/include/xcb/randr.h:404

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
   type xcb_randr_connection_t is 
     (XCB_RANDR_CONNECTION_CONNECTED,
      XCB_RANDR_CONNECTION_DISCONNECTED,
      XCB_RANDR_CONNECTION_UNKNOWN);
   pragma Convention (C, xcb_randr_connection_t);  -- /usr/include/xcb/randr.h:418

  --*
  -- * @brief xcb_randr_get_output_info_cookie_t
  -- * 

  --*<   
   type xcb_randr_get_output_info_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/randr.h:428
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_get_output_info_cookie_t);  -- /usr/include/xcb/randr.h:427

  --* Opcode for xcb_randr_get_output_info.  
  --*
  -- * @brief xcb_randr_get_output_info_request_t
  -- * 

  --*<   
   type xcb_randr_get_output_info_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:438
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:439
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:440
      output : aliased xcb_randr_output_t;  -- /usr/include/xcb/randr.h:441
      config_timestamp : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/randr.h:442
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_get_output_info_request_t);  -- /usr/include/xcb/randr.h:437

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_randr_get_output_info_reply_t
  -- * 

  --*<   
   type xcb_randr_get_output_info_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:449
      status : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:450
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:451
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/randr.h:452
      timestamp : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/randr.h:453
      crtc : aliased xcb_randr_crtc_t;  -- /usr/include/xcb/randr.h:454
      mm_width : aliased stdint_h.uint32_t;  -- /usr/include/xcb/randr.h:455
      mm_height : aliased stdint_h.uint32_t;  -- /usr/include/xcb/randr.h:456
      connection : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:457
      subpixel_order : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:458
      num_crtcs : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:459
      num_modes : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:460
      num_preferred : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:461
      num_clones : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:462
      name_len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:463
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_get_output_info_reply_t);  -- /usr/include/xcb/randr.h:448

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
  -- * @brief xcb_randr_list_output_properties_cookie_t
  -- * 

  --*<   
   type xcb_randr_list_output_properties_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/randr.h:470
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_list_output_properties_cookie_t);  -- /usr/include/xcb/randr.h:469

  --* Opcode for xcb_randr_list_output_properties.  
  --*
  -- * @brief xcb_randr_list_output_properties_request_t
  -- * 

  --*<   
   type xcb_randr_list_output_properties_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:480
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:481
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:482
      output : aliased xcb_randr_output_t;  -- /usr/include/xcb/randr.h:483
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_list_output_properties_request_t);  -- /usr/include/xcb/randr.h:479

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_randr_list_output_properties_reply_t
  -- * 

  --*<   
   type anon4711_anon2060_array is array (0 .. 21) of aliased stdint_h.uint8_t;
   type xcb_randr_list_output_properties_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:490
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:491
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:492
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/randr.h:493
      num_atoms : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:494
      pad1 : aliased anon4711_anon2060_array;  -- /usr/include/xcb/randr.h:495
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_list_output_properties_reply_t);  -- /usr/include/xcb/randr.h:489

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_randr_query_output_property_cookie_t
  -- * 

  --*<   
   type xcb_randr_query_output_property_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/randr.h:502
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_query_output_property_cookie_t);  -- /usr/include/xcb/randr.h:501

  --* Opcode for xcb_randr_query_output_property.  
  --*
  -- * @brief xcb_randr_query_output_property_request_t
  -- * 

  --*<   
   type xcb_randr_query_output_property_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:512
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:513
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:514
      output : aliased xcb_randr_output_t;  -- /usr/include/xcb/randr.h:515
      property : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/randr.h:516
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_query_output_property_request_t);  -- /usr/include/xcb/randr.h:511

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_randr_query_output_property_reply_t
  -- * 

  --*<   
   type anon4719_anon4721_array is array (0 .. 20) of aliased stdint_h.uint8_t;
   type xcb_randr_query_output_property_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:523
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:524
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:525
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/randr.h:526
      pending : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:527
      c_range : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:528
      immutable : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:529
      pad1 : aliased anon4719_anon4721_array;  -- /usr/include/xcb/randr.h:530
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_query_output_property_reply_t);  -- /usr/include/xcb/randr.h:522

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_randr_configure_output_property.  
  --*
  -- * @brief xcb_randr_configure_output_property_request_t
  -- * 

  --*<   
   type anon4724_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_randr_configure_output_property_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:540
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:541
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:542
      output : aliased xcb_randr_output_t;  -- /usr/include/xcb/randr.h:543
      property : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/randr.h:544
      pending : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:545
      c_range : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:546
      pad0 : aliased anon4724_anon1795_array;  -- /usr/include/xcb/randr.h:547
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_configure_output_property_request_t);  -- /usr/include/xcb/randr.h:539

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_randr_change_output_property.  
  --*
  -- * @brief xcb_randr_change_output_property_request_t
  -- * 

  --*<   
   type anon4728_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_randr_change_output_property_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:557
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:558
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:559
      output : aliased xcb_randr_output_t;  -- /usr/include/xcb/randr.h:560
      property : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/randr.h:561
      c_type : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/randr.h:562
      format : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:563
      mode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:564
      pad0 : aliased anon4728_anon1795_array;  -- /usr/include/xcb/randr.h:565
      num_units : aliased stdint_h.uint32_t;  -- /usr/include/xcb/randr.h:566
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_change_output_property_request_t);  -- /usr/include/xcb/randr.h:556

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_randr_delete_output_property.  
  --*
  -- * @brief xcb_randr_delete_output_property_request_t
  -- * 

  --*<   
   type xcb_randr_delete_output_property_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:576
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:577
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:578
      output : aliased xcb_randr_output_t;  -- /usr/include/xcb/randr.h:579
      property : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/randr.h:580
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_delete_output_property_request_t);  -- /usr/include/xcb/randr.h:575

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_randr_get_output_property_cookie_t
  -- * 

  --*<   
   type xcb_randr_get_output_property_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/randr.h:587
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_get_output_property_cookie_t);  -- /usr/include/xcb/randr.h:586

  --* Opcode for xcb_randr_get_output_property.  
  --*
  -- * @brief xcb_randr_get_output_property_request_t
  -- * 

  --*<   
   type anon4736_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_randr_get_output_property_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:597
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:598
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:599
      output : aliased xcb_randr_output_t;  -- /usr/include/xcb/randr.h:600
      property : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/randr.h:601
      c_type : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/randr.h:602
      long_offset : aliased stdint_h.uint32_t;  -- /usr/include/xcb/randr.h:603
      long_length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/randr.h:604
      u_delete : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:605
      pending : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:606
      pad0 : aliased anon4736_anon1795_array;  -- /usr/include/xcb/randr.h:607
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_get_output_property_request_t);  -- /usr/include/xcb/randr.h:596

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
  -- * @brief xcb_randr_get_output_property_reply_t
  -- * 

  --*<   
   type anon4740_anon2079_array is array (0 .. 11) of aliased stdint_h.uint8_t;
   type xcb_randr_get_output_property_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:614
      format : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:615
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:616
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/randr.h:617
      c_type : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/randr.h:618
      bytes_after : aliased stdint_h.uint32_t;  -- /usr/include/xcb/randr.h:619
      num_items : aliased stdint_h.uint32_t;  -- /usr/include/xcb/randr.h:620
      pad0 : aliased anon4740_anon2079_array;  -- /usr/include/xcb/randr.h:621
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_get_output_property_reply_t);  -- /usr/include/xcb/randr.h:613

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_randr_create_mode_cookie_t
  -- * 

  --*<   
   type xcb_randr_create_mode_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/randr.h:628
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_create_mode_cookie_t);  -- /usr/include/xcb/randr.h:627

  --* Opcode for xcb_randr_create_mode.  
  --*
  -- * @brief xcb_randr_create_mode_request_t
  -- * 

  --*<   
   type xcb_randr_create_mode_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:638
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:639
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:640
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/randr.h:641
      mode_info : aliased xcb_randr_mode_info_t;  -- /usr/include/xcb/randr.h:642
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_create_mode_request_t);  -- /usr/include/xcb/randr.h:637

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_randr_create_mode_reply_t
  -- * 

  --*<   
   type anon4748_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_randr_create_mode_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:649
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:650
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:651
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/randr.h:652
      mode : aliased xcb_randr_mode_t;  -- /usr/include/xcb/randr.h:653
      pad1 : aliased anon4748_anon1939_array;  -- /usr/include/xcb/randr.h:654
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_create_mode_reply_t);  -- /usr/include/xcb/randr.h:648

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_randr_destroy_mode.  
  --*
  -- * @brief xcb_randr_destroy_mode_request_t
  -- * 

  --*<   
   type xcb_randr_destroy_mode_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:664
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:665
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:666
      mode : aliased xcb_randr_mode_t;  -- /usr/include/xcb/randr.h:667
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_destroy_mode_request_t);  -- /usr/include/xcb/randr.h:663

  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_randr_add_output_mode.  
  --*
  -- * @brief xcb_randr_add_output_mode_request_t
  -- * 

  --*<   
   type xcb_randr_add_output_mode_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:677
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:678
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:679
      output : aliased xcb_randr_output_t;  -- /usr/include/xcb/randr.h:680
      mode : aliased xcb_randr_mode_t;  -- /usr/include/xcb/randr.h:681
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_add_output_mode_request_t);  -- /usr/include/xcb/randr.h:676

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_randr_delete_output_mode.  
  --*
  -- * @brief xcb_randr_delete_output_mode_request_t
  -- * 

  --*<   
   type xcb_randr_delete_output_mode_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:691
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:692
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:693
      output : aliased xcb_randr_output_t;  -- /usr/include/xcb/randr.h:694
      mode : aliased xcb_randr_mode_t;  -- /usr/include/xcb/randr.h:695
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_delete_output_mode_request_t);  -- /usr/include/xcb/randr.h:690

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_randr_get_crtc_info_cookie_t
  -- * 

  --*<   
   type xcb_randr_get_crtc_info_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/randr.h:702
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_get_crtc_info_cookie_t);  -- /usr/include/xcb/randr.h:701

  --* Opcode for xcb_randr_get_crtc_info.  
  --*
  -- * @brief xcb_randr_get_crtc_info_request_t
  -- * 

  --*<   
   type xcb_randr_get_crtc_info_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:712
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:713
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:714
      crtc : aliased xcb_randr_crtc_t;  -- /usr/include/xcb/randr.h:715
      config_timestamp : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/randr.h:716
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_get_crtc_info_request_t);  -- /usr/include/xcb/randr.h:711

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_randr_get_crtc_info_reply_t
  -- * 

  --*<   
   type xcb_randr_get_crtc_info_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:723
      status : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:724
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:725
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/randr.h:726
      timestamp : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/randr.h:727
      x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/randr.h:728
      y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/randr.h:729
      width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:730
      height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:731
      mode : aliased xcb_randr_mode_t;  -- /usr/include/xcb/randr.h:732
      rotation : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:733
      rotations : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:734
      num_outputs : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:735
      num_possible_outputs : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:736
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_get_crtc_info_reply_t);  -- /usr/include/xcb/randr.h:722

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
  -- * @brief xcb_randr_set_crtc_config_cookie_t
  -- * 

  --*<   
   type xcb_randr_set_crtc_config_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/randr.h:743
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_set_crtc_config_cookie_t);  -- /usr/include/xcb/randr.h:742

  --* Opcode for xcb_randr_set_crtc_config.  
  --*
  -- * @brief xcb_randr_set_crtc_config_request_t
  -- * 

  --*<   
   type anon4766_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_randr_set_crtc_config_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:753
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:754
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:755
      crtc : aliased xcb_randr_crtc_t;  -- /usr/include/xcb/randr.h:756
      timestamp : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/randr.h:757
      config_timestamp : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/randr.h:758
      x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/randr.h:759
      y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/randr.h:760
      mode : aliased xcb_randr_mode_t;  -- /usr/include/xcb/randr.h:761
      rotation : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:762
      pad0 : aliased anon4766_anon1795_array;  -- /usr/include/xcb/randr.h:763
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_set_crtc_config_request_t);  -- /usr/include/xcb/randr.h:752

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
  -- * @brief xcb_randr_set_crtc_config_reply_t
  -- * 

  --*<   
   type anon4770_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_randr_set_crtc_config_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:770
      status : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:771
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:772
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/randr.h:773
      timestamp : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/randr.h:774
      pad0 : aliased anon4770_anon1939_array;  -- /usr/include/xcb/randr.h:775
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_set_crtc_config_reply_t);  -- /usr/include/xcb/randr.h:769

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_randr_get_crtc_gamma_size_cookie_t
  -- * 

  --*<   
   type xcb_randr_get_crtc_gamma_size_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/randr.h:782
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_get_crtc_gamma_size_cookie_t);  -- /usr/include/xcb/randr.h:781

  --* Opcode for xcb_randr_get_crtc_gamma_size.  
  --*
  -- * @brief xcb_randr_get_crtc_gamma_size_request_t
  -- * 

  --*<   
   type xcb_randr_get_crtc_gamma_size_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:792
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:793
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:794
      crtc : aliased xcb_randr_crtc_t;  -- /usr/include/xcb/randr.h:795
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_get_crtc_gamma_size_request_t);  -- /usr/include/xcb/randr.h:791

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_randr_get_crtc_gamma_size_reply_t
  -- * 

  --*<   
   type anon4778_anon2060_array is array (0 .. 21) of aliased stdint_h.uint8_t;
   type xcb_randr_get_crtc_gamma_size_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:802
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:803
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:804
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/randr.h:805
      size : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:806
      pad1 : aliased anon4778_anon2060_array;  -- /usr/include/xcb/randr.h:807
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_get_crtc_gamma_size_reply_t);  -- /usr/include/xcb/randr.h:801

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_randr_get_crtc_gamma_cookie_t
  -- * 

  --*<   
   type xcb_randr_get_crtc_gamma_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/randr.h:814
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_get_crtc_gamma_cookie_t);  -- /usr/include/xcb/randr.h:813

  --* Opcode for xcb_randr_get_crtc_gamma.  
  --*
  -- * @brief xcb_randr_get_crtc_gamma_request_t
  -- * 

  --*<   
   type xcb_randr_get_crtc_gamma_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:824
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:825
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:826
      crtc : aliased xcb_randr_crtc_t;  -- /usr/include/xcb/randr.h:827
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_get_crtc_gamma_request_t);  -- /usr/include/xcb/randr.h:823

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_randr_get_crtc_gamma_reply_t
  -- * 

  --*<   
   type anon4786_anon2060_array is array (0 .. 21) of aliased stdint_h.uint8_t;
   type xcb_randr_get_crtc_gamma_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:834
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:835
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:836
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/randr.h:837
      size : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:838
      pad1 : aliased anon4786_anon2060_array;  -- /usr/include/xcb/randr.h:839
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_get_crtc_gamma_reply_t);  -- /usr/include/xcb/randr.h:833

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_randr_set_crtc_gamma.  
  --*
  -- * @brief xcb_randr_set_crtc_gamma_request_t
  -- * 

  --*<   
   type anon4790_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_randr_set_crtc_gamma_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:849
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:850
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:851
      crtc : aliased xcb_randr_crtc_t;  -- /usr/include/xcb/randr.h:852
      size : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:853
      pad0 : aliased anon4790_anon1795_array;  -- /usr/include/xcb/randr.h:854
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_set_crtc_gamma_request_t);  -- /usr/include/xcb/randr.h:848

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_randr_get_screen_resources_current_cookie_t
  -- * 

  --*<   
   type xcb_randr_get_screen_resources_current_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/randr.h:861
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_get_screen_resources_current_cookie_t);  -- /usr/include/xcb/randr.h:860

  --* Opcode for xcb_randr_get_screen_resources_current.  
  --*
  -- * @brief xcb_randr_get_screen_resources_current_request_t
  -- * 

  --*<   
   type xcb_randr_get_screen_resources_current_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:871
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:872
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:873
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/randr.h:874
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_get_screen_resources_current_request_t);  -- /usr/include/xcb/randr.h:870

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_randr_get_screen_resources_current_reply_t
  -- * 

  --*<   
   type anon4798_anon2427_array is array (0 .. 7) of aliased stdint_h.uint8_t;
   type xcb_randr_get_screen_resources_current_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:881
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:882
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:883
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/randr.h:884
      timestamp : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/randr.h:885
      config_timestamp : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/randr.h:886
      num_crtcs : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:887
      num_outputs : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:888
      num_modes : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:889
      names_len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:890
      pad1 : aliased anon4798_anon2427_array;  -- /usr/include/xcb/randr.h:891
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_get_screen_resources_current_reply_t);  -- /usr/include/xcb/randr.h:880

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
  --* Opcode for xcb_randr_set_crtc_transform.  
  --*
  -- * @brief xcb_randr_set_crtc_transform_request_t
  -- * 

  --*<   
   type anon4802_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_randr_set_crtc_transform_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:901
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:902
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:903
      crtc : aliased xcb_randr_crtc_t;  -- /usr/include/xcb/randr.h:904
      transform : aliased xcb_render_h.xcb_render_transform_t;  -- /usr/include/xcb/randr.h:905
      filter_len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:906
      pad0 : aliased anon4802_anon1795_array;  -- /usr/include/xcb/randr.h:907
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_set_crtc_transform_request_t);  -- /usr/include/xcb/randr.h:900

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_randr_get_crtc_transform_cookie_t
  -- * 

  --*<   
   type xcb_randr_get_crtc_transform_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/randr.h:914
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_get_crtc_transform_cookie_t);  -- /usr/include/xcb/randr.h:913

  --* Opcode for xcb_randr_get_crtc_transform.  
  --*
  -- * @brief xcb_randr_get_crtc_transform_request_t
  -- * 

  --*<   
   type xcb_randr_get_crtc_transform_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:924
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:925
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:926
      crtc : aliased xcb_randr_crtc_t;  -- /usr/include/xcb/randr.h:927
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_get_crtc_transform_request_t);  -- /usr/include/xcb/randr.h:923

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_randr_get_crtc_transform_reply_t
  -- * 

  --*<   
   type anon4810_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type anon4810_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type xcb_randr_get_crtc_transform_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:934
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:935
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:936
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/randr.h:937
      pending_transform : aliased xcb_render_h.xcb_render_transform_t;  -- /usr/include/xcb/randr.h:938
      has_transforms : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:939
      pad1 : aliased anon4810_anon1853_array;  -- /usr/include/xcb/randr.h:940
      current_transform : aliased xcb_render_h.xcb_render_transform_t;  -- /usr/include/xcb/randr.h:941
      pad2 : aliased anon4810_anon1768_array;  -- /usr/include/xcb/randr.h:942
      pending_len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:943
      pending_nparams : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:944
      current_len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:945
      current_nparams : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:946
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_get_crtc_transform_reply_t);  -- /usr/include/xcb/randr.h:933

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
  -- * @brief xcb_randr_get_panning_cookie_t
  -- * 

  --*<   
   type xcb_randr_get_panning_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/randr.h:953
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_get_panning_cookie_t);  -- /usr/include/xcb/randr.h:952

  --* Opcode for xcb_randr_get_panning.  
  --*
  -- * @brief xcb_randr_get_panning_request_t
  -- * 

  --*<   
   type xcb_randr_get_panning_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:963
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:964
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:965
      crtc : aliased xcb_randr_crtc_t;  -- /usr/include/xcb/randr.h:966
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_get_panning_request_t);  -- /usr/include/xcb/randr.h:962

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_randr_get_panning_reply_t
  -- * 

  --*<   
   type xcb_randr_get_panning_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:973
      status : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:974
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:975
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/randr.h:976
      timestamp : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/randr.h:977
      left : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:978
      top : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:979
      width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:980
      height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:981
      track_left : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:982
      track_top : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:983
      track_width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:984
      track_height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:985
      border_left : aliased sys_types_h.int16_t;  -- /usr/include/xcb/randr.h:986
      border_top : aliased sys_types_h.int16_t;  -- /usr/include/xcb/randr.h:987
      border_right : aliased sys_types_h.int16_t;  -- /usr/include/xcb/randr.h:988
      border_bottom : aliased sys_types_h.int16_t;  -- /usr/include/xcb/randr.h:989
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_get_panning_reply_t);  -- /usr/include/xcb/randr.h:972

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
  -- * @brief xcb_randr_set_panning_cookie_t
  -- * 

  --*<   
   type xcb_randr_set_panning_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/randr.h:996
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_set_panning_cookie_t);  -- /usr/include/xcb/randr.h:995

  --* Opcode for xcb_randr_set_panning.  
  --*
  -- * @brief xcb_randr_set_panning_request_t
  -- * 

  --*<   
   type xcb_randr_set_panning_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:1006
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:1007
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:1008
      crtc : aliased xcb_randr_crtc_t;  -- /usr/include/xcb/randr.h:1009
      timestamp : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/randr.h:1010
      left : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:1011
      top : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:1012
      width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:1013
      height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:1014
      track_left : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:1015
      track_top : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:1016
      track_width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:1017
      track_height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:1018
      border_left : aliased sys_types_h.int16_t;  -- /usr/include/xcb/randr.h:1019
      border_top : aliased sys_types_h.int16_t;  -- /usr/include/xcb/randr.h:1020
      border_right : aliased sys_types_h.int16_t;  -- /usr/include/xcb/randr.h:1021
      border_bottom : aliased sys_types_h.int16_t;  -- /usr/include/xcb/randr.h:1022
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_set_panning_request_t);  -- /usr/include/xcb/randr.h:1005

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
  -- * @brief xcb_randr_set_panning_reply_t
  -- * 

  --*<   
   type xcb_randr_set_panning_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:1029
      status : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:1030
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:1031
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/randr.h:1032
      timestamp : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/randr.h:1033
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_set_panning_reply_t);  -- /usr/include/xcb/randr.h:1028

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_randr_set_output_primary.  
  --*
  -- * @brief xcb_randr_set_output_primary_request_t
  -- * 

  --*<   
   type xcb_randr_set_output_primary_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:1043
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:1044
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:1045
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/randr.h:1046
      output : aliased xcb_randr_output_t;  -- /usr/include/xcb/randr.h:1047
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_set_output_primary_request_t);  -- /usr/include/xcb/randr.h:1042

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_randr_get_output_primary_cookie_t
  -- * 

  --*<   
   type xcb_randr_get_output_primary_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/randr.h:1054
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_get_output_primary_cookie_t);  -- /usr/include/xcb/randr.h:1053

  --* Opcode for xcb_randr_get_output_primary.  
  --*
  -- * @brief xcb_randr_get_output_primary_request_t
  -- * 

  --*<   
   type xcb_randr_get_output_primary_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:1064
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:1065
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:1066
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/randr.h:1067
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_get_output_primary_request_t);  -- /usr/include/xcb/randr.h:1063

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_randr_get_output_primary_reply_t
  -- * 

  --*<   
   type xcb_randr_get_output_primary_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:1074
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:1075
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:1076
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/randr.h:1077
      output : aliased xcb_randr_output_t;  -- /usr/include/xcb/randr.h:1078
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_get_output_primary_reply_t);  -- /usr/include/xcb/randr.h:1073

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_randr_screen_change_notify.  
  --*
  -- * @brief xcb_randr_screen_change_notify_event_t
  -- * 

  --*<   
   type xcb_randr_screen_change_notify_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:1088
      rotation : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:1089
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:1090
      timestamp : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/randr.h:1091
      config_timestamp : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/randr.h:1092
      root : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/randr.h:1093
      request_window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/randr.h:1094
      sizeID : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:1095
      subpixel_order : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:1096
      width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:1097
      height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:1098
      mwidth : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:1099
      mheight : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:1100
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_screen_change_notify_event_t);  -- /usr/include/xcb/randr.h:1087

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
   type xcb_randr_notify_t is 
     (XCB_RANDR_NOTIFY_CRTC_CHANGE,
      XCB_RANDR_NOTIFY_OUTPUT_CHANGE,
      XCB_RANDR_NOTIFY_OUTPUT_PROPERTY);
   pragma Convention (C, xcb_randr_notify_t);  -- /usr/include/xcb/randr.h:1103

  --*
  -- * @brief xcb_randr_crtc_change_t
  -- * 

  --*<   
   type anon4840_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_randr_crtc_change_t is record
      timestamp : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/randr.h:1113
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/randr.h:1114
      crtc : aliased xcb_randr_crtc_t;  -- /usr/include/xcb/randr.h:1115
      mode : aliased xcb_randr_mode_t;  -- /usr/include/xcb/randr.h:1116
      rotation : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:1117
      pad0 : aliased anon4840_anon1795_array;  -- /usr/include/xcb/randr.h:1118
      x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/randr.h:1119
      y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/randr.h:1120
      width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:1121
      height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:1122
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_crtc_change_t);  -- /usr/include/xcb/randr.h:1112

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
  -- * @brief xcb_randr_crtc_change_iterator_t
  -- * 

  --*<   
   type xcb_randr_crtc_change_iterator_t is record
      data : access xcb_randr_crtc_change_t;  -- /usr/include/xcb/randr.h:1129
      c_rem : aliased int;  -- /usr/include/xcb/randr.h:1130
      index : aliased int;  -- /usr/include/xcb/randr.h:1131
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_crtc_change_iterator_t);  -- /usr/include/xcb/randr.h:1128

  --*<   
  --*<   
  --*
  -- * @brief xcb_randr_output_change_t
  -- * 

  --*<   
   type xcb_randr_output_change_t is record
      timestamp : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/randr.h:1138
      config_timestamp : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/randr.h:1139
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/randr.h:1140
      output : aliased xcb_randr_output_t;  -- /usr/include/xcb/randr.h:1141
      crtc : aliased xcb_randr_crtc_t;  -- /usr/include/xcb/randr.h:1142
      mode : aliased xcb_randr_mode_t;  -- /usr/include/xcb/randr.h:1143
      rotation : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:1144
      connection : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:1145
      subpixel_order : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:1146
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_output_change_t);  -- /usr/include/xcb/randr.h:1137

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_randr_output_change_iterator_t
  -- * 

  --*<   
   type xcb_randr_output_change_iterator_t is record
      data : access xcb_randr_output_change_t;  -- /usr/include/xcb/randr.h:1153
      c_rem : aliased int;  -- /usr/include/xcb/randr.h:1154
      index : aliased int;  -- /usr/include/xcb/randr.h:1155
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_output_change_iterator_t);  -- /usr/include/xcb/randr.h:1152

  --*<   
  --*<   
  --*
  -- * @brief xcb_randr_output_property_t
  -- * 

  --*<   
   type anon4854_anon4856_array is array (0 .. 10) of aliased stdint_h.uint8_t;
   type xcb_randr_output_property_t is record
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/randr.h:1162
      output : aliased xcb_randr_output_t;  -- /usr/include/xcb/randr.h:1163
      atom : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/randr.h:1164
      timestamp : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/randr.h:1165
      status : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:1166
      pad0 : aliased anon4854_anon4856_array;  -- /usr/include/xcb/randr.h:1167
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_output_property_t);  -- /usr/include/xcb/randr.h:1161

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_randr_output_property_iterator_t
  -- * 

  --*<   
   type xcb_randr_output_property_iterator_t is record
      data : access xcb_randr_output_property_t;  -- /usr/include/xcb/randr.h:1174
      c_rem : aliased int;  -- /usr/include/xcb/randr.h:1175
      index : aliased int;  -- /usr/include/xcb/randr.h:1176
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_output_property_iterator_t);  -- /usr/include/xcb/randr.h:1173

  --*<   
  --*<   
  --*
  -- * @brief xcb_randr_notify_data_t
  -- * 

  --*<   
   type xcb_randr_notify_data_t (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            cc : aliased xcb_randr_crtc_change_t;  -- /usr/include/xcb/randr.h:1183
         when 1 =>
            oc : aliased xcb_randr_output_change_t;  -- /usr/include/xcb/randr.h:1184
         when others =>
            op : aliased xcb_randr_output_property_t;  -- /usr/include/xcb/randr.h:1185
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_notify_data_t);
   pragma Unchecked_Union (xcb_randr_notify_data_t);  -- /usr/include/xcb/randr.h:1182

  --*<   
  --*<   
  --*
  -- * @brief xcb_randr_notify_data_iterator_t
  -- * 

  --*<   
   type xcb_randr_notify_data_iterator_t is record
      data : access xcb_randr_notify_data_t;  -- /usr/include/xcb/randr.h:1192
      c_rem : aliased int;  -- /usr/include/xcb/randr.h:1193
      index : aliased int;  -- /usr/include/xcb/randr.h:1194
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_notify_data_iterator_t);  -- /usr/include/xcb/randr.h:1191

  --*<   
  --*<   
  --* Opcode for xcb_randr_notify.  
  --*
  -- * @brief xcb_randr_notify_event_t
  -- * 

  --*<   
   type xcb_randr_notify_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:1204
      subCode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:1205
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:1206
      u : xcb_randr_notify_data_t;  -- /usr/include/xcb/randr.h:1207
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_randr_notify_event_t);  -- /usr/include/xcb/randr.h:1203

  --*<   
  --*<   
  --*<   
  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_randr_mode_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_randr_mode_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_randr_mode_next
  -- ** 
  -- ** @param xcb_randr_mode_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_randr_mode_next (arg1 : access xcb_randr_mode_iterator_t);  -- /usr/include/xcb/randr.h:1229
   pragma Import (C, xcb_randr_mode_next, "xcb_randr_mode_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_randr_mode_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_randr_mode_end
  -- ** 
  -- ** @param xcb_randr_mode_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_mode_end (arg1 : xcb_randr_mode_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/randr.h:1251
   pragma Import (C, xcb_randr_mode_end, "xcb_randr_mode_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_randr_crtc_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_randr_crtc_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_randr_crtc_next
  -- ** 
  -- ** @param xcb_randr_crtc_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_randr_crtc_next (arg1 : access xcb_randr_crtc_iterator_t);  -- /usr/include/xcb/randr.h:1272
   pragma Import (C, xcb_randr_crtc_next, "xcb_randr_crtc_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_randr_crtc_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_randr_crtc_end
  -- ** 
  -- ** @param xcb_randr_crtc_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_crtc_end (arg1 : xcb_randr_crtc_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/randr.h:1294
   pragma Import (C, xcb_randr_crtc_end, "xcb_randr_crtc_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_randr_output_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_randr_output_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_randr_output_next
  -- ** 
  -- ** @param xcb_randr_output_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_randr_output_next (arg1 : access xcb_randr_output_iterator_t);  -- /usr/include/xcb/randr.h:1315
   pragma Import (C, xcb_randr_output_next, "xcb_randr_output_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_randr_output_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_randr_output_end
  -- ** 
  -- ** @param xcb_randr_output_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_output_end (arg1 : xcb_randr_output_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/randr.h:1337
   pragma Import (C, xcb_randr_output_end, "xcb_randr_output_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_randr_screen_size_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_randr_screen_size_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_randr_screen_size_next
  -- ** 
  -- ** @param xcb_randr_screen_size_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_randr_screen_size_next (arg1 : access xcb_randr_screen_size_iterator_t);  -- /usr/include/xcb/randr.h:1358
   pragma Import (C, xcb_randr_screen_size_next, "xcb_randr_screen_size_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_randr_screen_size_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_randr_screen_size_end
  -- ** 
  -- ** @param xcb_randr_screen_size_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_screen_size_end (arg1 : xcb_randr_screen_size_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/randr.h:1380
   pragma Import (C, xcb_randr_screen_size_end, "xcb_randr_screen_size_end");

  --*<  
   function xcb_randr_refresh_rates_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/randr.h:1383
   pragma Import (C, xcb_randr_refresh_rates_sizeof, "xcb_randr_refresh_rates_sizeof");

  --****************************************************************************
  -- **
  -- ** uint16_t * xcb_randr_refresh_rates_rates
  -- ** 
  -- ** @param const xcb_randr_refresh_rates_t *R
  -- ** @returns uint16_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_refresh_rates_rates (arg1 : System.Address) return access stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:1396
   pragma Import (C, xcb_randr_refresh_rates_rates, "xcb_randr_refresh_rates_rates");

  --****************************************************************************
  -- **
  -- ** int xcb_randr_refresh_rates_rates_length
  -- ** 
  -- ** @param const xcb_randr_refresh_rates_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_refresh_rates_rates_length (arg1 : System.Address) return int;  -- /usr/include/xcb/randr.h:1409
   pragma Import (C, xcb_randr_refresh_rates_rates_length, "xcb_randr_refresh_rates_rates_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_randr_refresh_rates_rates_end
  -- ** 
  -- ** @param const xcb_randr_refresh_rates_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_refresh_rates_rates_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/randr.h:1422
   pragma Import (C, xcb_randr_refresh_rates_rates_end, "xcb_randr_refresh_rates_rates_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_randr_refresh_rates_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_randr_refresh_rates_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_randr_refresh_rates_next
  -- ** 
  -- ** @param xcb_randr_refresh_rates_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_randr_refresh_rates_next (arg1 : access xcb_randr_refresh_rates_iterator_t);  -- /usr/include/xcb/randr.h:1443
   pragma Import (C, xcb_randr_refresh_rates_next, "xcb_randr_refresh_rates_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_randr_refresh_rates_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_randr_refresh_rates_end
  -- ** 
  -- ** @param xcb_randr_refresh_rates_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_refresh_rates_end (arg1 : xcb_randr_refresh_rates_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/randr.h:1465
   pragma Import (C, xcb_randr_refresh_rates_end, "xcb_randr_refresh_rates_end");

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
  -- ** xcb_randr_query_version_cookie_t xcb_randr_query_version
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          major_version
  -- ** @param uint32_t          minor_version
  -- ** @returns xcb_randr_query_version_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_query_version
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : stdint_h.uint32_t) return xcb_randr_query_version_cookie_t;  -- /usr/include/xcb/randr.h:1488
   pragma Import (C, xcb_randr_query_version, "xcb_randr_query_version");

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
  -- ** xcb_randr_query_version_cookie_t xcb_randr_query_version_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          major_version
  -- ** @param uint32_t          minor_version
  -- ** @returns xcb_randr_query_version_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_query_version_unchecked
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : stdint_h.uint32_t) return xcb_randr_query_version_cookie_t;  -- /usr/include/xcb/randr.h:1516
   pragma Import (C, xcb_randr_query_version_unchecked, "xcb_randr_query_version_unchecked");

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
  -- * xcb_randr_query_version_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_randr_query_version_reply_t * xcb_randr_query_version_reply
  -- ** 
  -- ** @param xcb_connection_t                  *c
  -- ** @param xcb_randr_query_version_cookie_t   cookie
  -- ** @param xcb_generic_error_t              **e
  -- ** @returns xcb_randr_query_version_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_query_version_reply
     (arg1 : System.Address;
      arg2 : xcb_randr_query_version_cookie_t;
      arg3 : System.Address) return access xcb_randr_query_version_reply_t;  -- /usr/include/xcb/randr.h:1547
   pragma Import (C, xcb_randr_query_version_reply, "xcb_randr_query_version_reply");

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
  -- ** xcb_randr_set_screen_config_cookie_t xcb_randr_set_screen_config
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @param xcb_timestamp_t   timestamp
  -- ** @param xcb_timestamp_t   config_timestamp
  -- ** @param uint16_t          sizeID
  -- ** @param uint16_t          rotation
  -- ** @param uint16_t          rate
  -- ** @returns xcb_randr_set_screen_config_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_set_screen_config
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_xproto_h.xcb_timestamp_t;
      arg4 : xcb_xproto_h.xcb_timestamp_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint16_t;
      arg7 : stdint_h.uint16_t) return xcb_randr_set_screen_config_cookie_t;  -- /usr/include/xcb/randr.h:1576
   pragma Import (C, xcb_randr_set_screen_config, "xcb_randr_set_screen_config");

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
  -- ** xcb_randr_set_screen_config_cookie_t xcb_randr_set_screen_config_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @param xcb_timestamp_t   timestamp
  -- ** @param xcb_timestamp_t   config_timestamp
  -- ** @param uint16_t          sizeID
  -- ** @param uint16_t          rotation
  -- ** @param uint16_t          rate
  -- ** @returns xcb_randr_set_screen_config_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_set_screen_config_unchecked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_xproto_h.xcb_timestamp_t;
      arg4 : xcb_xproto_h.xcb_timestamp_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint16_t;
      arg7 : stdint_h.uint16_t) return xcb_randr_set_screen_config_cookie_t;  -- /usr/include/xcb/randr.h:1612
   pragma Import (C, xcb_randr_set_screen_config_unchecked, "xcb_randr_set_screen_config_unchecked");

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
  -- * xcb_randr_set_screen_config_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_randr_set_screen_config_reply_t * xcb_randr_set_screen_config_reply
  -- ** 
  -- ** @param xcb_connection_t                      *c
  -- ** @param xcb_randr_set_screen_config_cookie_t   cookie
  -- ** @param xcb_generic_error_t                  **e
  -- ** @returns xcb_randr_set_screen_config_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_set_screen_config_reply
     (arg1 : System.Address;
      arg2 : xcb_randr_set_screen_config_cookie_t;
      arg3 : System.Address) return access xcb_randr_set_screen_config_reply_t;  -- /usr/include/xcb/randr.h:1647
   pragma Import (C, xcb_randr_set_screen_config_reply, "xcb_randr_set_screen_config_reply");

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
  -- ** xcb_void_cookie_t xcb_randr_select_input_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @param uint16_t          enable
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_select_input_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/randr.h:1675
   pragma Import (C, xcb_randr_select_input_checked, "xcb_randr_select_input_checked");

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
  -- ** xcb_void_cookie_t xcb_randr_select_input
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @param uint16_t          enable
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_select_input
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/randr.h:1700
   pragma Import (C, xcb_randr_select_input, "xcb_randr_select_input");

  --*<  
  --*<  
  --*<  
   function xcb_randr_get_screen_info_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/randr.h:1705
   pragma Import (C, xcb_randr_get_screen_info_sizeof, "xcb_randr_get_screen_info_sizeof");

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
  -- ** xcb_randr_get_screen_info_cookie_t xcb_randr_get_screen_info
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_randr_get_screen_info_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_screen_info (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_randr_get_screen_info_cookie_t;  -- /usr/include/xcb/randr.h:1727
   pragma Import (C, xcb_randr_get_screen_info, "xcb_randr_get_screen_info");

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
  -- ** xcb_randr_get_screen_info_cookie_t xcb_randr_get_screen_info_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_randr_get_screen_info_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_screen_info_unchecked (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_randr_get_screen_info_cookie_t;  -- /usr/include/xcb/randr.h:1753
   pragma Import (C, xcb_randr_get_screen_info_unchecked, "xcb_randr_get_screen_info_unchecked");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_randr_screen_size_t * xcb_randr_get_screen_info_sizes
  -- ** 
  -- ** @param const xcb_randr_get_screen_info_reply_t *R
  -- ** @returns xcb_randr_screen_size_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_screen_info_sizes (arg1 : System.Address) return access xcb_randr_screen_size_t;  -- /usr/include/xcb/randr.h:1767
   pragma Import (C, xcb_randr_get_screen_info_sizes, "xcb_randr_get_screen_info_sizes");

  --****************************************************************************
  -- **
  -- ** int xcb_randr_get_screen_info_sizes_length
  -- ** 
  -- ** @param const xcb_randr_get_screen_info_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_screen_info_sizes_length (arg1 : System.Address) return int;  -- /usr/include/xcb/randr.h:1780
   pragma Import (C, xcb_randr_get_screen_info_sizes_length, "xcb_randr_get_screen_info_sizes_length");

  --****************************************************************************
  -- **
  -- ** xcb_randr_screen_size_iterator_t xcb_randr_get_screen_info_sizes_iterator
  -- ** 
  -- ** @param const xcb_randr_get_screen_info_reply_t *R
  -- ** @returns xcb_randr_screen_size_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_screen_info_sizes_iterator (arg1 : System.Address) return xcb_randr_screen_size_iterator_t;  -- /usr/include/xcb/randr.h:1793
   pragma Import (C, xcb_randr_get_screen_info_sizes_iterator, "xcb_randr_get_screen_info_sizes_iterator");

  --****************************************************************************
  -- **
  -- ** int xcb_randr_get_screen_info_rates_length
  -- ** 
  -- ** @param const xcb_randr_get_screen_info_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_screen_info_rates_length (arg1 : System.Address) return int;  -- /usr/include/xcb/randr.h:1806
   pragma Import (C, xcb_randr_get_screen_info_rates_length, "xcb_randr_get_screen_info_rates_length");

  --****************************************************************************
  -- **
  -- ** xcb_randr_refresh_rates_iterator_t xcb_randr_get_screen_info_rates_iterator
  -- ** 
  -- ** @param const xcb_randr_get_screen_info_reply_t *R
  -- ** @returns xcb_randr_refresh_rates_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_screen_info_rates_iterator (arg1 : System.Address) return xcb_randr_refresh_rates_iterator_t;  -- /usr/include/xcb/randr.h:1819
   pragma Import (C, xcb_randr_get_screen_info_rates_iterator, "xcb_randr_get_screen_info_rates_iterator");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_randr_get_screen_info_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_randr_get_screen_info_reply_t * xcb_randr_get_screen_info_reply
  -- ** 
  -- ** @param xcb_connection_t                    *c
  -- ** @param xcb_randr_get_screen_info_cookie_t   cookie
  -- ** @param xcb_generic_error_t                **e
  -- ** @returns xcb_randr_get_screen_info_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_screen_info_reply
     (arg1 : System.Address;
      arg2 : xcb_randr_get_screen_info_cookie_t;
      arg3 : System.Address) return access xcb_randr_get_screen_info_reply_t;  -- /usr/include/xcb/randr.h:1848
   pragma Import (C, xcb_randr_get_screen_info_reply, "xcb_randr_get_screen_info_reply");

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
  -- ** xcb_randr_get_screen_size_range_cookie_t xcb_randr_get_screen_size_range
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_randr_get_screen_size_range_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_screen_size_range (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_randr_get_screen_size_range_cookie_t;  -- /usr/include/xcb/randr.h:1872
   pragma Import (C, xcb_randr_get_screen_size_range, "xcb_randr_get_screen_size_range");

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
  -- ** xcb_randr_get_screen_size_range_cookie_t xcb_randr_get_screen_size_range_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_randr_get_screen_size_range_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_screen_size_range_unchecked (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_randr_get_screen_size_range_cookie_t;  -- /usr/include/xcb/randr.h:1898
   pragma Import (C, xcb_randr_get_screen_size_range_unchecked, "xcb_randr_get_screen_size_range_unchecked");

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
  -- * xcb_randr_get_screen_size_range_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_randr_get_screen_size_range_reply_t * xcb_randr_get_screen_size_range_reply
  -- ** 
  -- ** @param xcb_connection_t                          *c
  -- ** @param xcb_randr_get_screen_size_range_cookie_t   cookie
  -- ** @param xcb_generic_error_t                      **e
  -- ** @returns xcb_randr_get_screen_size_range_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_screen_size_range_reply
     (arg1 : System.Address;
      arg2 : xcb_randr_get_screen_size_range_cookie_t;
      arg3 : System.Address) return access xcb_randr_get_screen_size_range_reply_t;  -- /usr/include/xcb/randr.h:1928
   pragma Import (C, xcb_randr_get_screen_size_range_reply, "xcb_randr_get_screen_size_range_reply");

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
  -- ** xcb_void_cookie_t xcb_randr_set_screen_size_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @param uint16_t          width
  -- ** @param uint16_t          height
  -- ** @param uint32_t          mm_width
  -- ** @param uint32_t          mm_height
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_set_screen_size_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint32_t;
      arg6 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/randr.h:1959
   pragma Import (C, xcb_randr_set_screen_size_checked, "xcb_randr_set_screen_size_checked");

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
  -- ** xcb_void_cookie_t xcb_randr_set_screen_size
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @param uint16_t          width
  -- ** @param uint16_t          height
  -- ** @param uint32_t          mm_width
  -- ** @param uint32_t          mm_height
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_set_screen_size
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint32_t;
      arg6 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/randr.h:1990
   pragma Import (C, xcb_randr_set_screen_size, "xcb_randr_set_screen_size");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_randr_mode_info_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_randr_mode_info_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_randr_mode_info_next
  -- ** 
  -- ** @param xcb_randr_mode_info_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_randr_mode_info_next (arg1 : access xcb_randr_mode_info_iterator_t);  -- /usr/include/xcb/randr.h:2016
   pragma Import (C, xcb_randr_mode_info_next, "xcb_randr_mode_info_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_randr_mode_info_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_randr_mode_info_end
  -- ** 
  -- ** @param xcb_randr_mode_info_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_mode_info_end (arg1 : xcb_randr_mode_info_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/randr.h:2038
   pragma Import (C, xcb_randr_mode_info_end, "xcb_randr_mode_info_end");

  --*<  
   function xcb_randr_get_screen_resources_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/randr.h:2041
   pragma Import (C, xcb_randr_get_screen_resources_sizeof, "xcb_randr_get_screen_resources_sizeof");

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
  -- ** xcb_randr_get_screen_resources_cookie_t xcb_randr_get_screen_resources
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_randr_get_screen_resources_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_screen_resources (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_randr_get_screen_resources_cookie_t;  -- /usr/include/xcb/randr.h:2063
   pragma Import (C, xcb_randr_get_screen_resources, "xcb_randr_get_screen_resources");

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
  -- ** xcb_randr_get_screen_resources_cookie_t xcb_randr_get_screen_resources_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_randr_get_screen_resources_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_screen_resources_unchecked (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_randr_get_screen_resources_cookie_t;  -- /usr/include/xcb/randr.h:2089
   pragma Import (C, xcb_randr_get_screen_resources_unchecked, "xcb_randr_get_screen_resources_unchecked");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_randr_crtc_t * xcb_randr_get_screen_resources_crtcs
  -- ** 
  -- ** @param const xcb_randr_get_screen_resources_reply_t *R
  -- ** @returns xcb_randr_crtc_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_screen_resources_crtcs (arg1 : System.Address) return access xcb_randr_crtc_t;  -- /usr/include/xcb/randr.h:2103
   pragma Import (C, xcb_randr_get_screen_resources_crtcs, "xcb_randr_get_screen_resources_crtcs");

  --****************************************************************************
  -- **
  -- ** int xcb_randr_get_screen_resources_crtcs_length
  -- ** 
  -- ** @param const xcb_randr_get_screen_resources_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_screen_resources_crtcs_length (arg1 : System.Address) return int;  -- /usr/include/xcb/randr.h:2116
   pragma Import (C, xcb_randr_get_screen_resources_crtcs_length, "xcb_randr_get_screen_resources_crtcs_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_randr_get_screen_resources_crtcs_end
  -- ** 
  -- ** @param const xcb_randr_get_screen_resources_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_screen_resources_crtcs_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/randr.h:2129
   pragma Import (C, xcb_randr_get_screen_resources_crtcs_end, "xcb_randr_get_screen_resources_crtcs_end");

  --****************************************************************************
  -- **
  -- ** xcb_randr_output_t * xcb_randr_get_screen_resources_outputs
  -- ** 
  -- ** @param const xcb_randr_get_screen_resources_reply_t *R
  -- ** @returns xcb_randr_output_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_screen_resources_outputs (arg1 : System.Address) return access xcb_randr_output_t;  -- /usr/include/xcb/randr.h:2142
   pragma Import (C, xcb_randr_get_screen_resources_outputs, "xcb_randr_get_screen_resources_outputs");

  --****************************************************************************
  -- **
  -- ** int xcb_randr_get_screen_resources_outputs_length
  -- ** 
  -- ** @param const xcb_randr_get_screen_resources_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_screen_resources_outputs_length (arg1 : System.Address) return int;  -- /usr/include/xcb/randr.h:2155
   pragma Import (C, xcb_randr_get_screen_resources_outputs_length, "xcb_randr_get_screen_resources_outputs_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_randr_get_screen_resources_outputs_end
  -- ** 
  -- ** @param const xcb_randr_get_screen_resources_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_screen_resources_outputs_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/randr.h:2168
   pragma Import (C, xcb_randr_get_screen_resources_outputs_end, "xcb_randr_get_screen_resources_outputs_end");

  --****************************************************************************
  -- **
  -- ** xcb_randr_mode_info_t * xcb_randr_get_screen_resources_modes
  -- ** 
  -- ** @param const xcb_randr_get_screen_resources_reply_t *R
  -- ** @returns xcb_randr_mode_info_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_screen_resources_modes (arg1 : System.Address) return access xcb_randr_mode_info_t;  -- /usr/include/xcb/randr.h:2181
   pragma Import (C, xcb_randr_get_screen_resources_modes, "xcb_randr_get_screen_resources_modes");

  --****************************************************************************
  -- **
  -- ** int xcb_randr_get_screen_resources_modes_length
  -- ** 
  -- ** @param const xcb_randr_get_screen_resources_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_screen_resources_modes_length (arg1 : System.Address) return int;  -- /usr/include/xcb/randr.h:2194
   pragma Import (C, xcb_randr_get_screen_resources_modes_length, "xcb_randr_get_screen_resources_modes_length");

  --****************************************************************************
  -- **
  -- ** xcb_randr_mode_info_iterator_t xcb_randr_get_screen_resources_modes_iterator
  -- ** 
  -- ** @param const xcb_randr_get_screen_resources_reply_t *R
  -- ** @returns xcb_randr_mode_info_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_screen_resources_modes_iterator (arg1 : System.Address) return xcb_randr_mode_info_iterator_t;  -- /usr/include/xcb/randr.h:2207
   pragma Import (C, xcb_randr_get_screen_resources_modes_iterator, "xcb_randr_get_screen_resources_modes_iterator");

  --****************************************************************************
  -- **
  -- ** uint8_t * xcb_randr_get_screen_resources_names
  -- ** 
  -- ** @param const xcb_randr_get_screen_resources_reply_t *R
  -- ** @returns uint8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_screen_resources_names (arg1 : System.Address) return access stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:2220
   pragma Import (C, xcb_randr_get_screen_resources_names, "xcb_randr_get_screen_resources_names");

  --****************************************************************************
  -- **
  -- ** int xcb_randr_get_screen_resources_names_length
  -- ** 
  -- ** @param const xcb_randr_get_screen_resources_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_screen_resources_names_length (arg1 : System.Address) return int;  -- /usr/include/xcb/randr.h:2233
   pragma Import (C, xcb_randr_get_screen_resources_names_length, "xcb_randr_get_screen_resources_names_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_randr_get_screen_resources_names_end
  -- ** 
  -- ** @param const xcb_randr_get_screen_resources_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_screen_resources_names_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/randr.h:2246
   pragma Import (C, xcb_randr_get_screen_resources_names_end, "xcb_randr_get_screen_resources_names_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_randr_get_screen_resources_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_randr_get_screen_resources_reply_t * xcb_randr_get_screen_resources_reply
  -- ** 
  -- ** @param xcb_connection_t                         *c
  -- ** @param xcb_randr_get_screen_resources_cookie_t   cookie
  -- ** @param xcb_generic_error_t                     **e
  -- ** @returns xcb_randr_get_screen_resources_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_screen_resources_reply
     (arg1 : System.Address;
      arg2 : xcb_randr_get_screen_resources_cookie_t;
      arg3 : System.Address) return access xcb_randr_get_screen_resources_reply_t;  -- /usr/include/xcb/randr.h:2275
   pragma Import (C, xcb_randr_get_screen_resources_reply, "xcb_randr_get_screen_resources_reply");

  --*<  
  --*<  
  --*<  
   function xcb_randr_get_output_info_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/randr.h:2280
   pragma Import (C, xcb_randr_get_output_info_sizeof, "xcb_randr_get_output_info_sizeof");

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
  -- ** xcb_randr_get_output_info_cookie_t xcb_randr_get_output_info
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_randr_output_t  output
  -- ** @param xcb_timestamp_t     config_timestamp
  -- ** @returns xcb_randr_get_output_info_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_output_info
     (arg1 : System.Address;
      arg2 : xcb_randr_output_t;
      arg3 : xcb_xproto_h.xcb_timestamp_t) return xcb_randr_get_output_info_cookie_t;  -- /usr/include/xcb/randr.h:2303
   pragma Import (C, xcb_randr_get_output_info, "xcb_randr_get_output_info");

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
  -- ** xcb_randr_get_output_info_cookie_t xcb_randr_get_output_info_unchecked
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_randr_output_t  output
  -- ** @param xcb_timestamp_t     config_timestamp
  -- ** @returns xcb_randr_get_output_info_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_output_info_unchecked
     (arg1 : System.Address;
      arg2 : xcb_randr_output_t;
      arg3 : xcb_xproto_h.xcb_timestamp_t) return xcb_randr_get_output_info_cookie_t;  -- /usr/include/xcb/randr.h:2331
   pragma Import (C, xcb_randr_get_output_info_unchecked, "xcb_randr_get_output_info_unchecked");

  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_randr_crtc_t * xcb_randr_get_output_info_crtcs
  -- ** 
  -- ** @param const xcb_randr_get_output_info_reply_t *R
  -- ** @returns xcb_randr_crtc_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_output_info_crtcs (arg1 : System.Address) return access xcb_randr_crtc_t;  -- /usr/include/xcb/randr.h:2346
   pragma Import (C, xcb_randr_get_output_info_crtcs, "xcb_randr_get_output_info_crtcs");

  --****************************************************************************
  -- **
  -- ** int xcb_randr_get_output_info_crtcs_length
  -- ** 
  -- ** @param const xcb_randr_get_output_info_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_output_info_crtcs_length (arg1 : System.Address) return int;  -- /usr/include/xcb/randr.h:2359
   pragma Import (C, xcb_randr_get_output_info_crtcs_length, "xcb_randr_get_output_info_crtcs_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_randr_get_output_info_crtcs_end
  -- ** 
  -- ** @param const xcb_randr_get_output_info_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_output_info_crtcs_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/randr.h:2372
   pragma Import (C, xcb_randr_get_output_info_crtcs_end, "xcb_randr_get_output_info_crtcs_end");

  --****************************************************************************
  -- **
  -- ** xcb_randr_mode_t * xcb_randr_get_output_info_modes
  -- ** 
  -- ** @param const xcb_randr_get_output_info_reply_t *R
  -- ** @returns xcb_randr_mode_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_output_info_modes (arg1 : System.Address) return access xcb_randr_mode_t;  -- /usr/include/xcb/randr.h:2385
   pragma Import (C, xcb_randr_get_output_info_modes, "xcb_randr_get_output_info_modes");

  --****************************************************************************
  -- **
  -- ** int xcb_randr_get_output_info_modes_length
  -- ** 
  -- ** @param const xcb_randr_get_output_info_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_output_info_modes_length (arg1 : System.Address) return int;  -- /usr/include/xcb/randr.h:2398
   pragma Import (C, xcb_randr_get_output_info_modes_length, "xcb_randr_get_output_info_modes_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_randr_get_output_info_modes_end
  -- ** 
  -- ** @param const xcb_randr_get_output_info_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_output_info_modes_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/randr.h:2411
   pragma Import (C, xcb_randr_get_output_info_modes_end, "xcb_randr_get_output_info_modes_end");

  --****************************************************************************
  -- **
  -- ** xcb_randr_output_t * xcb_randr_get_output_info_clones
  -- ** 
  -- ** @param const xcb_randr_get_output_info_reply_t *R
  -- ** @returns xcb_randr_output_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_output_info_clones (arg1 : System.Address) return access xcb_randr_output_t;  -- /usr/include/xcb/randr.h:2424
   pragma Import (C, xcb_randr_get_output_info_clones, "xcb_randr_get_output_info_clones");

  --****************************************************************************
  -- **
  -- ** int xcb_randr_get_output_info_clones_length
  -- ** 
  -- ** @param const xcb_randr_get_output_info_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_output_info_clones_length (arg1 : System.Address) return int;  -- /usr/include/xcb/randr.h:2437
   pragma Import (C, xcb_randr_get_output_info_clones_length, "xcb_randr_get_output_info_clones_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_randr_get_output_info_clones_end
  -- ** 
  -- ** @param const xcb_randr_get_output_info_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_output_info_clones_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/randr.h:2450
   pragma Import (C, xcb_randr_get_output_info_clones_end, "xcb_randr_get_output_info_clones_end");

  --****************************************************************************
  -- **
  -- ** uint8_t * xcb_randr_get_output_info_name
  -- ** 
  -- ** @param const xcb_randr_get_output_info_reply_t *R
  -- ** @returns uint8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_output_info_name (arg1 : System.Address) return access stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:2463
   pragma Import (C, xcb_randr_get_output_info_name, "xcb_randr_get_output_info_name");

  --****************************************************************************
  -- **
  -- ** int xcb_randr_get_output_info_name_length
  -- ** 
  -- ** @param const xcb_randr_get_output_info_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_output_info_name_length (arg1 : System.Address) return int;  -- /usr/include/xcb/randr.h:2476
   pragma Import (C, xcb_randr_get_output_info_name_length, "xcb_randr_get_output_info_name_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_randr_get_output_info_name_end
  -- ** 
  -- ** @param const xcb_randr_get_output_info_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_output_info_name_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/randr.h:2489
   pragma Import (C, xcb_randr_get_output_info_name_end, "xcb_randr_get_output_info_name_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_randr_get_output_info_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_randr_get_output_info_reply_t * xcb_randr_get_output_info_reply
  -- ** 
  -- ** @param xcb_connection_t                    *c
  -- ** @param xcb_randr_get_output_info_cookie_t   cookie
  -- ** @param xcb_generic_error_t                **e
  -- ** @returns xcb_randr_get_output_info_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_output_info_reply
     (arg1 : System.Address;
      arg2 : xcb_randr_get_output_info_cookie_t;
      arg3 : System.Address) return access xcb_randr_get_output_info_reply_t;  -- /usr/include/xcb/randr.h:2518
   pragma Import (C, xcb_randr_get_output_info_reply, "xcb_randr_get_output_info_reply");

  --*<  
  --*<  
  --*<  
   function xcb_randr_list_output_properties_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/randr.h:2523
   pragma Import (C, xcb_randr_list_output_properties_sizeof, "xcb_randr_list_output_properties_sizeof");

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
  -- ** xcb_randr_list_output_properties_cookie_t xcb_randr_list_output_properties
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_randr_output_t  output
  -- ** @returns xcb_randr_list_output_properties_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_list_output_properties (arg1 : System.Address; arg2 : xcb_randr_output_t) return xcb_randr_list_output_properties_cookie_t;  -- /usr/include/xcb/randr.h:2545
   pragma Import (C, xcb_randr_list_output_properties, "xcb_randr_list_output_properties");

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
  -- ** xcb_randr_list_output_properties_cookie_t xcb_randr_list_output_properties_unchecked
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_randr_output_t  output
  -- ** @returns xcb_randr_list_output_properties_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_list_output_properties_unchecked (arg1 : System.Address; arg2 : xcb_randr_output_t) return xcb_randr_list_output_properties_cookie_t;  -- /usr/include/xcb/randr.h:2571
   pragma Import (C, xcb_randr_list_output_properties_unchecked, "xcb_randr_list_output_properties_unchecked");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_atom_t * xcb_randr_list_output_properties_atoms
  -- ** 
  -- ** @param const xcb_randr_list_output_properties_reply_t *R
  -- ** @returns xcb_atom_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_list_output_properties_atoms (arg1 : System.Address) return access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/randr.h:2585
   pragma Import (C, xcb_randr_list_output_properties_atoms, "xcb_randr_list_output_properties_atoms");

  --****************************************************************************
  -- **
  -- ** int xcb_randr_list_output_properties_atoms_length
  -- ** 
  -- ** @param const xcb_randr_list_output_properties_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_list_output_properties_atoms_length (arg1 : System.Address) return int;  -- /usr/include/xcb/randr.h:2598
   pragma Import (C, xcb_randr_list_output_properties_atoms_length, "xcb_randr_list_output_properties_atoms_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_randr_list_output_properties_atoms_end
  -- ** 
  -- ** @param const xcb_randr_list_output_properties_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_list_output_properties_atoms_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/randr.h:2611
   pragma Import (C, xcb_randr_list_output_properties_atoms_end, "xcb_randr_list_output_properties_atoms_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_randr_list_output_properties_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_randr_list_output_properties_reply_t * xcb_randr_list_output_properties_reply
  -- ** 
  -- ** @param xcb_connection_t                           *c
  -- ** @param xcb_randr_list_output_properties_cookie_t   cookie
  -- ** @param xcb_generic_error_t                       **e
  -- ** @returns xcb_randr_list_output_properties_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_list_output_properties_reply
     (arg1 : System.Address;
      arg2 : xcb_randr_list_output_properties_cookie_t;
      arg3 : System.Address) return access xcb_randr_list_output_properties_reply_t;  -- /usr/include/xcb/randr.h:2640
   pragma Import (C, xcb_randr_list_output_properties_reply, "xcb_randr_list_output_properties_reply");

  --*<  
  --*<  
  --*<  
   function xcb_randr_query_output_property_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/randr.h:2645
   pragma Import (C, xcb_randr_query_output_property_sizeof, "xcb_randr_query_output_property_sizeof");

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
  -- ** xcb_randr_query_output_property_cookie_t xcb_randr_query_output_property
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_randr_output_t  output
  -- ** @param xcb_atom_t          property
  -- ** @returns xcb_randr_query_output_property_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_query_output_property
     (arg1 : System.Address;
      arg2 : xcb_randr_output_t;
      arg3 : xcb_xproto_h.xcb_atom_t) return xcb_randr_query_output_property_cookie_t;  -- /usr/include/xcb/randr.h:2668
   pragma Import (C, xcb_randr_query_output_property, "xcb_randr_query_output_property");

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
  -- ** xcb_randr_query_output_property_cookie_t xcb_randr_query_output_property_unchecked
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_randr_output_t  output
  -- ** @param xcb_atom_t          property
  -- ** @returns xcb_randr_query_output_property_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_query_output_property_unchecked
     (arg1 : System.Address;
      arg2 : xcb_randr_output_t;
      arg3 : xcb_xproto_h.xcb_atom_t) return xcb_randr_query_output_property_cookie_t;  -- /usr/include/xcb/randr.h:2696
   pragma Import (C, xcb_randr_query_output_property_unchecked, "xcb_randr_query_output_property_unchecked");

  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** int32_t * xcb_randr_query_output_property_valid_values
  -- ** 
  -- ** @param const xcb_randr_query_output_property_reply_t *R
  -- ** @returns int32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_query_output_property_valid_values (arg1 : System.Address) return access sys_types_h.int32_t;  -- /usr/include/xcb/randr.h:2711
   pragma Import (C, xcb_randr_query_output_property_valid_values, "xcb_randr_query_output_property_valid_values");

  --****************************************************************************
  -- **
  -- ** int xcb_randr_query_output_property_valid_values_length
  -- ** 
  -- ** @param const xcb_randr_query_output_property_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_query_output_property_valid_values_length (arg1 : System.Address) return int;  -- /usr/include/xcb/randr.h:2724
   pragma Import (C, xcb_randr_query_output_property_valid_values_length, "xcb_randr_query_output_property_valid_values_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_randr_query_output_property_valid_values_end
  -- ** 
  -- ** @param const xcb_randr_query_output_property_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_query_output_property_valid_values_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/randr.h:2737
   pragma Import (C, xcb_randr_query_output_property_valid_values_end, "xcb_randr_query_output_property_valid_values_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_randr_query_output_property_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_randr_query_output_property_reply_t * xcb_randr_query_output_property_reply
  -- ** 
  -- ** @param xcb_connection_t                          *c
  -- ** @param xcb_randr_query_output_property_cookie_t   cookie
  -- ** @param xcb_generic_error_t                      **e
  -- ** @returns xcb_randr_query_output_property_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_query_output_property_reply
     (arg1 : System.Address;
      arg2 : xcb_randr_query_output_property_cookie_t;
      arg3 : System.Address) return access xcb_randr_query_output_property_reply_t;  -- /usr/include/xcb/randr.h:2766
   pragma Import (C, xcb_randr_query_output_property_reply, "xcb_randr_query_output_property_reply");

  --*<  
  --*<  
  --*<  
   function xcb_randr_configure_output_property_sizeof (arg1 : System.Address; arg2 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/randr.h:2771
   pragma Import (C, xcb_randr_configure_output_property_sizeof, "xcb_randr_configure_output_property_sizeof");

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
  -- ** xcb_void_cookie_t xcb_randr_configure_output_property_checked
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_randr_output_t  output
  -- ** @param xcb_atom_t          property
  -- ** @param uint8_t             pending
  -- ** @param uint8_t             range
  -- ** @param uint32_t            values_len
  -- ** @param const int32_t      *values
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_configure_output_property_checked
     (arg1 : System.Address;
      arg2 : xcb_randr_output_t;
      arg3 : xcb_xproto_h.xcb_atom_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint8_t;
      arg6 : stdint_h.uint32_t;
      arg7 : access sys_types_h.int32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/randr.h:2802
   pragma Import (C, xcb_randr_configure_output_property_checked, "xcb_randr_configure_output_property_checked");

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
  -- ** xcb_void_cookie_t xcb_randr_configure_output_property
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_randr_output_t  output
  -- ** @param xcb_atom_t          property
  -- ** @param uint8_t             pending
  -- ** @param uint8_t             range
  -- ** @param uint32_t            values_len
  -- ** @param const int32_t      *values
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_configure_output_property
     (arg1 : System.Address;
      arg2 : xcb_randr_output_t;
      arg3 : xcb_xproto_h.xcb_atom_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint8_t;
      arg6 : stdint_h.uint32_t;
      arg7 : access sys_types_h.int32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/randr.h:2835
   pragma Import (C, xcb_randr_configure_output_property, "xcb_randr_configure_output_property");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_randr_change_output_property_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/randr.h:2844
   pragma Import (C, xcb_randr_change_output_property_sizeof, "xcb_randr_change_output_property_sizeof");

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
  -- ** xcb_void_cookie_t xcb_randr_change_output_property_checked
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_randr_output_t  output
  -- ** @param xcb_atom_t          property
  -- ** @param xcb_atom_t          type
  -- ** @param uint8_t             format
  -- ** @param uint8_t             mode
  -- ** @param uint32_t            num_units
  -- ** @param const void         *data
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_change_output_property_checked
     (arg1 : System.Address;
      arg2 : xcb_randr_output_t;
      arg3 : xcb_xproto_h.xcb_atom_t;
      arg4 : xcb_xproto_h.xcb_atom_t;
      arg5 : stdint_h.uint8_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint32_t;
      arg8 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/randr.h:2875
   pragma Import (C, xcb_randr_change_output_property_checked, "xcb_randr_change_output_property_checked");

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
  -- ** xcb_void_cookie_t xcb_randr_change_output_property
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_randr_output_t  output
  -- ** @param xcb_atom_t          property
  -- ** @param xcb_atom_t          type
  -- ** @param uint8_t             format
  -- ** @param uint8_t             mode
  -- ** @param uint32_t            num_units
  -- ** @param const void         *data
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_change_output_property
     (arg1 : System.Address;
      arg2 : xcb_randr_output_t;
      arg3 : xcb_xproto_h.xcb_atom_t;
      arg4 : xcb_xproto_h.xcb_atom_t;
      arg5 : stdint_h.uint8_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint32_t;
      arg8 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/randr.h:2910
   pragma Import (C, xcb_randr_change_output_property, "xcb_randr_change_output_property");

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
  -- ** xcb_void_cookie_t xcb_randr_delete_output_property_checked
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_randr_output_t  output
  -- ** @param xcb_atom_t          property
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_delete_output_property_checked
     (arg1 : System.Address;
      arg2 : xcb_randr_output_t;
      arg3 : xcb_xproto_h.xcb_atom_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/randr.h:2943
   pragma Import (C, xcb_randr_delete_output_property_checked, "xcb_randr_delete_output_property_checked");

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
  -- ** xcb_void_cookie_t xcb_randr_delete_output_property
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_randr_output_t  output
  -- ** @param xcb_atom_t          property
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_delete_output_property
     (arg1 : System.Address;
      arg2 : xcb_randr_output_t;
      arg3 : xcb_xproto_h.xcb_atom_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/randr.h:2968
   pragma Import (C, xcb_randr_delete_output_property, "xcb_randr_delete_output_property");

  --*<  
  --*<  
  --*<  
   function xcb_randr_get_output_property_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/randr.h:2973
   pragma Import (C, xcb_randr_get_output_property_sizeof, "xcb_randr_get_output_property_sizeof");

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
  -- ** xcb_randr_get_output_property_cookie_t xcb_randr_get_output_property
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_randr_output_t  output
  -- ** @param xcb_atom_t          property
  -- ** @param xcb_atom_t          type
  -- ** @param uint32_t            long_offset
  -- ** @param uint32_t            long_length
  -- ** @param uint8_t             _delete
  -- ** @param uint8_t             pending
  -- ** @returns xcb_randr_get_output_property_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_output_property
     (arg1 : System.Address;
      arg2 : xcb_randr_output_t;
      arg3 : xcb_xproto_h.xcb_atom_t;
      arg4 : xcb_xproto_h.xcb_atom_t;
      arg5 : stdint_h.uint32_t;
      arg6 : stdint_h.uint32_t;
      arg7 : stdint_h.uint8_t;
      arg8 : stdint_h.uint8_t) return xcb_randr_get_output_property_cookie_t;  -- /usr/include/xcb/randr.h:3001
   pragma Import (C, xcb_randr_get_output_property, "xcb_randr_get_output_property");

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
  -- ** xcb_randr_get_output_property_cookie_t xcb_randr_get_output_property_unchecked
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_randr_output_t  output
  -- ** @param xcb_atom_t          property
  -- ** @param xcb_atom_t          type
  -- ** @param uint32_t            long_offset
  -- ** @param uint32_t            long_length
  -- ** @param uint8_t             _delete
  -- ** @param uint8_t             pending
  -- ** @returns xcb_randr_get_output_property_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_output_property_unchecked
     (arg1 : System.Address;
      arg2 : xcb_randr_output_t;
      arg3 : xcb_xproto_h.xcb_atom_t;
      arg4 : xcb_xproto_h.xcb_atom_t;
      arg5 : stdint_h.uint32_t;
      arg6 : stdint_h.uint32_t;
      arg7 : stdint_h.uint8_t;
      arg8 : stdint_h.uint8_t) return xcb_randr_get_output_property_cookie_t;  -- /usr/include/xcb/randr.h:3039
   pragma Import (C, xcb_randr_get_output_property_unchecked, "xcb_randr_get_output_property_unchecked");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** uint8_t * xcb_randr_get_output_property_data
  -- ** 
  -- ** @param const xcb_randr_get_output_property_reply_t *R
  -- ** @returns uint8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_output_property_data (arg1 : System.Address) return access stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:3059
   pragma Import (C, xcb_randr_get_output_property_data, "xcb_randr_get_output_property_data");

  --****************************************************************************
  -- **
  -- ** int xcb_randr_get_output_property_data_length
  -- ** 
  -- ** @param const xcb_randr_get_output_property_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_output_property_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/randr.h:3072
   pragma Import (C, xcb_randr_get_output_property_data_length, "xcb_randr_get_output_property_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_randr_get_output_property_data_end
  -- ** 
  -- ** @param const xcb_randr_get_output_property_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_output_property_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/randr.h:3085
   pragma Import (C, xcb_randr_get_output_property_data_end, "xcb_randr_get_output_property_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_randr_get_output_property_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_randr_get_output_property_reply_t * xcb_randr_get_output_property_reply
  -- ** 
  -- ** @param xcb_connection_t                        *c
  -- ** @param xcb_randr_get_output_property_cookie_t   cookie
  -- ** @param xcb_generic_error_t                    **e
  -- ** @returns xcb_randr_get_output_property_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_output_property_reply
     (arg1 : System.Address;
      arg2 : xcb_randr_get_output_property_cookie_t;
      arg3 : System.Address) return access xcb_randr_get_output_property_reply_t;  -- /usr/include/xcb/randr.h:3114
   pragma Import (C, xcb_randr_get_output_property_reply, "xcb_randr_get_output_property_reply");

  --*<  
  --*<  
  --*<  
   function xcb_randr_create_mode_sizeof (arg1 : System.Address; arg2 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/randr.h:3119
   pragma Import (C, xcb_randr_create_mode_sizeof, "xcb_randr_create_mode_sizeof");

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
  -- ** xcb_randr_create_mode_cookie_t xcb_randr_create_mode
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_window_t           window
  -- ** @param xcb_randr_mode_info_t  mode_info
  -- ** @param uint32_t               name_len
  -- ** @param const char            *name
  -- ** @returns xcb_randr_create_mode_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_create_mode
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_randr_mode_info_t;
      arg4 : stdint_h.uint32_t;
      arg5 : Interfaces.C.Strings.chars_ptr) return xcb_randr_create_mode_cookie_t;  -- /usr/include/xcb/randr.h:3145
   pragma Import (C, xcb_randr_create_mode, "xcb_randr_create_mode");

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
  -- ** xcb_randr_create_mode_cookie_t xcb_randr_create_mode_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_window_t           window
  -- ** @param xcb_randr_mode_info_t  mode_info
  -- ** @param uint32_t               name_len
  -- ** @param const char            *name
  -- ** @returns xcb_randr_create_mode_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_create_mode_unchecked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_randr_mode_info_t;
      arg4 : stdint_h.uint32_t;
      arg5 : Interfaces.C.Strings.chars_ptr) return xcb_randr_create_mode_cookie_t;  -- /usr/include/xcb/randr.h:3177
   pragma Import (C, xcb_randr_create_mode_unchecked, "xcb_randr_create_mode_unchecked");

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
  -- * xcb_randr_create_mode_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_randr_create_mode_reply_t * xcb_randr_create_mode_reply
  -- ** 
  -- ** @param xcb_connection_t                *c
  -- ** @param xcb_randr_create_mode_cookie_t   cookie
  -- ** @param xcb_generic_error_t            **e
  -- ** @returns xcb_randr_create_mode_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_create_mode_reply
     (arg1 : System.Address;
      arg2 : xcb_randr_create_mode_cookie_t;
      arg3 : System.Address) return access xcb_randr_create_mode_reply_t;  -- /usr/include/xcb/randr.h:3210
   pragma Import (C, xcb_randr_create_mode_reply, "xcb_randr_create_mode_reply");

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
  -- ** xcb_void_cookie_t xcb_randr_destroy_mode_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_randr_mode_t  mode
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_destroy_mode_checked (arg1 : System.Address; arg2 : xcb_randr_mode_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/randr.h:3237
   pragma Import (C, xcb_randr_destroy_mode_checked, "xcb_randr_destroy_mode_checked");

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
  -- ** xcb_void_cookie_t xcb_randr_destroy_mode
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_randr_mode_t  mode
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_destroy_mode (arg1 : System.Address; arg2 : xcb_randr_mode_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/randr.h:3260
   pragma Import (C, xcb_randr_destroy_mode, "xcb_randr_destroy_mode");

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
  -- ** xcb_void_cookie_t xcb_randr_add_output_mode_checked
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_randr_output_t  output
  -- ** @param xcb_randr_mode_t    mode
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_add_output_mode_checked
     (arg1 : System.Address;
      arg2 : xcb_randr_output_t;
      arg3 : xcb_randr_mode_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/randr.h:3287
   pragma Import (C, xcb_randr_add_output_mode_checked, "xcb_randr_add_output_mode_checked");

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
  -- ** xcb_void_cookie_t xcb_randr_add_output_mode
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_randr_output_t  output
  -- ** @param xcb_randr_mode_t    mode
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_add_output_mode
     (arg1 : System.Address;
      arg2 : xcb_randr_output_t;
      arg3 : xcb_randr_mode_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/randr.h:3312
   pragma Import (C, xcb_randr_add_output_mode, "xcb_randr_add_output_mode");

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
  -- ** xcb_void_cookie_t xcb_randr_delete_output_mode_checked
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_randr_output_t  output
  -- ** @param xcb_randr_mode_t    mode
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_delete_output_mode_checked
     (arg1 : System.Address;
      arg2 : xcb_randr_output_t;
      arg3 : xcb_randr_mode_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/randr.h:3340
   pragma Import (C, xcb_randr_delete_output_mode_checked, "xcb_randr_delete_output_mode_checked");

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
  -- ** xcb_void_cookie_t xcb_randr_delete_output_mode
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_randr_output_t  output
  -- ** @param xcb_randr_mode_t    mode
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_delete_output_mode
     (arg1 : System.Address;
      arg2 : xcb_randr_output_t;
      arg3 : xcb_randr_mode_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/randr.h:3365
   pragma Import (C, xcb_randr_delete_output_mode, "xcb_randr_delete_output_mode");

  --*<  
  --*<  
  --*<  
   function xcb_randr_get_crtc_info_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/randr.h:3370
   pragma Import (C, xcb_randr_get_crtc_info_sizeof, "xcb_randr_get_crtc_info_sizeof");

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
  -- ** xcb_randr_get_crtc_info_cookie_t xcb_randr_get_crtc_info
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_randr_crtc_t  crtc
  -- ** @param xcb_timestamp_t   config_timestamp
  -- ** @returns xcb_randr_get_crtc_info_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_crtc_info
     (arg1 : System.Address;
      arg2 : xcb_randr_crtc_t;
      arg3 : xcb_xproto_h.xcb_timestamp_t) return xcb_randr_get_crtc_info_cookie_t;  -- /usr/include/xcb/randr.h:3393
   pragma Import (C, xcb_randr_get_crtc_info, "xcb_randr_get_crtc_info");

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
  -- ** xcb_randr_get_crtc_info_cookie_t xcb_randr_get_crtc_info_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_randr_crtc_t  crtc
  -- ** @param xcb_timestamp_t   config_timestamp
  -- ** @returns xcb_randr_get_crtc_info_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_crtc_info_unchecked
     (arg1 : System.Address;
      arg2 : xcb_randr_crtc_t;
      arg3 : xcb_xproto_h.xcb_timestamp_t) return xcb_randr_get_crtc_info_cookie_t;  -- /usr/include/xcb/randr.h:3421
   pragma Import (C, xcb_randr_get_crtc_info_unchecked, "xcb_randr_get_crtc_info_unchecked");

  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_randr_output_t * xcb_randr_get_crtc_info_outputs
  -- ** 
  -- ** @param const xcb_randr_get_crtc_info_reply_t *R
  -- ** @returns xcb_randr_output_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_crtc_info_outputs (arg1 : System.Address) return access xcb_randr_output_t;  -- /usr/include/xcb/randr.h:3436
   pragma Import (C, xcb_randr_get_crtc_info_outputs, "xcb_randr_get_crtc_info_outputs");

  --****************************************************************************
  -- **
  -- ** int xcb_randr_get_crtc_info_outputs_length
  -- ** 
  -- ** @param const xcb_randr_get_crtc_info_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_crtc_info_outputs_length (arg1 : System.Address) return int;  -- /usr/include/xcb/randr.h:3449
   pragma Import (C, xcb_randr_get_crtc_info_outputs_length, "xcb_randr_get_crtc_info_outputs_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_randr_get_crtc_info_outputs_end
  -- ** 
  -- ** @param const xcb_randr_get_crtc_info_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_crtc_info_outputs_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/randr.h:3462
   pragma Import (C, xcb_randr_get_crtc_info_outputs_end, "xcb_randr_get_crtc_info_outputs_end");

  --****************************************************************************
  -- **
  -- ** xcb_randr_output_t * xcb_randr_get_crtc_info_possible
  -- ** 
  -- ** @param const xcb_randr_get_crtc_info_reply_t *R
  -- ** @returns xcb_randr_output_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_crtc_info_possible (arg1 : System.Address) return access xcb_randr_output_t;  -- /usr/include/xcb/randr.h:3475
   pragma Import (C, xcb_randr_get_crtc_info_possible, "xcb_randr_get_crtc_info_possible");

  --****************************************************************************
  -- **
  -- ** int xcb_randr_get_crtc_info_possible_length
  -- ** 
  -- ** @param const xcb_randr_get_crtc_info_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_crtc_info_possible_length (arg1 : System.Address) return int;  -- /usr/include/xcb/randr.h:3488
   pragma Import (C, xcb_randr_get_crtc_info_possible_length, "xcb_randr_get_crtc_info_possible_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_randr_get_crtc_info_possible_end
  -- ** 
  -- ** @param const xcb_randr_get_crtc_info_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_crtc_info_possible_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/randr.h:3501
   pragma Import (C, xcb_randr_get_crtc_info_possible_end, "xcb_randr_get_crtc_info_possible_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_randr_get_crtc_info_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_randr_get_crtc_info_reply_t * xcb_randr_get_crtc_info_reply
  -- ** 
  -- ** @param xcb_connection_t                  *c
  -- ** @param xcb_randr_get_crtc_info_cookie_t   cookie
  -- ** @param xcb_generic_error_t              **e
  -- ** @returns xcb_randr_get_crtc_info_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_crtc_info_reply
     (arg1 : System.Address;
      arg2 : xcb_randr_get_crtc_info_cookie_t;
      arg3 : System.Address) return access xcb_randr_get_crtc_info_reply_t;  -- /usr/include/xcb/randr.h:3530
   pragma Import (C, xcb_randr_get_crtc_info_reply, "xcb_randr_get_crtc_info_reply");

  --*<  
  --*<  
  --*<  
   function xcb_randr_set_crtc_config_sizeof (arg1 : System.Address; arg2 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/randr.h:3535
   pragma Import (C, xcb_randr_set_crtc_config_sizeof, "xcb_randr_set_crtc_config_sizeof");

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
  -- ** xcb_randr_set_crtc_config_cookie_t xcb_randr_set_crtc_config
  -- ** 
  -- ** @param xcb_connection_t         *c
  -- ** @param xcb_randr_crtc_t          crtc
  -- ** @param xcb_timestamp_t           timestamp
  -- ** @param xcb_timestamp_t           config_timestamp
  -- ** @param int16_t                   x
  -- ** @param int16_t                   y
  -- ** @param xcb_randr_mode_t          mode
  -- ** @param uint16_t                  rotation
  -- ** @param uint32_t                  outputs_len
  -- ** @param const xcb_randr_output_t *outputs
  -- ** @returns xcb_randr_set_crtc_config_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_set_crtc_config
     (arg1 : System.Address;
      arg2 : xcb_randr_crtc_t;
      arg3 : xcb_xproto_h.xcb_timestamp_t;
      arg4 : xcb_xproto_h.xcb_timestamp_t;
      arg5 : sys_types_h.int16_t;
      arg6 : sys_types_h.int16_t;
      arg7 : xcb_randr_mode_t;
      arg8 : stdint_h.uint16_t;
      arg9 : stdint_h.uint32_t;
      arg10 : access xcb_randr_output_t) return xcb_randr_set_crtc_config_cookie_t;  -- /usr/include/xcb/randr.h:3566
   pragma Import (C, xcb_randr_set_crtc_config, "xcb_randr_set_crtc_config");

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
  -- * This form can be used only if the request will cause
  -- * a reply to be generated. Any returned error will be
  -- * placed in the event queue.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_randr_set_crtc_config_cookie_t xcb_randr_set_crtc_config_unchecked
  -- ** 
  -- ** @param xcb_connection_t         *c
  -- ** @param xcb_randr_crtc_t          crtc
  -- ** @param xcb_timestamp_t           timestamp
  -- ** @param xcb_timestamp_t           config_timestamp
  -- ** @param int16_t                   x
  -- ** @param int16_t                   y
  -- ** @param xcb_randr_mode_t          mode
  -- ** @param uint16_t                  rotation
  -- ** @param uint32_t                  outputs_len
  -- ** @param const xcb_randr_output_t *outputs
  -- ** @returns xcb_randr_set_crtc_config_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_set_crtc_config_unchecked
     (arg1 : System.Address;
      arg2 : xcb_randr_crtc_t;
      arg3 : xcb_xproto_h.xcb_timestamp_t;
      arg4 : xcb_xproto_h.xcb_timestamp_t;
      arg5 : sys_types_h.int16_t;
      arg6 : sys_types_h.int16_t;
      arg7 : xcb_randr_mode_t;
      arg8 : stdint_h.uint16_t;
      arg9 : stdint_h.uint32_t;
      arg10 : access xcb_randr_output_t) return xcb_randr_set_crtc_config_cookie_t;  -- /usr/include/xcb/randr.h:3608
   pragma Import (C, xcb_randr_set_crtc_config_unchecked, "xcb_randr_set_crtc_config_unchecked");

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
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_randr_set_crtc_config_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_randr_set_crtc_config_reply_t * xcb_randr_set_crtc_config_reply
  -- ** 
  -- ** @param xcb_connection_t                    *c
  -- ** @param xcb_randr_set_crtc_config_cookie_t   cookie
  -- ** @param xcb_generic_error_t                **e
  -- ** @returns xcb_randr_set_crtc_config_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_set_crtc_config_reply
     (arg1 : System.Address;
      arg2 : xcb_randr_set_crtc_config_cookie_t;
      arg3 : System.Address) return access xcb_randr_set_crtc_config_reply_t;  -- /usr/include/xcb/randr.h:3646
   pragma Import (C, xcb_randr_set_crtc_config_reply, "xcb_randr_set_crtc_config_reply");

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
  -- ** xcb_randr_get_crtc_gamma_size_cookie_t xcb_randr_get_crtc_gamma_size
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_randr_crtc_t  crtc
  -- ** @returns xcb_randr_get_crtc_gamma_size_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_crtc_gamma_size (arg1 : System.Address; arg2 : xcb_randr_crtc_t) return xcb_randr_get_crtc_gamma_size_cookie_t;  -- /usr/include/xcb/randr.h:3670
   pragma Import (C, xcb_randr_get_crtc_gamma_size, "xcb_randr_get_crtc_gamma_size");

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
  -- ** xcb_randr_get_crtc_gamma_size_cookie_t xcb_randr_get_crtc_gamma_size_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_randr_crtc_t  crtc
  -- ** @returns xcb_randr_get_crtc_gamma_size_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_crtc_gamma_size_unchecked (arg1 : System.Address; arg2 : xcb_randr_crtc_t) return xcb_randr_get_crtc_gamma_size_cookie_t;  -- /usr/include/xcb/randr.h:3696
   pragma Import (C, xcb_randr_get_crtc_gamma_size_unchecked, "xcb_randr_get_crtc_gamma_size_unchecked");

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
  -- * xcb_randr_get_crtc_gamma_size_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_randr_get_crtc_gamma_size_reply_t * xcb_randr_get_crtc_gamma_size_reply
  -- ** 
  -- ** @param xcb_connection_t                        *c
  -- ** @param xcb_randr_get_crtc_gamma_size_cookie_t   cookie
  -- ** @param xcb_generic_error_t                    **e
  -- ** @returns xcb_randr_get_crtc_gamma_size_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_crtc_gamma_size_reply
     (arg1 : System.Address;
      arg2 : xcb_randr_get_crtc_gamma_size_cookie_t;
      arg3 : System.Address) return access xcb_randr_get_crtc_gamma_size_reply_t;  -- /usr/include/xcb/randr.h:3726
   pragma Import (C, xcb_randr_get_crtc_gamma_size_reply, "xcb_randr_get_crtc_gamma_size_reply");

  --*<  
  --*<  
  --*<  
   function xcb_randr_get_crtc_gamma_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/randr.h:3731
   pragma Import (C, xcb_randr_get_crtc_gamma_sizeof, "xcb_randr_get_crtc_gamma_sizeof");

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
  -- ** xcb_randr_get_crtc_gamma_cookie_t xcb_randr_get_crtc_gamma
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_randr_crtc_t  crtc
  -- ** @returns xcb_randr_get_crtc_gamma_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_crtc_gamma (arg1 : System.Address; arg2 : xcb_randr_crtc_t) return xcb_randr_get_crtc_gamma_cookie_t;  -- /usr/include/xcb/randr.h:3753
   pragma Import (C, xcb_randr_get_crtc_gamma, "xcb_randr_get_crtc_gamma");

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
  -- ** xcb_randr_get_crtc_gamma_cookie_t xcb_randr_get_crtc_gamma_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_randr_crtc_t  crtc
  -- ** @returns xcb_randr_get_crtc_gamma_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_crtc_gamma_unchecked (arg1 : System.Address; arg2 : xcb_randr_crtc_t) return xcb_randr_get_crtc_gamma_cookie_t;  -- /usr/include/xcb/randr.h:3779
   pragma Import (C, xcb_randr_get_crtc_gamma_unchecked, "xcb_randr_get_crtc_gamma_unchecked");

  --*<  
  --****************************************************************************
  -- **
  -- ** uint16_t * xcb_randr_get_crtc_gamma_red
  -- ** 
  -- ** @param const xcb_randr_get_crtc_gamma_reply_t *R
  -- ** @returns uint16_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_crtc_gamma_red (arg1 : System.Address) return access stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:3793
   pragma Import (C, xcb_randr_get_crtc_gamma_red, "xcb_randr_get_crtc_gamma_red");

  --****************************************************************************
  -- **
  -- ** int xcb_randr_get_crtc_gamma_red_length
  -- ** 
  -- ** @param const xcb_randr_get_crtc_gamma_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_crtc_gamma_red_length (arg1 : System.Address) return int;  -- /usr/include/xcb/randr.h:3806
   pragma Import (C, xcb_randr_get_crtc_gamma_red_length, "xcb_randr_get_crtc_gamma_red_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_randr_get_crtc_gamma_red_end
  -- ** 
  -- ** @param const xcb_randr_get_crtc_gamma_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_crtc_gamma_red_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/randr.h:3819
   pragma Import (C, xcb_randr_get_crtc_gamma_red_end, "xcb_randr_get_crtc_gamma_red_end");

  --****************************************************************************
  -- **
  -- ** uint16_t * xcb_randr_get_crtc_gamma_green
  -- ** 
  -- ** @param const xcb_randr_get_crtc_gamma_reply_t *R
  -- ** @returns uint16_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_crtc_gamma_green (arg1 : System.Address) return access stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:3832
   pragma Import (C, xcb_randr_get_crtc_gamma_green, "xcb_randr_get_crtc_gamma_green");

  --****************************************************************************
  -- **
  -- ** int xcb_randr_get_crtc_gamma_green_length
  -- ** 
  -- ** @param const xcb_randr_get_crtc_gamma_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_crtc_gamma_green_length (arg1 : System.Address) return int;  -- /usr/include/xcb/randr.h:3845
   pragma Import (C, xcb_randr_get_crtc_gamma_green_length, "xcb_randr_get_crtc_gamma_green_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_randr_get_crtc_gamma_green_end
  -- ** 
  -- ** @param const xcb_randr_get_crtc_gamma_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_crtc_gamma_green_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/randr.h:3858
   pragma Import (C, xcb_randr_get_crtc_gamma_green_end, "xcb_randr_get_crtc_gamma_green_end");

  --****************************************************************************
  -- **
  -- ** uint16_t * xcb_randr_get_crtc_gamma_blue
  -- ** 
  -- ** @param const xcb_randr_get_crtc_gamma_reply_t *R
  -- ** @returns uint16_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_crtc_gamma_blue (arg1 : System.Address) return access stdint_h.uint16_t;  -- /usr/include/xcb/randr.h:3871
   pragma Import (C, xcb_randr_get_crtc_gamma_blue, "xcb_randr_get_crtc_gamma_blue");

  --****************************************************************************
  -- **
  -- ** int xcb_randr_get_crtc_gamma_blue_length
  -- ** 
  -- ** @param const xcb_randr_get_crtc_gamma_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_crtc_gamma_blue_length (arg1 : System.Address) return int;  -- /usr/include/xcb/randr.h:3884
   pragma Import (C, xcb_randr_get_crtc_gamma_blue_length, "xcb_randr_get_crtc_gamma_blue_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_randr_get_crtc_gamma_blue_end
  -- ** 
  -- ** @param const xcb_randr_get_crtc_gamma_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_crtc_gamma_blue_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/randr.h:3897
   pragma Import (C, xcb_randr_get_crtc_gamma_blue_end, "xcb_randr_get_crtc_gamma_blue_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_randr_get_crtc_gamma_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_randr_get_crtc_gamma_reply_t * xcb_randr_get_crtc_gamma_reply
  -- ** 
  -- ** @param xcb_connection_t                   *c
  -- ** @param xcb_randr_get_crtc_gamma_cookie_t   cookie
  -- ** @param xcb_generic_error_t               **e
  -- ** @returns xcb_randr_get_crtc_gamma_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_crtc_gamma_reply
     (arg1 : System.Address;
      arg2 : xcb_randr_get_crtc_gamma_cookie_t;
      arg3 : System.Address) return access xcb_randr_get_crtc_gamma_reply_t;  -- /usr/include/xcb/randr.h:3926
   pragma Import (C, xcb_randr_get_crtc_gamma_reply, "xcb_randr_get_crtc_gamma_reply");

  --*<  
  --*<  
  --*<  
   function xcb_randr_set_crtc_gamma_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/randr.h:3931
   pragma Import (C, xcb_randr_set_crtc_gamma_sizeof, "xcb_randr_set_crtc_gamma_sizeof");

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
  -- ** xcb_void_cookie_t xcb_randr_set_crtc_gamma_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_randr_crtc_t  crtc
  -- ** @param uint16_t          size
  -- ** @param const uint16_t   *red
  -- ** @param const uint16_t   *green
  -- ** @param const uint16_t   *blue
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_set_crtc_gamma_checked
     (arg1 : System.Address;
      arg2 : xcb_randr_crtc_t;
      arg3 : stdint_h.uint16_t;
      arg4 : access stdint_h.uint16_t;
      arg5 : access stdint_h.uint16_t;
      arg6 : access stdint_h.uint16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/randr.h:3960
   pragma Import (C, xcb_randr_set_crtc_gamma_checked, "xcb_randr_set_crtc_gamma_checked");

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
  -- ** xcb_void_cookie_t xcb_randr_set_crtc_gamma
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_randr_crtc_t  crtc
  -- ** @param uint16_t          size
  -- ** @param const uint16_t   *red
  -- ** @param const uint16_t   *green
  -- ** @param const uint16_t   *blue
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_set_crtc_gamma
     (arg1 : System.Address;
      arg2 : xcb_randr_crtc_t;
      arg3 : stdint_h.uint16_t;
      arg4 : access stdint_h.uint16_t;
      arg5 : access stdint_h.uint16_t;
      arg6 : access stdint_h.uint16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/randr.h:3991
   pragma Import (C, xcb_randr_set_crtc_gamma, "xcb_randr_set_crtc_gamma");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_randr_get_screen_resources_current_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/randr.h:3999
   pragma Import (C, xcb_randr_get_screen_resources_current_sizeof, "xcb_randr_get_screen_resources_current_sizeof");

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
  -- ** xcb_randr_get_screen_resources_current_cookie_t xcb_randr_get_screen_resources_current
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_randr_get_screen_resources_current_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_screen_resources_current (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_randr_get_screen_resources_current_cookie_t;  -- /usr/include/xcb/randr.h:4021
   pragma Import (C, xcb_randr_get_screen_resources_current, "xcb_randr_get_screen_resources_current");

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
  -- ** xcb_randr_get_screen_resources_current_cookie_t xcb_randr_get_screen_resources_current_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_randr_get_screen_resources_current_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_screen_resources_current_unchecked (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_randr_get_screen_resources_current_cookie_t;  -- /usr/include/xcb/randr.h:4047
   pragma Import (C, xcb_randr_get_screen_resources_current_unchecked, "xcb_randr_get_screen_resources_current_unchecked");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_randr_crtc_t * xcb_randr_get_screen_resources_current_crtcs
  -- ** 
  -- ** @param const xcb_randr_get_screen_resources_current_reply_t *R
  -- ** @returns xcb_randr_crtc_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_screen_resources_current_crtcs (arg1 : System.Address) return access xcb_randr_crtc_t;  -- /usr/include/xcb/randr.h:4061
   pragma Import (C, xcb_randr_get_screen_resources_current_crtcs, "xcb_randr_get_screen_resources_current_crtcs");

  --****************************************************************************
  -- **
  -- ** int xcb_randr_get_screen_resources_current_crtcs_length
  -- ** 
  -- ** @param const xcb_randr_get_screen_resources_current_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_screen_resources_current_crtcs_length (arg1 : System.Address) return int;  -- /usr/include/xcb/randr.h:4074
   pragma Import (C, xcb_randr_get_screen_resources_current_crtcs_length, "xcb_randr_get_screen_resources_current_crtcs_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_randr_get_screen_resources_current_crtcs_end
  -- ** 
  -- ** @param const xcb_randr_get_screen_resources_current_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_screen_resources_current_crtcs_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/randr.h:4087
   pragma Import (C, xcb_randr_get_screen_resources_current_crtcs_end, "xcb_randr_get_screen_resources_current_crtcs_end");

  --****************************************************************************
  -- **
  -- ** xcb_randr_output_t * xcb_randr_get_screen_resources_current_outputs
  -- ** 
  -- ** @param const xcb_randr_get_screen_resources_current_reply_t *R
  -- ** @returns xcb_randr_output_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_screen_resources_current_outputs (arg1 : System.Address) return access xcb_randr_output_t;  -- /usr/include/xcb/randr.h:4100
   pragma Import (C, xcb_randr_get_screen_resources_current_outputs, "xcb_randr_get_screen_resources_current_outputs");

  --****************************************************************************
  -- **
  -- ** int xcb_randr_get_screen_resources_current_outputs_length
  -- ** 
  -- ** @param const xcb_randr_get_screen_resources_current_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_screen_resources_current_outputs_length (arg1 : System.Address) return int;  -- /usr/include/xcb/randr.h:4113
   pragma Import (C, xcb_randr_get_screen_resources_current_outputs_length, "xcb_randr_get_screen_resources_current_outputs_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_randr_get_screen_resources_current_outputs_end
  -- ** 
  -- ** @param const xcb_randr_get_screen_resources_current_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_screen_resources_current_outputs_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/randr.h:4126
   pragma Import (C, xcb_randr_get_screen_resources_current_outputs_end, "xcb_randr_get_screen_resources_current_outputs_end");

  --****************************************************************************
  -- **
  -- ** xcb_randr_mode_info_t * xcb_randr_get_screen_resources_current_modes
  -- ** 
  -- ** @param const xcb_randr_get_screen_resources_current_reply_t *R
  -- ** @returns xcb_randr_mode_info_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_screen_resources_current_modes (arg1 : System.Address) return access xcb_randr_mode_info_t;  -- /usr/include/xcb/randr.h:4139
   pragma Import (C, xcb_randr_get_screen_resources_current_modes, "xcb_randr_get_screen_resources_current_modes");

  --****************************************************************************
  -- **
  -- ** int xcb_randr_get_screen_resources_current_modes_length
  -- ** 
  -- ** @param const xcb_randr_get_screen_resources_current_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_screen_resources_current_modes_length (arg1 : System.Address) return int;  -- /usr/include/xcb/randr.h:4152
   pragma Import (C, xcb_randr_get_screen_resources_current_modes_length, "xcb_randr_get_screen_resources_current_modes_length");

  --****************************************************************************
  -- **
  -- ** xcb_randr_mode_info_iterator_t xcb_randr_get_screen_resources_current_modes_iterator
  -- ** 
  -- ** @param const xcb_randr_get_screen_resources_current_reply_t *R
  -- ** @returns xcb_randr_mode_info_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_screen_resources_current_modes_iterator (arg1 : System.Address) return xcb_randr_mode_info_iterator_t;  -- /usr/include/xcb/randr.h:4165
   pragma Import (C, xcb_randr_get_screen_resources_current_modes_iterator, "xcb_randr_get_screen_resources_current_modes_iterator");

  --****************************************************************************
  -- **
  -- ** uint8_t * xcb_randr_get_screen_resources_current_names
  -- ** 
  -- ** @param const xcb_randr_get_screen_resources_current_reply_t *R
  -- ** @returns uint8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_screen_resources_current_names (arg1 : System.Address) return access stdint_h.uint8_t;  -- /usr/include/xcb/randr.h:4178
   pragma Import (C, xcb_randr_get_screen_resources_current_names, "xcb_randr_get_screen_resources_current_names");

  --****************************************************************************
  -- **
  -- ** int xcb_randr_get_screen_resources_current_names_length
  -- ** 
  -- ** @param const xcb_randr_get_screen_resources_current_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_screen_resources_current_names_length (arg1 : System.Address) return int;  -- /usr/include/xcb/randr.h:4191
   pragma Import (C, xcb_randr_get_screen_resources_current_names_length, "xcb_randr_get_screen_resources_current_names_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_randr_get_screen_resources_current_names_end
  -- ** 
  -- ** @param const xcb_randr_get_screen_resources_current_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_screen_resources_current_names_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/randr.h:4204
   pragma Import (C, xcb_randr_get_screen_resources_current_names_end, "xcb_randr_get_screen_resources_current_names_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_randr_get_screen_resources_current_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_randr_get_screen_resources_current_reply_t * xcb_randr_get_screen_resources_current_reply
  -- ** 
  -- ** @param xcb_connection_t                                 *c
  -- ** @param xcb_randr_get_screen_resources_current_cookie_t   cookie
  -- ** @param xcb_generic_error_t                             **e
  -- ** @returns xcb_randr_get_screen_resources_current_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_screen_resources_current_reply
     (arg1 : System.Address;
      arg2 : xcb_randr_get_screen_resources_current_cookie_t;
      arg3 : System.Address) return access xcb_randr_get_screen_resources_current_reply_t;  -- /usr/include/xcb/randr.h:4233
   pragma Import (C, xcb_randr_get_screen_resources_current_reply, "xcb_randr_get_screen_resources_current_reply");

  --*<  
  --*<  
  --*<  
   function xcb_randr_set_crtc_transform_sizeof (arg1 : System.Address; arg2 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/randr.h:4238
   pragma Import (C, xcb_randr_set_crtc_transform_sizeof, "xcb_randr_set_crtc_transform_sizeof");

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
  -- ** xcb_void_cookie_t xcb_randr_set_crtc_transform_checked
  -- ** 
  -- ** @param xcb_connection_t         *c
  -- ** @param xcb_randr_crtc_t          crtc
  -- ** @param xcb_render_transform_t    transform
  -- ** @param uint16_t                  filter_len
  -- ** @param const char               *filter_name
  -- ** @param uint32_t                  filter_params_len
  -- ** @param const xcb_render_fixed_t *filter_params
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_set_crtc_transform_checked
     (arg1 : System.Address;
      arg2 : xcb_randr_crtc_t;
      arg3 : xcb_render_h.xcb_render_transform_t;
      arg4 : stdint_h.uint16_t;
      arg5 : Interfaces.C.Strings.chars_ptr;
      arg6 : stdint_h.uint32_t;
      arg7 : access xcb_render_h.xcb_render_fixed_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/randr.h:4269
   pragma Import (C, xcb_randr_set_crtc_transform_checked, "xcb_randr_set_crtc_transform_checked");

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
  -- ** xcb_void_cookie_t xcb_randr_set_crtc_transform
  -- ** 
  -- ** @param xcb_connection_t         *c
  -- ** @param xcb_randr_crtc_t          crtc
  -- ** @param xcb_render_transform_t    transform
  -- ** @param uint16_t                  filter_len
  -- ** @param const char               *filter_name
  -- ** @param uint32_t                  filter_params_len
  -- ** @param const xcb_render_fixed_t *filter_params
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_set_crtc_transform
     (arg1 : System.Address;
      arg2 : xcb_randr_crtc_t;
      arg3 : xcb_render_h.xcb_render_transform_t;
      arg4 : stdint_h.uint16_t;
      arg5 : Interfaces.C.Strings.chars_ptr;
      arg6 : stdint_h.uint32_t;
      arg7 : access xcb_render_h.xcb_render_fixed_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/randr.h:4302
   pragma Import (C, xcb_randr_set_crtc_transform, "xcb_randr_set_crtc_transform");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_randr_get_crtc_transform_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/randr.h:4311
   pragma Import (C, xcb_randr_get_crtc_transform_sizeof, "xcb_randr_get_crtc_transform_sizeof");

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
  -- ** xcb_randr_get_crtc_transform_cookie_t xcb_randr_get_crtc_transform
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_randr_crtc_t  crtc
  -- ** @returns xcb_randr_get_crtc_transform_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_crtc_transform (arg1 : System.Address; arg2 : xcb_randr_crtc_t) return xcb_randr_get_crtc_transform_cookie_t;  -- /usr/include/xcb/randr.h:4333
   pragma Import (C, xcb_randr_get_crtc_transform, "xcb_randr_get_crtc_transform");

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
  -- ** xcb_randr_get_crtc_transform_cookie_t xcb_randr_get_crtc_transform_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_randr_crtc_t  crtc
  -- ** @returns xcb_randr_get_crtc_transform_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_crtc_transform_unchecked (arg1 : System.Address; arg2 : xcb_randr_crtc_t) return xcb_randr_get_crtc_transform_cookie_t;  -- /usr/include/xcb/randr.h:4359
   pragma Import (C, xcb_randr_get_crtc_transform_unchecked, "xcb_randr_get_crtc_transform_unchecked");

  --*<  
  --****************************************************************************
  -- **
  -- ** char * xcb_randr_get_crtc_transform_pending_filter_name
  -- ** 
  -- ** @param const xcb_randr_get_crtc_transform_reply_t *R
  -- ** @returns char *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_crtc_transform_pending_filter_name (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/randr.h:4373
   pragma Import (C, xcb_randr_get_crtc_transform_pending_filter_name, "xcb_randr_get_crtc_transform_pending_filter_name");

  --****************************************************************************
  -- **
  -- ** int xcb_randr_get_crtc_transform_pending_filter_name_length
  -- ** 
  -- ** @param const xcb_randr_get_crtc_transform_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_crtc_transform_pending_filter_name_length (arg1 : System.Address) return int;  -- /usr/include/xcb/randr.h:4386
   pragma Import (C, xcb_randr_get_crtc_transform_pending_filter_name_length, "xcb_randr_get_crtc_transform_pending_filter_name_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_randr_get_crtc_transform_pending_filter_name_end
  -- ** 
  -- ** @param const xcb_randr_get_crtc_transform_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_crtc_transform_pending_filter_name_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/randr.h:4399
   pragma Import (C, xcb_randr_get_crtc_transform_pending_filter_name_end, "xcb_randr_get_crtc_transform_pending_filter_name_end");

  --****************************************************************************
  -- **
  -- ** xcb_render_fixed_t * xcb_randr_get_crtc_transform_pending_params
  -- ** 
  -- ** @param const xcb_randr_get_crtc_transform_reply_t *R
  -- ** @returns xcb_render_fixed_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_crtc_transform_pending_params (arg1 : System.Address) return access xcb_render_h.xcb_render_fixed_t;  -- /usr/include/xcb/randr.h:4412
   pragma Import (C, xcb_randr_get_crtc_transform_pending_params, "xcb_randr_get_crtc_transform_pending_params");

  --****************************************************************************
  -- **
  -- ** int xcb_randr_get_crtc_transform_pending_params_length
  -- ** 
  -- ** @param const xcb_randr_get_crtc_transform_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_crtc_transform_pending_params_length (arg1 : System.Address) return int;  -- /usr/include/xcb/randr.h:4425
   pragma Import (C, xcb_randr_get_crtc_transform_pending_params_length, "xcb_randr_get_crtc_transform_pending_params_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_randr_get_crtc_transform_pending_params_end
  -- ** 
  -- ** @param const xcb_randr_get_crtc_transform_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_crtc_transform_pending_params_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/randr.h:4438
   pragma Import (C, xcb_randr_get_crtc_transform_pending_params_end, "xcb_randr_get_crtc_transform_pending_params_end");

  --****************************************************************************
  -- **
  -- ** char * xcb_randr_get_crtc_transform_current_filter_name
  -- ** 
  -- ** @param const xcb_randr_get_crtc_transform_reply_t *R
  -- ** @returns char *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_crtc_transform_current_filter_name (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/randr.h:4451
   pragma Import (C, xcb_randr_get_crtc_transform_current_filter_name, "xcb_randr_get_crtc_transform_current_filter_name");

  --****************************************************************************
  -- **
  -- ** int xcb_randr_get_crtc_transform_current_filter_name_length
  -- ** 
  -- ** @param const xcb_randr_get_crtc_transform_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_crtc_transform_current_filter_name_length (arg1 : System.Address) return int;  -- /usr/include/xcb/randr.h:4464
   pragma Import (C, xcb_randr_get_crtc_transform_current_filter_name_length, "xcb_randr_get_crtc_transform_current_filter_name_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_randr_get_crtc_transform_current_filter_name_end
  -- ** 
  -- ** @param const xcb_randr_get_crtc_transform_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_crtc_transform_current_filter_name_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/randr.h:4477
   pragma Import (C, xcb_randr_get_crtc_transform_current_filter_name_end, "xcb_randr_get_crtc_transform_current_filter_name_end");

  --****************************************************************************
  -- **
  -- ** xcb_render_fixed_t * xcb_randr_get_crtc_transform_current_params
  -- ** 
  -- ** @param const xcb_randr_get_crtc_transform_reply_t *R
  -- ** @returns xcb_render_fixed_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_crtc_transform_current_params (arg1 : System.Address) return access xcb_render_h.xcb_render_fixed_t;  -- /usr/include/xcb/randr.h:4490
   pragma Import (C, xcb_randr_get_crtc_transform_current_params, "xcb_randr_get_crtc_transform_current_params");

  --****************************************************************************
  -- **
  -- ** int xcb_randr_get_crtc_transform_current_params_length
  -- ** 
  -- ** @param const xcb_randr_get_crtc_transform_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_crtc_transform_current_params_length (arg1 : System.Address) return int;  -- /usr/include/xcb/randr.h:4503
   pragma Import (C, xcb_randr_get_crtc_transform_current_params_length, "xcb_randr_get_crtc_transform_current_params_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_randr_get_crtc_transform_current_params_end
  -- ** 
  -- ** @param const xcb_randr_get_crtc_transform_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_crtc_transform_current_params_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/randr.h:4516
   pragma Import (C, xcb_randr_get_crtc_transform_current_params_end, "xcb_randr_get_crtc_transform_current_params_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_randr_get_crtc_transform_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_randr_get_crtc_transform_reply_t * xcb_randr_get_crtc_transform_reply
  -- ** 
  -- ** @param xcb_connection_t                       *c
  -- ** @param xcb_randr_get_crtc_transform_cookie_t   cookie
  -- ** @param xcb_generic_error_t                   **e
  -- ** @returns xcb_randr_get_crtc_transform_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_crtc_transform_reply
     (arg1 : System.Address;
      arg2 : xcb_randr_get_crtc_transform_cookie_t;
      arg3 : System.Address) return access xcb_randr_get_crtc_transform_reply_t;  -- /usr/include/xcb/randr.h:4545
   pragma Import (C, xcb_randr_get_crtc_transform_reply, "xcb_randr_get_crtc_transform_reply");

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
  -- ** xcb_randr_get_panning_cookie_t xcb_randr_get_panning
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_randr_crtc_t  crtc
  -- ** @returns xcb_randr_get_panning_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_panning (arg1 : System.Address; arg2 : xcb_randr_crtc_t) return xcb_randr_get_panning_cookie_t;  -- /usr/include/xcb/randr.h:4569
   pragma Import (C, xcb_randr_get_panning, "xcb_randr_get_panning");

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
  -- ** xcb_randr_get_panning_cookie_t xcb_randr_get_panning_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_randr_crtc_t  crtc
  -- ** @returns xcb_randr_get_panning_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_panning_unchecked (arg1 : System.Address; arg2 : xcb_randr_crtc_t) return xcb_randr_get_panning_cookie_t;  -- /usr/include/xcb/randr.h:4595
   pragma Import (C, xcb_randr_get_panning_unchecked, "xcb_randr_get_panning_unchecked");

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
  -- * xcb_randr_get_panning_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_randr_get_panning_reply_t * xcb_randr_get_panning_reply
  -- ** 
  -- ** @param xcb_connection_t                *c
  -- ** @param xcb_randr_get_panning_cookie_t   cookie
  -- ** @param xcb_generic_error_t            **e
  -- ** @returns xcb_randr_get_panning_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_panning_reply
     (arg1 : System.Address;
      arg2 : xcb_randr_get_panning_cookie_t;
      arg3 : System.Address) return access xcb_randr_get_panning_reply_t;  -- /usr/include/xcb/randr.h:4625
   pragma Import (C, xcb_randr_get_panning_reply, "xcb_randr_get_panning_reply");

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
  -- ** xcb_randr_set_panning_cookie_t xcb_randr_set_panning
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_randr_crtc_t  crtc
  -- ** @param xcb_timestamp_t   timestamp
  -- ** @param uint16_t          left
  -- ** @param uint16_t          top
  -- ** @param uint16_t          width
  -- ** @param uint16_t          height
  -- ** @param uint16_t          track_left
  -- ** @param uint16_t          track_top
  -- ** @param uint16_t          track_width
  -- ** @param uint16_t          track_height
  -- ** @param int16_t           border_left
  -- ** @param int16_t           border_top
  -- ** @param int16_t           border_right
  -- ** @param int16_t           border_bottom
  -- ** @returns xcb_randr_set_panning_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_set_panning
     (arg1 : System.Address;
      arg2 : xcb_randr_crtc_t;
      arg3 : xcb_xproto_h.xcb_timestamp_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint16_t;
      arg7 : stdint_h.uint16_t;
      arg8 : stdint_h.uint16_t;
      arg9 : stdint_h.uint16_t;
      arg10 : stdint_h.uint16_t;
      arg11 : stdint_h.uint16_t;
      arg12 : sys_types_h.int16_t;
      arg13 : sys_types_h.int16_t;
      arg14 : sys_types_h.int16_t;
      arg15 : sys_types_h.int16_t) return xcb_randr_set_panning_cookie_t;  -- /usr/include/xcb/randr.h:4662
   pragma Import (C, xcb_randr_set_panning, "xcb_randr_set_panning");

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
  -- * This form can be used only if the request will cause
  -- * a reply to be generated. Any returned error will be
  -- * placed in the event queue.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_randr_set_panning_cookie_t xcb_randr_set_panning_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_randr_crtc_t  crtc
  -- ** @param xcb_timestamp_t   timestamp
  -- ** @param uint16_t          left
  -- ** @param uint16_t          top
  -- ** @param uint16_t          width
  -- ** @param uint16_t          height
  -- ** @param uint16_t          track_left
  -- ** @param uint16_t          track_top
  -- ** @param uint16_t          track_width
  -- ** @param uint16_t          track_height
  -- ** @param int16_t           border_left
  -- ** @param int16_t           border_top
  -- ** @param int16_t           border_right
  -- ** @param int16_t           border_bottom
  -- ** @returns xcb_randr_set_panning_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_set_panning_unchecked
     (arg1 : System.Address;
      arg2 : xcb_randr_crtc_t;
      arg3 : xcb_xproto_h.xcb_timestamp_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint16_t;
      arg7 : stdint_h.uint16_t;
      arg8 : stdint_h.uint16_t;
      arg9 : stdint_h.uint16_t;
      arg10 : stdint_h.uint16_t;
      arg11 : stdint_h.uint16_t;
      arg12 : sys_types_h.int16_t;
      arg13 : sys_types_h.int16_t;
      arg14 : sys_types_h.int16_t;
      arg15 : sys_types_h.int16_t) return xcb_randr_set_panning_cookie_t;  -- /usr/include/xcb/randr.h:4714
   pragma Import (C, xcb_randr_set_panning_unchecked, "xcb_randr_set_panning_unchecked");

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
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_randr_set_panning_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_randr_set_panning_reply_t * xcb_randr_set_panning_reply
  -- ** 
  -- ** @param xcb_connection_t                *c
  -- ** @param xcb_randr_set_panning_cookie_t   cookie
  -- ** @param xcb_generic_error_t            **e
  -- ** @returns xcb_randr_set_panning_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_set_panning_reply
     (arg1 : System.Address;
      arg2 : xcb_randr_set_panning_cookie_t;
      arg3 : System.Address) return access xcb_randr_set_panning_reply_t;  -- /usr/include/xcb/randr.h:4757
   pragma Import (C, xcb_randr_set_panning_reply, "xcb_randr_set_panning_reply");

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
  -- ** xcb_void_cookie_t xcb_randr_set_output_primary_checked
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_window_t        window
  -- ** @param xcb_randr_output_t  output
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_set_output_primary_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_randr_output_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/randr.h:4785
   pragma Import (C, xcb_randr_set_output_primary_checked, "xcb_randr_set_output_primary_checked");

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
  -- ** xcb_void_cookie_t xcb_randr_set_output_primary
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_window_t        window
  -- ** @param xcb_randr_output_t  output
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_set_output_primary
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_randr_output_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/randr.h:4810
   pragma Import (C, xcb_randr_set_output_primary, "xcb_randr_set_output_primary");

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
  -- ** xcb_randr_get_output_primary_cookie_t xcb_randr_get_output_primary
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_randr_get_output_primary_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_output_primary (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_randr_get_output_primary_cookie_t;  -- /usr/include/xcb/randr.h:4834
   pragma Import (C, xcb_randr_get_output_primary, "xcb_randr_get_output_primary");

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
  -- ** xcb_randr_get_output_primary_cookie_t xcb_randr_get_output_primary_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_randr_get_output_primary_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_output_primary_unchecked (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_randr_get_output_primary_cookie_t;  -- /usr/include/xcb/randr.h:4860
   pragma Import (C, xcb_randr_get_output_primary_unchecked, "xcb_randr_get_output_primary_unchecked");

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
  -- * xcb_randr_get_output_primary_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_randr_get_output_primary_reply_t * xcb_randr_get_output_primary_reply
  -- ** 
  -- ** @param xcb_connection_t                       *c
  -- ** @param xcb_randr_get_output_primary_cookie_t   cookie
  -- ** @param xcb_generic_error_t                   **e
  -- ** @returns xcb_randr_get_output_primary_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_get_output_primary_reply
     (arg1 : System.Address;
      arg2 : xcb_randr_get_output_primary_cookie_t;
      arg3 : System.Address) return access xcb_randr_get_output_primary_reply_t;  -- /usr/include/xcb/randr.h:4890
   pragma Import (C, xcb_randr_get_output_primary_reply, "xcb_randr_get_output_primary_reply");

  --*<  
  --*<  
  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_randr_crtc_change_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_randr_crtc_change_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_randr_crtc_change_next
  -- ** 
  -- ** @param xcb_randr_crtc_change_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_randr_crtc_change_next (arg1 : access xcb_randr_crtc_change_iterator_t);  -- /usr/include/xcb/randr.h:4913
   pragma Import (C, xcb_randr_crtc_change_next, "xcb_randr_crtc_change_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_randr_crtc_change_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_randr_crtc_change_end
  -- ** 
  -- ** @param xcb_randr_crtc_change_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_crtc_change_end (arg1 : xcb_randr_crtc_change_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/randr.h:4935
   pragma Import (C, xcb_randr_crtc_change_end, "xcb_randr_crtc_change_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_randr_output_change_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_randr_output_change_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_randr_output_change_next
  -- ** 
  -- ** @param xcb_randr_output_change_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_randr_output_change_next (arg1 : access xcb_randr_output_change_iterator_t);  -- /usr/include/xcb/randr.h:4956
   pragma Import (C, xcb_randr_output_change_next, "xcb_randr_output_change_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_randr_output_change_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_randr_output_change_end
  -- ** 
  -- ** @param xcb_randr_output_change_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_output_change_end (arg1 : xcb_randr_output_change_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/randr.h:4978
   pragma Import (C, xcb_randr_output_change_end, "xcb_randr_output_change_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_randr_output_property_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_randr_output_property_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_randr_output_property_next
  -- ** 
  -- ** @param xcb_randr_output_property_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_randr_output_property_next (arg1 : access xcb_randr_output_property_iterator_t);  -- /usr/include/xcb/randr.h:4999
   pragma Import (C, xcb_randr_output_property_next, "xcb_randr_output_property_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_randr_output_property_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_randr_output_property_end
  -- ** 
  -- ** @param xcb_randr_output_property_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_output_property_end (arg1 : xcb_randr_output_property_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/randr.h:5021
   pragma Import (C, xcb_randr_output_property_end, "xcb_randr_output_property_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_randr_notify_data_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_randr_notify_data_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_randr_notify_data_next
  -- ** 
  -- ** @param xcb_randr_notify_data_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_randr_notify_data_next (arg1 : access xcb_randr_notify_data_iterator_t);  -- /usr/include/xcb/randr.h:5042
   pragma Import (C, xcb_randr_notify_data_next, "xcb_randr_notify_data_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_randr_notify_data_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_randr_notify_data_end
  -- ** 
  -- ** @param xcb_randr_notify_data_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_randr_notify_data_end (arg1 : xcb_randr_notify_data_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/randr.h:5064
   pragma Import (C, xcb_randr_notify_data_end, "xcb_randr_notify_data_end");

  --*
  -- * @}
  --  

end xcb_randr_h;
