with Interfaces.C; use Interfaces.C;
with xcb_xcb_h;
with stdint_h;
with xcb_xproto_h;
with sys_types_h;
with xcb_shape_h;
with xcb_render_h;
with System;
with Interfaces.C.Strings;

package xcb_xfixes_h is

   --  unsupported macro: XCB_XFIXES_MAJOR_VERSION 4
   --  unsupported macro: XCB_XFIXES_MINOR_VERSION 0
   --  unsupported macro: XCB_XFIXES_QUERY_VERSION 0
   --  unsupported macro: XCB_XFIXES_CHANGE_SAVE_SET 1
   --  unsupported macro: XCB_XFIXES_SELECTION_NOTIFY 0
   --  unsupported macro: XCB_XFIXES_SELECT_SELECTION_INPUT 2
   --  unsupported macro: XCB_XFIXES_CURSOR_NOTIFY 1
   --  unsupported macro: XCB_XFIXES_SELECT_CURSOR_INPUT 3
   --  unsupported macro: XCB_XFIXES_GET_CURSOR_IMAGE 4
   --  unsupported macro: XCB_XFIXES_BAD_REGION 0
   --  unsupported macro: XCB_XFIXES_CREATE_REGION 5
   --  unsupported macro: XCB_XFIXES_CREATE_REGION_FROM_BITMAP 6
   --  unsupported macro: XCB_XFIXES_CREATE_REGION_FROM_WINDOW 7
   --  unsupported macro: XCB_XFIXES_CREATE_REGION_FROM_GC 8
   --  unsupported macro: XCB_XFIXES_CREATE_REGION_FROM_PICTURE 9
   --  unsupported macro: XCB_XFIXES_DESTROY_REGION 10
   --  unsupported macro: XCB_XFIXES_SET_REGION 11
   --  unsupported macro: XCB_XFIXES_COPY_REGION 12
   --  unsupported macro: XCB_XFIXES_UNION_REGION 13
   --  unsupported macro: XCB_XFIXES_INTERSECT_REGION 14
   --  unsupported macro: XCB_XFIXES_SUBTRACT_REGION 15
   --  unsupported macro: XCB_XFIXES_INVERT_REGION 16
   --  unsupported macro: XCB_XFIXES_TRANSLATE_REGION 17
   --  unsupported macro: XCB_XFIXES_REGION_EXTENTS 18
   --  unsupported macro: XCB_XFIXES_FETCH_REGION 19
   --  unsupported macro: XCB_XFIXES_SET_GC_CLIP_REGION 20
   --  unsupported macro: XCB_XFIXES_SET_WINDOW_SHAPE_REGION 21
   --  unsupported macro: XCB_XFIXES_SET_PICTURE_CLIP_REGION 22
   --  unsupported macro: XCB_XFIXES_SET_CURSOR_NAME 23
   --  unsupported macro: XCB_XFIXES_GET_CURSOR_NAME 24
   --  unsupported macro: XCB_XFIXES_GET_CURSOR_IMAGE_AND_NAME 25
   --  unsupported macro: XCB_XFIXES_CHANGE_CURSOR 26
   --  unsupported macro: XCB_XFIXES_CHANGE_CURSOR_BY_NAME 27
   --  unsupported macro: XCB_XFIXES_EXPAND_REGION 28
   --  unsupported macro: XCB_XFIXES_HIDE_CURSOR 29
   --  unsupported macro: XCB_XFIXES_SHOW_CURSOR 30
  -- * This file generated automatically from xfixes.xml by c_client.py.
  -- * Edit at your peril.
  --  

  --*
  -- * @defgroup XCB_XFixes_API XCB XFixes API
  -- * @brief XFixes XCB Protocol Implementation.
  -- * @{
  -- * 

   xcb_xfixes_id : aliased xcb_xcb_h.xcb_extension_t;  -- /usr/include/xcb/xfixes.h:27
   pragma Import (C, xcb_xfixes_id, "xcb_xfixes_id");

  --*
  -- * @brief xcb_xfixes_query_version_cookie_t
  -- * 

  --*<   
   type xcb_xfixes_query_version_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xfixes.h:33
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xfixes_query_version_cookie_t);  -- /usr/include/xcb/xfixes.h:32

  --* Opcode for xcb_xfixes_query_version.  
  --*
  -- * @brief xcb_xfixes_query_version_request_t
  -- * 

  --*<   
   type xcb_xfixes_query_version_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:43
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:44
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:45
      client_major_version : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xfixes.h:46
      client_minor_version : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xfixes.h:47
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xfixes_query_version_request_t);  -- /usr/include/xcb/xfixes.h:42

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xfixes_query_version_reply_t
  -- * 

  --*<   
   type anon4750_anon4083_array is array (0 .. 15) of aliased stdint_h.uint8_t;
   type xcb_xfixes_query_version_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:54
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:55
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:56
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xfixes.h:57
      major_version : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xfixes.h:58
      minor_version : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xfixes.h:59
      pad1 : aliased anon4750_anon4083_array;  -- /usr/include/xcb/xfixes.h:60
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xfixes_query_version_reply_t);  -- /usr/include/xcb/xfixes.h:53

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
   type xcb_xfixes_save_set_mode_t is 
     (XCB_XFIXES_SAVE_SET_MODE_INSERT,
      XCB_XFIXES_SAVE_SET_MODE_DELETE);
   pragma Convention (C, xcb_xfixes_save_set_mode_t);  -- /usr/include/xcb/xfixes.h:63

   type xcb_xfixes_save_set_target_t is 
     (XCB_XFIXES_SAVE_SET_TARGET_NEAREST,
      XCB_XFIXES_SAVE_SET_TARGET_ROOT);
   pragma Convention (C, xcb_xfixes_save_set_target_t);  -- /usr/include/xcb/xfixes.h:68

   type xcb_xfixes_save_set_mapping_t is 
     (XCB_XFIXES_SAVE_SET_MAPPING_MAP,
      XCB_XFIXES_SAVE_SET_MAPPING_UNMAP);
   pragma Convention (C, xcb_xfixes_save_set_mapping_t);  -- /usr/include/xcb/xfixes.h:73

  --* Opcode for xcb_xfixes_change_save_set.  
  --*
  -- * @brief xcb_xfixes_change_save_set_request_t
  -- * 

  --*<   
   type xcb_xfixes_change_save_set_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:85
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:86
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:87
      mode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:88
      target : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:89
      map : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:90
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:91
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xfixes.h:92
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xfixes_change_save_set_request_t);  -- /usr/include/xcb/xfixes.h:84

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
   type xcb_xfixes_selection_event_t is 
     (XCB_XFIXES_SELECTION_EVENT_SET_SELECTION_OWNER,
      XCB_XFIXES_SELECTION_EVENT_SELECTION_WINDOW_DESTROY,
      XCB_XFIXES_SELECTION_EVENT_SELECTION_CLIENT_CLOSE);
   pragma Convention (C, xcb_xfixes_selection_event_t);  -- /usr/include/xcb/xfixes.h:95

   subtype xcb_xfixes_selection_event_mask_t is unsigned;
   XCB_XFIXES_SELECTION_EVENT_MASK_SET_SELECTION_OWNER : constant xcb_xfixes_selection_event_mask_t := 1;
   XCB_XFIXES_SELECTION_EVENT_MASK_SELECTION_WINDOW_DESTROY : constant xcb_xfixes_selection_event_mask_t := 2;
   XCB_XFIXES_SELECTION_EVENT_MASK_SELECTION_CLIENT_CLOSE : constant xcb_xfixes_selection_event_mask_t := 4;  -- /usr/include/xcb/xfixes.h:101

  --* Opcode for xcb_xfixes_selection_notify.  
  --*
  -- * @brief xcb_xfixes_selection_notify_event_t
  -- * 

  --*<   
   type anon4766_anon2427_array is array (0 .. 7) of aliased stdint_h.uint8_t;
   type xcb_xfixes_selection_notify_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:114
      c_subtype : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:115
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:116
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xfixes.h:117
      owner : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xfixes.h:118
      selection : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xfixes.h:119
      timestamp : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/xfixes.h:120
      selection_timestamp : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/xfixes.h:121
      pad0 : aliased anon4766_anon2427_array;  -- /usr/include/xcb/xfixes.h:122
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xfixes_selection_notify_event_t);  -- /usr/include/xcb/xfixes.h:113

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xfixes_select_selection_input.  
  --*
  -- * @brief xcb_xfixes_select_selection_input_request_t
  -- * 

  --*<   
   type xcb_xfixes_select_selection_input_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:132
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:133
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:134
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xfixes.h:135
      selection : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xfixes.h:136
      event_mask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xfixes.h:137
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xfixes_select_selection_input_request_t);  -- /usr/include/xcb/xfixes.h:131

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
   type xcb_xfixes_cursor_notify_t is 
     (XCB_XFIXES_CURSOR_NOTIFY_DISPLAY_CURSOR);
   pragma Convention (C, xcb_xfixes_cursor_notify_t);  -- /usr/include/xcb/xfixes.h:140

   subtype xcb_xfixes_cursor_notify_mask_t is unsigned;
   XCB_XFIXES_CURSOR_NOTIFY_MASK_DISPLAY_CURSOR : constant xcb_xfixes_cursor_notify_mask_t := 1;  -- /usr/include/xcb/xfixes.h:144

  --* Opcode for xcb_xfixes_cursor_notify.  
  --*
  -- * @brief xcb_xfixes_cursor_notify_event_t
  -- * 

  --*<   
   type anon4776_anon2079_array is array (0 .. 11) of aliased stdint_h.uint8_t;
   type xcb_xfixes_cursor_notify_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:155
      c_subtype : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:156
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:157
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xfixes.h:158
      cursor_serial : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xfixes.h:159
      timestamp : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/xfixes.h:160
      name : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xfixes.h:161
      pad0 : aliased anon4776_anon2079_array;  -- /usr/include/xcb/xfixes.h:162
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xfixes_cursor_notify_event_t);  -- /usr/include/xcb/xfixes.h:154

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xfixes_select_cursor_input.  
  --*
  -- * @brief xcb_xfixes_select_cursor_input_request_t
  -- * 

  --*<   
   type xcb_xfixes_select_cursor_input_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:172
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:173
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:174
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xfixes.h:175
      event_mask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xfixes.h:176
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xfixes_select_cursor_input_request_t);  -- /usr/include/xcb/xfixes.h:171

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xfixes_get_cursor_image_cookie_t
  -- * 

  --*<   
   type xcb_xfixes_get_cursor_image_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xfixes.h:183
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xfixes_get_cursor_image_cookie_t);  -- /usr/include/xcb/xfixes.h:182

  --* Opcode for xcb_xfixes_get_cursor_image.  
  --*
  -- * @brief xcb_xfixes_get_cursor_image_request_t
  -- * 

  --*<   
   type xcb_xfixes_get_cursor_image_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:193
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:194
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:195
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xfixes_get_cursor_image_request_t);  -- /usr/include/xcb/xfixes.h:192

  --*<   
  --*<   
  --*
  -- * @brief xcb_xfixes_get_cursor_image_reply_t
  -- * 

  --*<   
   type anon4786_anon2427_array is array (0 .. 7) of aliased stdint_h.uint8_t;
   type xcb_xfixes_get_cursor_image_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:202
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:203
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:204
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xfixes.h:205
      x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xfixes.h:206
      y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xfixes.h:207
      width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:208
      height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:209
      xhot : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:210
      yhot : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:211
      cursor_serial : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xfixes.h:212
      pad1 : aliased anon4786_anon2427_array;  -- /usr/include/xcb/xfixes.h:213
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xfixes_get_cursor_image_reply_t);  -- /usr/include/xcb/xfixes.h:201

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
   subtype xcb_xfixes_region_t is stdint_h.uint32_t;  -- /usr/include/xcb/xfixes.h:216

  --*
  -- * @brief xcb_xfixes_region_iterator_t
  -- * 

  --*<   
   type xcb_xfixes_region_iterator_t is record
      data : access xcb_xfixes_region_t;  -- /usr/include/xcb/xfixes.h:222
      c_rem : aliased int;  -- /usr/include/xcb/xfixes.h:223
      index : aliased int;  -- /usr/include/xcb/xfixes.h:224
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xfixes_region_iterator_t);  -- /usr/include/xcb/xfixes.h:221

  --*<   
  --*<   
  --* Opcode for xcb_xfixes_bad_region.  
  --*
  -- * @brief xcb_xfixes_bad_region_error_t
  -- * 

  --*<   
   type xcb_xfixes_bad_region_error_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:234
      error_code : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:235
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:236
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xfixes_bad_region_error_t);  -- /usr/include/xcb/xfixes.h:233

  --*<   
  --*<   
   type xcb_xfixes_region_enum_t is 
     (XCB_XFIXES_REGION_NONE);
   pragma Convention (C, xcb_xfixes_region_enum_t);  -- /usr/include/xcb/xfixes.h:239

  --* Opcode for xcb_xfixes_create_region.  
  --*
  -- * @brief xcb_xfixes_create_region_request_t
  -- * 

  --*<   
   type xcb_xfixes_create_region_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:250
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:251
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:252
      region : aliased xcb_xfixes_region_t;  -- /usr/include/xcb/xfixes.h:253
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xfixes_create_region_request_t);  -- /usr/include/xcb/xfixes.h:249

  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xfixes_create_region_from_bitmap.  
  --*
  -- * @brief xcb_xfixes_create_region_from_bitmap_request_t
  -- * 

  --*<   
   type xcb_xfixes_create_region_from_bitmap_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:263
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:264
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:265
      region : aliased xcb_xfixes_region_t;  -- /usr/include/xcb/xfixes.h:266
      bitmap : aliased xcb_xproto_h.xcb_pixmap_t;  -- /usr/include/xcb/xfixes.h:267
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xfixes_create_region_from_bitmap_request_t);  -- /usr/include/xcb/xfixes.h:262

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xfixes_create_region_from_window.  
  --*
  -- * @brief xcb_xfixes_create_region_from_window_request_t
  -- * 

  --*<   
   type anon4802_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_xfixes_create_region_from_window_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:277
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:278
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:279
      region : aliased xcb_xfixes_region_t;  -- /usr/include/xcb/xfixes.h:280
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xfixes.h:281
      kind : aliased xcb_shape_h.xcb_shape_kind_t;  -- /usr/include/xcb/xfixes.h:282
      pad0 : aliased anon4802_anon1853_array;  -- /usr/include/xcb/xfixes.h:283
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xfixes_create_region_from_window_request_t);  -- /usr/include/xcb/xfixes.h:276

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xfixes_create_region_from_gc.  
  --*
  -- * @brief xcb_xfixes_create_region_from_gc_request_t
  -- * 

  --*<   
   type xcb_xfixes_create_region_from_gc_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:293
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:294
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:295
      region : aliased xcb_xfixes_region_t;  -- /usr/include/xcb/xfixes.h:296
      gc : aliased xcb_xproto_h.xcb_gcontext_t;  -- /usr/include/xcb/xfixes.h:297
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xfixes_create_region_from_gc_request_t);  -- /usr/include/xcb/xfixes.h:292

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xfixes_create_region_from_picture.  
  --*
  -- * @brief xcb_xfixes_create_region_from_picture_request_t
  -- * 

  --*<   
   type xcb_xfixes_create_region_from_picture_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:307
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:308
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:309
      region : aliased xcb_xfixes_region_t;  -- /usr/include/xcb/xfixes.h:310
      picture : aliased xcb_render_h.xcb_render_picture_t;  -- /usr/include/xcb/xfixes.h:311
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xfixes_create_region_from_picture_request_t);  -- /usr/include/xcb/xfixes.h:306

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xfixes_destroy_region.  
  --*
  -- * @brief xcb_xfixes_destroy_region_request_t
  -- * 

  --*<   
   type xcb_xfixes_destroy_region_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:321
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:322
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:323
      region : aliased xcb_xfixes_region_t;  -- /usr/include/xcb/xfixes.h:324
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xfixes_destroy_region_request_t);  -- /usr/include/xcb/xfixes.h:320

  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xfixes_set_region.  
  --*
  -- * @brief xcb_xfixes_set_region_request_t
  -- * 

  --*<   
   type xcb_xfixes_set_region_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:334
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:335
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:336
      region : aliased xcb_xfixes_region_t;  -- /usr/include/xcb/xfixes.h:337
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xfixes_set_region_request_t);  -- /usr/include/xcb/xfixes.h:333

  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xfixes_copy_region.  
  --*
  -- * @brief xcb_xfixes_copy_region_request_t
  -- * 

  --*<   
   type xcb_xfixes_copy_region_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:347
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:348
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:349
      source : aliased xcb_xfixes_region_t;  -- /usr/include/xcb/xfixes.h:350
      destination : aliased xcb_xfixes_region_t;  -- /usr/include/xcb/xfixes.h:351
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xfixes_copy_region_request_t);  -- /usr/include/xcb/xfixes.h:346

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xfixes_union_region.  
  --*
  -- * @brief xcb_xfixes_union_region_request_t
  -- * 

  --*<   
   type xcb_xfixes_union_region_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:361
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:362
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:363
      source1 : aliased xcb_xfixes_region_t;  -- /usr/include/xcb/xfixes.h:364
      source2 : aliased xcb_xfixes_region_t;  -- /usr/include/xcb/xfixes.h:365
      destination : aliased xcb_xfixes_region_t;  -- /usr/include/xcb/xfixes.h:366
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xfixes_union_region_request_t);  -- /usr/include/xcb/xfixes.h:360

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xfixes_intersect_region.  
  --*
  -- * @brief xcb_xfixes_intersect_region_request_t
  -- * 

  --*<   
   type xcb_xfixes_intersect_region_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:376
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:377
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:378
      source1 : aliased xcb_xfixes_region_t;  -- /usr/include/xcb/xfixes.h:379
      source2 : aliased xcb_xfixes_region_t;  -- /usr/include/xcb/xfixes.h:380
      destination : aliased xcb_xfixes_region_t;  -- /usr/include/xcb/xfixes.h:381
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xfixes_intersect_region_request_t);  -- /usr/include/xcb/xfixes.h:375

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xfixes_subtract_region.  
  --*
  -- * @brief xcb_xfixes_subtract_region_request_t
  -- * 

  --*<   
   type xcb_xfixes_subtract_region_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:391
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:392
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:393
      source1 : aliased xcb_xfixes_region_t;  -- /usr/include/xcb/xfixes.h:394
      source2 : aliased xcb_xfixes_region_t;  -- /usr/include/xcb/xfixes.h:395
      destination : aliased xcb_xfixes_region_t;  -- /usr/include/xcb/xfixes.h:396
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xfixes_subtract_region_request_t);  -- /usr/include/xcb/xfixes.h:390

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xfixes_invert_region.  
  --*
  -- * @brief xcb_xfixes_invert_region_request_t
  -- * 

  --*<   
   type xcb_xfixes_invert_region_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:406
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:407
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:408
      source : aliased xcb_xfixes_region_t;  -- /usr/include/xcb/xfixes.h:409
      bounds : aliased xcb_xproto_h.xcb_rectangle_t;  -- /usr/include/xcb/xfixes.h:410
      destination : aliased xcb_xfixes_region_t;  -- /usr/include/xcb/xfixes.h:411
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xfixes_invert_region_request_t);  -- /usr/include/xcb/xfixes.h:405

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xfixes_translate_region.  
  --*
  -- * @brief xcb_xfixes_translate_region_request_t
  -- * 

  --*<   
   type xcb_xfixes_translate_region_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:421
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:422
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:423
      region : aliased xcb_xfixes_region_t;  -- /usr/include/xcb/xfixes.h:424
      dx : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xfixes.h:425
      dy : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xfixes.h:426
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xfixes_translate_region_request_t);  -- /usr/include/xcb/xfixes.h:420

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xfixes_region_extents.  
  --*
  -- * @brief xcb_xfixes_region_extents_request_t
  -- * 

  --*<   
   type xcb_xfixes_region_extents_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:436
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:437
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:438
      source : aliased xcb_xfixes_region_t;  -- /usr/include/xcb/xfixes.h:439
      destination : aliased xcb_xfixes_region_t;  -- /usr/include/xcb/xfixes.h:440
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xfixes_region_extents_request_t);  -- /usr/include/xcb/xfixes.h:435

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xfixes_fetch_region_cookie_t
  -- * 

  --*<   
   type xcb_xfixes_fetch_region_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xfixes.h:447
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xfixes_fetch_region_cookie_t);  -- /usr/include/xcb/xfixes.h:446

  --* Opcode for xcb_xfixes_fetch_region.  
  --*
  -- * @brief xcb_xfixes_fetch_region_request_t
  -- * 

  --*<   
   type xcb_xfixes_fetch_region_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:457
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:458
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:459
      region : aliased xcb_xfixes_region_t;  -- /usr/include/xcb/xfixes.h:460
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xfixes_fetch_region_request_t);  -- /usr/include/xcb/xfixes.h:456

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xfixes_fetch_region_reply_t
  -- * 

  --*<   
   type anon4832_anon4083_array is array (0 .. 15) of aliased stdint_h.uint8_t;
   type xcb_xfixes_fetch_region_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:467
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:468
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:469
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xfixes.h:470
      extents : aliased xcb_xproto_h.xcb_rectangle_t;  -- /usr/include/xcb/xfixes.h:471
      pad1 : aliased anon4832_anon4083_array;  -- /usr/include/xcb/xfixes.h:472
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xfixes_fetch_region_reply_t);  -- /usr/include/xcb/xfixes.h:466

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xfixes_set_gc_clip_region.  
  --*
  -- * @brief xcb_xfixes_set_gc_clip_region_request_t
  -- * 

  --*<   
   type xcb_xfixes_set_gc_clip_region_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:482
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:483
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:484
      gc : aliased xcb_xproto_h.xcb_gcontext_t;  -- /usr/include/xcb/xfixes.h:485
      region : aliased xcb_xfixes_region_t;  -- /usr/include/xcb/xfixes.h:486
      x_origin : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xfixes.h:487
      y_origin : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xfixes.h:488
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xfixes_set_gc_clip_region_request_t);  -- /usr/include/xcb/xfixes.h:481

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xfixes_set_window_shape_region.  
  --*
  -- * @brief xcb_xfixes_set_window_shape_region_request_t
  -- * 

  --*<   
   type anon4838_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_xfixes_set_window_shape_region_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:498
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:499
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:500
      dest : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xfixes.h:501
      dest_kind : aliased xcb_shape_h.xcb_shape_kind_t;  -- /usr/include/xcb/xfixes.h:502
      pad0 : aliased anon4838_anon1853_array;  -- /usr/include/xcb/xfixes.h:503
      x_offset : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xfixes.h:504
      y_offset : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xfixes.h:505
      region : aliased xcb_xfixes_region_t;  -- /usr/include/xcb/xfixes.h:506
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xfixes_set_window_shape_region_request_t);  -- /usr/include/xcb/xfixes.h:497

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xfixes_set_picture_clip_region.  
  --*
  -- * @brief xcb_xfixes_set_picture_clip_region_request_t
  -- * 

  --*<   
   type xcb_xfixes_set_picture_clip_region_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:516
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:517
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:518
      picture : aliased xcb_render_h.xcb_render_picture_t;  -- /usr/include/xcb/xfixes.h:519
      region : aliased xcb_xfixes_region_t;  -- /usr/include/xcb/xfixes.h:520
      x_origin : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xfixes.h:521
      y_origin : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xfixes.h:522
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xfixes_set_picture_clip_region_request_t);  -- /usr/include/xcb/xfixes.h:515

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xfixes_set_cursor_name.  
  --*
  -- * @brief xcb_xfixes_set_cursor_name_request_t
  -- * 

  --*<   
   type anon4844_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_xfixes_set_cursor_name_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:532
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:533
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:534
      cursor : aliased xcb_xproto_h.xcb_cursor_t;  -- /usr/include/xcb/xfixes.h:535
      nbytes : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:536
      pad0 : aliased anon4844_anon1795_array;  -- /usr/include/xcb/xfixes.h:537
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xfixes_set_cursor_name_request_t);  -- /usr/include/xcb/xfixes.h:531

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xfixes_get_cursor_name_cookie_t
  -- * 

  --*<   
   type xcb_xfixes_get_cursor_name_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xfixes.h:544
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xfixes_get_cursor_name_cookie_t);  -- /usr/include/xcb/xfixes.h:543

  --* Opcode for xcb_xfixes_get_cursor_name.  
  --*
  -- * @brief xcb_xfixes_get_cursor_name_request_t
  -- * 

  --*<   
   type xcb_xfixes_get_cursor_name_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:554
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:555
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:556
      cursor : aliased xcb_xproto_h.xcb_cursor_t;  -- /usr/include/xcb/xfixes.h:557
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xfixes_get_cursor_name_request_t);  -- /usr/include/xcb/xfixes.h:553

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xfixes_get_cursor_name_reply_t
  -- * 

  --*<   
   type anon4852_anon2547_array is array (0 .. 17) of aliased stdint_h.uint8_t;
   type xcb_xfixes_get_cursor_name_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:564
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:565
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:566
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xfixes.h:567
      atom : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xfixes.h:568
      nbytes : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:569
      pad1 : aliased anon4852_anon2547_array;  -- /usr/include/xcb/xfixes.h:570
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xfixes_get_cursor_name_reply_t);  -- /usr/include/xcb/xfixes.h:563

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xfixes_get_cursor_image_and_name_cookie_t
  -- * 

  --*<   
   type xcb_xfixes_get_cursor_image_and_name_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xfixes.h:577
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xfixes_get_cursor_image_and_name_cookie_t);  -- /usr/include/xcb/xfixes.h:576

  --* Opcode for xcb_xfixes_get_cursor_image_and_name.  
  --*
  -- * @brief xcb_xfixes_get_cursor_image_and_name_request_t
  -- * 

  --*<   
   type xcb_xfixes_get_cursor_image_and_name_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:587
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:588
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:589
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xfixes_get_cursor_image_and_name_request_t);  -- /usr/include/xcb/xfixes.h:586

  --*<   
  --*<   
  --*
  -- * @brief xcb_xfixes_get_cursor_image_and_name_reply_t
  -- * 

  --*<   
   type anon4860_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_xfixes_get_cursor_image_and_name_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:596
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:597
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:598
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xfixes.h:599
      x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xfixes.h:600
      y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xfixes.h:601
      width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:602
      height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:603
      xhot : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:604
      yhot : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:605
      cursor_serial : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xfixes.h:606
      cursor_atom : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xfixes.h:607
      nbytes : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:608
      pad1 : aliased anon4860_anon1795_array;  -- /usr/include/xcb/xfixes.h:609
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xfixes_get_cursor_image_and_name_reply_t);  -- /usr/include/xcb/xfixes.h:595

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
  --* Opcode for xcb_xfixes_change_cursor.  
  --*
  -- * @brief xcb_xfixes_change_cursor_request_t
  -- * 

  --*<   
   type xcb_xfixes_change_cursor_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:619
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:620
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:621
      source : aliased xcb_xproto_h.xcb_cursor_t;  -- /usr/include/xcb/xfixes.h:622
      destination : aliased xcb_xproto_h.xcb_cursor_t;  -- /usr/include/xcb/xfixes.h:623
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xfixes_change_cursor_request_t);  -- /usr/include/xcb/xfixes.h:618

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xfixes_change_cursor_by_name.  
  --*
  -- * @brief xcb_xfixes_change_cursor_by_name_request_t
  -- * 

  --*<   
   type anon4866_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_xfixes_change_cursor_by_name_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:633
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:634
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:635
      src : aliased xcb_xproto_h.xcb_cursor_t;  -- /usr/include/xcb/xfixes.h:636
      nbytes : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:637
      pad0 : aliased anon4866_anon1795_array;  -- /usr/include/xcb/xfixes.h:638
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xfixes_change_cursor_by_name_request_t);  -- /usr/include/xcb/xfixes.h:632

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xfixes_expand_region.  
  --*
  -- * @brief xcb_xfixes_expand_region_request_t
  -- * 

  --*<   
   type xcb_xfixes_expand_region_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:648
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:649
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:650
      source : aliased xcb_xfixes_region_t;  -- /usr/include/xcb/xfixes.h:651
      destination : aliased xcb_xfixes_region_t;  -- /usr/include/xcb/xfixes.h:652
      left : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:653
      right : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:654
      top : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:655
      bottom : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:656
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xfixes_expand_region_request_t);  -- /usr/include/xcb/xfixes.h:647

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xfixes_hide_cursor.  
  --*
  -- * @brief xcb_xfixes_hide_cursor_request_t
  -- * 

  --*<   
   type xcb_xfixes_hide_cursor_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:666
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:667
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:668
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xfixes.h:669
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xfixes_hide_cursor_request_t);  -- /usr/include/xcb/xfixes.h:665

  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xfixes_show_cursor.  
  --*
  -- * @brief xcb_xfixes_show_cursor_request_t
  -- * 

  --*<   
   type xcb_xfixes_show_cursor_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:679
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xfixes.h:680
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xfixes.h:681
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xfixes.h:682
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xfixes_show_cursor_request_t);  -- /usr/include/xcb/xfixes.h:678

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
  -- ** xcb_xfixes_query_version_cookie_t xcb_xfixes_query_version
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          client_major_version
  -- ** @param uint32_t          client_minor_version
  -- ** @returns xcb_xfixes_query_version_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_query_version
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : stdint_h.uint32_t) return xcb_xfixes_query_version_cookie_t;  -- /usr/include/xcb/xfixes.h:706
   pragma Import (C, xcb_xfixes_query_version, "xcb_xfixes_query_version");

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
  -- ** xcb_xfixes_query_version_cookie_t xcb_xfixes_query_version_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          client_major_version
  -- ** @param uint32_t          client_minor_version
  -- ** @returns xcb_xfixes_query_version_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_query_version_unchecked
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : stdint_h.uint32_t) return xcb_xfixes_query_version_cookie_t;  -- /usr/include/xcb/xfixes.h:734
   pragma Import (C, xcb_xfixes_query_version_unchecked, "xcb_xfixes_query_version_unchecked");

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
  -- * xcb_xfixes_query_version_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xfixes_query_version_reply_t * xcb_xfixes_query_version_reply
  -- ** 
  -- ** @param xcb_connection_t                   *c
  -- ** @param xcb_xfixes_query_version_cookie_t   cookie
  -- ** @param xcb_generic_error_t               **e
  -- ** @returns xcb_xfixes_query_version_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_query_version_reply
     (arg1 : System.Address;
      arg2 : xcb_xfixes_query_version_cookie_t;
      arg3 : System.Address) return access xcb_xfixes_query_version_reply_t;  -- /usr/include/xcb/xfixes.h:765
   pragma Import (C, xcb_xfixes_query_version_reply, "xcb_xfixes_query_version_reply");

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
  -- ** xcb_void_cookie_t xcb_xfixes_change_save_set_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           mode
  -- ** @param uint8_t           target
  -- ** @param uint8_t           map
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_change_save_set_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint8_t;
      arg5 : xcb_xproto_h.xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:795
   pragma Import (C, xcb_xfixes_change_save_set_checked, "xcb_xfixes_change_save_set_checked");

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
  -- ** xcb_void_cookie_t xcb_xfixes_change_save_set
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           mode
  -- ** @param uint8_t           target
  -- ** @param uint8_t           map
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_change_save_set
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint8_t;
      arg5 : xcb_xproto_h.xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:824
   pragma Import (C, xcb_xfixes_change_save_set, "xcb_xfixes_change_save_set");

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
  -- ** xcb_void_cookie_t xcb_xfixes_select_selection_input_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @param xcb_atom_t        selection
  -- ** @param uint32_t          event_mask
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_select_selection_input_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_xproto_h.xcb_atom_t;
      arg4 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:855
   pragma Import (C, xcb_xfixes_select_selection_input_checked, "xcb_xfixes_select_selection_input_checked");

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
  -- ** xcb_void_cookie_t xcb_xfixes_select_selection_input
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @param xcb_atom_t        selection
  -- ** @param uint32_t          event_mask
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_select_selection_input
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_xproto_h.xcb_atom_t;
      arg4 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:882
   pragma Import (C, xcb_xfixes_select_selection_input, "xcb_xfixes_select_selection_input");

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
  -- ** xcb_void_cookie_t xcb_xfixes_select_cursor_input_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @param uint32_t          event_mask
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_select_cursor_input_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:911
   pragma Import (C, xcb_xfixes_select_cursor_input_checked, "xcb_xfixes_select_cursor_input_checked");

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
  -- ** xcb_void_cookie_t xcb_xfixes_select_cursor_input
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @param uint32_t          event_mask
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_select_cursor_input
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:936
   pragma Import (C, xcb_xfixes_select_cursor_input, "xcb_xfixes_select_cursor_input");

  --*<  
  --*<  
  --*<  
   function xcb_xfixes_get_cursor_image_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xfixes.h:941
   pragma Import (C, xcb_xfixes_get_cursor_image_sizeof, "xcb_xfixes_get_cursor_image_sizeof");

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
  -- ** xcb_xfixes_get_cursor_image_cookie_t xcb_xfixes_get_cursor_image
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_xfixes_get_cursor_image_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_get_cursor_image (arg1 : System.Address) return xcb_xfixes_get_cursor_image_cookie_t;  -- /usr/include/xcb/xfixes.h:962
   pragma Import (C, xcb_xfixes_get_cursor_image, "xcb_xfixes_get_cursor_image");

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
  -- ** xcb_xfixes_get_cursor_image_cookie_t xcb_xfixes_get_cursor_image_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_xfixes_get_cursor_image_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_get_cursor_image_unchecked (arg1 : System.Address) return xcb_xfixes_get_cursor_image_cookie_t;  -- /usr/include/xcb/xfixes.h:986
   pragma Import (C, xcb_xfixes_get_cursor_image_unchecked, "xcb_xfixes_get_cursor_image_unchecked");

  --****************************************************************************
  -- **
  -- ** uint32_t * xcb_xfixes_get_cursor_image_cursor_image
  -- ** 
  -- ** @param const xcb_xfixes_get_cursor_image_reply_t *R
  -- ** @returns uint32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_get_cursor_image_cursor_image (arg1 : System.Address) return access stdint_h.uint32_t;  -- /usr/include/xcb/xfixes.h:999
   pragma Import (C, xcb_xfixes_get_cursor_image_cursor_image, "xcb_xfixes_get_cursor_image_cursor_image");

  --****************************************************************************
  -- **
  -- ** int xcb_xfixes_get_cursor_image_cursor_image_length
  -- ** 
  -- ** @param const xcb_xfixes_get_cursor_image_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_get_cursor_image_cursor_image_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xfixes.h:1012
   pragma Import (C, xcb_xfixes_get_cursor_image_cursor_image_length, "xcb_xfixes_get_cursor_image_cursor_image_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xfixes_get_cursor_image_cursor_image_end
  -- ** 
  -- ** @param const xcb_xfixes_get_cursor_image_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_get_cursor_image_cursor_image_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xfixes.h:1025
   pragma Import (C, xcb_xfixes_get_cursor_image_cursor_image_end, "xcb_xfixes_get_cursor_image_cursor_image_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_xfixes_get_cursor_image_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xfixes_get_cursor_image_reply_t * xcb_xfixes_get_cursor_image_reply
  -- ** 
  -- ** @param xcb_connection_t                      *c
  -- ** @param xcb_xfixes_get_cursor_image_cookie_t   cookie
  -- ** @param xcb_generic_error_t                  **e
  -- ** @returns xcb_xfixes_get_cursor_image_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_get_cursor_image_reply
     (arg1 : System.Address;
      arg2 : xcb_xfixes_get_cursor_image_cookie_t;
      arg3 : System.Address) return access xcb_xfixes_get_cursor_image_reply_t;  -- /usr/include/xcb/xfixes.h:1054
   pragma Import (C, xcb_xfixes_get_cursor_image_reply, "xcb_xfixes_get_cursor_image_reply");

  --*<  
  --*<  
  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xfixes_region_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xfixes_region_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xfixes_region_next
  -- ** 
  -- ** @param xcb_xfixes_region_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xfixes_region_next (arg1 : access xcb_xfixes_region_iterator_t);  -- /usr/include/xcb/xfixes.h:1077
   pragma Import (C, xcb_xfixes_region_next, "xcb_xfixes_region_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xfixes_region_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xfixes_region_end
  -- ** 
  -- ** @param xcb_xfixes_region_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_region_end (arg1 : xcb_xfixes_region_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xfixes.h:1099
   pragma Import (C, xcb_xfixes_region_end, "xcb_xfixes_region_end");

  --*<  
   function xcb_xfixes_create_region_sizeof (arg1 : System.Address; arg2 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/xfixes.h:1102
   pragma Import (C, xcb_xfixes_create_region_sizeof, "xcb_xfixes_create_region_sizeof");

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
  -- ** xcb_void_cookie_t xcb_xfixes_create_region_checked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_xfixes_region_t    region
  -- ** @param uint32_t               rectangles_len
  -- ** @param const xcb_rectangle_t *rectangles
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_create_region_checked
     (arg1 : System.Address;
      arg2 : xcb_xfixes_region_t;
      arg3 : stdint_h.uint32_t;
      arg4 : access constant xcb_xproto_h.xcb_rectangle_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:1130
   pragma Import (C, xcb_xfixes_create_region_checked, "xcb_xfixes_create_region_checked");

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
  -- ** xcb_void_cookie_t xcb_xfixes_create_region
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_xfixes_region_t    region
  -- ** @param uint32_t               rectangles_len
  -- ** @param const xcb_rectangle_t *rectangles
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_create_region
     (arg1 : System.Address;
      arg2 : xcb_xfixes_region_t;
      arg3 : stdint_h.uint32_t;
      arg4 : access constant xcb_xproto_h.xcb_rectangle_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:1157
   pragma Import (C, xcb_xfixes_create_region, "xcb_xfixes_create_region");

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
  -- ** xcb_void_cookie_t xcb_xfixes_create_region_from_bitmap_checked
  -- ** 
  -- ** @param xcb_connection_t    *c
  -- ** @param xcb_xfixes_region_t  region
  -- ** @param xcb_pixmap_t         bitmap
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_create_region_from_bitmap_checked
     (arg1 : System.Address;
      arg2 : xcb_xfixes_region_t;
      arg3 : xcb_xproto_h.xcb_pixmap_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:1186
   pragma Import (C, xcb_xfixes_create_region_from_bitmap_checked, "xcb_xfixes_create_region_from_bitmap_checked");

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
  -- ** xcb_void_cookie_t xcb_xfixes_create_region_from_bitmap
  -- ** 
  -- ** @param xcb_connection_t    *c
  -- ** @param xcb_xfixes_region_t  region
  -- ** @param xcb_pixmap_t         bitmap
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_create_region_from_bitmap
     (arg1 : System.Address;
      arg2 : xcb_xfixes_region_t;
      arg3 : xcb_xproto_h.xcb_pixmap_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:1211
   pragma Import (C, xcb_xfixes_create_region_from_bitmap, "xcb_xfixes_create_region_from_bitmap");

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
  -- ** xcb_void_cookie_t xcb_xfixes_create_region_from_window_checked
  -- ** 
  -- ** @param xcb_connection_t    *c
  -- ** @param xcb_xfixes_region_t  region
  -- ** @param xcb_window_t         window
  -- ** @param xcb_shape_kind_t     kind
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_create_region_from_window_checked
     (arg1 : System.Address;
      arg2 : xcb_xfixes_region_t;
      arg3 : xcb_xproto_h.xcb_window_t;
      arg4 : xcb_shape_h.xcb_shape_kind_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:1240
   pragma Import (C, xcb_xfixes_create_region_from_window_checked, "xcb_xfixes_create_region_from_window_checked");

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
  -- ** xcb_void_cookie_t xcb_xfixes_create_region_from_window
  -- ** 
  -- ** @param xcb_connection_t    *c
  -- ** @param xcb_xfixes_region_t  region
  -- ** @param xcb_window_t         window
  -- ** @param xcb_shape_kind_t     kind
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_create_region_from_window
     (arg1 : System.Address;
      arg2 : xcb_xfixes_region_t;
      arg3 : xcb_xproto_h.xcb_window_t;
      arg4 : xcb_shape_h.xcb_shape_kind_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:1267
   pragma Import (C, xcb_xfixes_create_region_from_window, "xcb_xfixes_create_region_from_window");

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
  -- ** xcb_void_cookie_t xcb_xfixes_create_region_from_gc_checked
  -- ** 
  -- ** @param xcb_connection_t    *c
  -- ** @param xcb_xfixes_region_t  region
  -- ** @param xcb_gcontext_t       gc
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_create_region_from_gc_checked
     (arg1 : System.Address;
      arg2 : xcb_xfixes_region_t;
      arg3 : xcb_xproto_h.xcb_gcontext_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:1296
   pragma Import (C, xcb_xfixes_create_region_from_gc_checked, "xcb_xfixes_create_region_from_gc_checked");

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
  -- ** xcb_void_cookie_t xcb_xfixes_create_region_from_gc
  -- ** 
  -- ** @param xcb_connection_t    *c
  -- ** @param xcb_xfixes_region_t  region
  -- ** @param xcb_gcontext_t       gc
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_create_region_from_gc
     (arg1 : System.Address;
      arg2 : xcb_xfixes_region_t;
      arg3 : xcb_xproto_h.xcb_gcontext_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:1321
   pragma Import (C, xcb_xfixes_create_region_from_gc, "xcb_xfixes_create_region_from_gc");

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
  -- ** xcb_void_cookie_t xcb_xfixes_create_region_from_picture_checked
  -- ** 
  -- ** @param xcb_connection_t     *c
  -- ** @param xcb_xfixes_region_t   region
  -- ** @param xcb_render_picture_t  picture
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_create_region_from_picture_checked
     (arg1 : System.Address;
      arg2 : xcb_xfixes_region_t;
      arg3 : xcb_render_h.xcb_render_picture_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:1349
   pragma Import (C, xcb_xfixes_create_region_from_picture_checked, "xcb_xfixes_create_region_from_picture_checked");

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
  -- ** xcb_void_cookie_t xcb_xfixes_create_region_from_picture
  -- ** 
  -- ** @param xcb_connection_t     *c
  -- ** @param xcb_xfixes_region_t   region
  -- ** @param xcb_render_picture_t  picture
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_create_region_from_picture
     (arg1 : System.Address;
      arg2 : xcb_xfixes_region_t;
      arg3 : xcb_render_h.xcb_render_picture_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:1374
   pragma Import (C, xcb_xfixes_create_region_from_picture, "xcb_xfixes_create_region_from_picture");

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
  -- ** xcb_void_cookie_t xcb_xfixes_destroy_region_checked
  -- ** 
  -- ** @param xcb_connection_t    *c
  -- ** @param xcb_xfixes_region_t  region
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_destroy_region_checked (arg1 : System.Address; arg2 : xcb_xfixes_region_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:1401
   pragma Import (C, xcb_xfixes_destroy_region_checked, "xcb_xfixes_destroy_region_checked");

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
  -- ** xcb_void_cookie_t xcb_xfixes_destroy_region
  -- ** 
  -- ** @param xcb_connection_t    *c
  -- ** @param xcb_xfixes_region_t  region
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_destroy_region (arg1 : System.Address; arg2 : xcb_xfixes_region_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:1424
   pragma Import (C, xcb_xfixes_destroy_region, "xcb_xfixes_destroy_region");

  --*<  
  --*<  
   function xcb_xfixes_set_region_sizeof (arg1 : System.Address; arg2 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/xfixes.h:1428
   pragma Import (C, xcb_xfixes_set_region_sizeof, "xcb_xfixes_set_region_sizeof");

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
  -- ** xcb_void_cookie_t xcb_xfixes_set_region_checked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_xfixes_region_t    region
  -- ** @param uint32_t               rectangles_len
  -- ** @param const xcb_rectangle_t *rectangles
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_set_region_checked
     (arg1 : System.Address;
      arg2 : xcb_xfixes_region_t;
      arg3 : stdint_h.uint32_t;
      arg4 : access constant xcb_xproto_h.xcb_rectangle_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:1456
   pragma Import (C, xcb_xfixes_set_region_checked, "xcb_xfixes_set_region_checked");

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
  -- ** xcb_void_cookie_t xcb_xfixes_set_region
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_xfixes_region_t    region
  -- ** @param uint32_t               rectangles_len
  -- ** @param const xcb_rectangle_t *rectangles
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_set_region
     (arg1 : System.Address;
      arg2 : xcb_xfixes_region_t;
      arg3 : stdint_h.uint32_t;
      arg4 : access constant xcb_xproto_h.xcb_rectangle_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:1483
   pragma Import (C, xcb_xfixes_set_region, "xcb_xfixes_set_region");

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
  -- ** xcb_void_cookie_t xcb_xfixes_copy_region_checked
  -- ** 
  -- ** @param xcb_connection_t    *c
  -- ** @param xcb_xfixes_region_t  source
  -- ** @param xcb_xfixes_region_t  destination
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_copy_region_checked
     (arg1 : System.Address;
      arg2 : xcb_xfixes_region_t;
      arg3 : xcb_xfixes_region_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:1512
   pragma Import (C, xcb_xfixes_copy_region_checked, "xcb_xfixes_copy_region_checked");

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
  -- ** xcb_void_cookie_t xcb_xfixes_copy_region
  -- ** 
  -- ** @param xcb_connection_t    *c
  -- ** @param xcb_xfixes_region_t  source
  -- ** @param xcb_xfixes_region_t  destination
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_copy_region
     (arg1 : System.Address;
      arg2 : xcb_xfixes_region_t;
      arg3 : xcb_xfixes_region_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:1537
   pragma Import (C, xcb_xfixes_copy_region, "xcb_xfixes_copy_region");

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
  -- ** xcb_void_cookie_t xcb_xfixes_union_region_checked
  -- ** 
  -- ** @param xcb_connection_t    *c
  -- ** @param xcb_xfixes_region_t  source1
  -- ** @param xcb_xfixes_region_t  source2
  -- ** @param xcb_xfixes_region_t  destination
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_union_region_checked
     (arg1 : System.Address;
      arg2 : xcb_xfixes_region_t;
      arg3 : xcb_xfixes_region_t;
      arg4 : xcb_xfixes_region_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:1566
   pragma Import (C, xcb_xfixes_union_region_checked, "xcb_xfixes_union_region_checked");

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
  -- ** xcb_void_cookie_t xcb_xfixes_union_region
  -- ** 
  -- ** @param xcb_connection_t    *c
  -- ** @param xcb_xfixes_region_t  source1
  -- ** @param xcb_xfixes_region_t  source2
  -- ** @param xcb_xfixes_region_t  destination
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_union_region
     (arg1 : System.Address;
      arg2 : xcb_xfixes_region_t;
      arg3 : xcb_xfixes_region_t;
      arg4 : xcb_xfixes_region_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:1593
   pragma Import (C, xcb_xfixes_union_region, "xcb_xfixes_union_region");

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
  -- ** xcb_void_cookie_t xcb_xfixes_intersect_region_checked
  -- ** 
  -- ** @param xcb_connection_t    *c
  -- ** @param xcb_xfixes_region_t  source1
  -- ** @param xcb_xfixes_region_t  source2
  -- ** @param xcb_xfixes_region_t  destination
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_intersect_region_checked
     (arg1 : System.Address;
      arg2 : xcb_xfixes_region_t;
      arg3 : xcb_xfixes_region_t;
      arg4 : xcb_xfixes_region_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:1623
   pragma Import (C, xcb_xfixes_intersect_region_checked, "xcb_xfixes_intersect_region_checked");

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
  -- ** xcb_void_cookie_t xcb_xfixes_intersect_region
  -- ** 
  -- ** @param xcb_connection_t    *c
  -- ** @param xcb_xfixes_region_t  source1
  -- ** @param xcb_xfixes_region_t  source2
  -- ** @param xcb_xfixes_region_t  destination
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_intersect_region
     (arg1 : System.Address;
      arg2 : xcb_xfixes_region_t;
      arg3 : xcb_xfixes_region_t;
      arg4 : xcb_xfixes_region_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:1650
   pragma Import (C, xcb_xfixes_intersect_region, "xcb_xfixes_intersect_region");

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
  -- ** xcb_void_cookie_t xcb_xfixes_subtract_region_checked
  -- ** 
  -- ** @param xcb_connection_t    *c
  -- ** @param xcb_xfixes_region_t  source1
  -- ** @param xcb_xfixes_region_t  source2
  -- ** @param xcb_xfixes_region_t  destination
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_subtract_region_checked
     (arg1 : System.Address;
      arg2 : xcb_xfixes_region_t;
      arg3 : xcb_xfixes_region_t;
      arg4 : xcb_xfixes_region_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:1680
   pragma Import (C, xcb_xfixes_subtract_region_checked, "xcb_xfixes_subtract_region_checked");

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
  -- ** xcb_void_cookie_t xcb_xfixes_subtract_region
  -- ** 
  -- ** @param xcb_connection_t    *c
  -- ** @param xcb_xfixes_region_t  source1
  -- ** @param xcb_xfixes_region_t  source2
  -- ** @param xcb_xfixes_region_t  destination
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_subtract_region
     (arg1 : System.Address;
      arg2 : xcb_xfixes_region_t;
      arg3 : xcb_xfixes_region_t;
      arg4 : xcb_xfixes_region_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:1707
   pragma Import (C, xcb_xfixes_subtract_region, "xcb_xfixes_subtract_region");

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
  -- ** xcb_void_cookie_t xcb_xfixes_invert_region_checked
  -- ** 
  -- ** @param xcb_connection_t    *c
  -- ** @param xcb_xfixes_region_t  source
  -- ** @param xcb_rectangle_t      bounds
  -- ** @param xcb_xfixes_region_t  destination
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_invert_region_checked
     (arg1 : System.Address;
      arg2 : xcb_xfixes_region_t;
      arg3 : xcb_xproto_h.xcb_rectangle_t;
      arg4 : xcb_xfixes_region_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:1737
   pragma Import (C, xcb_xfixes_invert_region_checked, "xcb_xfixes_invert_region_checked");

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
  -- ** xcb_void_cookie_t xcb_xfixes_invert_region
  -- ** 
  -- ** @param xcb_connection_t    *c
  -- ** @param xcb_xfixes_region_t  source
  -- ** @param xcb_rectangle_t      bounds
  -- ** @param xcb_xfixes_region_t  destination
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_invert_region
     (arg1 : System.Address;
      arg2 : xcb_xfixes_region_t;
      arg3 : xcb_xproto_h.xcb_rectangle_t;
      arg4 : xcb_xfixes_region_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:1764
   pragma Import (C, xcb_xfixes_invert_region, "xcb_xfixes_invert_region");

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
  -- ** xcb_void_cookie_t xcb_xfixes_translate_region_checked
  -- ** 
  -- ** @param xcb_connection_t    *c
  -- ** @param xcb_xfixes_region_t  region
  -- ** @param int16_t              dx
  -- ** @param int16_t              dy
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_translate_region_checked
     (arg1 : System.Address;
      arg2 : xcb_xfixes_region_t;
      arg3 : sys_types_h.int16_t;
      arg4 : sys_types_h.int16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:1794
   pragma Import (C, xcb_xfixes_translate_region_checked, "xcb_xfixes_translate_region_checked");

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
  -- ** xcb_void_cookie_t xcb_xfixes_translate_region
  -- ** 
  -- ** @param xcb_connection_t    *c
  -- ** @param xcb_xfixes_region_t  region
  -- ** @param int16_t              dx
  -- ** @param int16_t              dy
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_translate_region
     (arg1 : System.Address;
      arg2 : xcb_xfixes_region_t;
      arg3 : sys_types_h.int16_t;
      arg4 : sys_types_h.int16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:1821
   pragma Import (C, xcb_xfixes_translate_region, "xcb_xfixes_translate_region");

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
  -- ** xcb_void_cookie_t xcb_xfixes_region_extents_checked
  -- ** 
  -- ** @param xcb_connection_t    *c
  -- ** @param xcb_xfixes_region_t  source
  -- ** @param xcb_xfixes_region_t  destination
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_region_extents_checked
     (arg1 : System.Address;
      arg2 : xcb_xfixes_region_t;
      arg3 : xcb_xfixes_region_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:1850
   pragma Import (C, xcb_xfixes_region_extents_checked, "xcb_xfixes_region_extents_checked");

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
  -- ** xcb_void_cookie_t xcb_xfixes_region_extents
  -- ** 
  -- ** @param xcb_connection_t    *c
  -- ** @param xcb_xfixes_region_t  source
  -- ** @param xcb_xfixes_region_t  destination
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_region_extents
     (arg1 : System.Address;
      arg2 : xcb_xfixes_region_t;
      arg3 : xcb_xfixes_region_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:1875
   pragma Import (C, xcb_xfixes_region_extents, "xcb_xfixes_region_extents");

  --*<  
  --*<  
  --*<  
   function xcb_xfixes_fetch_region_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xfixes.h:1880
   pragma Import (C, xcb_xfixes_fetch_region_sizeof, "xcb_xfixes_fetch_region_sizeof");

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
  -- ** xcb_xfixes_fetch_region_cookie_t xcb_xfixes_fetch_region
  -- ** 
  -- ** @param xcb_connection_t    *c
  -- ** @param xcb_xfixes_region_t  region
  -- ** @returns xcb_xfixes_fetch_region_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_fetch_region (arg1 : System.Address; arg2 : xcb_xfixes_region_t) return xcb_xfixes_fetch_region_cookie_t;  -- /usr/include/xcb/xfixes.h:1902
   pragma Import (C, xcb_xfixes_fetch_region, "xcb_xfixes_fetch_region");

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
  -- ** xcb_xfixes_fetch_region_cookie_t xcb_xfixes_fetch_region_unchecked
  -- ** 
  -- ** @param xcb_connection_t    *c
  -- ** @param xcb_xfixes_region_t  region
  -- ** @returns xcb_xfixes_fetch_region_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_fetch_region_unchecked (arg1 : System.Address; arg2 : xcb_xfixes_region_t) return xcb_xfixes_fetch_region_cookie_t;  -- /usr/include/xcb/xfixes.h:1928
   pragma Import (C, xcb_xfixes_fetch_region_unchecked, "xcb_xfixes_fetch_region_unchecked");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_rectangle_t * xcb_xfixes_fetch_region_rectangles
  -- ** 
  -- ** @param const xcb_xfixes_fetch_region_reply_t *R
  -- ** @returns xcb_rectangle_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_fetch_region_rectangles (arg1 : System.Address) return access xcb_xproto_h.xcb_rectangle_t;  -- /usr/include/xcb/xfixes.h:1942
   pragma Import (C, xcb_xfixes_fetch_region_rectangles, "xcb_xfixes_fetch_region_rectangles");

  --****************************************************************************
  -- **
  -- ** int xcb_xfixes_fetch_region_rectangles_length
  -- ** 
  -- ** @param const xcb_xfixes_fetch_region_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_fetch_region_rectangles_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xfixes.h:1955
   pragma Import (C, xcb_xfixes_fetch_region_rectangles_length, "xcb_xfixes_fetch_region_rectangles_length");

  --****************************************************************************
  -- **
  -- ** xcb_rectangle_iterator_t xcb_xfixes_fetch_region_rectangles_iterator
  -- ** 
  -- ** @param const xcb_xfixes_fetch_region_reply_t *R
  -- ** @returns xcb_rectangle_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_fetch_region_rectangles_iterator (arg1 : System.Address) return xcb_xproto_h.xcb_rectangle_iterator_t;  -- /usr/include/xcb/xfixes.h:1968
   pragma Import (C, xcb_xfixes_fetch_region_rectangles_iterator, "xcb_xfixes_fetch_region_rectangles_iterator");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_xfixes_fetch_region_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xfixes_fetch_region_reply_t * xcb_xfixes_fetch_region_reply
  -- ** 
  -- ** @param xcb_connection_t                  *c
  -- ** @param xcb_xfixes_fetch_region_cookie_t   cookie
  -- ** @param xcb_generic_error_t              **e
  -- ** @returns xcb_xfixes_fetch_region_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_fetch_region_reply
     (arg1 : System.Address;
      arg2 : xcb_xfixes_fetch_region_cookie_t;
      arg3 : System.Address) return access xcb_xfixes_fetch_region_reply_t;  -- /usr/include/xcb/xfixes.h:1997
   pragma Import (C, xcb_xfixes_fetch_region_reply, "xcb_xfixes_fetch_region_reply");

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
  -- ** xcb_void_cookie_t xcb_xfixes_set_gc_clip_region_checked
  -- ** 
  -- ** @param xcb_connection_t    *c
  -- ** @param xcb_gcontext_t       gc
  -- ** @param xcb_xfixes_region_t  region
  -- ** @param int16_t              x_origin
  -- ** @param int16_t              y_origin
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_set_gc_clip_region_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_gcontext_t;
      arg3 : xcb_xfixes_region_t;
      arg4 : sys_types_h.int16_t;
      arg5 : sys_types_h.int16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:2027
   pragma Import (C, xcb_xfixes_set_gc_clip_region_checked, "xcb_xfixes_set_gc_clip_region_checked");

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
  -- ** xcb_void_cookie_t xcb_xfixes_set_gc_clip_region
  -- ** 
  -- ** @param xcb_connection_t    *c
  -- ** @param xcb_gcontext_t       gc
  -- ** @param xcb_xfixes_region_t  region
  -- ** @param int16_t              x_origin
  -- ** @param int16_t              y_origin
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_set_gc_clip_region
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_gcontext_t;
      arg3 : xcb_xfixes_region_t;
      arg4 : sys_types_h.int16_t;
      arg5 : sys_types_h.int16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:2056
   pragma Import (C, xcb_xfixes_set_gc_clip_region, "xcb_xfixes_set_gc_clip_region");

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
  -- ** xcb_void_cookie_t xcb_xfixes_set_window_shape_region_checked
  -- ** 
  -- ** @param xcb_connection_t    *c
  -- ** @param xcb_window_t         dest
  -- ** @param xcb_shape_kind_t     dest_kind
  -- ** @param int16_t              x_offset
  -- ** @param int16_t              y_offset
  -- ** @param xcb_xfixes_region_t  region
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_set_window_shape_region_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_shape_h.xcb_shape_kind_t;
      arg4 : sys_types_h.int16_t;
      arg5 : sys_types_h.int16_t;
      arg6 : xcb_xfixes_region_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:2089
   pragma Import (C, xcb_xfixes_set_window_shape_region_checked, "xcb_xfixes_set_window_shape_region_checked");

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
  -- ** xcb_void_cookie_t xcb_xfixes_set_window_shape_region
  -- ** 
  -- ** @param xcb_connection_t    *c
  -- ** @param xcb_window_t         dest
  -- ** @param xcb_shape_kind_t     dest_kind
  -- ** @param int16_t              x_offset
  -- ** @param int16_t              y_offset
  -- ** @param xcb_xfixes_region_t  region
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_set_window_shape_region
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_shape_h.xcb_shape_kind_t;
      arg4 : sys_types_h.int16_t;
      arg5 : sys_types_h.int16_t;
      arg6 : xcb_xfixes_region_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:2120
   pragma Import (C, xcb_xfixes_set_window_shape_region, "xcb_xfixes_set_window_shape_region");

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
  -- ** xcb_void_cookie_t xcb_xfixes_set_picture_clip_region_checked
  -- ** 
  -- ** @param xcb_connection_t     *c
  -- ** @param xcb_render_picture_t  picture
  -- ** @param xcb_xfixes_region_t   region
  -- ** @param int16_t               x_origin
  -- ** @param int16_t               y_origin
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_set_picture_clip_region_checked
     (arg1 : System.Address;
      arg2 : xcb_render_h.xcb_render_picture_t;
      arg3 : xcb_xfixes_region_t;
      arg4 : sys_types_h.int16_t;
      arg5 : sys_types_h.int16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:2153
   pragma Import (C, xcb_xfixes_set_picture_clip_region_checked, "xcb_xfixes_set_picture_clip_region_checked");

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
  -- ** xcb_void_cookie_t xcb_xfixes_set_picture_clip_region
  -- ** 
  -- ** @param xcb_connection_t     *c
  -- ** @param xcb_render_picture_t  picture
  -- ** @param xcb_xfixes_region_t   region
  -- ** @param int16_t               x_origin
  -- ** @param int16_t               y_origin
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_set_picture_clip_region
     (arg1 : System.Address;
      arg2 : xcb_render_h.xcb_render_picture_t;
      arg3 : xcb_xfixes_region_t;
      arg4 : sys_types_h.int16_t;
      arg5 : sys_types_h.int16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:2182
   pragma Import (C, xcb_xfixes_set_picture_clip_region, "xcb_xfixes_set_picture_clip_region");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_xfixes_set_cursor_name_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xfixes.h:2189
   pragma Import (C, xcb_xfixes_set_cursor_name_sizeof, "xcb_xfixes_set_cursor_name_sizeof");

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
  -- ** xcb_void_cookie_t xcb_xfixes_set_cursor_name_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_cursor_t      cursor
  -- ** @param uint16_t          nbytes
  -- ** @param const char       *name
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_set_cursor_name_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_cursor_t;
      arg3 : stdint_h.uint16_t;
      arg4 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:2216
   pragma Import (C, xcb_xfixes_set_cursor_name_checked, "xcb_xfixes_set_cursor_name_checked");

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
  -- ** xcb_void_cookie_t xcb_xfixes_set_cursor_name
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_cursor_t      cursor
  -- ** @param uint16_t          nbytes
  -- ** @param const char       *name
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_set_cursor_name
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_cursor_t;
      arg3 : stdint_h.uint16_t;
      arg4 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:2243
   pragma Import (C, xcb_xfixes_set_cursor_name, "xcb_xfixes_set_cursor_name");

  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_xfixes_get_cursor_name_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xfixes.h:2249
   pragma Import (C, xcb_xfixes_get_cursor_name_sizeof, "xcb_xfixes_get_cursor_name_sizeof");

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
  -- ** xcb_xfixes_get_cursor_name_cookie_t xcb_xfixes_get_cursor_name
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_cursor_t      cursor
  -- ** @returns xcb_xfixes_get_cursor_name_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_get_cursor_name (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_cursor_t) return xcb_xfixes_get_cursor_name_cookie_t;  -- /usr/include/xcb/xfixes.h:2271
   pragma Import (C, xcb_xfixes_get_cursor_name, "xcb_xfixes_get_cursor_name");

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
  -- ** xcb_xfixes_get_cursor_name_cookie_t xcb_xfixes_get_cursor_name_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_cursor_t      cursor
  -- ** @returns xcb_xfixes_get_cursor_name_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_get_cursor_name_unchecked (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_cursor_t) return xcb_xfixes_get_cursor_name_cookie_t;  -- /usr/include/xcb/xfixes.h:2297
   pragma Import (C, xcb_xfixes_get_cursor_name_unchecked, "xcb_xfixes_get_cursor_name_unchecked");

  --*<  
  --****************************************************************************
  -- **
  -- ** char * xcb_xfixes_get_cursor_name_name
  -- ** 
  -- ** @param const xcb_xfixes_get_cursor_name_reply_t *R
  -- ** @returns char *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_get_cursor_name_name (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/xfixes.h:2311
   pragma Import (C, xcb_xfixes_get_cursor_name_name, "xcb_xfixes_get_cursor_name_name");

  --****************************************************************************
  -- **
  -- ** int xcb_xfixes_get_cursor_name_name_length
  -- ** 
  -- ** @param const xcb_xfixes_get_cursor_name_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_get_cursor_name_name_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xfixes.h:2324
   pragma Import (C, xcb_xfixes_get_cursor_name_name_length, "xcb_xfixes_get_cursor_name_name_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xfixes_get_cursor_name_name_end
  -- ** 
  -- ** @param const xcb_xfixes_get_cursor_name_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_get_cursor_name_name_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xfixes.h:2337
   pragma Import (C, xcb_xfixes_get_cursor_name_name_end, "xcb_xfixes_get_cursor_name_name_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_xfixes_get_cursor_name_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xfixes_get_cursor_name_reply_t * xcb_xfixes_get_cursor_name_reply
  -- ** 
  -- ** @param xcb_connection_t                     *c
  -- ** @param xcb_xfixes_get_cursor_name_cookie_t   cookie
  -- ** @param xcb_generic_error_t                 **e
  -- ** @returns xcb_xfixes_get_cursor_name_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_get_cursor_name_reply
     (arg1 : System.Address;
      arg2 : xcb_xfixes_get_cursor_name_cookie_t;
      arg3 : System.Address) return access xcb_xfixes_get_cursor_name_reply_t;  -- /usr/include/xcb/xfixes.h:2366
   pragma Import (C, xcb_xfixes_get_cursor_name_reply, "xcb_xfixes_get_cursor_name_reply");

  --*<  
  --*<  
  --*<  
   function xcb_xfixes_get_cursor_image_and_name_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xfixes.h:2371
   pragma Import (C, xcb_xfixes_get_cursor_image_and_name_sizeof, "xcb_xfixes_get_cursor_image_and_name_sizeof");

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
  -- ** xcb_xfixes_get_cursor_image_and_name_cookie_t xcb_xfixes_get_cursor_image_and_name
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_xfixes_get_cursor_image_and_name_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_get_cursor_image_and_name (arg1 : System.Address) return xcb_xfixes_get_cursor_image_and_name_cookie_t;  -- /usr/include/xcb/xfixes.h:2392
   pragma Import (C, xcb_xfixes_get_cursor_image_and_name, "xcb_xfixes_get_cursor_image_and_name");

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
  -- ** xcb_xfixes_get_cursor_image_and_name_cookie_t xcb_xfixes_get_cursor_image_and_name_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_xfixes_get_cursor_image_and_name_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_get_cursor_image_and_name_unchecked (arg1 : System.Address) return xcb_xfixes_get_cursor_image_and_name_cookie_t;  -- /usr/include/xcb/xfixes.h:2416
   pragma Import (C, xcb_xfixes_get_cursor_image_and_name_unchecked, "xcb_xfixes_get_cursor_image_and_name_unchecked");

  --****************************************************************************
  -- **
  -- ** char * xcb_xfixes_get_cursor_image_and_name_name
  -- ** 
  -- ** @param const xcb_xfixes_get_cursor_image_and_name_reply_t *R
  -- ** @returns char *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_get_cursor_image_and_name_name (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/xfixes.h:2429
   pragma Import (C, xcb_xfixes_get_cursor_image_and_name_name, "xcb_xfixes_get_cursor_image_and_name_name");

  --****************************************************************************
  -- **
  -- ** int xcb_xfixes_get_cursor_image_and_name_name_length
  -- ** 
  -- ** @param const xcb_xfixes_get_cursor_image_and_name_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_get_cursor_image_and_name_name_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xfixes.h:2442
   pragma Import (C, xcb_xfixes_get_cursor_image_and_name_name_length, "xcb_xfixes_get_cursor_image_and_name_name_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xfixes_get_cursor_image_and_name_name_end
  -- ** 
  -- ** @param const xcb_xfixes_get_cursor_image_and_name_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_get_cursor_image_and_name_name_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xfixes.h:2455
   pragma Import (C, xcb_xfixes_get_cursor_image_and_name_name_end, "xcb_xfixes_get_cursor_image_and_name_name_end");

  --****************************************************************************
  -- **
  -- ** uint32_t * xcb_xfixes_get_cursor_image_and_name_cursor_image
  -- ** 
  -- ** @param const xcb_xfixes_get_cursor_image_and_name_reply_t *R
  -- ** @returns uint32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_get_cursor_image_and_name_cursor_image (arg1 : System.Address) return access stdint_h.uint32_t;  -- /usr/include/xcb/xfixes.h:2468
   pragma Import (C, xcb_xfixes_get_cursor_image_and_name_cursor_image, "xcb_xfixes_get_cursor_image_and_name_cursor_image");

  --****************************************************************************
  -- **
  -- ** int xcb_xfixes_get_cursor_image_and_name_cursor_image_length
  -- ** 
  -- ** @param const xcb_xfixes_get_cursor_image_and_name_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_get_cursor_image_and_name_cursor_image_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xfixes.h:2481
   pragma Import (C, xcb_xfixes_get_cursor_image_and_name_cursor_image_length, "xcb_xfixes_get_cursor_image_and_name_cursor_image_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xfixes_get_cursor_image_and_name_cursor_image_end
  -- ** 
  -- ** @param const xcb_xfixes_get_cursor_image_and_name_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_get_cursor_image_and_name_cursor_image_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xfixes.h:2494
   pragma Import (C, xcb_xfixes_get_cursor_image_and_name_cursor_image_end, "xcb_xfixes_get_cursor_image_and_name_cursor_image_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_xfixes_get_cursor_image_and_name_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xfixes_get_cursor_image_and_name_reply_t * xcb_xfixes_get_cursor_image_and_name_reply
  -- ** 
  -- ** @param xcb_connection_t                               *c
  -- ** @param xcb_xfixes_get_cursor_image_and_name_cookie_t   cookie
  -- ** @param xcb_generic_error_t                           **e
  -- ** @returns xcb_xfixes_get_cursor_image_and_name_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_get_cursor_image_and_name_reply
     (arg1 : System.Address;
      arg2 : xcb_xfixes_get_cursor_image_and_name_cookie_t;
      arg3 : System.Address) return access xcb_xfixes_get_cursor_image_and_name_reply_t;  -- /usr/include/xcb/xfixes.h:2523
   pragma Import (C, xcb_xfixes_get_cursor_image_and_name_reply, "xcb_xfixes_get_cursor_image_and_name_reply");

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
  -- ** xcb_void_cookie_t xcb_xfixes_change_cursor_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_cursor_t      source
  -- ** @param xcb_cursor_t      destination
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_change_cursor_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_cursor_t;
      arg3 : xcb_xproto_h.xcb_cursor_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:2551
   pragma Import (C, xcb_xfixes_change_cursor_checked, "xcb_xfixes_change_cursor_checked");

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
  -- ** xcb_void_cookie_t xcb_xfixes_change_cursor
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_cursor_t      source
  -- ** @param xcb_cursor_t      destination
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_change_cursor
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_cursor_t;
      arg3 : xcb_xproto_h.xcb_cursor_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:2576
   pragma Import (C, xcb_xfixes_change_cursor, "xcb_xfixes_change_cursor");

  --*<  
  --*<  
  --*<  
   function xcb_xfixes_change_cursor_by_name_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xfixes.h:2581
   pragma Import (C, xcb_xfixes_change_cursor_by_name_sizeof, "xcb_xfixes_change_cursor_by_name_sizeof");

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
  -- ** xcb_void_cookie_t xcb_xfixes_change_cursor_by_name_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_cursor_t      src
  -- ** @param uint16_t          nbytes
  -- ** @param const char       *name
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_change_cursor_by_name_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_cursor_t;
      arg3 : stdint_h.uint16_t;
      arg4 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:2608
   pragma Import (C, xcb_xfixes_change_cursor_by_name_checked, "xcb_xfixes_change_cursor_by_name_checked");

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
  -- ** xcb_void_cookie_t xcb_xfixes_change_cursor_by_name
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_cursor_t      src
  -- ** @param uint16_t          nbytes
  -- ** @param const char       *name
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_change_cursor_by_name
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_cursor_t;
      arg3 : stdint_h.uint16_t;
      arg4 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:2635
   pragma Import (C, xcb_xfixes_change_cursor_by_name, "xcb_xfixes_change_cursor_by_name");

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
  -- ** xcb_void_cookie_t xcb_xfixes_expand_region_checked
  -- ** 
  -- ** @param xcb_connection_t    *c
  -- ** @param xcb_xfixes_region_t  source
  -- ** @param xcb_xfixes_region_t  destination
  -- ** @param uint16_t             left
  -- ** @param uint16_t             right
  -- ** @param uint16_t             top
  -- ** @param uint16_t             bottom
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_expand_region_checked
     (arg1 : System.Address;
      arg2 : xcb_xfixes_region_t;
      arg3 : xcb_xfixes_region_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint16_t;
      arg7 : stdint_h.uint16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:2668
   pragma Import (C, xcb_xfixes_expand_region_checked, "xcb_xfixes_expand_region_checked");

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
  -- ** xcb_void_cookie_t xcb_xfixes_expand_region
  -- ** 
  -- ** @param xcb_connection_t    *c
  -- ** @param xcb_xfixes_region_t  source
  -- ** @param xcb_xfixes_region_t  destination
  -- ** @param uint16_t             left
  -- ** @param uint16_t             right
  -- ** @param uint16_t             top
  -- ** @param uint16_t             bottom
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_expand_region
     (arg1 : System.Address;
      arg2 : xcb_xfixes_region_t;
      arg3 : xcb_xfixes_region_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint16_t;
      arg7 : stdint_h.uint16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:2701
   pragma Import (C, xcb_xfixes_expand_region, "xcb_xfixes_expand_region");

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
  -- ** xcb_void_cookie_t xcb_xfixes_hide_cursor_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_hide_cursor_checked (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:2732
   pragma Import (C, xcb_xfixes_hide_cursor_checked, "xcb_xfixes_hide_cursor_checked");

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
  -- ** xcb_void_cookie_t xcb_xfixes_hide_cursor
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_hide_cursor (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:2755
   pragma Import (C, xcb_xfixes_hide_cursor, "xcb_xfixes_hide_cursor");

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
  -- ** xcb_void_cookie_t xcb_xfixes_show_cursor_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_show_cursor_checked (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:2781
   pragma Import (C, xcb_xfixes_show_cursor_checked, "xcb_xfixes_show_cursor_checked");

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
  -- ** xcb_void_cookie_t xcb_xfixes_show_cursor
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xfixes_show_cursor (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xfixes.h:2804
   pragma Import (C, xcb_xfixes_show_cursor, "xcb_xfixes_show_cursor");

  --*<  
  --*
  -- * @}
  --  

end xcb_xfixes_h;
