with Interfaces.C; use Interfaces.C;
with xcb_xcb_h;
with stdint_h;
with xcb_xv_h;
with System;

package xcb_xvmc_h is

   --  unsupported macro: XCB_XVMC_MAJOR_VERSION 1
   --  unsupported macro: XCB_XVMC_MINOR_VERSION 1
   --  unsupported macro: XCB_XVMC_QUERY_VERSION 0
   --  unsupported macro: XCB_XVMC_LIST_SURFACE_TYPES 1
   --  unsupported macro: XCB_XVMC_CREATE_CONTEXT 2
   --  unsupported macro: XCB_XVMC_DESTROY_CONTEXT 3
   --  unsupported macro: XCB_XVMC_CREATE_SURFACE 4
   --  unsupported macro: XCB_XVMC_DESTROY_SURFACE 5
   --  unsupported macro: XCB_XVMC_CREATE_SUBPICTURE 6
   --  unsupported macro: XCB_XVMC_DESTROY_SUBPICTURE 7
   --  unsupported macro: XCB_XVMC_LIST_SUBPICTURE_TYPES 8
  -- * This file generated automatically from xvmc.xml by c_client.py.
  -- * Edit at your peril.
  --  

  --*
  -- * @defgroup XCB_XvMC_API XCB XvMC API
  -- * @brief XvMC XCB Protocol Implementation.
  -- * @{
  -- * 

   xcb_xvmc_id : aliased xcb_xcb_h.xcb_extension_t;  -- /usr/include/xcb/xvmc.h:27
   pragma Import (C, xcb_xvmc_id, "xcb_xvmc_id");

   subtype xcb_xvmc_context_t is stdint_h.uint32_t;  -- /usr/include/xcb/xvmc.h:29

  --*
  -- * @brief xcb_xvmc_context_iterator_t
  -- * 

  --*<   
   type xcb_xvmc_context_iterator_t is record
      data : access xcb_xvmc_context_t;  -- /usr/include/xcb/xvmc.h:35
      c_rem : aliased int;  -- /usr/include/xcb/xvmc.h:36
      index : aliased int;  -- /usr/include/xcb/xvmc.h:37
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xvmc_context_iterator_t);  -- /usr/include/xcb/xvmc.h:34

  --*<   
  --*<   
   subtype xcb_xvmc_surface_t is stdint_h.uint32_t;  -- /usr/include/xcb/xvmc.h:40

  --*
  -- * @brief xcb_xvmc_surface_iterator_t
  -- * 

  --*<   
   type xcb_xvmc_surface_iterator_t is record
      data : access xcb_xvmc_surface_t;  -- /usr/include/xcb/xvmc.h:46
      c_rem : aliased int;  -- /usr/include/xcb/xvmc.h:47
      index : aliased int;  -- /usr/include/xcb/xvmc.h:48
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xvmc_surface_iterator_t);  -- /usr/include/xcb/xvmc.h:45

  --*<   
  --*<   
   subtype xcb_xvmc_subpicture_t is stdint_h.uint32_t;  -- /usr/include/xcb/xvmc.h:51

  --*
  -- * @brief xcb_xvmc_subpicture_iterator_t
  -- * 

  --*<   
   type xcb_xvmc_subpicture_iterator_t is record
      data : access xcb_xvmc_subpicture_t;  -- /usr/include/xcb/xvmc.h:57
      c_rem : aliased int;  -- /usr/include/xcb/xvmc.h:58
      index : aliased int;  -- /usr/include/xcb/xvmc.h:59
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xvmc_subpicture_iterator_t);  -- /usr/include/xcb/xvmc.h:56

  --*<   
  --*<   
  --*
  -- * @brief xcb_xvmc_surface_info_t
  -- * 

  --*<   
   type xcb_xvmc_surface_info_t is record
      id : aliased xcb_xvmc_surface_t;  -- /usr/include/xcb/xvmc.h:66
      chroma_format : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xvmc.h:67
      pad0 : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xvmc.h:68
      max_width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xvmc.h:69
      max_height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xvmc.h:70
      subpicture_max_width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xvmc.h:71
      subpicture_max_height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xvmc.h:72
      mc_type : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xvmc.h:73
      flags : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xvmc.h:74
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xvmc_surface_info_t);  -- /usr/include/xcb/xvmc.h:65

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xvmc_surface_info_iterator_t
  -- * 

  --*<   
   type xcb_xvmc_surface_info_iterator_t is record
      data : access xcb_xvmc_surface_info_t;  -- /usr/include/xcb/xvmc.h:81
      c_rem : aliased int;  -- /usr/include/xcb/xvmc.h:82
      index : aliased int;  -- /usr/include/xcb/xvmc.h:83
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xvmc_surface_info_iterator_t);  -- /usr/include/xcb/xvmc.h:80

  --*<   
  --*<   
  --*
  -- * @brief xcb_xvmc_query_version_cookie_t
  -- * 

  --*<   
   type xcb_xvmc_query_version_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xvmc.h:90
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xvmc_query_version_cookie_t);  -- /usr/include/xcb/xvmc.h:89

  --* Opcode for xcb_xvmc_query_version.  
  --*
  -- * @brief xcb_xvmc_query_version_request_t
  -- * 

  --*<   
   type xcb_xvmc_query_version_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xvmc.h:100
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xvmc.h:101
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xvmc.h:102
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xvmc_query_version_request_t);  -- /usr/include/xcb/xvmc.h:99

  --*<   
  --*<   
  --*
  -- * @brief xcb_xvmc_query_version_reply_t
  -- * 

  --*<   
   type xcb_xvmc_query_version_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xvmc.h:109
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xvmc.h:110
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xvmc.h:111
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xvmc.h:112
      major : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xvmc.h:113
      minor : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xvmc.h:114
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xvmc_query_version_reply_t);  -- /usr/include/xcb/xvmc.h:108

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xvmc_list_surface_types_cookie_t
  -- * 

  --*<   
   type xcb_xvmc_list_surface_types_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xvmc.h:121
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xvmc_list_surface_types_cookie_t);  -- /usr/include/xcb/xvmc.h:120

  --* Opcode for xcb_xvmc_list_surface_types.  
  --*
  -- * @brief xcb_xvmc_list_surface_types_request_t
  -- * 

  --*<   
   type xcb_xvmc_list_surface_types_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xvmc.h:131
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xvmc.h:132
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xvmc.h:133
      port_id : aliased xcb_xv_h.xcb_xv_port_t;  -- /usr/include/xcb/xvmc.h:134
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xvmc_list_surface_types_request_t);  -- /usr/include/xcb/xvmc.h:130

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xvmc_list_surface_types_reply_t
  -- * 

  --*<   
   type anon4534_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_xvmc_list_surface_types_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xvmc.h:141
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xvmc.h:142
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xvmc.h:143
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xvmc.h:144
      num : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xvmc.h:145
      pad1 : aliased anon4534_anon1939_array;  -- /usr/include/xcb/xvmc.h:146
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xvmc_list_surface_types_reply_t);  -- /usr/include/xcb/xvmc.h:140

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xvmc_create_context_cookie_t
  -- * 

  --*<   
   type xcb_xvmc_create_context_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xvmc.h:153
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xvmc_create_context_cookie_t);  -- /usr/include/xcb/xvmc.h:152

  --* Opcode for xcb_xvmc_create_context.  
  --*
  -- * @brief xcb_xvmc_create_context_request_t
  -- * 

  --*<   
   type xcb_xvmc_create_context_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xvmc.h:163
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xvmc.h:164
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xvmc.h:165
      context_id : aliased xcb_xvmc_context_t;  -- /usr/include/xcb/xvmc.h:166
      port_id : aliased xcb_xv_h.xcb_xv_port_t;  -- /usr/include/xcb/xvmc.h:167
      surface_id : aliased xcb_xvmc_surface_t;  -- /usr/include/xcb/xvmc.h:168
      width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xvmc.h:169
      height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xvmc.h:170
      flags : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xvmc.h:171
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xvmc_create_context_request_t);  -- /usr/include/xcb/xvmc.h:162

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xvmc_create_context_reply_t
  -- * 

  --*<   
   type anon4542_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_xvmc_create_context_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xvmc.h:178
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xvmc.h:179
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xvmc.h:180
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xvmc.h:181
      width_actual : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xvmc.h:182
      height_actual : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xvmc.h:183
      flags_return : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xvmc.h:184
      pad1 : aliased anon4542_anon1939_array;  -- /usr/include/xcb/xvmc.h:185
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xvmc_create_context_reply_t);  -- /usr/include/xcb/xvmc.h:177

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xvmc_destroy_context.  
  --*
  -- * @brief xcb_xvmc_destroy_context_request_t
  -- * 

  --*<   
   type xcb_xvmc_destroy_context_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xvmc.h:195
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xvmc.h:196
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xvmc.h:197
      context_id : aliased xcb_xvmc_context_t;  -- /usr/include/xcb/xvmc.h:198
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xvmc_destroy_context_request_t);  -- /usr/include/xcb/xvmc.h:194

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xvmc_create_surface_cookie_t
  -- * 

  --*<   
   type xcb_xvmc_create_surface_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xvmc.h:205
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xvmc_create_surface_cookie_t);  -- /usr/include/xcb/xvmc.h:204

  --* Opcode for xcb_xvmc_create_surface.  
  --*
  -- * @brief xcb_xvmc_create_surface_request_t
  -- * 

  --*<   
   type xcb_xvmc_create_surface_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xvmc.h:215
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xvmc.h:216
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xvmc.h:217
      surface_id : aliased xcb_xvmc_surface_t;  -- /usr/include/xcb/xvmc.h:218
      context_id : aliased xcb_xvmc_context_t;  -- /usr/include/xcb/xvmc.h:219
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xvmc_create_surface_request_t);  -- /usr/include/xcb/xvmc.h:214

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xvmc_create_surface_reply_t
  -- * 

  --*<   
   type anon4552_anon2504_array is array (0 .. 23) of aliased stdint_h.uint8_t;
   type xcb_xvmc_create_surface_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xvmc.h:226
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xvmc.h:227
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xvmc.h:228
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xvmc.h:229
      pad1 : aliased anon4552_anon2504_array;  -- /usr/include/xcb/xvmc.h:230
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xvmc_create_surface_reply_t);  -- /usr/include/xcb/xvmc.h:225

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xvmc_destroy_surface.  
  --*
  -- * @brief xcb_xvmc_destroy_surface_request_t
  -- * 

  --*<   
   type xcb_xvmc_destroy_surface_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xvmc.h:240
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xvmc.h:241
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xvmc.h:242
      surface_id : aliased xcb_xvmc_surface_t;  -- /usr/include/xcb/xvmc.h:243
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xvmc_destroy_surface_request_t);  -- /usr/include/xcb/xvmc.h:239

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xvmc_create_subpicture_cookie_t
  -- * 

  --*<   
   type xcb_xvmc_create_subpicture_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xvmc.h:250
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xvmc_create_subpicture_cookie_t);  -- /usr/include/xcb/xvmc.h:249

  --* Opcode for xcb_xvmc_create_subpicture.  
  --*
  -- * @brief xcb_xvmc_create_subpicture_request_t
  -- * 

  --*<   
   type xcb_xvmc_create_subpicture_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xvmc.h:260
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xvmc.h:261
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xvmc.h:262
      subpicture_id : aliased xcb_xvmc_subpicture_t;  -- /usr/include/xcb/xvmc.h:263
      context : aliased xcb_xvmc_context_t;  -- /usr/include/xcb/xvmc.h:264
      xvimage_id : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xvmc.h:265
      width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xvmc.h:266
      height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xvmc.h:267
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xvmc_create_subpicture_request_t);  -- /usr/include/xcb/xvmc.h:259

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xvmc_create_subpicture_reply_t
  -- * 

  --*<   
   type anon4562_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type anon4562_anon2079_array is array (0 .. 11) of aliased stdint_h.uint8_t;
   type xcb_xvmc_create_subpicture_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xvmc.h:274
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xvmc.h:275
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xvmc.h:276
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xvmc.h:277
      width_actual : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xvmc.h:278
      height_actual : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xvmc.h:279
      num_palette_entries : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xvmc.h:280
      entry_bytes : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xvmc.h:281
      component_order : aliased anon4562_anon1768_array;  -- /usr/include/xcb/xvmc.h:282
      pad1 : aliased anon4562_anon2079_array;  -- /usr/include/xcb/xvmc.h:283
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xvmc_create_subpicture_reply_t);  -- /usr/include/xcb/xvmc.h:273

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xvmc_destroy_subpicture.  
  --*
  -- * @brief xcb_xvmc_destroy_subpicture_request_t
  -- * 

  --*<   
   type xcb_xvmc_destroy_subpicture_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xvmc.h:293
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xvmc.h:294
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xvmc.h:295
      subpicture_id : aliased xcb_xvmc_subpicture_t;  -- /usr/include/xcb/xvmc.h:296
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xvmc_destroy_subpicture_request_t);  -- /usr/include/xcb/xvmc.h:292

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xvmc_list_subpicture_types_cookie_t
  -- * 

  --*<   
   type xcb_xvmc_list_subpicture_types_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xvmc.h:303
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xvmc_list_subpicture_types_cookie_t);  -- /usr/include/xcb/xvmc.h:302

  --* Opcode for xcb_xvmc_list_subpicture_types.  
  --*
  -- * @brief xcb_xvmc_list_subpicture_types_request_t
  -- * 

  --*<   
   type xcb_xvmc_list_subpicture_types_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xvmc.h:313
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xvmc.h:314
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xvmc.h:315
      port_id : aliased xcb_xv_h.xcb_xv_port_t;  -- /usr/include/xcb/xvmc.h:316
      surface_id : aliased xcb_xvmc_surface_t;  -- /usr/include/xcb/xvmc.h:317
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xvmc_list_subpicture_types_request_t);  -- /usr/include/xcb/xvmc.h:312

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xvmc_list_subpicture_types_reply_t
  -- * 

  --*<   
   type anon4574_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_xvmc_list_subpicture_types_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xvmc.h:324
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xvmc.h:325
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xvmc.h:326
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xvmc.h:327
      num : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xvmc.h:328
      pad1 : aliased anon4574_anon1939_array;  -- /usr/include/xcb/xvmc.h:329
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xvmc_list_subpicture_types_reply_t);  -- /usr/include/xcb/xvmc.h:323

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xvmc_context_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xvmc_context_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xvmc_context_next
  -- ** 
  -- ** @param xcb_xvmc_context_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xvmc_context_next (arg1 : access xcb_xvmc_context_iterator_t);  -- /usr/include/xcb/xvmc.h:351
   pragma Import (C, xcb_xvmc_context_next, "xcb_xvmc_context_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xvmc_context_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xvmc_context_end
  -- ** 
  -- ** @param xcb_xvmc_context_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xvmc_context_end (arg1 : xcb_xvmc_context_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xvmc.h:373
   pragma Import (C, xcb_xvmc_context_end, "xcb_xvmc_context_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xvmc_surface_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xvmc_surface_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xvmc_surface_next
  -- ** 
  -- ** @param xcb_xvmc_surface_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xvmc_surface_next (arg1 : access xcb_xvmc_surface_iterator_t);  -- /usr/include/xcb/xvmc.h:394
   pragma Import (C, xcb_xvmc_surface_next, "xcb_xvmc_surface_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xvmc_surface_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xvmc_surface_end
  -- ** 
  -- ** @param xcb_xvmc_surface_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xvmc_surface_end (arg1 : xcb_xvmc_surface_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xvmc.h:416
   pragma Import (C, xcb_xvmc_surface_end, "xcb_xvmc_surface_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xvmc_subpicture_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xvmc_subpicture_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xvmc_subpicture_next
  -- ** 
  -- ** @param xcb_xvmc_subpicture_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xvmc_subpicture_next (arg1 : access xcb_xvmc_subpicture_iterator_t);  -- /usr/include/xcb/xvmc.h:437
   pragma Import (C, xcb_xvmc_subpicture_next, "xcb_xvmc_subpicture_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xvmc_subpicture_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xvmc_subpicture_end
  -- ** 
  -- ** @param xcb_xvmc_subpicture_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xvmc_subpicture_end (arg1 : xcb_xvmc_subpicture_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xvmc.h:459
   pragma Import (C, xcb_xvmc_subpicture_end, "xcb_xvmc_subpicture_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xvmc_surface_info_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xvmc_surface_info_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xvmc_surface_info_next
  -- ** 
  -- ** @param xcb_xvmc_surface_info_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xvmc_surface_info_next (arg1 : access xcb_xvmc_surface_info_iterator_t);  -- /usr/include/xcb/xvmc.h:480
   pragma Import (C, xcb_xvmc_surface_info_next, "xcb_xvmc_surface_info_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xvmc_surface_info_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xvmc_surface_info_end
  -- ** 
  -- ** @param xcb_xvmc_surface_info_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xvmc_surface_info_end (arg1 : xcb_xvmc_surface_info_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xvmc.h:502
   pragma Import (C, xcb_xvmc_surface_info_end, "xcb_xvmc_surface_info_end");

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
  -- ** xcb_xvmc_query_version_cookie_t xcb_xvmc_query_version
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_xvmc_query_version_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xvmc_query_version (arg1 : System.Address) return xcb_xvmc_query_version_cookie_t;  -- /usr/include/xcb/xvmc.h:523
   pragma Import (C, xcb_xvmc_query_version, "xcb_xvmc_query_version");

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
  -- ** xcb_xvmc_query_version_cookie_t xcb_xvmc_query_version_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_xvmc_query_version_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xvmc_query_version_unchecked (arg1 : System.Address) return xcb_xvmc_query_version_cookie_t;  -- /usr/include/xcb/xvmc.h:547
   pragma Import (C, xcb_xvmc_query_version_unchecked, "xcb_xvmc_query_version_unchecked");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_xvmc_query_version_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xvmc_query_version_reply_t * xcb_xvmc_query_version_reply
  -- ** 
  -- ** @param xcb_connection_t                 *c
  -- ** @param xcb_xvmc_query_version_cookie_t   cookie
  -- ** @param xcb_generic_error_t             **e
  -- ** @returns xcb_xvmc_query_version_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xvmc_query_version_reply
     (arg1 : System.Address;
      arg2 : xcb_xvmc_query_version_cookie_t;
      arg3 : System.Address) return access xcb_xvmc_query_version_reply_t;  -- /usr/include/xcb/xvmc.h:576
   pragma Import (C, xcb_xvmc_query_version_reply, "xcb_xvmc_query_version_reply");

  --*<  
  --*<  
  --*<  
   function xcb_xvmc_list_surface_types_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xvmc.h:581
   pragma Import (C, xcb_xvmc_list_surface_types_sizeof, "xcb_xvmc_list_surface_types_sizeof");

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
  -- ** xcb_xvmc_list_surface_types_cookie_t xcb_xvmc_list_surface_types
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_xv_port_t     port_id
  -- ** @returns xcb_xvmc_list_surface_types_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xvmc_list_surface_types (arg1 : System.Address; arg2 : xcb_xv_h.xcb_xv_port_t) return xcb_xvmc_list_surface_types_cookie_t;  -- /usr/include/xcb/xvmc.h:603
   pragma Import (C, xcb_xvmc_list_surface_types, "xcb_xvmc_list_surface_types");

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
  -- ** xcb_xvmc_list_surface_types_cookie_t xcb_xvmc_list_surface_types_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_xv_port_t     port_id
  -- ** @returns xcb_xvmc_list_surface_types_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xvmc_list_surface_types_unchecked (arg1 : System.Address; arg2 : xcb_xv_h.xcb_xv_port_t) return xcb_xvmc_list_surface_types_cookie_t;  -- /usr/include/xcb/xvmc.h:629
   pragma Import (C, xcb_xvmc_list_surface_types_unchecked, "xcb_xvmc_list_surface_types_unchecked");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xvmc_surface_info_t * xcb_xvmc_list_surface_types_surfaces
  -- ** 
  -- ** @param const xcb_xvmc_list_surface_types_reply_t *R
  -- ** @returns xcb_xvmc_surface_info_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xvmc_list_surface_types_surfaces (arg1 : System.Address) return access xcb_xvmc_surface_info_t;  -- /usr/include/xcb/xvmc.h:643
   pragma Import (C, xcb_xvmc_list_surface_types_surfaces, "xcb_xvmc_list_surface_types_surfaces");

  --****************************************************************************
  -- **
  -- ** int xcb_xvmc_list_surface_types_surfaces_length
  -- ** 
  -- ** @param const xcb_xvmc_list_surface_types_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xvmc_list_surface_types_surfaces_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xvmc.h:656
   pragma Import (C, xcb_xvmc_list_surface_types_surfaces_length, "xcb_xvmc_list_surface_types_surfaces_length");

  --****************************************************************************
  -- **
  -- ** xcb_xvmc_surface_info_iterator_t xcb_xvmc_list_surface_types_surfaces_iterator
  -- ** 
  -- ** @param const xcb_xvmc_list_surface_types_reply_t *R
  -- ** @returns xcb_xvmc_surface_info_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xvmc_list_surface_types_surfaces_iterator (arg1 : System.Address) return xcb_xvmc_surface_info_iterator_t;  -- /usr/include/xcb/xvmc.h:669
   pragma Import (C, xcb_xvmc_list_surface_types_surfaces_iterator, "xcb_xvmc_list_surface_types_surfaces_iterator");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_xvmc_list_surface_types_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xvmc_list_surface_types_reply_t * xcb_xvmc_list_surface_types_reply
  -- ** 
  -- ** @param xcb_connection_t                      *c
  -- ** @param xcb_xvmc_list_surface_types_cookie_t   cookie
  -- ** @param xcb_generic_error_t                  **e
  -- ** @returns xcb_xvmc_list_surface_types_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xvmc_list_surface_types_reply
     (arg1 : System.Address;
      arg2 : xcb_xvmc_list_surface_types_cookie_t;
      arg3 : System.Address) return access xcb_xvmc_list_surface_types_reply_t;  -- /usr/include/xcb/xvmc.h:698
   pragma Import (C, xcb_xvmc_list_surface_types_reply, "xcb_xvmc_list_surface_types_reply");

  --*<  
  --*<  
  --*<  
   function xcb_xvmc_create_context_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xvmc.h:703
   pragma Import (C, xcb_xvmc_create_context_sizeof, "xcb_xvmc_create_context_sizeof");

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
  -- ** xcb_xvmc_create_context_cookie_t xcb_xvmc_create_context
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_xvmc_context_t  context_id
  -- ** @param xcb_xv_port_t       port_id
  -- ** @param xcb_xvmc_surface_t  surface_id
  -- ** @param uint16_t            width
  -- ** @param uint16_t            height
  -- ** @param uint32_t            flags
  -- ** @returns xcb_xvmc_create_context_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xvmc_create_context
     (arg1 : System.Address;
      arg2 : xcb_xvmc_context_t;
      arg3 : xcb_xv_h.xcb_xv_port_t;
      arg4 : xcb_xvmc_surface_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint16_t;
      arg7 : stdint_h.uint32_t) return xcb_xvmc_create_context_cookie_t;  -- /usr/include/xcb/xvmc.h:730
   pragma Import (C, xcb_xvmc_create_context, "xcb_xvmc_create_context");

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
  -- ** xcb_xvmc_create_context_cookie_t xcb_xvmc_create_context_unchecked
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_xvmc_context_t  context_id
  -- ** @param xcb_xv_port_t       port_id
  -- ** @param xcb_xvmc_surface_t  surface_id
  -- ** @param uint16_t            width
  -- ** @param uint16_t            height
  -- ** @param uint32_t            flags
  -- ** @returns xcb_xvmc_create_context_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xvmc_create_context_unchecked
     (arg1 : System.Address;
      arg2 : xcb_xvmc_context_t;
      arg3 : xcb_xv_h.xcb_xv_port_t;
      arg4 : xcb_xvmc_surface_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint16_t;
      arg7 : stdint_h.uint32_t) return xcb_xvmc_create_context_cookie_t;  -- /usr/include/xcb/xvmc.h:766
   pragma Import (C, xcb_xvmc_create_context_unchecked, "xcb_xvmc_create_context_unchecked");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** uint32_t * xcb_xvmc_create_context_priv_data
  -- ** 
  -- ** @param const xcb_xvmc_create_context_reply_t *R
  -- ** @returns uint32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xvmc_create_context_priv_data (arg1 : System.Address) return access stdint_h.uint32_t;  -- /usr/include/xcb/xvmc.h:785
   pragma Import (C, xcb_xvmc_create_context_priv_data, "xcb_xvmc_create_context_priv_data");

  --****************************************************************************
  -- **
  -- ** int xcb_xvmc_create_context_priv_data_length
  -- ** 
  -- ** @param const xcb_xvmc_create_context_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xvmc_create_context_priv_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xvmc.h:798
   pragma Import (C, xcb_xvmc_create_context_priv_data_length, "xcb_xvmc_create_context_priv_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xvmc_create_context_priv_data_end
  -- ** 
  -- ** @param const xcb_xvmc_create_context_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xvmc_create_context_priv_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xvmc.h:811
   pragma Import (C, xcb_xvmc_create_context_priv_data_end, "xcb_xvmc_create_context_priv_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_xvmc_create_context_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xvmc_create_context_reply_t * xcb_xvmc_create_context_reply
  -- ** 
  -- ** @param xcb_connection_t                  *c
  -- ** @param xcb_xvmc_create_context_cookie_t   cookie
  -- ** @param xcb_generic_error_t              **e
  -- ** @returns xcb_xvmc_create_context_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xvmc_create_context_reply
     (arg1 : System.Address;
      arg2 : xcb_xvmc_create_context_cookie_t;
      arg3 : System.Address) return access xcb_xvmc_create_context_reply_t;  -- /usr/include/xcb/xvmc.h:840
   pragma Import (C, xcb_xvmc_create_context_reply, "xcb_xvmc_create_context_reply");

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
  -- ** xcb_void_cookie_t xcb_xvmc_destroy_context_checked
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_xvmc_context_t  context_id
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xvmc_destroy_context_checked (arg1 : System.Address; arg2 : xcb_xvmc_context_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xvmc.h:867
   pragma Import (C, xcb_xvmc_destroy_context_checked, "xcb_xvmc_destroy_context_checked");

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
  -- ** xcb_void_cookie_t xcb_xvmc_destroy_context
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_xvmc_context_t  context_id
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xvmc_destroy_context (arg1 : System.Address; arg2 : xcb_xvmc_context_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xvmc.h:890
   pragma Import (C, xcb_xvmc_destroy_context, "xcb_xvmc_destroy_context");

  --*<  
  --*<  
   function xcb_xvmc_create_surface_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xvmc.h:894
   pragma Import (C, xcb_xvmc_create_surface_sizeof, "xcb_xvmc_create_surface_sizeof");

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
  -- ** xcb_xvmc_create_surface_cookie_t xcb_xvmc_create_surface
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_xvmc_surface_t  surface_id
  -- ** @param xcb_xvmc_context_t  context_id
  -- ** @returns xcb_xvmc_create_surface_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xvmc_create_surface
     (arg1 : System.Address;
      arg2 : xcb_xvmc_surface_t;
      arg3 : xcb_xvmc_context_t) return xcb_xvmc_create_surface_cookie_t;  -- /usr/include/xcb/xvmc.h:917
   pragma Import (C, xcb_xvmc_create_surface, "xcb_xvmc_create_surface");

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
  -- ** xcb_xvmc_create_surface_cookie_t xcb_xvmc_create_surface_unchecked
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_xvmc_surface_t  surface_id
  -- ** @param xcb_xvmc_context_t  context_id
  -- ** @returns xcb_xvmc_create_surface_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xvmc_create_surface_unchecked
     (arg1 : System.Address;
      arg2 : xcb_xvmc_surface_t;
      arg3 : xcb_xvmc_context_t) return xcb_xvmc_create_surface_cookie_t;  -- /usr/include/xcb/xvmc.h:945
   pragma Import (C, xcb_xvmc_create_surface_unchecked, "xcb_xvmc_create_surface_unchecked");

  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** uint32_t * xcb_xvmc_create_surface_priv_data
  -- ** 
  -- ** @param const xcb_xvmc_create_surface_reply_t *R
  -- ** @returns uint32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xvmc_create_surface_priv_data (arg1 : System.Address) return access stdint_h.uint32_t;  -- /usr/include/xcb/xvmc.h:960
   pragma Import (C, xcb_xvmc_create_surface_priv_data, "xcb_xvmc_create_surface_priv_data");

  --****************************************************************************
  -- **
  -- ** int xcb_xvmc_create_surface_priv_data_length
  -- ** 
  -- ** @param const xcb_xvmc_create_surface_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xvmc_create_surface_priv_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xvmc.h:973
   pragma Import (C, xcb_xvmc_create_surface_priv_data_length, "xcb_xvmc_create_surface_priv_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xvmc_create_surface_priv_data_end
  -- ** 
  -- ** @param const xcb_xvmc_create_surface_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xvmc_create_surface_priv_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xvmc.h:986
   pragma Import (C, xcb_xvmc_create_surface_priv_data_end, "xcb_xvmc_create_surface_priv_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_xvmc_create_surface_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xvmc_create_surface_reply_t * xcb_xvmc_create_surface_reply
  -- ** 
  -- ** @param xcb_connection_t                  *c
  -- ** @param xcb_xvmc_create_surface_cookie_t   cookie
  -- ** @param xcb_generic_error_t              **e
  -- ** @returns xcb_xvmc_create_surface_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xvmc_create_surface_reply
     (arg1 : System.Address;
      arg2 : xcb_xvmc_create_surface_cookie_t;
      arg3 : System.Address) return access xcb_xvmc_create_surface_reply_t;  -- /usr/include/xcb/xvmc.h:1015
   pragma Import (C, xcb_xvmc_create_surface_reply, "xcb_xvmc_create_surface_reply");

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
  -- ** xcb_void_cookie_t xcb_xvmc_destroy_surface_checked
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_xvmc_surface_t  surface_id
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xvmc_destroy_surface_checked (arg1 : System.Address; arg2 : xcb_xvmc_surface_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xvmc.h:1042
   pragma Import (C, xcb_xvmc_destroy_surface_checked, "xcb_xvmc_destroy_surface_checked");

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
  -- ** xcb_void_cookie_t xcb_xvmc_destroy_surface
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_xvmc_surface_t  surface_id
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xvmc_destroy_surface (arg1 : System.Address; arg2 : xcb_xvmc_surface_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xvmc.h:1065
   pragma Import (C, xcb_xvmc_destroy_surface, "xcb_xvmc_destroy_surface");

  --*<  
  --*<  
   function xcb_xvmc_create_subpicture_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xvmc.h:1069
   pragma Import (C, xcb_xvmc_create_subpicture_sizeof, "xcb_xvmc_create_subpicture_sizeof");

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
  -- ** xcb_xvmc_create_subpicture_cookie_t xcb_xvmc_create_subpicture
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_xvmc_subpicture_t  subpicture_id
  -- ** @param xcb_xvmc_context_t     context
  -- ** @param uint32_t               xvimage_id
  -- ** @param uint16_t               width
  -- ** @param uint16_t               height
  -- ** @returns xcb_xvmc_create_subpicture_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xvmc_create_subpicture
     (arg1 : System.Address;
      arg2 : xcb_xvmc_subpicture_t;
      arg3 : xcb_xvmc_context_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint16_t) return xcb_xvmc_create_subpicture_cookie_t;  -- /usr/include/xcb/xvmc.h:1095
   pragma Import (C, xcb_xvmc_create_subpicture, "xcb_xvmc_create_subpicture");

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
  -- ** xcb_xvmc_create_subpicture_cookie_t xcb_xvmc_create_subpicture_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_xvmc_subpicture_t  subpicture_id
  -- ** @param xcb_xvmc_context_t     context
  -- ** @param uint32_t               xvimage_id
  -- ** @param uint16_t               width
  -- ** @param uint16_t               height
  -- ** @returns xcb_xvmc_create_subpicture_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xvmc_create_subpicture_unchecked
     (arg1 : System.Address;
      arg2 : xcb_xvmc_subpicture_t;
      arg3 : xcb_xvmc_context_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint16_t) return xcb_xvmc_create_subpicture_cookie_t;  -- /usr/include/xcb/xvmc.h:1129
   pragma Import (C, xcb_xvmc_create_subpicture_unchecked, "xcb_xvmc_create_subpicture_unchecked");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** uint32_t * xcb_xvmc_create_subpicture_priv_data
  -- ** 
  -- ** @param const xcb_xvmc_create_subpicture_reply_t *R
  -- ** @returns uint32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xvmc_create_subpicture_priv_data (arg1 : System.Address) return access stdint_h.uint32_t;  -- /usr/include/xcb/xvmc.h:1147
   pragma Import (C, xcb_xvmc_create_subpicture_priv_data, "xcb_xvmc_create_subpicture_priv_data");

  --****************************************************************************
  -- **
  -- ** int xcb_xvmc_create_subpicture_priv_data_length
  -- ** 
  -- ** @param const xcb_xvmc_create_subpicture_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xvmc_create_subpicture_priv_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xvmc.h:1160
   pragma Import (C, xcb_xvmc_create_subpicture_priv_data_length, "xcb_xvmc_create_subpicture_priv_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xvmc_create_subpicture_priv_data_end
  -- ** 
  -- ** @param const xcb_xvmc_create_subpicture_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xvmc_create_subpicture_priv_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xvmc.h:1173
   pragma Import (C, xcb_xvmc_create_subpicture_priv_data_end, "xcb_xvmc_create_subpicture_priv_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_xvmc_create_subpicture_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xvmc_create_subpicture_reply_t * xcb_xvmc_create_subpicture_reply
  -- ** 
  -- ** @param xcb_connection_t                     *c
  -- ** @param xcb_xvmc_create_subpicture_cookie_t   cookie
  -- ** @param xcb_generic_error_t                 **e
  -- ** @returns xcb_xvmc_create_subpicture_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xvmc_create_subpicture_reply
     (arg1 : System.Address;
      arg2 : xcb_xvmc_create_subpicture_cookie_t;
      arg3 : System.Address) return access xcb_xvmc_create_subpicture_reply_t;  -- /usr/include/xcb/xvmc.h:1202
   pragma Import (C, xcb_xvmc_create_subpicture_reply, "xcb_xvmc_create_subpicture_reply");

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
  -- ** xcb_void_cookie_t xcb_xvmc_destroy_subpicture_checked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_xvmc_subpicture_t  subpicture_id
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xvmc_destroy_subpicture_checked (arg1 : System.Address; arg2 : xcb_xvmc_subpicture_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xvmc.h:1229
   pragma Import (C, xcb_xvmc_destroy_subpicture_checked, "xcb_xvmc_destroy_subpicture_checked");

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
  -- ** xcb_void_cookie_t xcb_xvmc_destroy_subpicture
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_xvmc_subpicture_t  subpicture_id
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xvmc_destroy_subpicture (arg1 : System.Address; arg2 : xcb_xvmc_subpicture_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xvmc.h:1252
   pragma Import (C, xcb_xvmc_destroy_subpicture, "xcb_xvmc_destroy_subpicture");

  --*<  
  --*<  
   function xcb_xvmc_list_subpicture_types_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xvmc.h:1256
   pragma Import (C, xcb_xvmc_list_subpicture_types_sizeof, "xcb_xvmc_list_subpicture_types_sizeof");

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
  -- ** xcb_xvmc_list_subpicture_types_cookie_t xcb_xvmc_list_subpicture_types
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_xv_port_t       port_id
  -- ** @param xcb_xvmc_surface_t  surface_id
  -- ** @returns xcb_xvmc_list_subpicture_types_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xvmc_list_subpicture_types
     (arg1 : System.Address;
      arg2 : xcb_xv_h.xcb_xv_port_t;
      arg3 : xcb_xvmc_surface_t) return xcb_xvmc_list_subpicture_types_cookie_t;  -- /usr/include/xcb/xvmc.h:1279
   pragma Import (C, xcb_xvmc_list_subpicture_types, "xcb_xvmc_list_subpicture_types");

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
  -- ** xcb_xvmc_list_subpicture_types_cookie_t xcb_xvmc_list_subpicture_types_unchecked
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_xv_port_t       port_id
  -- ** @param xcb_xvmc_surface_t  surface_id
  -- ** @returns xcb_xvmc_list_subpicture_types_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xvmc_list_subpicture_types_unchecked
     (arg1 : System.Address;
      arg2 : xcb_xv_h.xcb_xv_port_t;
      arg3 : xcb_xvmc_surface_t) return xcb_xvmc_list_subpicture_types_cookie_t;  -- /usr/include/xcb/xvmc.h:1307
   pragma Import (C, xcb_xvmc_list_subpicture_types_unchecked, "xcb_xvmc_list_subpicture_types_unchecked");

  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xv_image_format_info_t * xcb_xvmc_list_subpicture_types_types
  -- ** 
  -- ** @param const xcb_xvmc_list_subpicture_types_reply_t *R
  -- ** @returns xcb_xv_image_format_info_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xvmc_list_subpicture_types_types (arg1 : System.Address) return access xcb_xv_h.xcb_xv_image_format_info_t;  -- /usr/include/xcb/xvmc.h:1322
   pragma Import (C, xcb_xvmc_list_subpicture_types_types, "xcb_xvmc_list_subpicture_types_types");

  --****************************************************************************
  -- **
  -- ** int xcb_xvmc_list_subpicture_types_types_length
  -- ** 
  -- ** @param const xcb_xvmc_list_subpicture_types_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xvmc_list_subpicture_types_types_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xvmc.h:1335
   pragma Import (C, xcb_xvmc_list_subpicture_types_types_length, "xcb_xvmc_list_subpicture_types_types_length");

  --****************************************************************************
  -- **
  -- ** xcb_xv_image_format_info_iterator_t xcb_xvmc_list_subpicture_types_types_iterator
  -- ** 
  -- ** @param const xcb_xvmc_list_subpicture_types_reply_t *R
  -- ** @returns xcb_xv_image_format_info_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xvmc_list_subpicture_types_types_iterator (arg1 : System.Address) return xcb_xv_h.xcb_xv_image_format_info_iterator_t;  -- /usr/include/xcb/xvmc.h:1348
   pragma Import (C, xcb_xvmc_list_subpicture_types_types_iterator, "xcb_xvmc_list_subpicture_types_types_iterator");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_xvmc_list_subpicture_types_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xvmc_list_subpicture_types_reply_t * xcb_xvmc_list_subpicture_types_reply
  -- ** 
  -- ** @param xcb_connection_t                         *c
  -- ** @param xcb_xvmc_list_subpicture_types_cookie_t   cookie
  -- ** @param xcb_generic_error_t                     **e
  -- ** @returns xcb_xvmc_list_subpicture_types_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xvmc_list_subpicture_types_reply
     (arg1 : System.Address;
      arg2 : xcb_xvmc_list_subpicture_types_cookie_t;
      arg3 : System.Address) return access xcb_xvmc_list_subpicture_types_reply_t;  -- /usr/include/xcb/xvmc.h:1377
   pragma Import (C, xcb_xvmc_list_subpicture_types_reply, "xcb_xvmc_list_subpicture_types_reply");

  --*<  
  --*<  
  --*
  -- * @}
  --  

end xcb_xvmc_h;
