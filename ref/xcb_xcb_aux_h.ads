with Interfaces.C; use Interfaces.C;
with System;
with xcb_xproto_h;
with stdint_h;
with sys_types_h;
with xcb_xcb_h;
with Interfaces.C.Strings;

package xcb_xcb_aux_h is

   --  arg-macro: function XCB_AUX_INTERNAL_OFFSETOF (paramsp, param)((uint32_t const*)(and((paramsp).param))-(uint32_t const*)(paramsp)
   --    return (uint32_t const*)(and((paramsp).param))-(uint32_t const*)(paramsp);
   --  arg-macro: function XCB_AUX_ADD_PARAM (maskp, paramsp,((*(maskp)|=1<<XCB_AUX_INTERNAL_OFFSETOF((paramsp),param)), ((paramsp).param:=(value))
   --    return (*(maskp)|=1<<XCB_AUX_INTERNAL_OFFSETOF((paramsp),param)), ((paramsp).param:=(value));
   function xcb_aux_get_depth (arg1 : System.Address; arg2 : access xcb_xproto_h.xcb_screen_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_aux.h:10
   pragma Import (C, xcb_aux_get_depth, "xcb_aux_get_depth");

   function xcb_aux_get_depth_of_visual (arg1 : access xcb_xproto_h.xcb_screen_t; arg2 : xcb_xproto_h.xcb_visualid_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_aux.h:13
   pragma Import (C, xcb_aux_get_depth_of_visual, "xcb_aux_get_depth_of_visual");

   function xcb_aux_get_screen (arg1 : System.Address; arg2 : int) return access xcb_xproto_h.xcb_screen_t;  -- /usr/include/xcb/xcb_aux.h:16
   pragma Import (C, xcb_aux_get_screen, "xcb_aux_get_screen");

   function xcb_aux_get_visualtype
     (arg1 : System.Address;
      arg2 : int;
      arg3 : xcb_xproto_h.xcb_visualid_t) return access xcb_xproto_h.xcb_visualtype_t;  -- /usr/include/xcb/xcb_aux.h:19
   pragma Import (C, xcb_aux_get_visualtype, "xcb_aux_get_visualtype");

   function xcb_aux_find_visual_by_id (arg1 : access xcb_xproto_h.xcb_screen_t; arg2 : xcb_xproto_h.xcb_visualid_t) return access xcb_xproto_h.xcb_visualtype_t;  -- /usr/include/xcb/xcb_aux.h:24
   pragma Import (C, xcb_aux_find_visual_by_id, "xcb_aux_find_visual_by_id");

   function xcb_aux_find_visual_by_attrs
     (arg1 : access xcb_xproto_h.xcb_screen_t;
      arg2 : sys_types_h.int8_t;
      arg3 : sys_types_h.int8_t) return access xcb_xproto_h.xcb_visualtype_t;  -- /usr/include/xcb/xcb_aux.h:28
   pragma Import (C, xcb_aux_find_visual_by_attrs, "xcb_aux_find_visual_by_attrs");

   procedure xcb_aux_sync (arg1 : System.Address);  -- /usr/include/xcb/xcb_aux.h:32
   pragma Import (C, xcb_aux_sync, "xcb_aux_sync");

  -- internal helper macro for XCB_AUX_ADD_PARAM
  --It gives the offset of the field 'param' in the structure pointed to by
  --'paramsp' in multiples of an uint32_t's size.  

  -- add an optional parameter to an xcb_params_* structure
  --parameters:
  --    maskp: pointer to bitmask whos bits mark used parameters
  --    paramsp: pointer to structure with parameters
  --    param: parameter to set
  --    value: value to set the parameter to
  -- 

   type xcb_params_cw_t is record
      back_pixmap : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:52
      back_pixel : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:53
      border_pixmap : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:54
      border_pixel : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:55
      bit_gravity : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:56
      win_gravity : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:57
      backing_store : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:58
      backing_planes : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:59
      backing_pixel : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:60
      override_redirect : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:61
      save_under : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:62
      event_mask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:63
      dont_propagate : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:64
      colormap : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:65
      cursor : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:66
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_params_cw_t);  -- /usr/include/xcb/xcb_aux.h:67

   function xcb_aux_create_window
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_xproto_h.xcb_window_t;
      arg4 : xcb_xproto_h.xcb_window_t;
      arg5 : sys_types_h.int16_t;
      arg6 : sys_types_h.int16_t;
      arg7 : stdint_h.uint16_t;
      arg8 : stdint_h.uint16_t;
      arg9 : stdint_h.uint16_t;
      arg10 : stdint_h.uint16_t;
      arg11 : xcb_xproto_h.xcb_visualid_t;
      arg12 : stdint_h.uint32_t;
      arg13 : access constant xcb_params_cw_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_aux.h:70
   pragma Import (C, xcb_aux_create_window, "xcb_aux_create_window");

   function xcb_aux_create_window_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_xproto_h.xcb_window_t;
      arg4 : xcb_xproto_h.xcb_window_t;
      arg5 : sys_types_h.int16_t;
      arg6 : sys_types_h.int16_t;
      arg7 : stdint_h.uint16_t;
      arg8 : stdint_h.uint16_t;
      arg9 : stdint_h.uint16_t;
      arg10 : stdint_h.uint16_t;
      arg11 : xcb_xproto_h.xcb_visualid_t;
      arg12 : stdint_h.uint32_t;
      arg13 : access constant xcb_params_cw_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_aux.h:85
   pragma Import (C, xcb_aux_create_window_checked, "xcb_aux_create_window_checked");

   function xcb_aux_change_window_attributes
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint32_t;
      arg4 : access constant xcb_params_cw_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_aux.h:100
   pragma Import (C, xcb_aux_change_window_attributes, "xcb_aux_change_window_attributes");

   function xcb_aux_change_window_attributes_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint32_t;
      arg4 : access constant xcb_params_cw_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_aux.h:106
   pragma Import (C, xcb_aux_change_window_attributes_checked, "xcb_aux_change_window_attributes_checked");

   type xcb_params_configure_window_t is record
      x : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xcb_aux.h:112
      y : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xcb_aux.h:113
      width : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:114
      height : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:115
      border_width : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:116
      sibling : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:117
      stack_mode : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:118
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_params_configure_window_t);  -- /usr/include/xcb/xcb_aux.h:119

   function xcb_aux_configure_window
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint16_t;
      arg4 : access constant xcb_params_configure_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_aux.h:122
   pragma Import (C, xcb_aux_configure_window, "xcb_aux_configure_window");

   type xcb_params_gc_t is record
      c_function : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:128
      plane_mask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:129
      foreground : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:130
      background : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:131
      line_width : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:132
      line_style : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:133
      cap_style : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:134
      join_style : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:135
      fill_style : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:136
      fill_rule : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:137
      tile : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:138
      stipple : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:139
      tile_stipple_origin_x : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:140
      tile_stipple_origin_y : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:141
      font : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:142
      subwindow_mode : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:143
      graphics_exposures : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:144
      clip_originX : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:145
      clip_originY : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:146
      mask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:147
      dash_offset : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:148
      dash_list : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:149
      arc_mode : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:150
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_params_gc_t);  -- /usr/include/xcb/xcb_aux.h:151

   function xcb_aux_create_gc
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_gcontext_t;
      arg3 : xcb_xproto_h.xcb_drawable_t;
      arg4 : stdint_h.uint32_t;
      arg5 : access constant xcb_params_gc_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_aux.h:154
   pragma Import (C, xcb_aux_create_gc, "xcb_aux_create_gc");

   function xcb_aux_create_gc_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_gcontext_t;
      arg3 : xcb_xproto_h.xcb_drawable_t;
      arg4 : stdint_h.uint32_t;
      arg5 : access constant xcb_params_gc_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_aux.h:161
   pragma Import (C, xcb_aux_create_gc_checked, "xcb_aux_create_gc_checked");

   function xcb_aux_change_gc
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_gcontext_t;
      arg3 : stdint_h.uint32_t;
      arg4 : access constant xcb_params_gc_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_aux.h:167
   pragma Import (C, xcb_aux_change_gc, "xcb_aux_change_gc");

   function xcb_aux_change_gc_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_gcontext_t;
      arg3 : stdint_h.uint32_t;
      arg4 : access constant xcb_params_gc_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_aux.h:173
   pragma Import (C, xcb_aux_change_gc_checked, "xcb_aux_change_gc_checked");

   type xcb_params_keyboard_t is record
      key_click_percent : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:178
      bell_percent : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:179
      bell_pitch : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:180
      bell_duration : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:181
      led : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:182
      led_mode : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:183
      key : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:184
      auto_repeat_mode : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_aux.h:185
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_params_keyboard_t);  -- /usr/include/xcb/xcb_aux.h:186

   function xcb_aux_change_keyboard_control
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : access constant xcb_params_keyboard_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_aux.h:189
   pragma Import (C, xcb_aux_change_keyboard_control, "xcb_aux_change_keyboard_control");

   function xcb_aux_parse_color
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : access stdint_h.uint16_t;
      arg3 : access stdint_h.uint16_t;
      arg4 : access stdint_h.uint16_t) return int;  -- /usr/include/xcb/xcb_aux.h:194
   pragma Import (C, xcb_aux_parse_color, "xcb_aux_parse_color");

   function xcb_aux_set_line_attributes_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_gcontext_t;
      arg3 : stdint_h.uint16_t;
      arg4 : sys_types_h.int32_t;
      arg5 : sys_types_h.int32_t;
      arg6 : sys_types_h.int32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_aux.h:198
   pragma Import (C, xcb_aux_set_line_attributes_checked, "xcb_aux_set_line_attributes_checked");

   function xcb_aux_clear_window (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_aux.h:206
   pragma Import (C, xcb_aux_clear_window, "xcb_aux_clear_window");

end xcb_xcb_aux_h;
