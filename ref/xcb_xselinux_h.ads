with Interfaces.C; use Interfaces.C;
with xcb_xcb_h;
with stdint_h;
with xcb_xproto_h;
with System;
with Interfaces.C.Strings;

package xcb_xselinux_h is

   --  unsupported macro: XCB_SELINUX_MAJOR_VERSION 1
   --  unsupported macro: XCB_SELINUX_MINOR_VERSION 0
   --  unsupported macro: XCB_SELINUX_QUERY_VERSION 0
   --  unsupported macro: XCB_SELINUX_SET_DEVICE_CREATE_CONTEXT 1
   --  unsupported macro: XCB_SELINUX_GET_DEVICE_CREATE_CONTEXT 2
   --  unsupported macro: XCB_SELINUX_SET_DEVICE_CONTEXT 3
   --  unsupported macro: XCB_SELINUX_GET_DEVICE_CONTEXT 4
   --  unsupported macro: XCB_SELINUX_SET_WINDOW_CREATE_CONTEXT 5
   --  unsupported macro: XCB_SELINUX_GET_WINDOW_CREATE_CONTEXT 6
   --  unsupported macro: XCB_SELINUX_GET_WINDOW_CONTEXT 7
   --  unsupported macro: XCB_SELINUX_SET_PROPERTY_CREATE_CONTEXT 8
   --  unsupported macro: XCB_SELINUX_GET_PROPERTY_CREATE_CONTEXT 9
   --  unsupported macro: XCB_SELINUX_SET_PROPERTY_USE_CONTEXT 10
   --  unsupported macro: XCB_SELINUX_GET_PROPERTY_USE_CONTEXT 11
   --  unsupported macro: XCB_SELINUX_GET_PROPERTY_CONTEXT 12
   --  unsupported macro: XCB_SELINUX_GET_PROPERTY_DATA_CONTEXT 13
   --  unsupported macro: XCB_SELINUX_LIST_PROPERTIES 14
   --  unsupported macro: XCB_SELINUX_SET_SELECTION_CREATE_CONTEXT 15
   --  unsupported macro: XCB_SELINUX_GET_SELECTION_CREATE_CONTEXT 16
   --  unsupported macro: XCB_SELINUX_SET_SELECTION_USE_CONTEXT 17
   --  unsupported macro: XCB_SELINUX_GET_SELECTION_USE_CONTEXT 18
   --  unsupported macro: XCB_SELINUX_GET_SELECTION_CONTEXT 19
   --  unsupported macro: XCB_SELINUX_GET_SELECTION_DATA_CONTEXT 20
   --  unsupported macro: XCB_SELINUX_LIST_SELECTIONS 21
   --  unsupported macro: XCB_SELINUX_GET_CLIENT_CONTEXT 22
  -- * This file generated automatically from xselinux.xml by c_client.py.
  -- * Edit at your peril.
  --  

  --*
  -- * @defgroup XCB_SELinux_API XCB SELinux API
  -- * @brief SELinux XCB Protocol Implementation.
  -- * @{
  -- * 

   xcb_selinux_id : aliased xcb_xcb_h.xcb_extension_t;  -- /usr/include/xcb/xselinux.h:25
   pragma Import (C, xcb_selinux_id, "xcb_selinux_id");

  --*
  -- * @brief xcb_selinux_query_version_cookie_t
  -- * 

  --*<   
   type xcb_selinux_query_version_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xselinux.h:31
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_query_version_cookie_t);  -- /usr/include/xcb/xselinux.h:30

  --* Opcode for xcb_selinux_query_version.  
  --*
  -- * @brief xcb_selinux_query_version_request_t
  -- * 

  --*<   
   type xcb_selinux_query_version_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:41
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:42
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xselinux.h:43
      client_major : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:44
      client_minor : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:45
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_query_version_request_t);  -- /usr/include/xcb/xselinux.h:40

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_selinux_query_version_reply_t
  -- * 

  --*<   
   type xcb_selinux_query_version_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:52
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:53
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xselinux.h:54
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xselinux.h:55
      server_major : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xselinux.h:56
      server_minor : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xselinux.h:57
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_query_version_reply_t);  -- /usr/include/xcb/xselinux.h:51

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_selinux_set_device_create_context.  
  --*
  -- * @brief xcb_selinux_set_device_create_context_request_t
  -- * 

  --*<   
   type xcb_selinux_set_device_create_context_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:67
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:68
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xselinux.h:69
      context_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xselinux.h:70
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_set_device_create_context_request_t);  -- /usr/include/xcb/xselinux.h:66

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_selinux_get_device_create_context_cookie_t
  -- * 

  --*<   
   type xcb_selinux_get_device_create_context_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xselinux.h:77
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_get_device_create_context_cookie_t);  -- /usr/include/xcb/xselinux.h:76

  --* Opcode for xcb_selinux_get_device_create_context.  
  --*
  -- * @brief xcb_selinux_get_device_create_context_request_t
  -- * 

  --*<   
   type xcb_selinux_get_device_create_context_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:87
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:88
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xselinux.h:89
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_get_device_create_context_request_t);  -- /usr/include/xcb/xselinux.h:86

  --*<   
  --*<   
  --*
  -- * @brief xcb_selinux_get_device_create_context_reply_t
  -- * 

  --*<   
   type anon3967_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_selinux_get_device_create_context_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:96
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:97
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xselinux.h:98
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xselinux.h:99
      context_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xselinux.h:100
      pad1 : aliased anon3967_anon1939_array;  -- /usr/include/xcb/xselinux.h:101
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_get_device_create_context_reply_t);  -- /usr/include/xcb/xselinux.h:95

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_selinux_set_device_context.  
  --*
  -- * @brief xcb_selinux_set_device_context_request_t
  -- * 

  --*<   
   type xcb_selinux_set_device_context_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:111
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:112
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xselinux.h:113
      device : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xselinux.h:114
      context_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xselinux.h:115
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_set_device_context_request_t);  -- /usr/include/xcb/xselinux.h:110

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_selinux_get_device_context_cookie_t
  -- * 

  --*<   
   type xcb_selinux_get_device_context_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xselinux.h:122
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_get_device_context_cookie_t);  -- /usr/include/xcb/xselinux.h:121

  --* Opcode for xcb_selinux_get_device_context.  
  --*
  -- * @brief xcb_selinux_get_device_context_request_t
  -- * 

  --*<   
   type xcb_selinux_get_device_context_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:132
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:133
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xselinux.h:134
      device : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xselinux.h:135
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_get_device_context_request_t);  -- /usr/include/xcb/xselinux.h:131

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_selinux_get_device_context_reply_t
  -- * 

  --*<   
   type anon3977_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_selinux_get_device_context_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:142
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:143
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xselinux.h:144
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xselinux.h:145
      context_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xselinux.h:146
      pad1 : aliased anon3977_anon1939_array;  -- /usr/include/xcb/xselinux.h:147
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_get_device_context_reply_t);  -- /usr/include/xcb/xselinux.h:141

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_selinux_set_window_create_context.  
  --*
  -- * @brief xcb_selinux_set_window_create_context_request_t
  -- * 

  --*<   
   type xcb_selinux_set_window_create_context_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:157
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:158
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xselinux.h:159
      context_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xselinux.h:160
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_set_window_create_context_request_t);  -- /usr/include/xcb/xselinux.h:156

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_selinux_get_window_create_context_cookie_t
  -- * 

  --*<   
   type xcb_selinux_get_window_create_context_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xselinux.h:167
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_get_window_create_context_cookie_t);  -- /usr/include/xcb/xselinux.h:166

  --* Opcode for xcb_selinux_get_window_create_context.  
  --*
  -- * @brief xcb_selinux_get_window_create_context_request_t
  -- * 

  --*<   
   type xcb_selinux_get_window_create_context_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:177
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:178
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xselinux.h:179
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_get_window_create_context_request_t);  -- /usr/include/xcb/xselinux.h:176

  --*<   
  --*<   
  --*
  -- * @brief xcb_selinux_get_window_create_context_reply_t
  -- * 

  --*<   
   type anon3987_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_selinux_get_window_create_context_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:186
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:187
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xselinux.h:188
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xselinux.h:189
      context_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xselinux.h:190
      pad1 : aliased anon3987_anon1939_array;  -- /usr/include/xcb/xselinux.h:191
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_get_window_create_context_reply_t);  -- /usr/include/xcb/xselinux.h:185

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_selinux_get_window_context_cookie_t
  -- * 

  --*<   
   type xcb_selinux_get_window_context_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xselinux.h:198
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_get_window_context_cookie_t);  -- /usr/include/xcb/xselinux.h:197

  --* Opcode for xcb_selinux_get_window_context.  
  --*
  -- * @brief xcb_selinux_get_window_context_request_t
  -- * 

  --*<   
   type xcb_selinux_get_window_context_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:208
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:209
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xselinux.h:210
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xselinux.h:211
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_get_window_context_request_t);  -- /usr/include/xcb/xselinux.h:207

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_selinux_get_window_context_reply_t
  -- * 

  --*<   
   type anon3995_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_selinux_get_window_context_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:218
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:219
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xselinux.h:220
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xselinux.h:221
      context_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xselinux.h:222
      pad1 : aliased anon3995_anon1939_array;  -- /usr/include/xcb/xselinux.h:223
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_get_window_context_reply_t);  -- /usr/include/xcb/xselinux.h:217

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_selinux_list_item_t
  -- * 

  --*<   
   type xcb_selinux_list_item_t is record
      name : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xselinux.h:230
      object_context_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xselinux.h:231
      data_context_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xselinux.h:232
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_list_item_t);  -- /usr/include/xcb/xselinux.h:229

  --*<   
  --*<   
  --*
  -- * @brief xcb_selinux_list_item_iterator_t
  -- * 

  --*<   
   type xcb_selinux_list_item_iterator_t is record
      data : access xcb_selinux_list_item_t;  -- /usr/include/xcb/xselinux.h:239
      c_rem : aliased int;  -- /usr/include/xcb/xselinux.h:240
      index : aliased int;  -- /usr/include/xcb/xselinux.h:241
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_list_item_iterator_t);  -- /usr/include/xcb/xselinux.h:238

  --*<   
  --*<   
  --* Opcode for xcb_selinux_set_property_create_context.  
  --*
  -- * @brief xcb_selinux_set_property_create_context_request_t
  -- * 

  --*<   
   type xcb_selinux_set_property_create_context_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:251
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:252
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xselinux.h:253
      context_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xselinux.h:254
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_set_property_create_context_request_t);  -- /usr/include/xcb/xselinux.h:250

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_selinux_get_property_create_context_cookie_t
  -- * 

  --*<   
   type xcb_selinux_get_property_create_context_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xselinux.h:261
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_get_property_create_context_cookie_t);  -- /usr/include/xcb/xselinux.h:260

  --* Opcode for xcb_selinux_get_property_create_context.  
  --*
  -- * @brief xcb_selinux_get_property_create_context_request_t
  -- * 

  --*<   
   type xcb_selinux_get_property_create_context_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:271
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:272
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xselinux.h:273
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_get_property_create_context_request_t);  -- /usr/include/xcb/xselinux.h:270

  --*<   
  --*<   
  --*
  -- * @brief xcb_selinux_get_property_create_context_reply_t
  -- * 

  --*<   
   type anon4011_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_selinux_get_property_create_context_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:280
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:281
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xselinux.h:282
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xselinux.h:283
      context_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xselinux.h:284
      pad1 : aliased anon4011_anon1939_array;  -- /usr/include/xcb/xselinux.h:285
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_get_property_create_context_reply_t);  -- /usr/include/xcb/xselinux.h:279

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_selinux_set_property_use_context.  
  --*
  -- * @brief xcb_selinux_set_property_use_context_request_t
  -- * 

  --*<   
   type xcb_selinux_set_property_use_context_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:295
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:296
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xselinux.h:297
      context_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xselinux.h:298
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_set_property_use_context_request_t);  -- /usr/include/xcb/xselinux.h:294

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_selinux_get_property_use_context_cookie_t
  -- * 

  --*<   
   type xcb_selinux_get_property_use_context_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xselinux.h:305
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_get_property_use_context_cookie_t);  -- /usr/include/xcb/xselinux.h:304

  --* Opcode for xcb_selinux_get_property_use_context.  
  --*
  -- * @brief xcb_selinux_get_property_use_context_request_t
  -- * 

  --*<   
   type xcb_selinux_get_property_use_context_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:315
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:316
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xselinux.h:317
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_get_property_use_context_request_t);  -- /usr/include/xcb/xselinux.h:314

  --*<   
  --*<   
  --*
  -- * @brief xcb_selinux_get_property_use_context_reply_t
  -- * 

  --*<   
   type anon4021_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_selinux_get_property_use_context_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:324
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:325
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xselinux.h:326
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xselinux.h:327
      context_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xselinux.h:328
      pad1 : aliased anon4021_anon1939_array;  -- /usr/include/xcb/xselinux.h:329
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_get_property_use_context_reply_t);  -- /usr/include/xcb/xselinux.h:323

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_selinux_get_property_context_cookie_t
  -- * 

  --*<   
   type xcb_selinux_get_property_context_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xselinux.h:336
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_get_property_context_cookie_t);  -- /usr/include/xcb/xselinux.h:335

  --* Opcode for xcb_selinux_get_property_context.  
  --*
  -- * @brief xcb_selinux_get_property_context_request_t
  -- * 

  --*<   
   type xcb_selinux_get_property_context_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:346
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:347
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xselinux.h:348
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xselinux.h:349
      property : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xselinux.h:350
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_get_property_context_request_t);  -- /usr/include/xcb/xselinux.h:345

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_selinux_get_property_context_reply_t
  -- * 

  --*<   
   type anon4029_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_selinux_get_property_context_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:357
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:358
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xselinux.h:359
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xselinux.h:360
      context_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xselinux.h:361
      pad1 : aliased anon4029_anon1939_array;  -- /usr/include/xcb/xselinux.h:362
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_get_property_context_reply_t);  -- /usr/include/xcb/xselinux.h:356

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_selinux_get_property_data_context_cookie_t
  -- * 

  --*<   
   type xcb_selinux_get_property_data_context_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xselinux.h:369
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_get_property_data_context_cookie_t);  -- /usr/include/xcb/xselinux.h:368

  --* Opcode for xcb_selinux_get_property_data_context.  
  --*
  -- * @brief xcb_selinux_get_property_data_context_request_t
  -- * 

  --*<   
   type xcb_selinux_get_property_data_context_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:379
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:380
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xselinux.h:381
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xselinux.h:382
      property : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xselinux.h:383
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_get_property_data_context_request_t);  -- /usr/include/xcb/xselinux.h:378

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_selinux_get_property_data_context_reply_t
  -- * 

  --*<   
   type anon4037_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_selinux_get_property_data_context_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:390
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:391
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xselinux.h:392
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xselinux.h:393
      context_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xselinux.h:394
      pad1 : aliased anon4037_anon1939_array;  -- /usr/include/xcb/xselinux.h:395
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_get_property_data_context_reply_t);  -- /usr/include/xcb/xselinux.h:389

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_selinux_list_properties_cookie_t
  -- * 

  --*<   
   type xcb_selinux_list_properties_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xselinux.h:402
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_list_properties_cookie_t);  -- /usr/include/xcb/xselinux.h:401

  --* Opcode for xcb_selinux_list_properties.  
  --*
  -- * @brief xcb_selinux_list_properties_request_t
  -- * 

  --*<   
   type xcb_selinux_list_properties_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:412
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:413
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xselinux.h:414
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xselinux.h:415
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_list_properties_request_t);  -- /usr/include/xcb/xselinux.h:411

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_selinux_list_properties_reply_t
  -- * 

  --*<   
   type anon4045_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_selinux_list_properties_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:422
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:423
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xselinux.h:424
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xselinux.h:425
      properties_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xselinux.h:426
      pad1 : aliased anon4045_anon1939_array;  -- /usr/include/xcb/xselinux.h:427
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_list_properties_reply_t);  -- /usr/include/xcb/xselinux.h:421

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_selinux_set_selection_create_context.  
  --*
  -- * @brief xcb_selinux_set_selection_create_context_request_t
  -- * 

  --*<   
   type xcb_selinux_set_selection_create_context_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:437
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:438
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xselinux.h:439
      context_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xselinux.h:440
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_set_selection_create_context_request_t);  -- /usr/include/xcb/xselinux.h:436

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_selinux_get_selection_create_context_cookie_t
  -- * 

  --*<   
   type xcb_selinux_get_selection_create_context_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xselinux.h:447
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_get_selection_create_context_cookie_t);  -- /usr/include/xcb/xselinux.h:446

  --* Opcode for xcb_selinux_get_selection_create_context.  
  --*
  -- * @brief xcb_selinux_get_selection_create_context_request_t
  -- * 

  --*<   
   type xcb_selinux_get_selection_create_context_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:457
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:458
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xselinux.h:459
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_get_selection_create_context_request_t);  -- /usr/include/xcb/xselinux.h:456

  --*<   
  --*<   
  --*
  -- * @brief xcb_selinux_get_selection_create_context_reply_t
  -- * 

  --*<   
   type anon4055_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_selinux_get_selection_create_context_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:466
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:467
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xselinux.h:468
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xselinux.h:469
      context_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xselinux.h:470
      pad1 : aliased anon4055_anon1939_array;  -- /usr/include/xcb/xselinux.h:471
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_get_selection_create_context_reply_t);  -- /usr/include/xcb/xselinux.h:465

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_selinux_set_selection_use_context.  
  --*
  -- * @brief xcb_selinux_set_selection_use_context_request_t
  -- * 

  --*<   
   type xcb_selinux_set_selection_use_context_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:481
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:482
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xselinux.h:483
      context_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xselinux.h:484
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_set_selection_use_context_request_t);  -- /usr/include/xcb/xselinux.h:480

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_selinux_get_selection_use_context_cookie_t
  -- * 

  --*<   
   type xcb_selinux_get_selection_use_context_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xselinux.h:491
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_get_selection_use_context_cookie_t);  -- /usr/include/xcb/xselinux.h:490

  --* Opcode for xcb_selinux_get_selection_use_context.  
  --*
  -- * @brief xcb_selinux_get_selection_use_context_request_t
  -- * 

  --*<   
   type xcb_selinux_get_selection_use_context_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:501
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:502
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xselinux.h:503
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_get_selection_use_context_request_t);  -- /usr/include/xcb/xselinux.h:500

  --*<   
  --*<   
  --*
  -- * @brief xcb_selinux_get_selection_use_context_reply_t
  -- * 

  --*<   
   type anon4065_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_selinux_get_selection_use_context_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:510
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:511
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xselinux.h:512
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xselinux.h:513
      context_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xselinux.h:514
      pad1 : aliased anon4065_anon1939_array;  -- /usr/include/xcb/xselinux.h:515
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_get_selection_use_context_reply_t);  -- /usr/include/xcb/xselinux.h:509

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_selinux_get_selection_context_cookie_t
  -- * 

  --*<   
   type xcb_selinux_get_selection_context_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xselinux.h:522
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_get_selection_context_cookie_t);  -- /usr/include/xcb/xselinux.h:521

  --* Opcode for xcb_selinux_get_selection_context.  
  --*
  -- * @brief xcb_selinux_get_selection_context_request_t
  -- * 

  --*<   
   type xcb_selinux_get_selection_context_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:532
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:533
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xselinux.h:534
      selection : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xselinux.h:535
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_get_selection_context_request_t);  -- /usr/include/xcb/xselinux.h:531

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_selinux_get_selection_context_reply_t
  -- * 

  --*<   
   type anon4073_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_selinux_get_selection_context_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:542
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:543
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xselinux.h:544
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xselinux.h:545
      context_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xselinux.h:546
      pad1 : aliased anon4073_anon1939_array;  -- /usr/include/xcb/xselinux.h:547
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_get_selection_context_reply_t);  -- /usr/include/xcb/xselinux.h:541

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_selinux_get_selection_data_context_cookie_t
  -- * 

  --*<   
   type xcb_selinux_get_selection_data_context_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xselinux.h:554
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_get_selection_data_context_cookie_t);  -- /usr/include/xcb/xselinux.h:553

  --* Opcode for xcb_selinux_get_selection_data_context.  
  --*
  -- * @brief xcb_selinux_get_selection_data_context_request_t
  -- * 

  --*<   
   type xcb_selinux_get_selection_data_context_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:564
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:565
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xselinux.h:566
      selection : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xselinux.h:567
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_get_selection_data_context_request_t);  -- /usr/include/xcb/xselinux.h:563

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_selinux_get_selection_data_context_reply_t
  -- * 

  --*<   
   type anon4081_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_selinux_get_selection_data_context_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:574
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:575
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xselinux.h:576
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xselinux.h:577
      context_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xselinux.h:578
      pad1 : aliased anon4081_anon1939_array;  -- /usr/include/xcb/xselinux.h:579
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_get_selection_data_context_reply_t);  -- /usr/include/xcb/xselinux.h:573

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_selinux_list_selections_cookie_t
  -- * 

  --*<   
   type xcb_selinux_list_selections_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xselinux.h:586
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_list_selections_cookie_t);  -- /usr/include/xcb/xselinux.h:585

  --* Opcode for xcb_selinux_list_selections.  
  --*
  -- * @brief xcb_selinux_list_selections_request_t
  -- * 

  --*<   
   type xcb_selinux_list_selections_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:596
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:597
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xselinux.h:598
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_list_selections_request_t);  -- /usr/include/xcb/xselinux.h:595

  --*<   
  --*<   
  --*
  -- * @brief xcb_selinux_list_selections_reply_t
  -- * 

  --*<   
   type anon4089_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_selinux_list_selections_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:605
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:606
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xselinux.h:607
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xselinux.h:608
      selections_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xselinux.h:609
      pad1 : aliased anon4089_anon1939_array;  -- /usr/include/xcb/xselinux.h:610
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_list_selections_reply_t);  -- /usr/include/xcb/xselinux.h:604

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_selinux_get_client_context_cookie_t
  -- * 

  --*<   
   type xcb_selinux_get_client_context_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xselinux.h:617
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_get_client_context_cookie_t);  -- /usr/include/xcb/xselinux.h:616

  --* Opcode for xcb_selinux_get_client_context.  
  --*
  -- * @brief xcb_selinux_get_client_context_request_t
  -- * 

  --*<   
   type xcb_selinux_get_client_context_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:627
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:628
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xselinux.h:629
      resource : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xselinux.h:630
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_get_client_context_request_t);  -- /usr/include/xcb/xselinux.h:626

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_selinux_get_client_context_reply_t
  -- * 

  --*<   
   type anon4097_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_selinux_get_client_context_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:637
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xselinux.h:638
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xselinux.h:639
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xselinux.h:640
      context_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xselinux.h:641
      pad1 : aliased anon4097_anon1939_array;  -- /usr/include/xcb/xselinux.h:642
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selinux_get_client_context_reply_t);  -- /usr/include/xcb/xselinux.h:636

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
  -- ** xcb_selinux_query_version_cookie_t xcb_selinux_query_version
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           client_major
  -- ** @param uint8_t           client_minor
  -- ** @returns xcb_selinux_query_version_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_query_version
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint8_t) return xcb_selinux_query_version_cookie_t;  -- /usr/include/xcb/xselinux.h:666
   pragma Import (C, xcb_selinux_query_version, "xcb_selinux_query_version");

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
  -- ** xcb_selinux_query_version_cookie_t xcb_selinux_query_version_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           client_major
  -- ** @param uint8_t           client_minor
  -- ** @returns xcb_selinux_query_version_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_query_version_unchecked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint8_t) return xcb_selinux_query_version_cookie_t;  -- /usr/include/xcb/xselinux.h:694
   pragma Import (C, xcb_selinux_query_version_unchecked, "xcb_selinux_query_version_unchecked");

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
  -- * xcb_selinux_query_version_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_selinux_query_version_reply_t * xcb_selinux_query_version_reply
  -- ** 
  -- ** @param xcb_connection_t                    *c
  -- ** @param xcb_selinux_query_version_cookie_t   cookie
  -- ** @param xcb_generic_error_t                **e
  -- ** @returns xcb_selinux_query_version_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_query_version_reply
     (arg1 : System.Address;
      arg2 : xcb_selinux_query_version_cookie_t;
      arg3 : System.Address) return access xcb_selinux_query_version_reply_t;  -- /usr/include/xcb/xselinux.h:725
   pragma Import (C, xcb_selinux_query_version_reply, "xcb_selinux_query_version_reply");

  --*<  
  --*<  
  --*<  
   function xcb_selinux_set_device_create_context_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xselinux.h:730
   pragma Import (C, xcb_selinux_set_device_create_context_sizeof, "xcb_selinux_set_device_create_context_sizeof");

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
  -- ** xcb_void_cookie_t xcb_selinux_set_device_create_context_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          context_len
  -- ** @param const char       *context
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_set_device_create_context_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xselinux.h:756
   pragma Import (C, xcb_selinux_set_device_create_context_checked, "xcb_selinux_set_device_create_context_checked");

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
  -- ** xcb_void_cookie_t xcb_selinux_set_device_create_context
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          context_len
  -- ** @param const char       *context
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_set_device_create_context
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xselinux.h:781
   pragma Import (C, xcb_selinux_set_device_create_context, "xcb_selinux_set_device_create_context");

  --*<  
  --*<  
  --*<  
   function xcb_selinux_get_device_create_context_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xselinux.h:786
   pragma Import (C, xcb_selinux_get_device_create_context_sizeof, "xcb_selinux_get_device_create_context_sizeof");

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
  -- ** xcb_selinux_get_device_create_context_cookie_t xcb_selinux_get_device_create_context
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_selinux_get_device_create_context_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_device_create_context (arg1 : System.Address) return xcb_selinux_get_device_create_context_cookie_t;  -- /usr/include/xcb/xselinux.h:807
   pragma Import (C, xcb_selinux_get_device_create_context, "xcb_selinux_get_device_create_context");

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
  -- ** xcb_selinux_get_device_create_context_cookie_t xcb_selinux_get_device_create_context_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_selinux_get_device_create_context_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_device_create_context_unchecked (arg1 : System.Address) return xcb_selinux_get_device_create_context_cookie_t;  -- /usr/include/xcb/xselinux.h:831
   pragma Import (C, xcb_selinux_get_device_create_context_unchecked, "xcb_selinux_get_device_create_context_unchecked");

  --****************************************************************************
  -- **
  -- ** char * xcb_selinux_get_device_create_context_context
  -- ** 
  -- ** @param const xcb_selinux_get_device_create_context_reply_t *R
  -- ** @returns char *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_device_create_context_context (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/xselinux.h:844
   pragma Import (C, xcb_selinux_get_device_create_context_context, "xcb_selinux_get_device_create_context_context");

  --****************************************************************************
  -- **
  -- ** int xcb_selinux_get_device_create_context_context_length
  -- ** 
  -- ** @param const xcb_selinux_get_device_create_context_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_device_create_context_context_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xselinux.h:857
   pragma Import (C, xcb_selinux_get_device_create_context_context_length, "xcb_selinux_get_device_create_context_context_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_selinux_get_device_create_context_context_end
  -- ** 
  -- ** @param const xcb_selinux_get_device_create_context_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_device_create_context_context_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xselinux.h:870
   pragma Import (C, xcb_selinux_get_device_create_context_context_end, "xcb_selinux_get_device_create_context_context_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_selinux_get_device_create_context_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_selinux_get_device_create_context_reply_t * xcb_selinux_get_device_create_context_reply
  -- ** 
  -- ** @param xcb_connection_t                                *c
  -- ** @param xcb_selinux_get_device_create_context_cookie_t   cookie
  -- ** @param xcb_generic_error_t                            **e
  -- ** @returns xcb_selinux_get_device_create_context_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_device_create_context_reply
     (arg1 : System.Address;
      arg2 : xcb_selinux_get_device_create_context_cookie_t;
      arg3 : System.Address) return access xcb_selinux_get_device_create_context_reply_t;  -- /usr/include/xcb/xselinux.h:899
   pragma Import (C, xcb_selinux_get_device_create_context_reply, "xcb_selinux_get_device_create_context_reply");

  --*<  
  --*<  
  --*<  
   function xcb_selinux_set_device_context_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xselinux.h:904
   pragma Import (C, xcb_selinux_set_device_context_sizeof, "xcb_selinux_set_device_context_sizeof");

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
  -- ** xcb_void_cookie_t xcb_selinux_set_device_context_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          device
  -- ** @param uint32_t          context_len
  -- ** @param const char       *context
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_set_device_context_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : stdint_h.uint32_t;
      arg4 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xselinux.h:931
   pragma Import (C, xcb_selinux_set_device_context_checked, "xcb_selinux_set_device_context_checked");

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
  -- ** xcb_void_cookie_t xcb_selinux_set_device_context
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          device
  -- ** @param uint32_t          context_len
  -- ** @param const char       *context
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_set_device_context
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : stdint_h.uint32_t;
      arg4 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xselinux.h:958
   pragma Import (C, xcb_selinux_set_device_context, "xcb_selinux_set_device_context");

  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_selinux_get_device_context_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xselinux.h:964
   pragma Import (C, xcb_selinux_get_device_context_sizeof, "xcb_selinux_get_device_context_sizeof");

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
  -- ** xcb_selinux_get_device_context_cookie_t xcb_selinux_get_device_context
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          device
  -- ** @returns xcb_selinux_get_device_context_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_device_context (arg1 : System.Address; arg2 : stdint_h.uint32_t) return xcb_selinux_get_device_context_cookie_t;  -- /usr/include/xcb/xselinux.h:986
   pragma Import (C, xcb_selinux_get_device_context, "xcb_selinux_get_device_context");

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
  -- ** xcb_selinux_get_device_context_cookie_t xcb_selinux_get_device_context_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          device
  -- ** @returns xcb_selinux_get_device_context_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_device_context_unchecked (arg1 : System.Address; arg2 : stdint_h.uint32_t) return xcb_selinux_get_device_context_cookie_t;  -- /usr/include/xcb/xselinux.h:1012
   pragma Import (C, xcb_selinux_get_device_context_unchecked, "xcb_selinux_get_device_context_unchecked");

  --*<  
  --****************************************************************************
  -- **
  -- ** char * xcb_selinux_get_device_context_context
  -- ** 
  -- ** @param const xcb_selinux_get_device_context_reply_t *R
  -- ** @returns char *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_device_context_context (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/xselinux.h:1026
   pragma Import (C, xcb_selinux_get_device_context_context, "xcb_selinux_get_device_context_context");

  --****************************************************************************
  -- **
  -- ** int xcb_selinux_get_device_context_context_length
  -- ** 
  -- ** @param const xcb_selinux_get_device_context_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_device_context_context_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xselinux.h:1039
   pragma Import (C, xcb_selinux_get_device_context_context_length, "xcb_selinux_get_device_context_context_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_selinux_get_device_context_context_end
  -- ** 
  -- ** @param const xcb_selinux_get_device_context_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_device_context_context_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xselinux.h:1052
   pragma Import (C, xcb_selinux_get_device_context_context_end, "xcb_selinux_get_device_context_context_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_selinux_get_device_context_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_selinux_get_device_context_reply_t * xcb_selinux_get_device_context_reply
  -- ** 
  -- ** @param xcb_connection_t                         *c
  -- ** @param xcb_selinux_get_device_context_cookie_t   cookie
  -- ** @param xcb_generic_error_t                     **e
  -- ** @returns xcb_selinux_get_device_context_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_device_context_reply
     (arg1 : System.Address;
      arg2 : xcb_selinux_get_device_context_cookie_t;
      arg3 : System.Address) return access xcb_selinux_get_device_context_reply_t;  -- /usr/include/xcb/xselinux.h:1081
   pragma Import (C, xcb_selinux_get_device_context_reply, "xcb_selinux_get_device_context_reply");

  --*<  
  --*<  
  --*<  
   function xcb_selinux_set_window_create_context_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xselinux.h:1086
   pragma Import (C, xcb_selinux_set_window_create_context_sizeof, "xcb_selinux_set_window_create_context_sizeof");

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
  -- ** xcb_void_cookie_t xcb_selinux_set_window_create_context_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          context_len
  -- ** @param const char       *context
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_set_window_create_context_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xselinux.h:1112
   pragma Import (C, xcb_selinux_set_window_create_context_checked, "xcb_selinux_set_window_create_context_checked");

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
  -- ** xcb_void_cookie_t xcb_selinux_set_window_create_context
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          context_len
  -- ** @param const char       *context
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_set_window_create_context
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xselinux.h:1137
   pragma Import (C, xcb_selinux_set_window_create_context, "xcb_selinux_set_window_create_context");

  --*<  
  --*<  
  --*<  
   function xcb_selinux_get_window_create_context_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xselinux.h:1142
   pragma Import (C, xcb_selinux_get_window_create_context_sizeof, "xcb_selinux_get_window_create_context_sizeof");

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
  -- ** xcb_selinux_get_window_create_context_cookie_t xcb_selinux_get_window_create_context
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_selinux_get_window_create_context_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_window_create_context (arg1 : System.Address) return xcb_selinux_get_window_create_context_cookie_t;  -- /usr/include/xcb/xselinux.h:1163
   pragma Import (C, xcb_selinux_get_window_create_context, "xcb_selinux_get_window_create_context");

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
  -- ** xcb_selinux_get_window_create_context_cookie_t xcb_selinux_get_window_create_context_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_selinux_get_window_create_context_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_window_create_context_unchecked (arg1 : System.Address) return xcb_selinux_get_window_create_context_cookie_t;  -- /usr/include/xcb/xselinux.h:1187
   pragma Import (C, xcb_selinux_get_window_create_context_unchecked, "xcb_selinux_get_window_create_context_unchecked");

  --****************************************************************************
  -- **
  -- ** char * xcb_selinux_get_window_create_context_context
  -- ** 
  -- ** @param const xcb_selinux_get_window_create_context_reply_t *R
  -- ** @returns char *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_window_create_context_context (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/xselinux.h:1200
   pragma Import (C, xcb_selinux_get_window_create_context_context, "xcb_selinux_get_window_create_context_context");

  --****************************************************************************
  -- **
  -- ** int xcb_selinux_get_window_create_context_context_length
  -- ** 
  -- ** @param const xcb_selinux_get_window_create_context_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_window_create_context_context_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xselinux.h:1213
   pragma Import (C, xcb_selinux_get_window_create_context_context_length, "xcb_selinux_get_window_create_context_context_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_selinux_get_window_create_context_context_end
  -- ** 
  -- ** @param const xcb_selinux_get_window_create_context_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_window_create_context_context_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xselinux.h:1226
   pragma Import (C, xcb_selinux_get_window_create_context_context_end, "xcb_selinux_get_window_create_context_context_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_selinux_get_window_create_context_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_selinux_get_window_create_context_reply_t * xcb_selinux_get_window_create_context_reply
  -- ** 
  -- ** @param xcb_connection_t                                *c
  -- ** @param xcb_selinux_get_window_create_context_cookie_t   cookie
  -- ** @param xcb_generic_error_t                            **e
  -- ** @returns xcb_selinux_get_window_create_context_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_window_create_context_reply
     (arg1 : System.Address;
      arg2 : xcb_selinux_get_window_create_context_cookie_t;
      arg3 : System.Address) return access xcb_selinux_get_window_create_context_reply_t;  -- /usr/include/xcb/xselinux.h:1255
   pragma Import (C, xcb_selinux_get_window_create_context_reply, "xcb_selinux_get_window_create_context_reply");

  --*<  
  --*<  
  --*<  
   function xcb_selinux_get_window_context_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xselinux.h:1260
   pragma Import (C, xcb_selinux_get_window_context_sizeof, "xcb_selinux_get_window_context_sizeof");

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
  -- ** xcb_selinux_get_window_context_cookie_t xcb_selinux_get_window_context
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_selinux_get_window_context_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_window_context (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_selinux_get_window_context_cookie_t;  -- /usr/include/xcb/xselinux.h:1282
   pragma Import (C, xcb_selinux_get_window_context, "xcb_selinux_get_window_context");

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
  -- ** xcb_selinux_get_window_context_cookie_t xcb_selinux_get_window_context_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_selinux_get_window_context_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_window_context_unchecked (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_selinux_get_window_context_cookie_t;  -- /usr/include/xcb/xselinux.h:1308
   pragma Import (C, xcb_selinux_get_window_context_unchecked, "xcb_selinux_get_window_context_unchecked");

  --*<  
  --****************************************************************************
  -- **
  -- ** char * xcb_selinux_get_window_context_context
  -- ** 
  -- ** @param const xcb_selinux_get_window_context_reply_t *R
  -- ** @returns char *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_window_context_context (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/xselinux.h:1322
   pragma Import (C, xcb_selinux_get_window_context_context, "xcb_selinux_get_window_context_context");

  --****************************************************************************
  -- **
  -- ** int xcb_selinux_get_window_context_context_length
  -- ** 
  -- ** @param const xcb_selinux_get_window_context_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_window_context_context_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xselinux.h:1335
   pragma Import (C, xcb_selinux_get_window_context_context_length, "xcb_selinux_get_window_context_context_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_selinux_get_window_context_context_end
  -- ** 
  -- ** @param const xcb_selinux_get_window_context_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_window_context_context_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xselinux.h:1348
   pragma Import (C, xcb_selinux_get_window_context_context_end, "xcb_selinux_get_window_context_context_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_selinux_get_window_context_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_selinux_get_window_context_reply_t * xcb_selinux_get_window_context_reply
  -- ** 
  -- ** @param xcb_connection_t                         *c
  -- ** @param xcb_selinux_get_window_context_cookie_t   cookie
  -- ** @param xcb_generic_error_t                     **e
  -- ** @returns xcb_selinux_get_window_context_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_window_context_reply
     (arg1 : System.Address;
      arg2 : xcb_selinux_get_window_context_cookie_t;
      arg3 : System.Address) return access xcb_selinux_get_window_context_reply_t;  -- /usr/include/xcb/xselinux.h:1377
   pragma Import (C, xcb_selinux_get_window_context_reply, "xcb_selinux_get_window_context_reply");

  --*<  
  --*<  
  --*<  
   function xcb_selinux_list_item_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xselinux.h:1382
   pragma Import (C, xcb_selinux_list_item_sizeof, "xcb_selinux_list_item_sizeof");

  --****************************************************************************
  -- **
  -- ** char * xcb_selinux_list_item_object_context
  -- ** 
  -- ** @param const xcb_selinux_list_item_t *R
  -- ** @returns char *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_list_item_object_context (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/xselinux.h:1395
   pragma Import (C, xcb_selinux_list_item_object_context, "xcb_selinux_list_item_object_context");

  --****************************************************************************
  -- **
  -- ** int xcb_selinux_list_item_object_context_length
  -- ** 
  -- ** @param const xcb_selinux_list_item_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_list_item_object_context_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xselinux.h:1408
   pragma Import (C, xcb_selinux_list_item_object_context_length, "xcb_selinux_list_item_object_context_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_selinux_list_item_object_context_end
  -- ** 
  -- ** @param const xcb_selinux_list_item_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_list_item_object_context_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xselinux.h:1421
   pragma Import (C, xcb_selinux_list_item_object_context_end, "xcb_selinux_list_item_object_context_end");

  --****************************************************************************
  -- **
  -- ** char * xcb_selinux_list_item_data_context
  -- ** 
  -- ** @param const xcb_selinux_list_item_t *R
  -- ** @returns char *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_list_item_data_context (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/xselinux.h:1434
   pragma Import (C, xcb_selinux_list_item_data_context, "xcb_selinux_list_item_data_context");

  --****************************************************************************
  -- **
  -- ** int xcb_selinux_list_item_data_context_length
  -- ** 
  -- ** @param const xcb_selinux_list_item_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_list_item_data_context_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xselinux.h:1447
   pragma Import (C, xcb_selinux_list_item_data_context_length, "xcb_selinux_list_item_data_context_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_selinux_list_item_data_context_end
  -- ** 
  -- ** @param const xcb_selinux_list_item_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_list_item_data_context_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xselinux.h:1460
   pragma Import (C, xcb_selinux_list_item_data_context_end, "xcb_selinux_list_item_data_context_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_selinux_list_item_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_selinux_list_item_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_selinux_list_item_next
  -- ** 
  -- ** @param xcb_selinux_list_item_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_selinux_list_item_next (arg1 : access xcb_selinux_list_item_iterator_t);  -- /usr/include/xcb/xselinux.h:1481
   pragma Import (C, xcb_selinux_list_item_next, "xcb_selinux_list_item_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_selinux_list_item_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_selinux_list_item_end
  -- ** 
  -- ** @param xcb_selinux_list_item_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_list_item_end (arg1 : xcb_selinux_list_item_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xselinux.h:1503
   pragma Import (C, xcb_selinux_list_item_end, "xcb_selinux_list_item_end");

  --*<  
   function xcb_selinux_set_property_create_context_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xselinux.h:1506
   pragma Import (C, xcb_selinux_set_property_create_context_sizeof, "xcb_selinux_set_property_create_context_sizeof");

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
  -- ** xcb_void_cookie_t xcb_selinux_set_property_create_context_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          context_len
  -- ** @param const char       *context
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_set_property_create_context_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xselinux.h:1532
   pragma Import (C, xcb_selinux_set_property_create_context_checked, "xcb_selinux_set_property_create_context_checked");

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
  -- ** xcb_void_cookie_t xcb_selinux_set_property_create_context
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          context_len
  -- ** @param const char       *context
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_set_property_create_context
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xselinux.h:1557
   pragma Import (C, xcb_selinux_set_property_create_context, "xcb_selinux_set_property_create_context");

  --*<  
  --*<  
  --*<  
   function xcb_selinux_get_property_create_context_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xselinux.h:1562
   pragma Import (C, xcb_selinux_get_property_create_context_sizeof, "xcb_selinux_get_property_create_context_sizeof");

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
  -- ** xcb_selinux_get_property_create_context_cookie_t xcb_selinux_get_property_create_context
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_selinux_get_property_create_context_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_property_create_context (arg1 : System.Address) return xcb_selinux_get_property_create_context_cookie_t;  -- /usr/include/xcb/xselinux.h:1583
   pragma Import (C, xcb_selinux_get_property_create_context, "xcb_selinux_get_property_create_context");

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
  -- ** xcb_selinux_get_property_create_context_cookie_t xcb_selinux_get_property_create_context_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_selinux_get_property_create_context_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_property_create_context_unchecked (arg1 : System.Address) return xcb_selinux_get_property_create_context_cookie_t;  -- /usr/include/xcb/xselinux.h:1607
   pragma Import (C, xcb_selinux_get_property_create_context_unchecked, "xcb_selinux_get_property_create_context_unchecked");

  --****************************************************************************
  -- **
  -- ** char * xcb_selinux_get_property_create_context_context
  -- ** 
  -- ** @param const xcb_selinux_get_property_create_context_reply_t *R
  -- ** @returns char *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_property_create_context_context (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/xselinux.h:1620
   pragma Import (C, xcb_selinux_get_property_create_context_context, "xcb_selinux_get_property_create_context_context");

  --****************************************************************************
  -- **
  -- ** int xcb_selinux_get_property_create_context_context_length
  -- ** 
  -- ** @param const xcb_selinux_get_property_create_context_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_property_create_context_context_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xselinux.h:1633
   pragma Import (C, xcb_selinux_get_property_create_context_context_length, "xcb_selinux_get_property_create_context_context_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_selinux_get_property_create_context_context_end
  -- ** 
  -- ** @param const xcb_selinux_get_property_create_context_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_property_create_context_context_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xselinux.h:1646
   pragma Import (C, xcb_selinux_get_property_create_context_context_end, "xcb_selinux_get_property_create_context_context_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_selinux_get_property_create_context_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_selinux_get_property_create_context_reply_t * xcb_selinux_get_property_create_context_reply
  -- ** 
  -- ** @param xcb_connection_t                                  *c
  -- ** @param xcb_selinux_get_property_create_context_cookie_t   cookie
  -- ** @param xcb_generic_error_t                              **e
  -- ** @returns xcb_selinux_get_property_create_context_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_property_create_context_reply
     (arg1 : System.Address;
      arg2 : xcb_selinux_get_property_create_context_cookie_t;
      arg3 : System.Address) return access xcb_selinux_get_property_create_context_reply_t;  -- /usr/include/xcb/xselinux.h:1675
   pragma Import (C, xcb_selinux_get_property_create_context_reply, "xcb_selinux_get_property_create_context_reply");

  --*<  
  --*<  
  --*<  
   function xcb_selinux_set_property_use_context_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xselinux.h:1680
   pragma Import (C, xcb_selinux_set_property_use_context_sizeof, "xcb_selinux_set_property_use_context_sizeof");

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
  -- ** xcb_void_cookie_t xcb_selinux_set_property_use_context_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          context_len
  -- ** @param const char       *context
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_set_property_use_context_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xselinux.h:1706
   pragma Import (C, xcb_selinux_set_property_use_context_checked, "xcb_selinux_set_property_use_context_checked");

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
  -- ** xcb_void_cookie_t xcb_selinux_set_property_use_context
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          context_len
  -- ** @param const char       *context
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_set_property_use_context
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xselinux.h:1731
   pragma Import (C, xcb_selinux_set_property_use_context, "xcb_selinux_set_property_use_context");

  --*<  
  --*<  
  --*<  
   function xcb_selinux_get_property_use_context_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xselinux.h:1736
   pragma Import (C, xcb_selinux_get_property_use_context_sizeof, "xcb_selinux_get_property_use_context_sizeof");

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
  -- ** xcb_selinux_get_property_use_context_cookie_t xcb_selinux_get_property_use_context
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_selinux_get_property_use_context_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_property_use_context (arg1 : System.Address) return xcb_selinux_get_property_use_context_cookie_t;  -- /usr/include/xcb/xselinux.h:1757
   pragma Import (C, xcb_selinux_get_property_use_context, "xcb_selinux_get_property_use_context");

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
  -- ** xcb_selinux_get_property_use_context_cookie_t xcb_selinux_get_property_use_context_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_selinux_get_property_use_context_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_property_use_context_unchecked (arg1 : System.Address) return xcb_selinux_get_property_use_context_cookie_t;  -- /usr/include/xcb/xselinux.h:1781
   pragma Import (C, xcb_selinux_get_property_use_context_unchecked, "xcb_selinux_get_property_use_context_unchecked");

  --****************************************************************************
  -- **
  -- ** char * xcb_selinux_get_property_use_context_context
  -- ** 
  -- ** @param const xcb_selinux_get_property_use_context_reply_t *R
  -- ** @returns char *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_property_use_context_context (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/xselinux.h:1794
   pragma Import (C, xcb_selinux_get_property_use_context_context, "xcb_selinux_get_property_use_context_context");

  --****************************************************************************
  -- **
  -- ** int xcb_selinux_get_property_use_context_context_length
  -- ** 
  -- ** @param const xcb_selinux_get_property_use_context_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_property_use_context_context_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xselinux.h:1807
   pragma Import (C, xcb_selinux_get_property_use_context_context_length, "xcb_selinux_get_property_use_context_context_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_selinux_get_property_use_context_context_end
  -- ** 
  -- ** @param const xcb_selinux_get_property_use_context_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_property_use_context_context_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xselinux.h:1820
   pragma Import (C, xcb_selinux_get_property_use_context_context_end, "xcb_selinux_get_property_use_context_context_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_selinux_get_property_use_context_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_selinux_get_property_use_context_reply_t * xcb_selinux_get_property_use_context_reply
  -- ** 
  -- ** @param xcb_connection_t                               *c
  -- ** @param xcb_selinux_get_property_use_context_cookie_t   cookie
  -- ** @param xcb_generic_error_t                           **e
  -- ** @returns xcb_selinux_get_property_use_context_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_property_use_context_reply
     (arg1 : System.Address;
      arg2 : xcb_selinux_get_property_use_context_cookie_t;
      arg3 : System.Address) return access xcb_selinux_get_property_use_context_reply_t;  -- /usr/include/xcb/xselinux.h:1849
   pragma Import (C, xcb_selinux_get_property_use_context_reply, "xcb_selinux_get_property_use_context_reply");

  --*<  
  --*<  
  --*<  
   function xcb_selinux_get_property_context_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xselinux.h:1854
   pragma Import (C, xcb_selinux_get_property_context_sizeof, "xcb_selinux_get_property_context_sizeof");

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
  -- ** xcb_selinux_get_property_context_cookie_t xcb_selinux_get_property_context
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @param xcb_atom_t        property
  -- ** @returns xcb_selinux_get_property_context_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_property_context
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_xproto_h.xcb_atom_t) return xcb_selinux_get_property_context_cookie_t;  -- /usr/include/xcb/xselinux.h:1877
   pragma Import (C, xcb_selinux_get_property_context, "xcb_selinux_get_property_context");

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
  -- ** xcb_selinux_get_property_context_cookie_t xcb_selinux_get_property_context_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @param xcb_atom_t        property
  -- ** @returns xcb_selinux_get_property_context_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_property_context_unchecked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_xproto_h.xcb_atom_t) return xcb_selinux_get_property_context_cookie_t;  -- /usr/include/xcb/xselinux.h:1905
   pragma Import (C, xcb_selinux_get_property_context_unchecked, "xcb_selinux_get_property_context_unchecked");

  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** char * xcb_selinux_get_property_context_context
  -- ** 
  -- ** @param const xcb_selinux_get_property_context_reply_t *R
  -- ** @returns char *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_property_context_context (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/xselinux.h:1920
   pragma Import (C, xcb_selinux_get_property_context_context, "xcb_selinux_get_property_context_context");

  --****************************************************************************
  -- **
  -- ** int xcb_selinux_get_property_context_context_length
  -- ** 
  -- ** @param const xcb_selinux_get_property_context_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_property_context_context_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xselinux.h:1933
   pragma Import (C, xcb_selinux_get_property_context_context_length, "xcb_selinux_get_property_context_context_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_selinux_get_property_context_context_end
  -- ** 
  -- ** @param const xcb_selinux_get_property_context_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_property_context_context_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xselinux.h:1946
   pragma Import (C, xcb_selinux_get_property_context_context_end, "xcb_selinux_get_property_context_context_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_selinux_get_property_context_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_selinux_get_property_context_reply_t * xcb_selinux_get_property_context_reply
  -- ** 
  -- ** @param xcb_connection_t                           *c
  -- ** @param xcb_selinux_get_property_context_cookie_t   cookie
  -- ** @param xcb_generic_error_t                       **e
  -- ** @returns xcb_selinux_get_property_context_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_property_context_reply
     (arg1 : System.Address;
      arg2 : xcb_selinux_get_property_context_cookie_t;
      arg3 : System.Address) return access xcb_selinux_get_property_context_reply_t;  -- /usr/include/xcb/xselinux.h:1975
   pragma Import (C, xcb_selinux_get_property_context_reply, "xcb_selinux_get_property_context_reply");

  --*<  
  --*<  
  --*<  
   function xcb_selinux_get_property_data_context_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xselinux.h:1980
   pragma Import (C, xcb_selinux_get_property_data_context_sizeof, "xcb_selinux_get_property_data_context_sizeof");

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
  -- ** xcb_selinux_get_property_data_context_cookie_t xcb_selinux_get_property_data_context
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @param xcb_atom_t        property
  -- ** @returns xcb_selinux_get_property_data_context_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_property_data_context
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_xproto_h.xcb_atom_t) return xcb_selinux_get_property_data_context_cookie_t;  -- /usr/include/xcb/xselinux.h:2003
   pragma Import (C, xcb_selinux_get_property_data_context, "xcb_selinux_get_property_data_context");

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
  -- ** xcb_selinux_get_property_data_context_cookie_t xcb_selinux_get_property_data_context_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @param xcb_atom_t        property
  -- ** @returns xcb_selinux_get_property_data_context_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_property_data_context_unchecked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_xproto_h.xcb_atom_t) return xcb_selinux_get_property_data_context_cookie_t;  -- /usr/include/xcb/xselinux.h:2031
   pragma Import (C, xcb_selinux_get_property_data_context_unchecked, "xcb_selinux_get_property_data_context_unchecked");

  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** char * xcb_selinux_get_property_data_context_context
  -- ** 
  -- ** @param const xcb_selinux_get_property_data_context_reply_t *R
  -- ** @returns char *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_property_data_context_context (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/xselinux.h:2046
   pragma Import (C, xcb_selinux_get_property_data_context_context, "xcb_selinux_get_property_data_context_context");

  --****************************************************************************
  -- **
  -- ** int xcb_selinux_get_property_data_context_context_length
  -- ** 
  -- ** @param const xcb_selinux_get_property_data_context_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_property_data_context_context_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xselinux.h:2059
   pragma Import (C, xcb_selinux_get_property_data_context_context_length, "xcb_selinux_get_property_data_context_context_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_selinux_get_property_data_context_context_end
  -- ** 
  -- ** @param const xcb_selinux_get_property_data_context_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_property_data_context_context_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xselinux.h:2072
   pragma Import (C, xcb_selinux_get_property_data_context_context_end, "xcb_selinux_get_property_data_context_context_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_selinux_get_property_data_context_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_selinux_get_property_data_context_reply_t * xcb_selinux_get_property_data_context_reply
  -- ** 
  -- ** @param xcb_connection_t                                *c
  -- ** @param xcb_selinux_get_property_data_context_cookie_t   cookie
  -- ** @param xcb_generic_error_t                            **e
  -- ** @returns xcb_selinux_get_property_data_context_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_property_data_context_reply
     (arg1 : System.Address;
      arg2 : xcb_selinux_get_property_data_context_cookie_t;
      arg3 : System.Address) return access xcb_selinux_get_property_data_context_reply_t;  -- /usr/include/xcb/xselinux.h:2101
   pragma Import (C, xcb_selinux_get_property_data_context_reply, "xcb_selinux_get_property_data_context_reply");

  --*<  
  --*<  
  --*<  
   function xcb_selinux_list_properties_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xselinux.h:2106
   pragma Import (C, xcb_selinux_list_properties_sizeof, "xcb_selinux_list_properties_sizeof");

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
  -- ** xcb_selinux_list_properties_cookie_t xcb_selinux_list_properties
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_selinux_list_properties_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_list_properties (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_selinux_list_properties_cookie_t;  -- /usr/include/xcb/xselinux.h:2128
   pragma Import (C, xcb_selinux_list_properties, "xcb_selinux_list_properties");

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
  -- ** xcb_selinux_list_properties_cookie_t xcb_selinux_list_properties_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_selinux_list_properties_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_list_properties_unchecked (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_selinux_list_properties_cookie_t;  -- /usr/include/xcb/xselinux.h:2154
   pragma Import (C, xcb_selinux_list_properties_unchecked, "xcb_selinux_list_properties_unchecked");

  --*<  
  --****************************************************************************
  -- **
  -- ** int xcb_selinux_list_properties_properties_length
  -- ** 
  -- ** @param const xcb_selinux_list_properties_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_list_properties_properties_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xselinux.h:2168
   pragma Import (C, xcb_selinux_list_properties_properties_length, "xcb_selinux_list_properties_properties_length");

  --****************************************************************************
  -- **
  -- ** xcb_selinux_list_item_iterator_t xcb_selinux_list_properties_properties_iterator
  -- ** 
  -- ** @param const xcb_selinux_list_properties_reply_t *R
  -- ** @returns xcb_selinux_list_item_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_list_properties_properties_iterator (arg1 : System.Address) return xcb_selinux_list_item_iterator_t;  -- /usr/include/xcb/xselinux.h:2181
   pragma Import (C, xcb_selinux_list_properties_properties_iterator, "xcb_selinux_list_properties_properties_iterator");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_selinux_list_properties_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_selinux_list_properties_reply_t * xcb_selinux_list_properties_reply
  -- ** 
  -- ** @param xcb_connection_t                      *c
  -- ** @param xcb_selinux_list_properties_cookie_t   cookie
  -- ** @param xcb_generic_error_t                  **e
  -- ** @returns xcb_selinux_list_properties_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_list_properties_reply
     (arg1 : System.Address;
      arg2 : xcb_selinux_list_properties_cookie_t;
      arg3 : System.Address) return access xcb_selinux_list_properties_reply_t;  -- /usr/include/xcb/xselinux.h:2210
   pragma Import (C, xcb_selinux_list_properties_reply, "xcb_selinux_list_properties_reply");

  --*<  
  --*<  
  --*<  
   function xcb_selinux_set_selection_create_context_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xselinux.h:2215
   pragma Import (C, xcb_selinux_set_selection_create_context_sizeof, "xcb_selinux_set_selection_create_context_sizeof");

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
  -- ** xcb_void_cookie_t xcb_selinux_set_selection_create_context_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          context_len
  -- ** @param const char       *context
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_set_selection_create_context_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xselinux.h:2241
   pragma Import (C, xcb_selinux_set_selection_create_context_checked, "xcb_selinux_set_selection_create_context_checked");

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
  -- ** xcb_void_cookie_t xcb_selinux_set_selection_create_context
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          context_len
  -- ** @param const char       *context
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_set_selection_create_context
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xselinux.h:2266
   pragma Import (C, xcb_selinux_set_selection_create_context, "xcb_selinux_set_selection_create_context");

  --*<  
  --*<  
  --*<  
   function xcb_selinux_get_selection_create_context_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xselinux.h:2271
   pragma Import (C, xcb_selinux_get_selection_create_context_sizeof, "xcb_selinux_get_selection_create_context_sizeof");

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
  -- ** xcb_selinux_get_selection_create_context_cookie_t xcb_selinux_get_selection_create_context
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_selinux_get_selection_create_context_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_selection_create_context (arg1 : System.Address) return xcb_selinux_get_selection_create_context_cookie_t;  -- /usr/include/xcb/xselinux.h:2292
   pragma Import (C, xcb_selinux_get_selection_create_context, "xcb_selinux_get_selection_create_context");

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
  -- ** xcb_selinux_get_selection_create_context_cookie_t xcb_selinux_get_selection_create_context_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_selinux_get_selection_create_context_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_selection_create_context_unchecked (arg1 : System.Address) return xcb_selinux_get_selection_create_context_cookie_t;  -- /usr/include/xcb/xselinux.h:2316
   pragma Import (C, xcb_selinux_get_selection_create_context_unchecked, "xcb_selinux_get_selection_create_context_unchecked");

  --****************************************************************************
  -- **
  -- ** char * xcb_selinux_get_selection_create_context_context
  -- ** 
  -- ** @param const xcb_selinux_get_selection_create_context_reply_t *R
  -- ** @returns char *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_selection_create_context_context (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/xselinux.h:2329
   pragma Import (C, xcb_selinux_get_selection_create_context_context, "xcb_selinux_get_selection_create_context_context");

  --****************************************************************************
  -- **
  -- ** int xcb_selinux_get_selection_create_context_context_length
  -- ** 
  -- ** @param const xcb_selinux_get_selection_create_context_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_selection_create_context_context_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xselinux.h:2342
   pragma Import (C, xcb_selinux_get_selection_create_context_context_length, "xcb_selinux_get_selection_create_context_context_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_selinux_get_selection_create_context_context_end
  -- ** 
  -- ** @param const xcb_selinux_get_selection_create_context_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_selection_create_context_context_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xselinux.h:2355
   pragma Import (C, xcb_selinux_get_selection_create_context_context_end, "xcb_selinux_get_selection_create_context_context_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_selinux_get_selection_create_context_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_selinux_get_selection_create_context_reply_t * xcb_selinux_get_selection_create_context_reply
  -- ** 
  -- ** @param xcb_connection_t                                   *c
  -- ** @param xcb_selinux_get_selection_create_context_cookie_t   cookie
  -- ** @param xcb_generic_error_t                               **e
  -- ** @returns xcb_selinux_get_selection_create_context_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_selection_create_context_reply
     (arg1 : System.Address;
      arg2 : xcb_selinux_get_selection_create_context_cookie_t;
      arg3 : System.Address) return access xcb_selinux_get_selection_create_context_reply_t;  -- /usr/include/xcb/xselinux.h:2384
   pragma Import (C, xcb_selinux_get_selection_create_context_reply, "xcb_selinux_get_selection_create_context_reply");

  --*<  
  --*<  
  --*<  
   function xcb_selinux_set_selection_use_context_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xselinux.h:2389
   pragma Import (C, xcb_selinux_set_selection_use_context_sizeof, "xcb_selinux_set_selection_use_context_sizeof");

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
  -- ** xcb_void_cookie_t xcb_selinux_set_selection_use_context_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          context_len
  -- ** @param const char       *context
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_set_selection_use_context_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xselinux.h:2415
   pragma Import (C, xcb_selinux_set_selection_use_context_checked, "xcb_selinux_set_selection_use_context_checked");

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
  -- ** xcb_void_cookie_t xcb_selinux_set_selection_use_context
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          context_len
  -- ** @param const char       *context
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_set_selection_use_context
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xselinux.h:2440
   pragma Import (C, xcb_selinux_set_selection_use_context, "xcb_selinux_set_selection_use_context");

  --*<  
  --*<  
  --*<  
   function xcb_selinux_get_selection_use_context_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xselinux.h:2445
   pragma Import (C, xcb_selinux_get_selection_use_context_sizeof, "xcb_selinux_get_selection_use_context_sizeof");

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
  -- ** xcb_selinux_get_selection_use_context_cookie_t xcb_selinux_get_selection_use_context
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_selinux_get_selection_use_context_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_selection_use_context (arg1 : System.Address) return xcb_selinux_get_selection_use_context_cookie_t;  -- /usr/include/xcb/xselinux.h:2466
   pragma Import (C, xcb_selinux_get_selection_use_context, "xcb_selinux_get_selection_use_context");

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
  -- ** xcb_selinux_get_selection_use_context_cookie_t xcb_selinux_get_selection_use_context_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_selinux_get_selection_use_context_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_selection_use_context_unchecked (arg1 : System.Address) return xcb_selinux_get_selection_use_context_cookie_t;  -- /usr/include/xcb/xselinux.h:2490
   pragma Import (C, xcb_selinux_get_selection_use_context_unchecked, "xcb_selinux_get_selection_use_context_unchecked");

  --****************************************************************************
  -- **
  -- ** char * xcb_selinux_get_selection_use_context_context
  -- ** 
  -- ** @param const xcb_selinux_get_selection_use_context_reply_t *R
  -- ** @returns char *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_selection_use_context_context (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/xselinux.h:2503
   pragma Import (C, xcb_selinux_get_selection_use_context_context, "xcb_selinux_get_selection_use_context_context");

  --****************************************************************************
  -- **
  -- ** int xcb_selinux_get_selection_use_context_context_length
  -- ** 
  -- ** @param const xcb_selinux_get_selection_use_context_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_selection_use_context_context_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xselinux.h:2516
   pragma Import (C, xcb_selinux_get_selection_use_context_context_length, "xcb_selinux_get_selection_use_context_context_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_selinux_get_selection_use_context_context_end
  -- ** 
  -- ** @param const xcb_selinux_get_selection_use_context_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_selection_use_context_context_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xselinux.h:2529
   pragma Import (C, xcb_selinux_get_selection_use_context_context_end, "xcb_selinux_get_selection_use_context_context_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_selinux_get_selection_use_context_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_selinux_get_selection_use_context_reply_t * xcb_selinux_get_selection_use_context_reply
  -- ** 
  -- ** @param xcb_connection_t                                *c
  -- ** @param xcb_selinux_get_selection_use_context_cookie_t   cookie
  -- ** @param xcb_generic_error_t                            **e
  -- ** @returns xcb_selinux_get_selection_use_context_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_selection_use_context_reply
     (arg1 : System.Address;
      arg2 : xcb_selinux_get_selection_use_context_cookie_t;
      arg3 : System.Address) return access xcb_selinux_get_selection_use_context_reply_t;  -- /usr/include/xcb/xselinux.h:2558
   pragma Import (C, xcb_selinux_get_selection_use_context_reply, "xcb_selinux_get_selection_use_context_reply");

  --*<  
  --*<  
  --*<  
   function xcb_selinux_get_selection_context_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xselinux.h:2563
   pragma Import (C, xcb_selinux_get_selection_context_sizeof, "xcb_selinux_get_selection_context_sizeof");

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
  -- ** xcb_selinux_get_selection_context_cookie_t xcb_selinux_get_selection_context
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_atom_t        selection
  -- ** @returns xcb_selinux_get_selection_context_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_selection_context (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_atom_t) return xcb_selinux_get_selection_context_cookie_t;  -- /usr/include/xcb/xselinux.h:2585
   pragma Import (C, xcb_selinux_get_selection_context, "xcb_selinux_get_selection_context");

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
  -- ** xcb_selinux_get_selection_context_cookie_t xcb_selinux_get_selection_context_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_atom_t        selection
  -- ** @returns xcb_selinux_get_selection_context_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_selection_context_unchecked (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_atom_t) return xcb_selinux_get_selection_context_cookie_t;  -- /usr/include/xcb/xselinux.h:2611
   pragma Import (C, xcb_selinux_get_selection_context_unchecked, "xcb_selinux_get_selection_context_unchecked");

  --*<  
  --****************************************************************************
  -- **
  -- ** char * xcb_selinux_get_selection_context_context
  -- ** 
  -- ** @param const xcb_selinux_get_selection_context_reply_t *R
  -- ** @returns char *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_selection_context_context (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/xselinux.h:2625
   pragma Import (C, xcb_selinux_get_selection_context_context, "xcb_selinux_get_selection_context_context");

  --****************************************************************************
  -- **
  -- ** int xcb_selinux_get_selection_context_context_length
  -- ** 
  -- ** @param const xcb_selinux_get_selection_context_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_selection_context_context_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xselinux.h:2638
   pragma Import (C, xcb_selinux_get_selection_context_context_length, "xcb_selinux_get_selection_context_context_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_selinux_get_selection_context_context_end
  -- ** 
  -- ** @param const xcb_selinux_get_selection_context_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_selection_context_context_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xselinux.h:2651
   pragma Import (C, xcb_selinux_get_selection_context_context_end, "xcb_selinux_get_selection_context_context_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_selinux_get_selection_context_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_selinux_get_selection_context_reply_t * xcb_selinux_get_selection_context_reply
  -- ** 
  -- ** @param xcb_connection_t                            *c
  -- ** @param xcb_selinux_get_selection_context_cookie_t   cookie
  -- ** @param xcb_generic_error_t                        **e
  -- ** @returns xcb_selinux_get_selection_context_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_selection_context_reply
     (arg1 : System.Address;
      arg2 : xcb_selinux_get_selection_context_cookie_t;
      arg3 : System.Address) return access xcb_selinux_get_selection_context_reply_t;  -- /usr/include/xcb/xselinux.h:2680
   pragma Import (C, xcb_selinux_get_selection_context_reply, "xcb_selinux_get_selection_context_reply");

  --*<  
  --*<  
  --*<  
   function xcb_selinux_get_selection_data_context_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xselinux.h:2685
   pragma Import (C, xcb_selinux_get_selection_data_context_sizeof, "xcb_selinux_get_selection_data_context_sizeof");

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
  -- ** xcb_selinux_get_selection_data_context_cookie_t xcb_selinux_get_selection_data_context
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_atom_t        selection
  -- ** @returns xcb_selinux_get_selection_data_context_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_selection_data_context (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_atom_t) return xcb_selinux_get_selection_data_context_cookie_t;  -- /usr/include/xcb/xselinux.h:2707
   pragma Import (C, xcb_selinux_get_selection_data_context, "xcb_selinux_get_selection_data_context");

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
  -- ** xcb_selinux_get_selection_data_context_cookie_t xcb_selinux_get_selection_data_context_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_atom_t        selection
  -- ** @returns xcb_selinux_get_selection_data_context_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_selection_data_context_unchecked (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_atom_t) return xcb_selinux_get_selection_data_context_cookie_t;  -- /usr/include/xcb/xselinux.h:2733
   pragma Import (C, xcb_selinux_get_selection_data_context_unchecked, "xcb_selinux_get_selection_data_context_unchecked");

  --*<  
  --****************************************************************************
  -- **
  -- ** char * xcb_selinux_get_selection_data_context_context
  -- ** 
  -- ** @param const xcb_selinux_get_selection_data_context_reply_t *R
  -- ** @returns char *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_selection_data_context_context (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/xselinux.h:2747
   pragma Import (C, xcb_selinux_get_selection_data_context_context, "xcb_selinux_get_selection_data_context_context");

  --****************************************************************************
  -- **
  -- ** int xcb_selinux_get_selection_data_context_context_length
  -- ** 
  -- ** @param const xcb_selinux_get_selection_data_context_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_selection_data_context_context_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xselinux.h:2760
   pragma Import (C, xcb_selinux_get_selection_data_context_context_length, "xcb_selinux_get_selection_data_context_context_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_selinux_get_selection_data_context_context_end
  -- ** 
  -- ** @param const xcb_selinux_get_selection_data_context_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_selection_data_context_context_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xselinux.h:2773
   pragma Import (C, xcb_selinux_get_selection_data_context_context_end, "xcb_selinux_get_selection_data_context_context_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_selinux_get_selection_data_context_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_selinux_get_selection_data_context_reply_t * xcb_selinux_get_selection_data_context_reply
  -- ** 
  -- ** @param xcb_connection_t                                 *c
  -- ** @param xcb_selinux_get_selection_data_context_cookie_t   cookie
  -- ** @param xcb_generic_error_t                             **e
  -- ** @returns xcb_selinux_get_selection_data_context_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_selection_data_context_reply
     (arg1 : System.Address;
      arg2 : xcb_selinux_get_selection_data_context_cookie_t;
      arg3 : System.Address) return access xcb_selinux_get_selection_data_context_reply_t;  -- /usr/include/xcb/xselinux.h:2802
   pragma Import (C, xcb_selinux_get_selection_data_context_reply, "xcb_selinux_get_selection_data_context_reply");

  --*<  
  --*<  
  --*<  
   function xcb_selinux_list_selections_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xselinux.h:2807
   pragma Import (C, xcb_selinux_list_selections_sizeof, "xcb_selinux_list_selections_sizeof");

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
  -- ** xcb_selinux_list_selections_cookie_t xcb_selinux_list_selections
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_selinux_list_selections_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_list_selections (arg1 : System.Address) return xcb_selinux_list_selections_cookie_t;  -- /usr/include/xcb/xselinux.h:2828
   pragma Import (C, xcb_selinux_list_selections, "xcb_selinux_list_selections");

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
  -- ** xcb_selinux_list_selections_cookie_t xcb_selinux_list_selections_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_selinux_list_selections_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_list_selections_unchecked (arg1 : System.Address) return xcb_selinux_list_selections_cookie_t;  -- /usr/include/xcb/xselinux.h:2852
   pragma Import (C, xcb_selinux_list_selections_unchecked, "xcb_selinux_list_selections_unchecked");

  --****************************************************************************
  -- **
  -- ** int xcb_selinux_list_selections_selections_length
  -- ** 
  -- ** @param const xcb_selinux_list_selections_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_list_selections_selections_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xselinux.h:2865
   pragma Import (C, xcb_selinux_list_selections_selections_length, "xcb_selinux_list_selections_selections_length");

  --****************************************************************************
  -- **
  -- ** xcb_selinux_list_item_iterator_t xcb_selinux_list_selections_selections_iterator
  -- ** 
  -- ** @param const xcb_selinux_list_selections_reply_t *R
  -- ** @returns xcb_selinux_list_item_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_list_selections_selections_iterator (arg1 : System.Address) return xcb_selinux_list_item_iterator_t;  -- /usr/include/xcb/xselinux.h:2878
   pragma Import (C, xcb_selinux_list_selections_selections_iterator, "xcb_selinux_list_selections_selections_iterator");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_selinux_list_selections_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_selinux_list_selections_reply_t * xcb_selinux_list_selections_reply
  -- ** 
  -- ** @param xcb_connection_t                      *c
  -- ** @param xcb_selinux_list_selections_cookie_t   cookie
  -- ** @param xcb_generic_error_t                  **e
  -- ** @returns xcb_selinux_list_selections_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_list_selections_reply
     (arg1 : System.Address;
      arg2 : xcb_selinux_list_selections_cookie_t;
      arg3 : System.Address) return access xcb_selinux_list_selections_reply_t;  -- /usr/include/xcb/xselinux.h:2907
   pragma Import (C, xcb_selinux_list_selections_reply, "xcb_selinux_list_selections_reply");

  --*<  
  --*<  
  --*<  
   function xcb_selinux_get_client_context_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xselinux.h:2912
   pragma Import (C, xcb_selinux_get_client_context_sizeof, "xcb_selinux_get_client_context_sizeof");

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
  -- ** xcb_selinux_get_client_context_cookie_t xcb_selinux_get_client_context
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          resource
  -- ** @returns xcb_selinux_get_client_context_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_client_context (arg1 : System.Address; arg2 : stdint_h.uint32_t) return xcb_selinux_get_client_context_cookie_t;  -- /usr/include/xcb/xselinux.h:2934
   pragma Import (C, xcb_selinux_get_client_context, "xcb_selinux_get_client_context");

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
  -- ** xcb_selinux_get_client_context_cookie_t xcb_selinux_get_client_context_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          resource
  -- ** @returns xcb_selinux_get_client_context_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_client_context_unchecked (arg1 : System.Address; arg2 : stdint_h.uint32_t) return xcb_selinux_get_client_context_cookie_t;  -- /usr/include/xcb/xselinux.h:2960
   pragma Import (C, xcb_selinux_get_client_context_unchecked, "xcb_selinux_get_client_context_unchecked");

  --*<  
  --****************************************************************************
  -- **
  -- ** char * xcb_selinux_get_client_context_context
  -- ** 
  -- ** @param const xcb_selinux_get_client_context_reply_t *R
  -- ** @returns char *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_client_context_context (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/xselinux.h:2974
   pragma Import (C, xcb_selinux_get_client_context_context, "xcb_selinux_get_client_context_context");

  --****************************************************************************
  -- **
  -- ** int xcb_selinux_get_client_context_context_length
  -- ** 
  -- ** @param const xcb_selinux_get_client_context_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_client_context_context_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xselinux.h:2987
   pragma Import (C, xcb_selinux_get_client_context_context_length, "xcb_selinux_get_client_context_context_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_selinux_get_client_context_context_end
  -- ** 
  -- ** @param const xcb_selinux_get_client_context_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_client_context_context_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xselinux.h:3000
   pragma Import (C, xcb_selinux_get_client_context_context_end, "xcb_selinux_get_client_context_context_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_selinux_get_client_context_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_selinux_get_client_context_reply_t * xcb_selinux_get_client_context_reply
  -- ** 
  -- ** @param xcb_connection_t                         *c
  -- ** @param xcb_selinux_get_client_context_cookie_t   cookie
  -- ** @param xcb_generic_error_t                     **e
  -- ** @returns xcb_selinux_get_client_context_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_selinux_get_client_context_reply
     (arg1 : System.Address;
      arg2 : xcb_selinux_get_client_context_cookie_t;
      arg3 : System.Address) return access xcb_selinux_get_client_context_reply_t;  -- /usr/include/xcb/xselinux.h:3029
   pragma Import (C, xcb_selinux_get_client_context_reply, "xcb_selinux_get_client_context_reply");

  --*<  
  --*<  
  --*
  -- * @}
  --  

end xcb_xselinux_h;
