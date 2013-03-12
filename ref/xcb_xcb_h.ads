with Interfaces.C; use Interfaces.C;
with System;
with stdint_h;
with Interfaces.C.Strings;
limited with xcb_xproto_h;

package xcb_xcb_h is

   --  unsupported macro: X_PROTOCOL 11
   --  unsupported macro: X_PROTOCOL_REVISION 0
   --  unsupported macro: X_TCP_PORT 6000
   --  unsupported macro: XCB_CONN_ERROR 1
   --  unsupported macro: XCB_CONN_CLOSED_EXT_NOTSUPPORTED 2
   --  unsupported macro: XCB_CONN_CLOSED_MEM_INSUFFICIENT 3
   --  unsupported macro: XCB_CONN_CLOSED_REQ_LEN_EXCEED 4
   --  unsupported macro: XCB_CONN_CLOSED_PARSE_ERR 5
   --  unsupported macro: XCB_CONN_CLOSED_INVALID_SCREEN 6
   --  arg-macro: function XCB_TYPE_PAD (T, I)
   --    return -(I) and (sizeof(T) > 4 ? 3 : sizeof(T) - 1);
   --  unsupported macro: XCB_NONE 0L
   --  unsupported macro: XCB_COPY_FROM_PARENT 0L
   --  unsupported macro: XCB_CURRENT_TIME 0L
   --  unsupported macro: XCB_NO_SYMBOL 0L
   --  skipped empty struct xcb_connection_t

   type xcb_generic_iterator_t is record
      data : System.Address;  -- /usr/include/xcb/xcb.h:110
      c_rem : aliased int;  -- /usr/include/xcb/xcb.h:111
      index : aliased int;  -- /usr/include/xcb/xcb.h:112
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_generic_iterator_t);  -- /usr/include/xcb/xcb.h:113

   type xcb_generic_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xcb.h:121
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xcb.h:122
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xcb.h:123
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb.h:124
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_generic_reply_t);  -- /usr/include/xcb/xcb.h:125

   type xcb_generic_event_t_pad_array is array (0 .. 6) of aliased stdint_h.uint32_t;
   type xcb_generic_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xcb.h:133
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xcb.h:134
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xcb.h:135
      pad : aliased xcb_generic_event_t_pad_array;  -- /usr/include/xcb/xcb.h:136
      full_sequence : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb.h:137
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_generic_event_t);  -- /usr/include/xcb/xcb.h:138

   type xcb_ge_event_t_pad_array is array (0 .. 4) of aliased stdint_h.uint32_t;
   type xcb_ge_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xcb.h:147
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xcb.h:148
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xcb.h:149
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb.h:150
      event_type : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xcb.h:151
      pad1 : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xcb.h:152
      pad : aliased xcb_ge_event_t_pad_array;  -- /usr/include/xcb/xcb.h:153
      full_sequence : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb.h:154
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_ge_event_t);  -- /usr/include/xcb/xcb.h:155

   type xcb_generic_error_t_pad_array is array (0 .. 4) of aliased stdint_h.uint32_t;
   type xcb_generic_error_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xcb.h:163
      error_code : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xcb.h:164
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xcb.h:165
      resource_id : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb.h:166
      minor_code : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xcb.h:167
      major_code : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xcb.h:168
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xcb.h:169
      pad : aliased xcb_generic_error_t_pad_array;  -- /usr/include/xcb/xcb.h:170
      full_sequence : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb.h:171
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_generic_error_t);  -- /usr/include/xcb/xcb.h:172

   type xcb_void_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xcb.h:180
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_void_cookie_t);  -- /usr/include/xcb/xcb.h:181

   type xcb_auth_info_t is record
      namelen : aliased int;  -- /usr/include/xcb/xcb.h:209
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/xcb.h:210
      datalen : aliased int;  -- /usr/include/xcb/xcb.h:211
      data : Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/xcb.h:212
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_auth_info_t);  -- /usr/include/xcb/xcb.h:208

   function xcb_flush (arg1 : System.Address) return int;  -- /usr/include/xcb/xcb.h:226
   pragma Import (C, xcb_flush, "xcb_flush");

   function xcb_get_maximum_request_length (arg1 : System.Address) return stdint_h.uint32_t;  -- /usr/include/xcb/xcb.h:243
   pragma Import (C, xcb_get_maximum_request_length, "xcb_get_maximum_request_length");

   procedure xcb_prefetch_maximum_request_length (arg1 : System.Address);  -- /usr/include/xcb/xcb.h:262
   pragma Import (C, xcb_prefetch_maximum_request_length, "xcb_prefetch_maximum_request_length");

   function xcb_wait_for_event (arg1 : System.Address) return access xcb_generic_event_t;  -- /usr/include/xcb/xcb.h:276
   pragma Import (C, xcb_wait_for_event, "xcb_wait_for_event");

   function xcb_poll_for_event (arg1 : System.Address) return access xcb_generic_event_t;  -- /usr/include/xcb/xcb.h:290
   pragma Import (C, xcb_poll_for_event, "xcb_poll_for_event");

   function xcb_poll_for_queued_event (arg1 : System.Address) return access xcb_generic_event_t;  -- /usr/include/xcb/xcb.h:306
   pragma Import (C, xcb_poll_for_queued_event, "xcb_poll_for_queued_event");

   function xcb_request_check (arg1 : System.Address; arg2 : xcb_void_cookie_t) return access xcb_generic_error_t;  -- /usr/include/xcb/xcb.h:324
   pragma Import (C, xcb_request_check, "xcb_request_check");

   procedure xcb_discard_reply (arg1 : System.Address; arg2 : unsigned);  -- /usr/include/xcb/xcb.h:340
   pragma Import (C, xcb_discard_reply, "xcb_discard_reply");

   --  skipped empty struct xcb_extension_t

   function xcb_get_extension_data (arg1 : System.Address; arg2 : System.Address) return access constant xcb_xproto_h.xcb_query_extension_reply_t;  -- /usr/include/xcb/xcb.h:366
   pragma Import (C, xcb_get_extension_data, "xcb_get_extension_data");

   procedure xcb_prefetch_extension_data (arg1 : System.Address; arg2 : System.Address);  -- /usr/include/xcb/xcb.h:379
   pragma Import (C, xcb_prefetch_extension_data, "xcb_prefetch_extension_data");

   function xcb_get_setup (arg1 : System.Address) return access constant xcb_xproto_h.xcb_setup_t;  -- /usr/include/xcb/xcb.h:402
   pragma Import (C, xcb_get_setup, "xcb_get_setup");

   function xcb_get_file_descriptor (arg1 : System.Address) return int;  -- /usr/include/xcb/xcb.h:412
   pragma Import (C, xcb_get_file_descriptor, "xcb_get_file_descriptor");

   function xcb_connection_has_error (arg1 : System.Address) return int;  -- /usr/include/xcb/xcb.h:431
   pragma Import (C, xcb_connection_has_error, "xcb_connection_has_error");

   function xcb_connect_to_fd (arg1 : int; arg2 : access xcb_auth_info_t) return System.Address;  -- /usr/include/xcb/xcb.h:445
   pragma Import (C, xcb_connect_to_fd, "xcb_connect_to_fd");

   procedure xcb_disconnect (arg1 : System.Address);  -- /usr/include/xcb/xcb.h:454
   pragma Import (C, xcb_disconnect, "xcb_disconnect");

   function xcb_parse_display
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : System.Address;
      arg3 : access int;
      arg4 : access int) return int;  -- /usr/include/xcb/xcb.h:476
   pragma Import (C, xcb_parse_display, "xcb_parse_display");

   function xcb_connect (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : access int) return System.Address;  -- /usr/include/xcb/xcb.h:490
   pragma Import (C, xcb_connect, "xcb_connect");

   function xcb_connect_to_display_with_auth_info
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : access xcb_auth_info_t;
      arg3 : access int) return System.Address;  -- /usr/include/xcb/xcb.h:504
   pragma Import (C, xcb_connect_to_display_with_auth_info, "xcb_connect_to_display_with_auth_info");

   function xcb_generate_id (arg1 : System.Address) return stdint_h.uint32_t;  -- /usr/include/xcb/xcb.h:517
   pragma Import (C, xcb_generate_id, "xcb_generate_id");

end xcb_xcb_h;
