with System,
     Interfaces;
with xcb;
with Ada.Unchecked_Conversion;

package xcbada_xproto is
   subtype xcb_button_t    is  Interfaces.Unsigned_8;
   subtype xcb_colormap_t  is  Interfaces.Unsigned_32;
   subtype xcb_cursor_t    is  Interfaces.Unsigned_32;
   subtype xcb_drawable_t  is  Interfaces.Unsigned_32;
   subtype xcb_gcontext_t  is  Interfaces.Unsigned_32;
   subtype xcb_keycode_t   is  Interfaces.Unsigned_8;
   subtype xcb_pixmap_t    is  Interfaces.Unsigned_32;
   subtype xcb_timestamp_t is  Interfaces.Unsigned_32;
   subtype xcb_visualid_t  is  Interfaces.Unsigned_32;
   subtype xcb_window_t    is  Interfaces.Unsigned_32;

   subtype xcb_event_mask_t is Interfaces.Unsigned_32;
   XCB_EVENT_MASK_NO_EVENT              : constant xcb_event_mask_t := 0;
   XCB_EVENT_MASK_KEY_PRESS             : constant xcb_event_mask_t := 1;
   XCB_EVENT_MASK_KEY_RELEASE           : constant xcb_event_mask_t := 2;
   XCB_EVENT_MASK_BUTTON_PRESS          : constant xcb_event_mask_t := 4;
   XCB_EVENT_MASK_BUTTON_RELEASE        : constant xcb_event_mask_t := 8;
   XCB_EVENT_MASK_ENTER_WINDOW          : constant xcb_event_mask_t := 16;
   XCB_EVENT_MASK_LEAVE_WINDOW          : constant xcb_event_mask_t := 32;
   XCB_EVENT_MASK_POINTER_MOTION        : constant xcb_event_mask_t := 64;
   XCB_EVENT_MASK_POINTER_MOTION_HINT   : constant xcb_event_mask_t := 128;
   XCB_EVENT_MASK_BUTTON_1_MOTION       : constant xcb_event_mask_t := 256;
   XCB_EVENT_MASK_BUTTON_2_MOTION       : constant xcb_event_mask_t := 512;
   XCB_EVENT_MASK_BUTTON_3_MOTION       : constant xcb_event_mask_t := 1024;
   XCB_EVENT_MASK_BUTTON_4_MOTION       : constant xcb_event_mask_t := 2048;
   XCB_EVENT_MASK_BUTTON_5_MOTION       : constant xcb_event_mask_t := 4096;
   XCB_EVENT_MASK_BUTTON_MOTION         : constant xcb_event_mask_t := 8192;
   XCB_EVENT_MASK_KEYMAP_STATE          : constant xcb_event_mask_t := 16384;
   XCB_EVENT_MASK_EXPOSURE              : constant xcb_event_mask_t := 32768;
   XCB_EVENT_MASK_VISIBILITY_CHANGE     : constant xcb_event_mask_t := 65536;
   XCB_EVENT_MASK_STRUCTURE_NOTIFY      : constant xcb_event_mask_t := 131072;
   XCB_EVENT_MASK_RESIZE_REDIRECT       : constant xcb_event_mask_t := 262144;
   XCB_EVENT_MASK_SUBSTRUCTURE_NOTIFY   : constant xcb_event_mask_t := 524288;
   XCB_EVENT_MASK_SUBSTRUCTURE_REDIRECT : constant xcb_event_mask_t := 1048576;
   XCB_EVENT_MASK_FOCUS_CHANGE          : constant xcb_event_mask_t := 2097152;
   XCB_EVENT_MASK_PROPERTY_CHANGE       : constant xcb_event_mask_t := 4194304;
   XCB_EVENT_MASK_COLOR_MAP_CHANGE      : constant xcb_event_mask_t := 8388608;
   XCB_EVENT_MASK_OWNER_GRAB_BUTTON     : constant xcb_event_mask_t := 16777216;

   type xcb_button_press_event_t is record
      response_type : aliased Interfaces.Unsigned_8;
      detail        : aliased xcb_button_t;
      sequence      : aliased Interfaces.Unsigned_16;
      time          : aliased xcb_timestamp_t;
      root          : aliased xcb_window_t;
      event         : aliased xcb_window_t;
      child         : aliased xcb_window_t;
      root_x        : aliased Interfaces.Integer_16;
      root_y        : aliased Interfaces.Integer_16;
      event_x       : aliased Interfaces.Integer_16;
      event_y       : aliased Interfaces.Integer_16;
      state         : aliased Interfaces.Unsigned_16;
      same_screen   : aliased Interfaces.Unsigned_8;
      pad0          : aliased Interfaces.Unsigned_8;
      full_sequence : aliased Interfaces.Unsigned_32;
   end record;
   pragma Convention (C, xcb_button_press_event_t);
   type xcb_button_press_event_t_p is access all xcb_button_press_event_t;
   function Convert is new Ada.Unchecked_Conversion (Source => xcb.xcb_generic_event_t_p,
                                                     Target => xcb_button_press_event_t_p);

   subtype xcb_cw_t is Interfaces.Unsigned_16;
   XCB_CW_BACK_PIXMAP       : constant xcb_cw_t := 1;
   XCB_CW_BACK_PIXEL        : constant xcb_cw_t := 2;
   XCB_CW_BORDER_PIXMAP     : constant xcb_cw_t := 4;
   XCB_CW_BORDER_PIXEL      : constant xcb_cw_t := 8;
   XCB_CW_BIT_GRAVITY       : constant xcb_cw_t := 16;
   XCB_CW_WIN_GRAVITY       : constant xcb_cw_t := 32;
   XCB_CW_BACKING_STORE     : constant xcb_cw_t := 64;
   XCB_CW_BACKING_PLANES    : constant xcb_cw_t := 128;
   XCB_CW_BACKING_PIXEL     : constant xcb_cw_t := 256;
   XCB_CW_OVERRIDE_REDIRECT : constant xcb_cw_t := 512;
   XCB_CW_SAVE_UNDER        : constant xcb_cw_t := 1024;
   XCB_CW_EVENT_MASK        : constant xcb_cw_t := 2048;
   XCB_CW_DONT_PROPAGATE    : constant xcb_cw_t := 4096;
   XCB_CW_COLORMAP          : constant xcb_cw_t := 8192;
   XCB_CW_CURSOR            : constant xcb_cw_t := 16384;

   type xcb_grab_mode_t is 
     (XCB_GRAB_MODE_SYNC,
      XCB_GRAB_MODE_ASYNC);
   pragma Convention (C, xcb_grab_mode_t);

   type xcb_grab_pointer_cookie_t is record
      sequence : aliased Interfaces.Unsigned_32;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_grab_pointer_cookie_t);

   type xcb_map_request_event_t is record
      response_type : aliased Interfaces.Unsigned_8;
      pad0          : aliased Interfaces.Unsigned_8;
      sequence      : aliased Interfaces.Unsigned_16;
      parent        : aliased xcb_window_t;
      window        : aliased xcb_window_t;
   end record;

   subtype xcb_mod_mask_t is Interfaces.Unsigned_16;
   XCB_MOD_MASK_SHIFT   : constant xcb_mod_mask_t := 1;
   XCB_MOD_MASK_LOCK    : constant xcb_mod_mask_t := 2;
   XCB_MOD_MASK_CONTROL : constant xcb_mod_mask_t := 4;
   XCB_MOD_MASK_1       : constant xcb_mod_mask_t := 8;
   XCB_MOD_MASK_2       : constant xcb_mod_mask_t := 16;
   XCB_MOD_MASK_3       : constant xcb_mod_mask_t := 32;
   XCB_MOD_MASK_4       : constant xcb_mod_mask_t := 64;
   XCB_MOD_MASK_5       : constant xcb_mod_mask_t := 128;
   XCB_MOD_MASK_ANY     : constant xcb_mod_mask_t := 32768;

   subtype xcb_config_window_t is Interfaces.Unsigned_16;
   XCB_CONFIG_WINDOW_X            :  constant xcb_config_window_t := 1;
   XCB_CONFIG_WINDOW_Y            :  constant xcb_config_window_t := 2;
   XCB_CONFIG_WINDOW_WIDTH        :  constant xcb_config_window_t := 4;
   XCB_CONFIG_WINDOW_HEIGHT       :  constant xcb_config_window_t := 8;
   XCB_CONFIG_WINDOW_BORDER_WIDTH :  constant xcb_config_window_t := 16;
   XCB_CONFIG_WINDOW_SIBLING      :  constant xcb_config_window_t := 32;
   XCB_CONFIG_WINDOW_STACK_MODE   :  constant xcb_config_window_t := 64;

   type xcb_get_geometry_cookie_t is record
      sequence : aliased Interfaces.Unsigned_32;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_geometry_cookie_t);

   type geomreply_padarray is array (0 .. 1) of aliased Interfaces.Unsigned_8;
   type xcb_get_geometry_reply_t is record
      response_type : aliased Interfaces.Unsigned_8;
      depth         : aliased Interfaces.Unsigned_8;
      sequence      : aliased Interfaces.Unsigned_16;
      length        : aliased Interfaces.Unsigned_32;
      root          : aliased xcb_window_t;
      x             : aliased Interfaces.Unsigned_16;
      y             : aliased Interfaces.Unsigned_16;
      width         : aliased Interfaces.Unsigned_16;
      height        : aliased Interfaces.Unsigned_16;
      border_width  : aliased Interfaces.Unsigned_16;
      pad0          : aliased geomreply_padarray;
   end record;
   type xcb_get_geometry_reply_t_p is access all xcb_get_geometry_reply_t;
   pragma Convention (C_Pass_By_Copy, xcb_get_geometry_reply_t);

   subtype xcb_stack_mode_t is Interfaces.Unsigned_32;
   XCB_STACK_MODE_ABOVE     :  constant xcb_stack_mode_t := 0;
   XCB_STACK_MODE_BELOW     :  constant xcb_stack_mode_t := 1;
   XCB_STACK_MODE_TOP_IF    :  constant xcb_stack_mode_t := 2;
   XCB_STACK_MODE_BOTTOM_IF :  constant xcb_stack_mode_t := 3;
   XCB_STACK_MODE_OPPOSITE  :  constant xcb_stack_mode_t := 4;

   type xcb_screen_t is record
      root                  : aliased xcb_window_t;
      default_colormap      : aliased xcb_colormap_t;
      white_pixel           : aliased Interfaces.Unsigned_32;
      black_pixel           : aliased Interfaces.Unsigned_32;
      current_input_masks   : aliased Interfaces.Unsigned_32;
      width_in_pixels       : aliased Interfaces.Unsigned_16;
      height_in_pixels      : aliased Interfaces.Unsigned_16;
      width_in_millimeters  : aliased Interfaces.Unsigned_16;
      height_in_millimeters : aliased Interfaces.Unsigned_16;
      min_installed_maps    : aliased Interfaces.Unsigned_16;
      max_installed_maps    : aliased Interfaces.Unsigned_16;
      root_visual           : aliased xcb_visualid_t;
      backing_stores        : aliased Interfaces.Unsigned_8;
      save_unders           : aliased Interfaces.Unsigned_8;
      root_depth            : aliased Interfaces.Unsigned_8;
      allowed_depths_len    : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_screen_t);

   type xcb_screen_iterator_t is record
      data  : access xcb_screen_t;
      c_rem : aliased Integer;
      index : aliased Integer;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_screen_iterator_t);

   type padarray is array (0 .. 3) of aliased Interfaces.Unsigned_8;
   type xcb_setup_t is record
      status                      : aliased Interfaces.Unsigned_8;
      pad0                        : aliased Interfaces.Unsigned_8;
      protocol_major_version      : aliased Interfaces.Unsigned_16;
      protocol_minor_version      : aliased Interfaces.Unsigned_16;
      length                      : aliased Interfaces.Unsigned_16;
      release_number              : aliased Interfaces.Unsigned_32;
      resource_id_base            : aliased Interfaces.Unsigned_32;
      resource_id_mask            : aliased Interfaces.Unsigned_32;
      motion_buffer_size          : aliased Interfaces.Unsigned_32;
      vendor_len                  : aliased Interfaces.Unsigned_16;
      maximum_request_length      : aliased Interfaces.Unsigned_16;
      roots_len                   : aliased Interfaces.Unsigned_8;
      pixmap_formats_len          : aliased Interfaces.Unsigned_8;
      image_byte_order            : aliased Interfaces.Unsigned_8;
      bitmap_format_bit_order     : aliased Interfaces.Unsigned_8;
      bitmap_format_scanline_unit : aliased Interfaces.Unsigned_8;
      bitmap_format_scanline_pad  : aliased Interfaces.Unsigned_8;
      min_keycode                 : aliased xcb_keycode_t;
      max_keycode                 : aliased xcb_keycode_t;
      pad1                        : aliased padarray;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_setup_t);

   type xcb_setup_iterator_t is record
      data : access xcb_setup_t;
      c_rem : aliased Integer;
      index : aliased Integer;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_setup_iterator_t);

   type xcb_query_pointer_cookie_t is record
      sequence : aliased Interfaces.Unsigned_32;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_pointer_cookie_t);

   type query_pointer_reply_pad_array is array (0 .. 1) of aliased Interfaces.Unsigned_8;
   type xcb_query_pointer_reply_t is record
      response_type : aliased Interfaces.Unsigned_8;
      same_screen   : aliased Interfaces.Unsigned_8;
      sequence      : aliased Interfaces.Unsigned_16;
      length        : aliased Interfaces.Unsigned_32;
      root          : aliased xcb_window_t;
      child         : aliased xcb_window_t;
      root_x        : aliased Interfaces.Integer_16;
      root_y        : aliased Interfaces.Integer_16;
      win_x         : aliased Interfaces.Integer_16;
      win_y         : aliased Interfaces.Integer_16;
      mask          : aliased Interfaces.Unsigned_16;
      pad0          : aliased query_pointer_reply_pad_array;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_pointer_reply_t);
   type xcb_query_pointer_reply_t_p is access all xcb_query_pointer_reply_t;

   function xcb_setup_roots_iterator (setup : access xcb_setup_t)
      return xcb_screen_iterator_t;
   pragma Import (C, xcb_setup_roots_iterator, "xcb_setup_roots_iterator");

   type valuearray is array (0 .. 3) of Interfaces.Unsigned_32;

   function xcb_configure_window
     (connection : xcb.xcb_connection_t;
      window     : xcb_window_t;
      value_mask : Interfaces.Unsigned_16;
      value_list : valuearray) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_configure_window, "xcb_configure_window");

   function xcb_get_geometry (connection : xcb.xcb_connection_t; 
                              drawable   : xcb_drawable_t)
                              return xcb_get_geometry_cookie_t;
   pragma Import (C, xcb_get_geometry, "xcb_get_geometry");

   function xcb_get_geometry_reply
     (connection : xcb.xcb_connection_t;
      arg2 : xcb_get_geometry_cookie_t;
      arg3 : xcb.xcb_generic_error_t) return xcb_get_geometry_reply_t_p;
   pragma Import (C, xcb_get_geometry_reply, "xcb_get_geometry_reply");

   function xcb_grab_button
     (connection    : xcb.xcb_connection_t;
      owner_events  : Interfaces.Unsigned_8;
      grab_window   : xcb_window_t;
      event_mask    : Interfaces.Unsigned_32;
      pointer_mode  : xcb_grab_mode_t;
      keyboard_mode : xcb_grab_mode_t;
      confine_to    : xcb_window_t;
      cursor        : xcb_cursor_t;
      button        : Interfaces.Unsigned_8;
      modifiers     : Interfaces.Unsigned_16) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_grab_button, "xcb_grab_button");

   function xcb_grab_key
     (c             : xcb.xcb_connection_t;
      owner_events  : Interfaces.Unsigned_8;
      grab_window   : xcb_window_t;
      modifiers     : Interfaces.Unsigned_16;
      key           : xcb_keycode_t;
      pointer_mode  : xcb_grab_mode_t;
      keyboard_mode : xcb_grab_mode_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_grab_key, "xcb_grab_key");

   function xcb_grab_pointer
     (connection    : xcb.xcb_connection_t;
      owner_events  : Interfaces.Unsigned_8;
      grab_window   : xcb_window_t;
      event_mask    : Interfaces.Unsigned_32;
      pointer_mode  : xcb_grab_mode_t;
      keyboard_mode : xcb_grab_mode_t;
      confine_to    : xcb_window_t;
      cursor        : xcb_cursor_t;
      time          : xcb_timestamp_t) return xcb_grab_pointer_cookie_t;
   pragma Import (C, xcb_grab_pointer, "xcb_grab_pointer");

   function xcb_warp_pointer
     (connection : xcb.xcb_connection_t;
      src_window : xcb_window_t;
      dst_window : xcb_window_t;
      src_x      : Interfaces.Integer_16;
      src_y      : Interfaces.Integer_16;
      src_width  : Interfaces.Unsigned_16;
      src_height : Interfaces.Unsigned_16;
      dst_x      : Interfaces.Unsigned_16;
      dst_y      : Interfaces.Unsigned_16) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_warp_pointer, "xcb_warp_pointer");

   type xcb_query_extension_reply_t is record
      response_type : aliased Interfaces.Unsigned_8;
      pad0          : aliased Interfaces.Unsigned_8;
      sequence      : aliased Interfaces.Unsigned_16;
      length        : aliased Interfaces.Unsigned_32;
      present       : aliased Interfaces.Unsigned_8;
      major_opcode  : aliased Interfaces.Unsigned_8;
      first_event   : aliased Interfaces.Unsigned_8;
      first_error   : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C, xcb_query_extension_reply_t);

   function xcb_query_pointer (connection : xcb.xcb_connection_t;
                               window     : xcb_window_t)
                               return xcb_query_pointer_cookie_t;
   pragma Import (C, xcb_query_pointer, "xcb_query_pointer");

   function xcb_query_pointer_reply
     (connection : xcb.xcb_connection_t;
      cookie     : xcb_query_pointer_cookie_t;
      error      : xcb.xcb_generic_error_t) return xcb_query_pointer_reply_t_p;
   pragma Import (C, xcb_query_pointer_reply, "xcb_query_pointer_reply");

   function xcb_ungrab_pointer (connection : xcb.xcb_connection_t;
                                time       : xcb_timestamp_t)
                                return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_ungrab_pointer, "xcb_ungrab_pointer");
end xcbada_xproto;
