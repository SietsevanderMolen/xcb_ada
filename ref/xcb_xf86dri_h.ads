with Interfaces.C; use Interfaces.C;
with xcb_xcb_h;
with sys_types_h;
with stdint_h;
with System;
with Interfaces.C.Strings;

package xcb_xf86dri_h is

   --  unsupported macro: XCB_XF86DRI_MAJOR_VERSION 4
   --  unsupported macro: XCB_XF86DRI_MINOR_VERSION 1
   --  unsupported macro: XCB_XF86DRI_QUERY_VERSION 0
   --  unsupported macro: XCB_XF86DRI_QUERY_DIRECT_RENDERING_CAPABLE 1
   --  unsupported macro: XCB_XF86DRI_OPEN_CONNECTION 2
   --  unsupported macro: XCB_XF86DRI_CLOSE_CONNECTION 3
   --  unsupported macro: XCB_XF86DRI_GET_CLIENT_DRIVER_NAME 4
   --  unsupported macro: XCB_XF86DRI_CREATE_CONTEXT 5
   --  unsupported macro: XCB_XF86DRI_DESTROY_CONTEXT 6
   --  unsupported macro: XCB_XF86DRI_CREATE_DRAWABLE 7
   --  unsupported macro: XCB_XF86DRI_DESTROY_DRAWABLE 8
   --  unsupported macro: XCB_XF86DRI_GET_DRAWABLE_INFO 9
   --  unsupported macro: XCB_XF86DRI_GET_DEVICE_INFO 10
   --  unsupported macro: XCB_XF86DRI_AUTH_CONNECTION 11
  -- * This file generated automatically from xf86dri.xml by c_client.py.
  -- * Edit at your peril.
  --  

  --*
  -- * @defgroup XCB_XF86Dri_API XCB XF86Dri API
  -- * @brief XF86Dri XCB Protocol Implementation.
  -- * @{
  -- * 

   xcb_xf86dri_id : aliased xcb_xcb_h.xcb_extension_t;  -- /usr/include/xcb/xf86dri.h:24
   pragma Import (C, xcb_xf86dri_id, "xcb_xf86dri_id");

  --*
  -- * @brief xcb_xf86dri_drm_clip_rect_t
  -- * 

  --*<   
   type xcb_xf86dri_drm_clip_rect_t is record
      x1 : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xf86dri.h:30
      y1 : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xf86dri.h:31
      x2 : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xf86dri.h:32
      x3 : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xf86dri.h:33
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xf86dri_drm_clip_rect_t);  -- /usr/include/xcb/xf86dri.h:29

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xf86dri_drm_clip_rect_iterator_t
  -- * 

  --*<   
   type xcb_xf86dri_drm_clip_rect_iterator_t is record
      data : access xcb_xf86dri_drm_clip_rect_t;  -- /usr/include/xcb/xf86dri.h:40
      c_rem : aliased int;  -- /usr/include/xcb/xf86dri.h:41
      index : aliased int;  -- /usr/include/xcb/xf86dri.h:42
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xf86dri_drm_clip_rect_iterator_t);  -- /usr/include/xcb/xf86dri.h:39

  --*<   
  --*<   
  --*
  -- * @brief xcb_xf86dri_query_version_cookie_t
  -- * 

  --*<   
   type xcb_xf86dri_query_version_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xf86dri.h:49
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xf86dri_query_version_cookie_t);  -- /usr/include/xcb/xf86dri.h:48

  --* Opcode for xcb_xf86dri_query_version.  
  --*
  -- * @brief xcb_xf86dri_query_version_request_t
  -- * 

  --*<   
   type xcb_xf86dri_query_version_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xf86dri.h:59
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xf86dri.h:60
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xf86dri.h:61
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xf86dri_query_version_request_t);  -- /usr/include/xcb/xf86dri.h:58

  --*<   
  --*<   
  --*
  -- * @brief xcb_xf86dri_query_version_reply_t
  -- * 

  --*<   
   type xcb_xf86dri_query_version_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xf86dri.h:68
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xf86dri.h:69
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xf86dri.h:70
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:71
      dri_major_version : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xf86dri.h:72
      dri_minor_version : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xf86dri.h:73
      dri_minor_patch : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:74
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xf86dri_query_version_reply_t);  -- /usr/include/xcb/xf86dri.h:67

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xf86dri_query_direct_rendering_capable_cookie_t
  -- * 

  --*<   
   type xcb_xf86dri_query_direct_rendering_capable_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xf86dri.h:81
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xf86dri_query_direct_rendering_capable_cookie_t);  -- /usr/include/xcb/xf86dri.h:80

  --* Opcode for xcb_xf86dri_query_direct_rendering_capable.  
  --*
  -- * @brief xcb_xf86dri_query_direct_rendering_capable_request_t
  -- * 

  --*<   
   type xcb_xf86dri_query_direct_rendering_capable_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xf86dri.h:91
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xf86dri.h:92
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xf86dri.h:93
      screen : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:94
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xf86dri_query_direct_rendering_capable_request_t);  -- /usr/include/xcb/xf86dri.h:90

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xf86dri_query_direct_rendering_capable_reply_t
  -- * 

  --*<   
   type xcb_xf86dri_query_direct_rendering_capable_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xf86dri.h:101
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xf86dri.h:102
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xf86dri.h:103
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:104
      is_capable : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xf86dri.h:105
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xf86dri_query_direct_rendering_capable_reply_t);  -- /usr/include/xcb/xf86dri.h:100

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xf86dri_open_connection_cookie_t
  -- * 

  --*<   
   type xcb_xf86dri_open_connection_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xf86dri.h:112
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xf86dri_open_connection_cookie_t);  -- /usr/include/xcb/xf86dri.h:111

  --* Opcode for xcb_xf86dri_open_connection.  
  --*
  -- * @brief xcb_xf86dri_open_connection_request_t
  -- * 

  --*<   
   type xcb_xf86dri_open_connection_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xf86dri.h:122
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xf86dri.h:123
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xf86dri.h:124
      screen : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:125
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xf86dri_open_connection_request_t);  -- /usr/include/xcb/xf86dri.h:121

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xf86dri_open_connection_reply_t
  -- * 

  --*<   
   type anon3977_anon2079_array is array (0 .. 11) of aliased stdint_h.uint8_t;
   type xcb_xf86dri_open_connection_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xf86dri.h:132
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xf86dri.h:133
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xf86dri.h:134
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:135
      sarea_handle_low : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:136
      sarea_handle_high : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:137
      bus_id_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:138
      pad1 : aliased anon3977_anon2079_array;  -- /usr/include/xcb/xf86dri.h:139
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xf86dri_open_connection_reply_t);  -- /usr/include/xcb/xf86dri.h:131

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xf86dri_close_connection.  
  --*
  -- * @brief xcb_xf86dri_close_connection_request_t
  -- * 

  --*<   
   type xcb_xf86dri_close_connection_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xf86dri.h:149
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xf86dri.h:150
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xf86dri.h:151
      screen : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:152
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xf86dri_close_connection_request_t);  -- /usr/include/xcb/xf86dri.h:148

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xf86dri_get_client_driver_name_cookie_t
  -- * 

  --*<   
   type xcb_xf86dri_get_client_driver_name_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xf86dri.h:159
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xf86dri_get_client_driver_name_cookie_t);  -- /usr/include/xcb/xf86dri.h:158

  --* Opcode for xcb_xf86dri_get_client_driver_name.  
  --*
  -- * @brief xcb_xf86dri_get_client_driver_name_request_t
  -- * 

  --*<   
   type xcb_xf86dri_get_client_driver_name_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xf86dri.h:169
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xf86dri.h:170
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xf86dri.h:171
      screen : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:172
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xf86dri_get_client_driver_name_request_t);  -- /usr/include/xcb/xf86dri.h:168

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xf86dri_get_client_driver_name_reply_t
  -- * 

  --*<   
   type anon3987_anon2427_array is array (0 .. 7) of aliased stdint_h.uint8_t;
   type xcb_xf86dri_get_client_driver_name_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xf86dri.h:179
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xf86dri.h:180
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xf86dri.h:181
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:182
      client_driver_major_version : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:183
      client_driver_minor_version : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:184
      client_driver_patch_version : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:185
      client_driver_name_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:186
      pad1 : aliased anon3987_anon2427_array;  -- /usr/include/xcb/xf86dri.h:187
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xf86dri_get_client_driver_name_reply_t);  -- /usr/include/xcb/xf86dri.h:178

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xf86dri_create_context_cookie_t
  -- * 

  --*<   
   type xcb_xf86dri_create_context_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xf86dri.h:194
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xf86dri_create_context_cookie_t);  -- /usr/include/xcb/xf86dri.h:193

  --* Opcode for xcb_xf86dri_create_context.  
  --*
  -- * @brief xcb_xf86dri_create_context_request_t
  -- * 

  --*<   
   type xcb_xf86dri_create_context_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xf86dri.h:204
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xf86dri.h:205
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xf86dri.h:206
      screen : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:207
      visual : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:208
      context : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:209
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xf86dri_create_context_request_t);  -- /usr/include/xcb/xf86dri.h:203

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xf86dri_create_context_reply_t
  -- * 

  --*<   
   type xcb_xf86dri_create_context_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xf86dri.h:216
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xf86dri.h:217
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xf86dri.h:218
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:219
      hw_context : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:220
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xf86dri_create_context_reply_t);  -- /usr/include/xcb/xf86dri.h:215

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xf86dri_destroy_context.  
  --*
  -- * @brief xcb_xf86dri_destroy_context_request_t
  -- * 

  --*<   
   type xcb_xf86dri_destroy_context_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xf86dri.h:230
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xf86dri.h:231
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xf86dri.h:232
      screen : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:233
      context : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:234
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xf86dri_destroy_context_request_t);  -- /usr/include/xcb/xf86dri.h:229

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xf86dri_create_drawable_cookie_t
  -- * 

  --*<   
   type xcb_xf86dri_create_drawable_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xf86dri.h:241
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xf86dri_create_drawable_cookie_t);  -- /usr/include/xcb/xf86dri.h:240

  --* Opcode for xcb_xf86dri_create_drawable.  
  --*
  -- * @brief xcb_xf86dri_create_drawable_request_t
  -- * 

  --*<   
   type xcb_xf86dri_create_drawable_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xf86dri.h:251
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xf86dri.h:252
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xf86dri.h:253
      screen : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:254
      drawable : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:255
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xf86dri_create_drawable_request_t);  -- /usr/include/xcb/xf86dri.h:250

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xf86dri_create_drawable_reply_t
  -- * 

  --*<   
   type xcb_xf86dri_create_drawable_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xf86dri.h:262
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xf86dri.h:263
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xf86dri.h:264
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:265
      hw_drawable_handle : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:266
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xf86dri_create_drawable_reply_t);  -- /usr/include/xcb/xf86dri.h:261

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xf86dri_destroy_drawable.  
  --*
  -- * @brief xcb_xf86dri_destroy_drawable_request_t
  -- * 

  --*<   
   type xcb_xf86dri_destroy_drawable_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xf86dri.h:276
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xf86dri.h:277
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xf86dri.h:278
      screen : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:279
      drawable : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:280
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xf86dri_destroy_drawable_request_t);  -- /usr/include/xcb/xf86dri.h:275

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xf86dri_get_drawable_info_cookie_t
  -- * 

  --*<   
   type xcb_xf86dri_get_drawable_info_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xf86dri.h:287
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xf86dri_get_drawable_info_cookie_t);  -- /usr/include/xcb/xf86dri.h:286

  --* Opcode for xcb_xf86dri_get_drawable_info.  
  --*
  -- * @brief xcb_xf86dri_get_drawable_info_request_t
  -- * 

  --*<   
   type xcb_xf86dri_get_drawable_info_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xf86dri.h:297
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xf86dri.h:298
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xf86dri.h:299
      screen : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:300
      drawable : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:301
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xf86dri_get_drawable_info_request_t);  -- /usr/include/xcb/xf86dri.h:296

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xf86dri_get_drawable_info_reply_t
  -- * 

  --*<   
   type xcb_xf86dri_get_drawable_info_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xf86dri.h:308
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xf86dri.h:309
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xf86dri.h:310
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:311
      drawable_table_index : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:312
      drawable_table_stamp : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:313
      drawable_origin_X : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xf86dri.h:314
      drawable_origin_Y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xf86dri.h:315
      drawable_size_W : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xf86dri.h:316
      drawable_size_H : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xf86dri.h:317
      num_clip_rects : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:318
      back_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xf86dri.h:319
      back_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xf86dri.h:320
      num_back_clip_rects : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:321
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xf86dri_get_drawable_info_reply_t);  -- /usr/include/xcb/xf86dri.h:307

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
  -- * @brief xcb_xf86dri_get_device_info_cookie_t
  -- * 

  --*<   
   type xcb_xf86dri_get_device_info_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xf86dri.h:328
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xf86dri_get_device_info_cookie_t);  -- /usr/include/xcb/xf86dri.h:327

  --* Opcode for xcb_xf86dri_get_device_info.  
  --*
  -- * @brief xcb_xf86dri_get_device_info_request_t
  -- * 

  --*<   
   type xcb_xf86dri_get_device_info_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xf86dri.h:338
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xf86dri.h:339
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xf86dri.h:340
      screen : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:341
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xf86dri_get_device_info_request_t);  -- /usr/include/xcb/xf86dri.h:337

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xf86dri_get_device_info_reply_t
  -- * 

  --*<   
   type xcb_xf86dri_get_device_info_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xf86dri.h:348
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xf86dri.h:349
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xf86dri.h:350
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:351
      framebuffer_handle_low : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:352
      framebuffer_handle_high : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:353
      framebuffer_origin_offset : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:354
      framebuffer_size : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:355
      framebuffer_stride : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:356
      device_private_size : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:357
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xf86dri_get_device_info_reply_t);  -- /usr/include/xcb/xf86dri.h:347

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
  -- * @brief xcb_xf86dri_auth_connection_cookie_t
  -- * 

  --*<   
   type xcb_xf86dri_auth_connection_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xf86dri.h:364
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xf86dri_auth_connection_cookie_t);  -- /usr/include/xcb/xf86dri.h:363

  --* Opcode for xcb_xf86dri_auth_connection.  
  --*
  -- * @brief xcb_xf86dri_auth_connection_request_t
  -- * 

  --*<   
   type xcb_xf86dri_auth_connection_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xf86dri.h:374
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xf86dri.h:375
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xf86dri.h:376
      screen : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:377
      magic : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:378
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xf86dri_auth_connection_request_t);  -- /usr/include/xcb/xf86dri.h:373

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xf86dri_auth_connection_reply_t
  -- * 

  --*<   
   type xcb_xf86dri_auth_connection_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xf86dri.h:385
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xf86dri.h:386
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xf86dri.h:387
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:388
      authenticated : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:389
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xf86dri_auth_connection_reply_t);  -- /usr/include/xcb/xf86dri.h:384

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xf86dri_drm_clip_rect_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xf86dri_drm_clip_rect_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xf86dri_drm_clip_rect_next
  -- ** 
  -- ** @param xcb_xf86dri_drm_clip_rect_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xf86dri_drm_clip_rect_next (arg1 : access xcb_xf86dri_drm_clip_rect_iterator_t);  -- /usr/include/xcb/xf86dri.h:411
   pragma Import (C, xcb_xf86dri_drm_clip_rect_next, "xcb_xf86dri_drm_clip_rect_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xf86dri_drm_clip_rect_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xf86dri_drm_clip_rect_end
  -- ** 
  -- ** @param xcb_xf86dri_drm_clip_rect_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_drm_clip_rect_end (arg1 : xcb_xf86dri_drm_clip_rect_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xf86dri.h:433
   pragma Import (C, xcb_xf86dri_drm_clip_rect_end, "xcb_xf86dri_drm_clip_rect_end");

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
  -- ** xcb_xf86dri_query_version_cookie_t xcb_xf86dri_query_version
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_xf86dri_query_version_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_query_version (arg1 : System.Address) return xcb_xf86dri_query_version_cookie_t;  -- /usr/include/xcb/xf86dri.h:454
   pragma Import (C, xcb_xf86dri_query_version, "xcb_xf86dri_query_version");

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
  -- ** xcb_xf86dri_query_version_cookie_t xcb_xf86dri_query_version_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_xf86dri_query_version_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_query_version_unchecked (arg1 : System.Address) return xcb_xf86dri_query_version_cookie_t;  -- /usr/include/xcb/xf86dri.h:478
   pragma Import (C, xcb_xf86dri_query_version_unchecked, "xcb_xf86dri_query_version_unchecked");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_xf86dri_query_version_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xf86dri_query_version_reply_t * xcb_xf86dri_query_version_reply
  -- ** 
  -- ** @param xcb_connection_t                    *c
  -- ** @param xcb_xf86dri_query_version_cookie_t   cookie
  -- ** @param xcb_generic_error_t                **e
  -- ** @returns xcb_xf86dri_query_version_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_query_version_reply
     (arg1 : System.Address;
      arg2 : xcb_xf86dri_query_version_cookie_t;
      arg3 : System.Address) return access xcb_xf86dri_query_version_reply_t;  -- /usr/include/xcb/xf86dri.h:507
   pragma Import (C, xcb_xf86dri_query_version_reply, "xcb_xf86dri_query_version_reply");

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
  -- ** xcb_xf86dri_query_direct_rendering_capable_cookie_t xcb_xf86dri_query_direct_rendering_capable
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          screen
  -- ** @returns xcb_xf86dri_query_direct_rendering_capable_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_query_direct_rendering_capable (arg1 : System.Address; arg2 : stdint_h.uint32_t) return xcb_xf86dri_query_direct_rendering_capable_cookie_t;  -- /usr/include/xcb/xf86dri.h:531
   pragma Import (C, xcb_xf86dri_query_direct_rendering_capable, "xcb_xf86dri_query_direct_rendering_capable");

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
  -- ** xcb_xf86dri_query_direct_rendering_capable_cookie_t xcb_xf86dri_query_direct_rendering_capable_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          screen
  -- ** @returns xcb_xf86dri_query_direct_rendering_capable_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_query_direct_rendering_capable_unchecked (arg1 : System.Address; arg2 : stdint_h.uint32_t) return xcb_xf86dri_query_direct_rendering_capable_cookie_t;  -- /usr/include/xcb/xf86dri.h:557
   pragma Import (C, xcb_xf86dri_query_direct_rendering_capable_unchecked, "xcb_xf86dri_query_direct_rendering_capable_unchecked");

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
  -- * xcb_xf86dri_query_direct_rendering_capable_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xf86dri_query_direct_rendering_capable_reply_t * xcb_xf86dri_query_direct_rendering_capable_reply
  -- ** 
  -- ** @param xcb_connection_t                                     *c
  -- ** @param xcb_xf86dri_query_direct_rendering_capable_cookie_t   cookie
  -- ** @param xcb_generic_error_t                                 **e
  -- ** @returns xcb_xf86dri_query_direct_rendering_capable_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_query_direct_rendering_capable_reply
     (arg1 : System.Address;
      arg2 : xcb_xf86dri_query_direct_rendering_capable_cookie_t;
      arg3 : System.Address) return access xcb_xf86dri_query_direct_rendering_capable_reply_t;  -- /usr/include/xcb/xf86dri.h:587
   pragma Import (C, xcb_xf86dri_query_direct_rendering_capable_reply, "xcb_xf86dri_query_direct_rendering_capable_reply");

  --*<  
  --*<  
  --*<  
   function xcb_xf86dri_open_connection_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xf86dri.h:592
   pragma Import (C, xcb_xf86dri_open_connection_sizeof, "xcb_xf86dri_open_connection_sizeof");

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
  -- ** xcb_xf86dri_open_connection_cookie_t xcb_xf86dri_open_connection
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          screen
  -- ** @returns xcb_xf86dri_open_connection_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_open_connection (arg1 : System.Address; arg2 : stdint_h.uint32_t) return xcb_xf86dri_open_connection_cookie_t;  -- /usr/include/xcb/xf86dri.h:614
   pragma Import (C, xcb_xf86dri_open_connection, "xcb_xf86dri_open_connection");

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
  -- ** xcb_xf86dri_open_connection_cookie_t xcb_xf86dri_open_connection_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          screen
  -- ** @returns xcb_xf86dri_open_connection_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_open_connection_unchecked (arg1 : System.Address; arg2 : stdint_h.uint32_t) return xcb_xf86dri_open_connection_cookie_t;  -- /usr/include/xcb/xf86dri.h:640
   pragma Import (C, xcb_xf86dri_open_connection_unchecked, "xcb_xf86dri_open_connection_unchecked");

  --*<  
  --****************************************************************************
  -- **
  -- ** char * xcb_xf86dri_open_connection_bus_id
  -- ** 
  -- ** @param const xcb_xf86dri_open_connection_reply_t *R
  -- ** @returns char *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_open_connection_bus_id (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/xf86dri.h:654
   pragma Import (C, xcb_xf86dri_open_connection_bus_id, "xcb_xf86dri_open_connection_bus_id");

  --****************************************************************************
  -- **
  -- ** int xcb_xf86dri_open_connection_bus_id_length
  -- ** 
  -- ** @param const xcb_xf86dri_open_connection_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_open_connection_bus_id_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xf86dri.h:667
   pragma Import (C, xcb_xf86dri_open_connection_bus_id_length, "xcb_xf86dri_open_connection_bus_id_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xf86dri_open_connection_bus_id_end
  -- ** 
  -- ** @param const xcb_xf86dri_open_connection_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_open_connection_bus_id_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xf86dri.h:680
   pragma Import (C, xcb_xf86dri_open_connection_bus_id_end, "xcb_xf86dri_open_connection_bus_id_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_xf86dri_open_connection_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xf86dri_open_connection_reply_t * xcb_xf86dri_open_connection_reply
  -- ** 
  -- ** @param xcb_connection_t                      *c
  -- ** @param xcb_xf86dri_open_connection_cookie_t   cookie
  -- ** @param xcb_generic_error_t                  **e
  -- ** @returns xcb_xf86dri_open_connection_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_open_connection_reply
     (arg1 : System.Address;
      arg2 : xcb_xf86dri_open_connection_cookie_t;
      arg3 : System.Address) return access xcb_xf86dri_open_connection_reply_t;  -- /usr/include/xcb/xf86dri.h:709
   pragma Import (C, xcb_xf86dri_open_connection_reply, "xcb_xf86dri_open_connection_reply");

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
  -- ** xcb_void_cookie_t xcb_xf86dri_close_connection_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          screen
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_close_connection_checked (arg1 : System.Address; arg2 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xf86dri.h:736
   pragma Import (C, xcb_xf86dri_close_connection_checked, "xcb_xf86dri_close_connection_checked");

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
  -- ** xcb_void_cookie_t xcb_xf86dri_close_connection
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          screen
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_close_connection (arg1 : System.Address; arg2 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xf86dri.h:759
   pragma Import (C, xcb_xf86dri_close_connection, "xcb_xf86dri_close_connection");

  --*<  
  --*<  
   function xcb_xf86dri_get_client_driver_name_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xf86dri.h:763
   pragma Import (C, xcb_xf86dri_get_client_driver_name_sizeof, "xcb_xf86dri_get_client_driver_name_sizeof");

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
  -- ** xcb_xf86dri_get_client_driver_name_cookie_t xcb_xf86dri_get_client_driver_name
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          screen
  -- ** @returns xcb_xf86dri_get_client_driver_name_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_get_client_driver_name (arg1 : System.Address; arg2 : stdint_h.uint32_t) return xcb_xf86dri_get_client_driver_name_cookie_t;  -- /usr/include/xcb/xf86dri.h:785
   pragma Import (C, xcb_xf86dri_get_client_driver_name, "xcb_xf86dri_get_client_driver_name");

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
  -- ** xcb_xf86dri_get_client_driver_name_cookie_t xcb_xf86dri_get_client_driver_name_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          screen
  -- ** @returns xcb_xf86dri_get_client_driver_name_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_get_client_driver_name_unchecked (arg1 : System.Address; arg2 : stdint_h.uint32_t) return xcb_xf86dri_get_client_driver_name_cookie_t;  -- /usr/include/xcb/xf86dri.h:811
   pragma Import (C, xcb_xf86dri_get_client_driver_name_unchecked, "xcb_xf86dri_get_client_driver_name_unchecked");

  --*<  
  --****************************************************************************
  -- **
  -- ** char * xcb_xf86dri_get_client_driver_name_client_driver_name
  -- ** 
  -- ** @param const xcb_xf86dri_get_client_driver_name_reply_t *R
  -- ** @returns char *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_get_client_driver_name_client_driver_name (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/xf86dri.h:825
   pragma Import (C, xcb_xf86dri_get_client_driver_name_client_driver_name, "xcb_xf86dri_get_client_driver_name_client_driver_name");

  --****************************************************************************
  -- **
  -- ** int xcb_xf86dri_get_client_driver_name_client_driver_name_length
  -- ** 
  -- ** @param const xcb_xf86dri_get_client_driver_name_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_get_client_driver_name_client_driver_name_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xf86dri.h:838
   pragma Import (C, xcb_xf86dri_get_client_driver_name_client_driver_name_length, "xcb_xf86dri_get_client_driver_name_client_driver_name_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xf86dri_get_client_driver_name_client_driver_name_end
  -- ** 
  -- ** @param const xcb_xf86dri_get_client_driver_name_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_get_client_driver_name_client_driver_name_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xf86dri.h:851
   pragma Import (C, xcb_xf86dri_get_client_driver_name_client_driver_name_end, "xcb_xf86dri_get_client_driver_name_client_driver_name_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_xf86dri_get_client_driver_name_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xf86dri_get_client_driver_name_reply_t * xcb_xf86dri_get_client_driver_name_reply
  -- ** 
  -- ** @param xcb_connection_t                             *c
  -- ** @param xcb_xf86dri_get_client_driver_name_cookie_t   cookie
  -- ** @param xcb_generic_error_t                         **e
  -- ** @returns xcb_xf86dri_get_client_driver_name_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_get_client_driver_name_reply
     (arg1 : System.Address;
      arg2 : xcb_xf86dri_get_client_driver_name_cookie_t;
      arg3 : System.Address) return access xcb_xf86dri_get_client_driver_name_reply_t;  -- /usr/include/xcb/xf86dri.h:880
   pragma Import (C, xcb_xf86dri_get_client_driver_name_reply, "xcb_xf86dri_get_client_driver_name_reply");

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
  -- ** xcb_xf86dri_create_context_cookie_t xcb_xf86dri_create_context
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          screen
  -- ** @param uint32_t          visual
  -- ** @param uint32_t          context
  -- ** @returns xcb_xf86dri_create_context_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_create_context
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_xf86dri_create_context_cookie_t;  -- /usr/include/xcb/xf86dri.h:906
   pragma Import (C, xcb_xf86dri_create_context, "xcb_xf86dri_create_context");

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
  -- ** xcb_xf86dri_create_context_cookie_t xcb_xf86dri_create_context_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          screen
  -- ** @param uint32_t          visual
  -- ** @param uint32_t          context
  -- ** @returns xcb_xf86dri_create_context_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_create_context_unchecked
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_xf86dri_create_context_cookie_t;  -- /usr/include/xcb/xf86dri.h:936
   pragma Import (C, xcb_xf86dri_create_context_unchecked, "xcb_xf86dri_create_context_unchecked");

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
  -- * xcb_xf86dri_create_context_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xf86dri_create_context_reply_t * xcb_xf86dri_create_context_reply
  -- ** 
  -- ** @param xcb_connection_t                     *c
  -- ** @param xcb_xf86dri_create_context_cookie_t   cookie
  -- ** @param xcb_generic_error_t                 **e
  -- ** @returns xcb_xf86dri_create_context_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_create_context_reply
     (arg1 : System.Address;
      arg2 : xcb_xf86dri_create_context_cookie_t;
      arg3 : System.Address) return access xcb_xf86dri_create_context_reply_t;  -- /usr/include/xcb/xf86dri.h:968
   pragma Import (C, xcb_xf86dri_create_context_reply, "xcb_xf86dri_create_context_reply");

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
  -- ** xcb_void_cookie_t xcb_xf86dri_destroy_context_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          screen
  -- ** @param uint32_t          context
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_destroy_context_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xf86dri.h:996
   pragma Import (C, xcb_xf86dri_destroy_context_checked, "xcb_xf86dri_destroy_context_checked");

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
  -- ** xcb_void_cookie_t xcb_xf86dri_destroy_context
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          screen
  -- ** @param uint32_t          context
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_destroy_context
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xf86dri.h:1021
   pragma Import (C, xcb_xf86dri_destroy_context, "xcb_xf86dri_destroy_context");

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
  -- ** xcb_xf86dri_create_drawable_cookie_t xcb_xf86dri_create_drawable
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          screen
  -- ** @param uint32_t          drawable
  -- ** @returns xcb_xf86dri_create_drawable_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_create_drawable
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : stdint_h.uint32_t) return xcb_xf86dri_create_drawable_cookie_t;  -- /usr/include/xcb/xf86dri.h:1046
   pragma Import (C, xcb_xf86dri_create_drawable, "xcb_xf86dri_create_drawable");

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
  -- ** xcb_xf86dri_create_drawable_cookie_t xcb_xf86dri_create_drawable_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          screen
  -- ** @param uint32_t          drawable
  -- ** @returns xcb_xf86dri_create_drawable_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_create_drawable_unchecked
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : stdint_h.uint32_t) return xcb_xf86dri_create_drawable_cookie_t;  -- /usr/include/xcb/xf86dri.h:1074
   pragma Import (C, xcb_xf86dri_create_drawable_unchecked, "xcb_xf86dri_create_drawable_unchecked");

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
  -- * xcb_xf86dri_create_drawable_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xf86dri_create_drawable_reply_t * xcb_xf86dri_create_drawable_reply
  -- ** 
  -- ** @param xcb_connection_t                      *c
  -- ** @param xcb_xf86dri_create_drawable_cookie_t   cookie
  -- ** @param xcb_generic_error_t                  **e
  -- ** @returns xcb_xf86dri_create_drawable_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_create_drawable_reply
     (arg1 : System.Address;
      arg2 : xcb_xf86dri_create_drawable_cookie_t;
      arg3 : System.Address) return access xcb_xf86dri_create_drawable_reply_t;  -- /usr/include/xcb/xf86dri.h:1105
   pragma Import (C, xcb_xf86dri_create_drawable_reply, "xcb_xf86dri_create_drawable_reply");

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
  -- ** xcb_void_cookie_t xcb_xf86dri_destroy_drawable_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          screen
  -- ** @param uint32_t          drawable
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_destroy_drawable_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xf86dri.h:1133
   pragma Import (C, xcb_xf86dri_destroy_drawable_checked, "xcb_xf86dri_destroy_drawable_checked");

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
  -- ** xcb_void_cookie_t xcb_xf86dri_destroy_drawable
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          screen
  -- ** @param uint32_t          drawable
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_destroy_drawable
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xf86dri.h:1158
   pragma Import (C, xcb_xf86dri_destroy_drawable, "xcb_xf86dri_destroy_drawable");

  --*<  
  --*<  
  --*<  
   function xcb_xf86dri_get_drawable_info_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xf86dri.h:1163
   pragma Import (C, xcb_xf86dri_get_drawable_info_sizeof, "xcb_xf86dri_get_drawable_info_sizeof");

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
  -- ** xcb_xf86dri_get_drawable_info_cookie_t xcb_xf86dri_get_drawable_info
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          screen
  -- ** @param uint32_t          drawable
  -- ** @returns xcb_xf86dri_get_drawable_info_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_get_drawable_info
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : stdint_h.uint32_t) return xcb_xf86dri_get_drawable_info_cookie_t;  -- /usr/include/xcb/xf86dri.h:1186
   pragma Import (C, xcb_xf86dri_get_drawable_info, "xcb_xf86dri_get_drawable_info");

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
  -- ** xcb_xf86dri_get_drawable_info_cookie_t xcb_xf86dri_get_drawable_info_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          screen
  -- ** @param uint32_t          drawable
  -- ** @returns xcb_xf86dri_get_drawable_info_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_get_drawable_info_unchecked
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : stdint_h.uint32_t) return xcb_xf86dri_get_drawable_info_cookie_t;  -- /usr/include/xcb/xf86dri.h:1214
   pragma Import (C, xcb_xf86dri_get_drawable_info_unchecked, "xcb_xf86dri_get_drawable_info_unchecked");

  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xf86dri_drm_clip_rect_t * xcb_xf86dri_get_drawable_info_clip_rects
  -- ** 
  -- ** @param const xcb_xf86dri_get_drawable_info_reply_t *R
  -- ** @returns xcb_xf86dri_drm_clip_rect_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_get_drawable_info_clip_rects (arg1 : System.Address) return access xcb_xf86dri_drm_clip_rect_t;  -- /usr/include/xcb/xf86dri.h:1229
   pragma Import (C, xcb_xf86dri_get_drawable_info_clip_rects, "xcb_xf86dri_get_drawable_info_clip_rects");

  --****************************************************************************
  -- **
  -- ** int xcb_xf86dri_get_drawable_info_clip_rects_length
  -- ** 
  -- ** @param const xcb_xf86dri_get_drawable_info_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_get_drawable_info_clip_rects_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xf86dri.h:1242
   pragma Import (C, xcb_xf86dri_get_drawable_info_clip_rects_length, "xcb_xf86dri_get_drawable_info_clip_rects_length");

  --****************************************************************************
  -- **
  -- ** xcb_xf86dri_drm_clip_rect_iterator_t xcb_xf86dri_get_drawable_info_clip_rects_iterator
  -- ** 
  -- ** @param const xcb_xf86dri_get_drawable_info_reply_t *R
  -- ** @returns xcb_xf86dri_drm_clip_rect_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_get_drawable_info_clip_rects_iterator (arg1 : System.Address) return xcb_xf86dri_drm_clip_rect_iterator_t;  -- /usr/include/xcb/xf86dri.h:1255
   pragma Import (C, xcb_xf86dri_get_drawable_info_clip_rects_iterator, "xcb_xf86dri_get_drawable_info_clip_rects_iterator");

  --****************************************************************************
  -- **
  -- ** xcb_xf86dri_drm_clip_rect_t * xcb_xf86dri_get_drawable_info_back_clip_rects
  -- ** 
  -- ** @param const xcb_xf86dri_get_drawable_info_reply_t *R
  -- ** @returns xcb_xf86dri_drm_clip_rect_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_get_drawable_info_back_clip_rects (arg1 : System.Address) return access xcb_xf86dri_drm_clip_rect_t;  -- /usr/include/xcb/xf86dri.h:1268
   pragma Import (C, xcb_xf86dri_get_drawable_info_back_clip_rects, "xcb_xf86dri_get_drawable_info_back_clip_rects");

  --****************************************************************************
  -- **
  -- ** int xcb_xf86dri_get_drawable_info_back_clip_rects_length
  -- ** 
  -- ** @param const xcb_xf86dri_get_drawable_info_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_get_drawable_info_back_clip_rects_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xf86dri.h:1281
   pragma Import (C, xcb_xf86dri_get_drawable_info_back_clip_rects_length, "xcb_xf86dri_get_drawable_info_back_clip_rects_length");

  --****************************************************************************
  -- **
  -- ** xcb_xf86dri_drm_clip_rect_iterator_t xcb_xf86dri_get_drawable_info_back_clip_rects_iterator
  -- ** 
  -- ** @param const xcb_xf86dri_get_drawable_info_reply_t *R
  -- ** @returns xcb_xf86dri_drm_clip_rect_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_get_drawable_info_back_clip_rects_iterator (arg1 : System.Address) return xcb_xf86dri_drm_clip_rect_iterator_t;  -- /usr/include/xcb/xf86dri.h:1294
   pragma Import (C, xcb_xf86dri_get_drawable_info_back_clip_rects_iterator, "xcb_xf86dri_get_drawable_info_back_clip_rects_iterator");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_xf86dri_get_drawable_info_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xf86dri_get_drawable_info_reply_t * xcb_xf86dri_get_drawable_info_reply
  -- ** 
  -- ** @param xcb_connection_t                        *c
  -- ** @param xcb_xf86dri_get_drawable_info_cookie_t   cookie
  -- ** @param xcb_generic_error_t                    **e
  -- ** @returns xcb_xf86dri_get_drawable_info_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_get_drawable_info_reply
     (arg1 : System.Address;
      arg2 : xcb_xf86dri_get_drawable_info_cookie_t;
      arg3 : System.Address) return access xcb_xf86dri_get_drawable_info_reply_t;  -- /usr/include/xcb/xf86dri.h:1323
   pragma Import (C, xcb_xf86dri_get_drawable_info_reply, "xcb_xf86dri_get_drawable_info_reply");

  --*<  
  --*<  
  --*<  
   function xcb_xf86dri_get_device_info_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xf86dri.h:1328
   pragma Import (C, xcb_xf86dri_get_device_info_sizeof, "xcb_xf86dri_get_device_info_sizeof");

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
  -- ** xcb_xf86dri_get_device_info_cookie_t xcb_xf86dri_get_device_info
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          screen
  -- ** @returns xcb_xf86dri_get_device_info_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_get_device_info (arg1 : System.Address; arg2 : stdint_h.uint32_t) return xcb_xf86dri_get_device_info_cookie_t;  -- /usr/include/xcb/xf86dri.h:1350
   pragma Import (C, xcb_xf86dri_get_device_info, "xcb_xf86dri_get_device_info");

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
  -- ** xcb_xf86dri_get_device_info_cookie_t xcb_xf86dri_get_device_info_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          screen
  -- ** @returns xcb_xf86dri_get_device_info_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_get_device_info_unchecked (arg1 : System.Address; arg2 : stdint_h.uint32_t) return xcb_xf86dri_get_device_info_cookie_t;  -- /usr/include/xcb/xf86dri.h:1376
   pragma Import (C, xcb_xf86dri_get_device_info_unchecked, "xcb_xf86dri_get_device_info_unchecked");

  --*<  
  --****************************************************************************
  -- **
  -- ** uint32_t * xcb_xf86dri_get_device_info_device_private
  -- ** 
  -- ** @param const xcb_xf86dri_get_device_info_reply_t *R
  -- ** @returns uint32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_get_device_info_device_private (arg1 : System.Address) return access stdint_h.uint32_t;  -- /usr/include/xcb/xf86dri.h:1390
   pragma Import (C, xcb_xf86dri_get_device_info_device_private, "xcb_xf86dri_get_device_info_device_private");

  --****************************************************************************
  -- **
  -- ** int xcb_xf86dri_get_device_info_device_private_length
  -- ** 
  -- ** @param const xcb_xf86dri_get_device_info_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_get_device_info_device_private_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xf86dri.h:1403
   pragma Import (C, xcb_xf86dri_get_device_info_device_private_length, "xcb_xf86dri_get_device_info_device_private_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xf86dri_get_device_info_device_private_end
  -- ** 
  -- ** @param const xcb_xf86dri_get_device_info_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_get_device_info_device_private_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xf86dri.h:1416
   pragma Import (C, xcb_xf86dri_get_device_info_device_private_end, "xcb_xf86dri_get_device_info_device_private_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_xf86dri_get_device_info_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xf86dri_get_device_info_reply_t * xcb_xf86dri_get_device_info_reply
  -- ** 
  -- ** @param xcb_connection_t                      *c
  -- ** @param xcb_xf86dri_get_device_info_cookie_t   cookie
  -- ** @param xcb_generic_error_t                  **e
  -- ** @returns xcb_xf86dri_get_device_info_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_get_device_info_reply
     (arg1 : System.Address;
      arg2 : xcb_xf86dri_get_device_info_cookie_t;
      arg3 : System.Address) return access xcb_xf86dri_get_device_info_reply_t;  -- /usr/include/xcb/xf86dri.h:1445
   pragma Import (C, xcb_xf86dri_get_device_info_reply, "xcb_xf86dri_get_device_info_reply");

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
  -- ** xcb_xf86dri_auth_connection_cookie_t xcb_xf86dri_auth_connection
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          screen
  -- ** @param uint32_t          magic
  -- ** @returns xcb_xf86dri_auth_connection_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_auth_connection
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : stdint_h.uint32_t) return xcb_xf86dri_auth_connection_cookie_t;  -- /usr/include/xcb/xf86dri.h:1470
   pragma Import (C, xcb_xf86dri_auth_connection, "xcb_xf86dri_auth_connection");

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
  -- ** xcb_xf86dri_auth_connection_cookie_t xcb_xf86dri_auth_connection_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          screen
  -- ** @param uint32_t          magic
  -- ** @returns xcb_xf86dri_auth_connection_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_auth_connection_unchecked
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : stdint_h.uint32_t) return xcb_xf86dri_auth_connection_cookie_t;  -- /usr/include/xcb/xf86dri.h:1498
   pragma Import (C, xcb_xf86dri_auth_connection_unchecked, "xcb_xf86dri_auth_connection_unchecked");

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
  -- * xcb_xf86dri_auth_connection_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xf86dri_auth_connection_reply_t * xcb_xf86dri_auth_connection_reply
  -- ** 
  -- ** @param xcb_connection_t                      *c
  -- ** @param xcb_xf86dri_auth_connection_cookie_t   cookie
  -- ** @param xcb_generic_error_t                  **e
  -- ** @returns xcb_xf86dri_auth_connection_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xf86dri_auth_connection_reply
     (arg1 : System.Address;
      arg2 : xcb_xf86dri_auth_connection_cookie_t;
      arg3 : System.Address) return access xcb_xf86dri_auth_connection_reply_t;  -- /usr/include/xcb/xf86dri.h:1529
   pragma Import (C, xcb_xf86dri_auth_connection_reply, "xcb_xf86dri_auth_connection_reply");

  --*<  
  --*<  
  --*
  -- * @}
  --  

end xcb_xf86dri_h;
