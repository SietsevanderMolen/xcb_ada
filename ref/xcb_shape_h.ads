with Interfaces.C; use Interfaces.C;
with xcb_xcb_h;
with stdint_h;
with xcb_xproto_h;
with sys_types_h;
with System;

package xcb_shape_h is

   --  unsupported macro: XCB_SHAPE_MAJOR_VERSION 1
   --  unsupported macro: XCB_SHAPE_MINOR_VERSION 1
   --  unsupported macro: XCB_SHAPE_NOTIFY 0
   --  unsupported macro: XCB_SHAPE_QUERY_VERSION 0
   --  unsupported macro: XCB_SHAPE_RECTANGLES 1
   --  unsupported macro: XCB_SHAPE_MASK 2
   --  unsupported macro: XCB_SHAPE_COMBINE 3
   --  unsupported macro: XCB_SHAPE_OFFSET 4
   --  unsupported macro: XCB_SHAPE_QUERY_EXTENTS 5
   --  unsupported macro: XCB_SHAPE_SELECT_INPUT 6
   --  unsupported macro: XCB_SHAPE_INPUT_SELECTED 7
   --  unsupported macro: XCB_SHAPE_GET_RECTANGLES 8
  -- * This file generated automatically from shape.xml by c_client.py.
  -- * Edit at your peril.
  --  

  --*
  -- * @defgroup XCB_Shape_API XCB Shape API
  -- * @brief Shape XCB Protocol Implementation.
  -- * @{
  -- * 

   xcb_shape_id : aliased xcb_xcb_h.xcb_extension_t;  -- /usr/include/xcb/shape.h:25
   pragma Import (C, xcb_shape_id, "xcb_shape_id");

   subtype xcb_shape_op_t is stdint_h.uint8_t;  -- /usr/include/xcb/shape.h:27

  --*
  -- * @brief xcb_shape_op_iterator_t
  -- * 

  --*<   
   type xcb_shape_op_iterator_t is record
      data : access xcb_shape_op_t;  -- /usr/include/xcb/shape.h:33
      c_rem : aliased int;  -- /usr/include/xcb/shape.h:34
      index : aliased int;  -- /usr/include/xcb/shape.h:35
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_shape_op_iterator_t);  -- /usr/include/xcb/shape.h:32

  --*<   
  --*<   
   subtype xcb_shape_kind_t is stdint_h.uint8_t;  -- /usr/include/xcb/shape.h:38

  --*
  -- * @brief xcb_shape_kind_iterator_t
  -- * 

  --*<   
   type xcb_shape_kind_iterator_t is record
      data : access xcb_shape_kind_t;  -- /usr/include/xcb/shape.h:44
      c_rem : aliased int;  -- /usr/include/xcb/shape.h:45
      index : aliased int;  -- /usr/include/xcb/shape.h:46
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_shape_kind_iterator_t);  -- /usr/include/xcb/shape.h:43

  --*<   
  --*<   
   type xcb_shape_so_t is 
     (XCB_SHAPE_SO_SET,
      XCB_SHAPE_SO_UNION,
      XCB_SHAPE_SO_INTERSECT,
      XCB_SHAPE_SO_SUBTRACT,
      XCB_SHAPE_SO_INVERT);
   pragma Convention (C, xcb_shape_so_t);  -- /usr/include/xcb/shape.h:49

   type xcb_shape_sk_t is 
     (XCB_SHAPE_SK_BOUNDING,
      XCB_SHAPE_SK_CLIP,
      XCB_SHAPE_SK_INPUT);
   pragma Convention (C, xcb_shape_sk_t);  -- /usr/include/xcb/shape.h:57

  --* Opcode for xcb_shape_notify.  
  --*
  -- * @brief xcb_shape_notify_event_t
  -- * 

  --*<   
   type anon4618_anon4620_array is array (0 .. 10) of aliased stdint_h.uint8_t;
   type xcb_shape_notify_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shape.h:70
      shape_kind : aliased xcb_shape_kind_t;  -- /usr/include/xcb/shape.h:71
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/shape.h:72
      affected_window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/shape.h:73
      extents_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/shape.h:74
      extents_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/shape.h:75
      extents_width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/shape.h:76
      extents_height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/shape.h:77
      server_time : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/shape.h:78
      shaped : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shape.h:79
      pad0 : aliased anon4618_anon4620_array;  -- /usr/include/xcb/shape.h:80
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_shape_notify_event_t);  -- /usr/include/xcb/shape.h:69

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
  -- * @brief xcb_shape_query_version_cookie_t
  -- * 

  --*<   
   type xcb_shape_query_version_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/shape.h:87
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_shape_query_version_cookie_t);  -- /usr/include/xcb/shape.h:86

  --* Opcode for xcb_shape_query_version.  
  --*
  -- * @brief xcb_shape_query_version_request_t
  -- * 

  --*<   
   type xcb_shape_query_version_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shape.h:97
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shape.h:98
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/shape.h:99
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_shape_query_version_request_t);  -- /usr/include/xcb/shape.h:96

  --*<   
  --*<   
  --*
  -- * @brief xcb_shape_query_version_reply_t
  -- * 

  --*<   
   type xcb_shape_query_version_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shape.h:106
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shape.h:107
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/shape.h:108
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/shape.h:109
      major_version : aliased stdint_h.uint16_t;  -- /usr/include/xcb/shape.h:110
      minor_version : aliased stdint_h.uint16_t;  -- /usr/include/xcb/shape.h:111
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_shape_query_version_reply_t);  -- /usr/include/xcb/shape.h:105

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_shape_rectangles.  
  --*
  -- * @brief xcb_shape_rectangles_request_t
  -- * 

  --*<   
   type xcb_shape_rectangles_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shape.h:121
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shape.h:122
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/shape.h:123
      operation : aliased xcb_shape_op_t;  -- /usr/include/xcb/shape.h:124
      destination_kind : aliased xcb_shape_kind_t;  -- /usr/include/xcb/shape.h:125
      ordering : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shape.h:126
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shape.h:127
      destination_window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/shape.h:128
      x_offset : aliased sys_types_h.int16_t;  -- /usr/include/xcb/shape.h:129
      y_offset : aliased sys_types_h.int16_t;  -- /usr/include/xcb/shape.h:130
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_shape_rectangles_request_t);  -- /usr/include/xcb/shape.h:120

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_shape_mask.  
  --*
  -- * @brief xcb_shape_mask_request_t
  -- * 

  --*<   
   type anon4631_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_shape_mask_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shape.h:140
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shape.h:141
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/shape.h:142
      operation : aliased xcb_shape_op_t;  -- /usr/include/xcb/shape.h:143
      destination_kind : aliased xcb_shape_kind_t;  -- /usr/include/xcb/shape.h:144
      pad0 : aliased anon4631_anon1795_array;  -- /usr/include/xcb/shape.h:145
      destination_window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/shape.h:146
      x_offset : aliased sys_types_h.int16_t;  -- /usr/include/xcb/shape.h:147
      y_offset : aliased sys_types_h.int16_t;  -- /usr/include/xcb/shape.h:148
      source_bitmap : aliased xcb_xproto_h.xcb_pixmap_t;  -- /usr/include/xcb/shape.h:149
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_shape_mask_request_t);  -- /usr/include/xcb/shape.h:139

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_shape_combine.  
  --*
  -- * @brief xcb_shape_combine_request_t
  -- * 

  --*<   
   type xcb_shape_combine_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shape.h:159
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shape.h:160
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/shape.h:161
      operation : aliased xcb_shape_op_t;  -- /usr/include/xcb/shape.h:162
      destination_kind : aliased xcb_shape_kind_t;  -- /usr/include/xcb/shape.h:163
      source_kind : aliased xcb_shape_kind_t;  -- /usr/include/xcb/shape.h:164
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shape.h:165
      destination_window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/shape.h:166
      x_offset : aliased sys_types_h.int16_t;  -- /usr/include/xcb/shape.h:167
      y_offset : aliased sys_types_h.int16_t;  -- /usr/include/xcb/shape.h:168
      source_window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/shape.h:169
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_shape_combine_request_t);  -- /usr/include/xcb/shape.h:158

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
  --* Opcode for xcb_shape_offset.  
  --*
  -- * @brief xcb_shape_offset_request_t
  -- * 

  --*<   
   type anon4637_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_shape_offset_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shape.h:179
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shape.h:180
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/shape.h:181
      destination_kind : aliased xcb_shape_kind_t;  -- /usr/include/xcb/shape.h:182
      pad0 : aliased anon4637_anon1853_array;  -- /usr/include/xcb/shape.h:183
      destination_window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/shape.h:184
      x_offset : aliased sys_types_h.int16_t;  -- /usr/include/xcb/shape.h:185
      y_offset : aliased sys_types_h.int16_t;  -- /usr/include/xcb/shape.h:186
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_shape_offset_request_t);  -- /usr/include/xcb/shape.h:178

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_shape_query_extents_cookie_t
  -- * 

  --*<   
   type xcb_shape_query_extents_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/shape.h:193
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_shape_query_extents_cookie_t);  -- /usr/include/xcb/shape.h:192

  --* Opcode for xcb_shape_query_extents.  
  --*
  -- * @brief xcb_shape_query_extents_request_t
  -- * 

  --*<   
   type xcb_shape_query_extents_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shape.h:203
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shape.h:204
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/shape.h:205
      destination_window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/shape.h:206
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_shape_query_extents_request_t);  -- /usr/include/xcb/shape.h:202

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_shape_query_extents_reply_t
  -- * 

  --*<   
   type anon4645_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_shape_query_extents_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shape.h:213
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shape.h:214
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/shape.h:215
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/shape.h:216
      bounding_shaped : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shape.h:217
      clip_shaped : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shape.h:218
      pad1 : aliased anon4645_anon1795_array;  -- /usr/include/xcb/shape.h:219
      bounding_shape_extents_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/shape.h:220
      bounding_shape_extents_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/shape.h:221
      bounding_shape_extents_width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/shape.h:222
      bounding_shape_extents_height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/shape.h:223
      clip_shape_extents_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/shape.h:224
      clip_shape_extents_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/shape.h:225
      clip_shape_extents_width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/shape.h:226
      clip_shape_extents_height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/shape.h:227
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_shape_query_extents_reply_t);  -- /usr/include/xcb/shape.h:212

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
  --* Opcode for xcb_shape_select_input.  
  --*
  -- * @brief xcb_shape_select_input_request_t
  -- * 

  --*<   
   type anon4649_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_shape_select_input_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shape.h:237
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shape.h:238
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/shape.h:239
      destination_window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/shape.h:240
      enable : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shape.h:241
      pad0 : aliased anon4649_anon1853_array;  -- /usr/include/xcb/shape.h:242
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_shape_select_input_request_t);  -- /usr/include/xcb/shape.h:236

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_shape_input_selected_cookie_t
  -- * 

  --*<   
   type xcb_shape_input_selected_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/shape.h:249
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_shape_input_selected_cookie_t);  -- /usr/include/xcb/shape.h:248

  --* Opcode for xcb_shape_input_selected.  
  --*
  -- * @brief xcb_shape_input_selected_request_t
  -- * 

  --*<   
   type xcb_shape_input_selected_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shape.h:259
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shape.h:260
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/shape.h:261
      destination_window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/shape.h:262
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_shape_input_selected_request_t);  -- /usr/include/xcb/shape.h:258

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_shape_input_selected_reply_t
  -- * 

  --*<   
   type xcb_shape_input_selected_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shape.h:269
      enabled : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shape.h:270
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/shape.h:271
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/shape.h:272
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_shape_input_selected_reply_t);  -- /usr/include/xcb/shape.h:268

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_shape_get_rectangles_cookie_t
  -- * 

  --*<   
   type xcb_shape_get_rectangles_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/shape.h:279
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_shape_get_rectangles_cookie_t);  -- /usr/include/xcb/shape.h:278

  --* Opcode for xcb_shape_get_rectangles.  
  --*
  -- * @brief xcb_shape_get_rectangles_request_t
  -- * 

  --*<   
   type anon4661_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_shape_get_rectangles_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shape.h:289
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shape.h:290
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/shape.h:291
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/shape.h:292
      source_kind : aliased xcb_shape_kind_t;  -- /usr/include/xcb/shape.h:293
      pad0 : aliased anon4661_anon1853_array;  -- /usr/include/xcb/shape.h:294
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_shape_get_rectangles_request_t);  -- /usr/include/xcb/shape.h:288

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_shape_get_rectangles_reply_t
  -- * 

  --*<   
   type anon4665_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_shape_get_rectangles_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shape.h:301
      ordering : aliased stdint_h.uint8_t;  -- /usr/include/xcb/shape.h:302
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/shape.h:303
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/shape.h:304
      rectangles_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/shape.h:305
      pad0 : aliased anon4665_anon1939_array;  -- /usr/include/xcb/shape.h:306
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_shape_get_rectangles_reply_t);  -- /usr/include/xcb/shape.h:300

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_shape_op_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_shape_op_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_shape_op_next
  -- ** 
  -- ** @param xcb_shape_op_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_shape_op_next (arg1 : access xcb_shape_op_iterator_t);  -- /usr/include/xcb/shape.h:328
   pragma Import (C, xcb_shape_op_next, "xcb_shape_op_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_shape_op_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_shape_op_end
  -- ** 
  -- ** @param xcb_shape_op_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_shape_op_end (arg1 : xcb_shape_op_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/shape.h:350
   pragma Import (C, xcb_shape_op_end, "xcb_shape_op_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_shape_kind_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_shape_kind_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_shape_kind_next
  -- ** 
  -- ** @param xcb_shape_kind_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_shape_kind_next (arg1 : access xcb_shape_kind_iterator_t);  -- /usr/include/xcb/shape.h:371
   pragma Import (C, xcb_shape_kind_next, "xcb_shape_kind_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_shape_kind_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_shape_kind_end
  -- ** 
  -- ** @param xcb_shape_kind_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_shape_kind_end (arg1 : xcb_shape_kind_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/shape.h:393
   pragma Import (C, xcb_shape_kind_end, "xcb_shape_kind_end");

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
  -- ** xcb_shape_query_version_cookie_t xcb_shape_query_version
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_shape_query_version_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_shape_query_version (arg1 : System.Address) return xcb_shape_query_version_cookie_t;  -- /usr/include/xcb/shape.h:414
   pragma Import (C, xcb_shape_query_version, "xcb_shape_query_version");

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
  -- ** xcb_shape_query_version_cookie_t xcb_shape_query_version_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_shape_query_version_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_shape_query_version_unchecked (arg1 : System.Address) return xcb_shape_query_version_cookie_t;  -- /usr/include/xcb/shape.h:438
   pragma Import (C, xcb_shape_query_version_unchecked, "xcb_shape_query_version_unchecked");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_shape_query_version_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_shape_query_version_reply_t * xcb_shape_query_version_reply
  -- ** 
  -- ** @param xcb_connection_t                  *c
  -- ** @param xcb_shape_query_version_cookie_t   cookie
  -- ** @param xcb_generic_error_t              **e
  -- ** @returns xcb_shape_query_version_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_shape_query_version_reply
     (arg1 : System.Address;
      arg2 : xcb_shape_query_version_cookie_t;
      arg3 : System.Address) return access xcb_shape_query_version_reply_t;  -- /usr/include/xcb/shape.h:467
   pragma Import (C, xcb_shape_query_version_reply, "xcb_shape_query_version_reply");

  --*<  
  --*<  
  --*<  
   function xcb_shape_rectangles_sizeof (arg1 : System.Address; arg2 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/shape.h:472
   pragma Import (C, xcb_shape_rectangles_sizeof, "xcb_shape_rectangles_sizeof");

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
  -- ** xcb_void_cookie_t xcb_shape_rectangles_checked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_shape_op_t         operation
  -- ** @param xcb_shape_kind_t       destination_kind
  -- ** @param uint8_t                ordering
  -- ** @param xcb_window_t           destination_window
  -- ** @param int16_t                x_offset
  -- ** @param int16_t                y_offset
  -- ** @param uint32_t               rectangles_len
  -- ** @param const xcb_rectangle_t *rectangles
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_shape_rectangles_checked
     (arg1 : System.Address;
      arg2 : xcb_shape_op_t;
      arg3 : xcb_shape_kind_t;
      arg4 : stdint_h.uint8_t;
      arg5 : xcb_xproto_h.xcb_window_t;
      arg6 : sys_types_h.int16_t;
      arg7 : sys_types_h.int16_t;
      arg8 : stdint_h.uint32_t;
      arg9 : access constant xcb_xproto_h.xcb_rectangle_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/shape.h:505
   pragma Import (C, xcb_shape_rectangles_checked, "xcb_shape_rectangles_checked");

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
  -- ** xcb_void_cookie_t xcb_shape_rectangles
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_shape_op_t         operation
  -- ** @param xcb_shape_kind_t       destination_kind
  -- ** @param uint8_t                ordering
  -- ** @param xcb_window_t           destination_window
  -- ** @param int16_t                x_offset
  -- ** @param int16_t                y_offset
  -- ** @param uint32_t               rectangles_len
  -- ** @param const xcb_rectangle_t *rectangles
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_shape_rectangles
     (arg1 : System.Address;
      arg2 : xcb_shape_op_t;
      arg3 : xcb_shape_kind_t;
      arg4 : stdint_h.uint8_t;
      arg5 : xcb_xproto_h.xcb_window_t;
      arg6 : sys_types_h.int16_t;
      arg7 : sys_types_h.int16_t;
      arg8 : stdint_h.uint32_t;
      arg9 : access constant xcb_xproto_h.xcb_rectangle_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/shape.h:542
   pragma Import (C, xcb_shape_rectangles, "xcb_shape_rectangles");

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
  -- ** xcb_void_cookie_t xcb_shape_mask_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_shape_op_t    operation
  -- ** @param xcb_shape_kind_t  destination_kind
  -- ** @param xcb_window_t      destination_window
  -- ** @param int16_t           x_offset
  -- ** @param int16_t           y_offset
  -- ** @param xcb_pixmap_t      source_bitmap
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_shape_mask_checked
     (arg1 : System.Address;
      arg2 : xcb_shape_op_t;
      arg3 : xcb_shape_kind_t;
      arg4 : xcb_xproto_h.xcb_window_t;
      arg5 : sys_types_h.int16_t;
      arg6 : sys_types_h.int16_t;
      arg7 : xcb_xproto_h.xcb_pixmap_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/shape.h:580
   pragma Import (C, xcb_shape_mask_checked, "xcb_shape_mask_checked");

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
  -- ** xcb_void_cookie_t xcb_shape_mask
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_shape_op_t    operation
  -- ** @param xcb_shape_kind_t  destination_kind
  -- ** @param xcb_window_t      destination_window
  -- ** @param int16_t           x_offset
  -- ** @param int16_t           y_offset
  -- ** @param xcb_pixmap_t      source_bitmap
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_shape_mask
     (arg1 : System.Address;
      arg2 : xcb_shape_op_t;
      arg3 : xcb_shape_kind_t;
      arg4 : xcb_xproto_h.xcb_window_t;
      arg5 : sys_types_h.int16_t;
      arg6 : sys_types_h.int16_t;
      arg7 : xcb_xproto_h.xcb_pixmap_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/shape.h:613
   pragma Import (C, xcb_shape_mask, "xcb_shape_mask");

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
  -- ** xcb_void_cookie_t xcb_shape_combine_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_shape_op_t    operation
  -- ** @param xcb_shape_kind_t  destination_kind
  -- ** @param xcb_shape_kind_t  source_kind
  -- ** @param xcb_window_t      destination_window
  -- ** @param int16_t           x_offset
  -- ** @param int16_t           y_offset
  -- ** @param xcb_window_t      source_window
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_shape_combine_checked
     (arg1 : System.Address;
      arg2 : xcb_shape_op_t;
      arg3 : xcb_shape_kind_t;
      arg4 : xcb_shape_kind_t;
      arg5 : xcb_xproto_h.xcb_window_t;
      arg6 : sys_types_h.int16_t;
      arg7 : sys_types_h.int16_t;
      arg8 : xcb_xproto_h.xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/shape.h:650
   pragma Import (C, xcb_shape_combine_checked, "xcb_shape_combine_checked");

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
  -- ** xcb_void_cookie_t xcb_shape_combine
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_shape_op_t    operation
  -- ** @param xcb_shape_kind_t  destination_kind
  -- ** @param xcb_shape_kind_t  source_kind
  -- ** @param xcb_window_t      destination_window
  -- ** @param int16_t           x_offset
  -- ** @param int16_t           y_offset
  -- ** @param xcb_window_t      source_window
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_shape_combine
     (arg1 : System.Address;
      arg2 : xcb_shape_op_t;
      arg3 : xcb_shape_kind_t;
      arg4 : xcb_shape_kind_t;
      arg5 : xcb_xproto_h.xcb_window_t;
      arg6 : sys_types_h.int16_t;
      arg7 : sys_types_h.int16_t;
      arg8 : xcb_xproto_h.xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/shape.h:685
   pragma Import (C, xcb_shape_combine, "xcb_shape_combine");

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
  -- ** xcb_void_cookie_t xcb_shape_offset_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_shape_kind_t  destination_kind
  -- ** @param xcb_window_t      destination_window
  -- ** @param int16_t           x_offset
  -- ** @param int16_t           y_offset
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_shape_offset_checked
     (arg1 : System.Address;
      arg2 : xcb_shape_kind_t;
      arg3 : xcb_xproto_h.xcb_window_t;
      arg4 : sys_types_h.int16_t;
      arg5 : sys_types_h.int16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/shape.h:720
   pragma Import (C, xcb_shape_offset_checked, "xcb_shape_offset_checked");

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
  -- ** xcb_void_cookie_t xcb_shape_offset
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_shape_kind_t  destination_kind
  -- ** @param xcb_window_t      destination_window
  -- ** @param int16_t           x_offset
  -- ** @param int16_t           y_offset
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_shape_offset
     (arg1 : System.Address;
      arg2 : xcb_shape_kind_t;
      arg3 : xcb_xproto_h.xcb_window_t;
      arg4 : sys_types_h.int16_t;
      arg5 : sys_types_h.int16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/shape.h:749
   pragma Import (C, xcb_shape_offset, "xcb_shape_offset");

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
  -- ** xcb_shape_query_extents_cookie_t xcb_shape_query_extents
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      destination_window
  -- ** @returns xcb_shape_query_extents_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_shape_query_extents (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_shape_query_extents_cookie_t;  -- /usr/include/xcb/shape.h:775
   pragma Import (C, xcb_shape_query_extents, "xcb_shape_query_extents");

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
  -- ** xcb_shape_query_extents_cookie_t xcb_shape_query_extents_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      destination_window
  -- ** @returns xcb_shape_query_extents_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_shape_query_extents_unchecked (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_shape_query_extents_cookie_t;  -- /usr/include/xcb/shape.h:801
   pragma Import (C, xcb_shape_query_extents_unchecked, "xcb_shape_query_extents_unchecked");

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
  -- * xcb_shape_query_extents_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_shape_query_extents_reply_t * xcb_shape_query_extents_reply
  -- ** 
  -- ** @param xcb_connection_t                  *c
  -- ** @param xcb_shape_query_extents_cookie_t   cookie
  -- ** @param xcb_generic_error_t              **e
  -- ** @returns xcb_shape_query_extents_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_shape_query_extents_reply
     (arg1 : System.Address;
      arg2 : xcb_shape_query_extents_cookie_t;
      arg3 : System.Address) return access xcb_shape_query_extents_reply_t;  -- /usr/include/xcb/shape.h:831
   pragma Import (C, xcb_shape_query_extents_reply, "xcb_shape_query_extents_reply");

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
  -- ** xcb_void_cookie_t xcb_shape_select_input_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      destination_window
  -- ** @param uint8_t           enable
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_shape_select_input_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/shape.h:859
   pragma Import (C, xcb_shape_select_input_checked, "xcb_shape_select_input_checked");

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
  -- ** xcb_void_cookie_t xcb_shape_select_input
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      destination_window
  -- ** @param uint8_t           enable
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_shape_select_input
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/shape.h:884
   pragma Import (C, xcb_shape_select_input, "xcb_shape_select_input");

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
  -- ** xcb_shape_input_selected_cookie_t xcb_shape_input_selected
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      destination_window
  -- ** @returns xcb_shape_input_selected_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_shape_input_selected (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_shape_input_selected_cookie_t;  -- /usr/include/xcb/shape.h:908
   pragma Import (C, xcb_shape_input_selected, "xcb_shape_input_selected");

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
  -- ** xcb_shape_input_selected_cookie_t xcb_shape_input_selected_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      destination_window
  -- ** @returns xcb_shape_input_selected_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_shape_input_selected_unchecked (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_shape_input_selected_cookie_t;  -- /usr/include/xcb/shape.h:934
   pragma Import (C, xcb_shape_input_selected_unchecked, "xcb_shape_input_selected_unchecked");

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
  -- * xcb_shape_input_selected_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_shape_input_selected_reply_t * xcb_shape_input_selected_reply
  -- ** 
  -- ** @param xcb_connection_t                   *c
  -- ** @param xcb_shape_input_selected_cookie_t   cookie
  -- ** @param xcb_generic_error_t               **e
  -- ** @returns xcb_shape_input_selected_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_shape_input_selected_reply
     (arg1 : System.Address;
      arg2 : xcb_shape_input_selected_cookie_t;
      arg3 : System.Address) return access xcb_shape_input_selected_reply_t;  -- /usr/include/xcb/shape.h:964
   pragma Import (C, xcb_shape_input_selected_reply, "xcb_shape_input_selected_reply");

  --*<  
  --*<  
  --*<  
   function xcb_shape_get_rectangles_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/shape.h:969
   pragma Import (C, xcb_shape_get_rectangles_sizeof, "xcb_shape_get_rectangles_sizeof");

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
  -- ** xcb_shape_get_rectangles_cookie_t xcb_shape_get_rectangles
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @param xcb_shape_kind_t  source_kind
  -- ** @returns xcb_shape_get_rectangles_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_shape_get_rectangles
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_shape_kind_t) return xcb_shape_get_rectangles_cookie_t;  -- /usr/include/xcb/shape.h:992
   pragma Import (C, xcb_shape_get_rectangles, "xcb_shape_get_rectangles");

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
  -- ** xcb_shape_get_rectangles_cookie_t xcb_shape_get_rectangles_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @param xcb_shape_kind_t  source_kind
  -- ** @returns xcb_shape_get_rectangles_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_shape_get_rectangles_unchecked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_shape_kind_t) return xcb_shape_get_rectangles_cookie_t;  -- /usr/include/xcb/shape.h:1020
   pragma Import (C, xcb_shape_get_rectangles_unchecked, "xcb_shape_get_rectangles_unchecked");

  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_rectangle_t * xcb_shape_get_rectangles_rectangles
  -- ** 
  -- ** @param const xcb_shape_get_rectangles_reply_t *R
  -- ** @returns xcb_rectangle_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_shape_get_rectangles_rectangles (arg1 : System.Address) return access xcb_xproto_h.xcb_rectangle_t;  -- /usr/include/xcb/shape.h:1035
   pragma Import (C, xcb_shape_get_rectangles_rectangles, "xcb_shape_get_rectangles_rectangles");

  --****************************************************************************
  -- **
  -- ** int xcb_shape_get_rectangles_rectangles_length
  -- ** 
  -- ** @param const xcb_shape_get_rectangles_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_shape_get_rectangles_rectangles_length (arg1 : System.Address) return int;  -- /usr/include/xcb/shape.h:1048
   pragma Import (C, xcb_shape_get_rectangles_rectangles_length, "xcb_shape_get_rectangles_rectangles_length");

  --****************************************************************************
  -- **
  -- ** xcb_rectangle_iterator_t xcb_shape_get_rectangles_rectangles_iterator
  -- ** 
  -- ** @param const xcb_shape_get_rectangles_reply_t *R
  -- ** @returns xcb_rectangle_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_shape_get_rectangles_rectangles_iterator (arg1 : System.Address) return xcb_xproto_h.xcb_rectangle_iterator_t;  -- /usr/include/xcb/shape.h:1061
   pragma Import (C, xcb_shape_get_rectangles_rectangles_iterator, "xcb_shape_get_rectangles_rectangles_iterator");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_shape_get_rectangles_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_shape_get_rectangles_reply_t * xcb_shape_get_rectangles_reply
  -- ** 
  -- ** @param xcb_connection_t                   *c
  -- ** @param xcb_shape_get_rectangles_cookie_t   cookie
  -- ** @param xcb_generic_error_t               **e
  -- ** @returns xcb_shape_get_rectangles_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_shape_get_rectangles_reply
     (arg1 : System.Address;
      arg2 : xcb_shape_get_rectangles_cookie_t;
      arg3 : System.Address) return access xcb_shape_get_rectangles_reply_t;  -- /usr/include/xcb/shape.h:1090
   pragma Import (C, xcb_shape_get_rectangles_reply, "xcb_shape_get_rectangles_reply");

  --*<  
  --*<  
  --*
  -- * @}
  --  

end xcb_shape_h;
