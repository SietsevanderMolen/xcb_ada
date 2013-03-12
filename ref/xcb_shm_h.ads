with Interfaces.C; use Interfaces.C;
with xcb_xcb_h;
with stdint_h;
with xcb_xproto_h;
with sys_types_h;
with System;

package xcb_shm_h is

   --  unsupported macro: XCB_SHM_MAJOR_VERSION 1
   --  unsupported macro: XCB_SHM_MINOR_VERSION 1
   --  unsupported macro: XCB_SHM_COMPLETION 0
   --  unsupported macro: XCB_SHM_BAD_SEG 0
   --  unsupported macro: XCB_SHM_QUERY_VERSION 0
   --  unsupported macro: XCB_SHM_ATTACH 1
   --  unsupported macro: XCB_SHM_DETACH 2
   --  unsupported macro: XCB_SHM_PUT_IMAGE 3
   --  unsupported macro: XCB_SHM_GET_IMAGE 4
   --  unsupported macro: XCB_SHM_CREATE_PIXMAP 5
   xcb_shm_id : aliased xcb_xcb_h.xcb_extension_t;  -- /usr/include/xcb/shm.h:25
   pragma Import (C, xcb_shm_id, "xcb_shm_id");

   subtype xcb_shm_seg_t is stdint_h.uint32_t;  -- /usr/include/xcb/shm.h:27

   type xcb_shm_seg_iterator_t is record
      data : access xcb_shm_seg_t;  -- /usr/include/xcb/shm.h:33
      c_rem : aliased int;  -- /usr/include/xcb/shm.h:34
      index : aliased int;  -- /usr/include/xcb/shm.h:35
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_shm_seg_iterator_t);  -- /usr/include/xcb/shm.h:32

   type xcb_shm_completion_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shm.h:45
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shm.h:46
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/shm.h:47
      drawable : aliased xcb_xproto_h.xcb_drawable_t;  -- /usr/include/xcb/shm.h:48
      minor_event : aliased stdint_h.uint16_t;  -- /usr/include/xcb/shm.h:49
      major_event : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shm.h:50
      pad1 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shm.h:51
      shmseg : aliased xcb_shm_seg_t;  -- /usr/include/xcb/shm.h:52
      offset : aliased stdint_h.uint32_t;  -- /usr/include/xcb/shm.h:53
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_shm_completion_event_t);  -- /usr/include/xcb/shm.h:44

   subtype xcb_shm_bad_seg_error_t is xcb_xproto_h.xcb_value_error_t;

   type xcb_shm_query_version_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/shm.h:65
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_shm_query_version_cookie_t);  -- /usr/include/xcb/shm.h:64

   type xcb_shm_query_version_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shm.h:75
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shm.h:76
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/shm.h:77
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_shm_query_version_request_t);  -- /usr/include/xcb/shm.h:74

   type anon3966_anon3968_array is array (0 .. 14) of aliased stdint_h.uint8_t;
   type xcb_shm_query_version_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shm.h:84
      shared_pixmaps : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shm.h:85
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/shm.h:86
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/shm.h:87
      major_version : aliased stdint_h.uint16_t;  -- /usr/include/xcb/shm.h:88
      minor_version : aliased stdint_h.uint16_t;  -- /usr/include/xcb/shm.h:89
      uid : aliased stdint_h.uint16_t;  -- /usr/include/xcb/shm.h:90
      gid : aliased stdint_h.uint16_t;  -- /usr/include/xcb/shm.h:91
      pixmap_format : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shm.h:92
      pad0 : aliased anon3966_anon3968_array;  -- /usr/include/xcb/shm.h:93
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_shm_query_version_reply_t);  -- /usr/include/xcb/shm.h:83

   type anon3971_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_shm_attach_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shm.h:103
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shm.h:104
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/shm.h:105
      shmseg : aliased xcb_shm_seg_t;  -- /usr/include/xcb/shm.h:106
      shmid : aliased stdint_h.uint32_t;  -- /usr/include/xcb/shm.h:107
      read_only : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shm.h:108
      pad0 : aliased anon3971_anon1853_array;  -- /usr/include/xcb/shm.h:109
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_shm_attach_request_t);  -- /usr/include/xcb/shm.h:102

   type xcb_shm_detach_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shm.h:119
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shm.h:120
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/shm.h:121
      shmseg : aliased xcb_shm_seg_t;  -- /usr/include/xcb/shm.h:122
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_shm_detach_request_t);  -- /usr/include/xcb/shm.h:118

   type xcb_shm_put_image_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shm.h:132
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shm.h:133
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/shm.h:134
      drawable : aliased xcb_xproto_h.xcb_drawable_t;  -- /usr/include/xcb/shm.h:135
      gc : aliased xcb_xproto_h.xcb_gcontext_t;  -- /usr/include/xcb/shm.h:136
      total_width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/shm.h:137
      total_height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/shm.h:138
      src_x : aliased stdint_h.uint16_t;  -- /usr/include/xcb/shm.h:139
      src_y : aliased stdint_h.uint16_t;  -- /usr/include/xcb/shm.h:140
      src_width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/shm.h:141
      src_height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/shm.h:142
      dst_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/shm.h:143
      dst_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/shm.h:144
      depth : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shm.h:145
      format : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shm.h:146
      send_event : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shm.h:147
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shm.h:148
      shmseg : aliased xcb_shm_seg_t;  -- /usr/include/xcb/shm.h:149
      offset : aliased stdint_h.uint32_t;  -- /usr/include/xcb/shm.h:150
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_shm_put_image_request_t);  -- /usr/include/xcb/shm.h:131

   type xcb_shm_get_image_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/shm.h:157
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_shm_get_image_cookie_t);  -- /usr/include/xcb/shm.h:156

   type anon3981_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_shm_get_image_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shm.h:167
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shm.h:168
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/shm.h:169
      drawable : aliased xcb_xproto_h.xcb_drawable_t;  -- /usr/include/xcb/shm.h:170
      x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/shm.h:171
      y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/shm.h:172
      width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/shm.h:173
      height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/shm.h:174
      plane_mask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/shm.h:175
      format : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shm.h:176
      pad0 : aliased anon3981_anon1853_array;  -- /usr/include/xcb/shm.h:177
      shmseg : aliased xcb_shm_seg_t;  -- /usr/include/xcb/shm.h:178
      offset : aliased stdint_h.uint32_t;  -- /usr/include/xcb/shm.h:179
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_shm_get_image_request_t);  -- /usr/include/xcb/shm.h:166

   type xcb_shm_get_image_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shm.h:186
      depth : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shm.h:187
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/shm.h:188
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/shm.h:189
      visual : aliased xcb_xproto_h.xcb_visualid_t;  -- /usr/include/xcb/shm.h:190
      size : aliased stdint_h.uint32_t;  -- /usr/include/xcb/shm.h:191
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_shm_get_image_reply_t);  -- /usr/include/xcb/shm.h:185

   type anon3987_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_shm_create_pixmap_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shm.h:201
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shm.h:202
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/shm.h:203
      pid : aliased xcb_xproto_h.xcb_pixmap_t;  -- /usr/include/xcb/shm.h:204
      drawable : aliased xcb_xproto_h.xcb_drawable_t;  -- /usr/include/xcb/shm.h:205
      width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/shm.h:206
      height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/shm.h:207
      depth : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shm.h:208
      pad0 : aliased anon3987_anon1853_array;  -- /usr/include/xcb/shm.h:209
      shmseg : aliased xcb_shm_seg_t;  -- /usr/include/xcb/shm.h:210
      offset : aliased stdint_h.uint32_t;  -- /usr/include/xcb/shm.h:211
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_shm_create_pixmap_request_t);  -- /usr/include/xcb/shm.h:200

   procedure xcb_shm_seg_next (arg1 : access xcb_shm_seg_iterator_t);  -- /usr/include/xcb/shm.h:233
   pragma Import (C, xcb_shm_seg_next, "xcb_shm_seg_next");

   function xcb_shm_seg_end (arg1 : xcb_shm_seg_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/shm.h:255
   pragma Import (C, xcb_shm_seg_end, "xcb_shm_seg_end");

   function xcb_shm_query_version (arg1 : System.Address) return xcb_shm_query_version_cookie_t;  -- /usr/include/xcb/shm.h:276
   pragma Import (C, xcb_shm_query_version, "xcb_shm_query_version");

   function xcb_shm_query_version_unchecked (arg1 : System.Address) return xcb_shm_query_version_cookie_t;  -- /usr/include/xcb/shm.h:300
   pragma Import (C, xcb_shm_query_version_unchecked, "xcb_shm_query_version_unchecked");

   function xcb_shm_query_version_reply
     (arg1 : System.Address;
      arg2 : xcb_shm_query_version_cookie_t;
      arg3 : System.Address) return access xcb_shm_query_version_reply_t;  -- /usr/include/xcb/shm.h:329
   pragma Import (C, xcb_shm_query_version_reply, "xcb_shm_query_version_reply");

   function xcb_shm_attach_checked
     (arg1 : System.Address;
      arg2 : xcb_shm_seg_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/shm.h:358
   pragma Import (C, xcb_shm_attach_checked, "xcb_shm_attach_checked");

   function xcb_shm_attach
     (arg1 : System.Address;
      arg2 : xcb_shm_seg_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/shm.h:385
   pragma Import (C, xcb_shm_attach, "xcb_shm_attach");

   function xcb_shm_detach_checked (arg1 : System.Address; arg2 : xcb_shm_seg_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/shm.h:413
   pragma Import (C, xcb_shm_detach_checked, "xcb_shm_detach_checked");

   function xcb_shm_detach (arg1 : System.Address; arg2 : xcb_shm_seg_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/shm.h:436
   pragma Import (C, xcb_shm_detach, "xcb_shm_detach");

   function xcb_shm_put_image_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_drawable_t;
      arg3 : xcb_xproto_h.xcb_gcontext_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint16_t;
      arg7 : stdint_h.uint16_t;
      arg8 : stdint_h.uint16_t;
      arg9 : stdint_h.uint16_t;
      arg10 : sys_types_h.int16_t;
      arg11 : sys_types_h.int16_t;
      arg12 : stdint_h.uint8_t;
      arg13 : stdint_h.uint8_t;
      arg14 : stdint_h.uint8_t;
      arg15 : xcb_shm_seg_t;
      arg16 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/shm.h:476
   pragma Import (C, xcb_shm_put_image_checked, "xcb_shm_put_image_checked");

   function xcb_shm_put_image
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_drawable_t;
      arg3 : xcb_xproto_h.xcb_gcontext_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint16_t;
      arg7 : stdint_h.uint16_t;
      arg8 : stdint_h.uint16_t;
      arg9 : stdint_h.uint16_t;
      arg10 : sys_types_h.int16_t;
      arg11 : sys_types_h.int16_t;
      arg12 : stdint_h.uint8_t;
      arg13 : stdint_h.uint8_t;
      arg14 : stdint_h.uint8_t;
      arg15 : xcb_shm_seg_t;
      arg16 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/shm.h:527
   pragma Import (C, xcb_shm_put_image, "xcb_shm_put_image");

   function xcb_shm_get_image
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_drawable_t;
      arg3 : sys_types_h.int16_t;
      arg4 : sys_types_h.int16_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint16_t;
      arg7 : stdint_h.uint32_t;
      arg8 : stdint_h.uint8_t;
      arg9 : xcb_shm_seg_t;
      arg10 : stdint_h.uint32_t) return xcb_shm_get_image_cookie_t;  -- /usr/include/xcb/shm.h:572
   pragma Import (C, xcb_shm_get_image, "xcb_shm_get_image");

   function xcb_shm_get_image_unchecked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_drawable_t;
      arg3 : sys_types_h.int16_t;
      arg4 : sys_types_h.int16_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint16_t;
      arg7 : stdint_h.uint32_t;
      arg8 : stdint_h.uint8_t;
      arg9 : xcb_shm_seg_t;
      arg10 : stdint_h.uint32_t) return xcb_shm_get_image_cookie_t;  -- /usr/include/xcb/shm.h:614
   pragma Import (C, xcb_shm_get_image_unchecked, "xcb_shm_get_image_unchecked");

   function xcb_shm_get_image_reply
     (arg1 : System.Address;
      arg2 : xcb_shm_get_image_cookie_t;
      arg3 : System.Address) return access xcb_shm_get_image_reply_t;  -- /usr/include/xcb/shm.h:652
   pragma Import (C, xcb_shm_get_image_reply, "xcb_shm_get_image_reply");

   function xcb_shm_create_pixmap_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_pixmap_t;
      arg3 : xcb_xproto_h.xcb_drawable_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint8_t;
      arg7 : xcb_shm_seg_t;
      arg8 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/shm.h:685
   pragma Import (C, xcb_shm_create_pixmap_checked, "xcb_shm_create_pixmap_checked");

   function xcb_shm_create_pixmap
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_pixmap_t;
      arg3 : xcb_xproto_h.xcb_drawable_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint8_t;
      arg7 : xcb_shm_seg_t;
      arg8 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/shm.h:720
   pragma Import (C, xcb_shm_create_pixmap, "xcb_shm_create_pixmap");

end xcb_shm_h;
