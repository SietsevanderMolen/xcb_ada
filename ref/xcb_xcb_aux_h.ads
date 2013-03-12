with Interfaces.C; use Interfaces.C;

package xcb_xcb_aux_h is

   --  arg-macro: function XCB_AUX_INTERNAL_OFFSETOF (paramsp, param)((uint32_t const*)(and((paramsp).param))-(uint32_t const*)(paramsp)
   --    return (uint32_t const*)(and((paramsp).param))-(uint32_t const*)(paramsp);
   --  arg-macro: function XCB_AUX_ADD_PARAM (maskp, paramsp,((*(maskp)|=1<<XCB_AUX_INTERNAL_OFFSETOF((paramsp),param)), ((paramsp).param:=(value))
   --    return (*(maskp)|=1<<XCB_AUX_INTERNAL_OFFSETOF((paramsp),param)), ((paramsp).param:=(value));
   type xcb_params_cw_t is record
      back_pixmap : aliased int;  -- /usr/include/xcb/xcb_aux.h:52
      back_pixel : aliased int;  -- /usr/include/xcb/xcb_aux.h:53
      border_pixmap : aliased int;  -- /usr/include/xcb/xcb_aux.h:54
      border_pixel : aliased int;  -- /usr/include/xcb/xcb_aux.h:55
      bit_gravity : aliased int;  -- /usr/include/xcb/xcb_aux.h:56
      win_gravity : aliased int;  -- /usr/include/xcb/xcb_aux.h:57
      backing_store : aliased int;  -- /usr/include/xcb/xcb_aux.h:58
      backing_planes : aliased int;  -- /usr/include/xcb/xcb_aux.h:59
      backing_pixel : aliased int;  -- /usr/include/xcb/xcb_aux.h:60
      override_redirect : aliased int;  -- /usr/include/xcb/xcb_aux.h:61
      save_under : aliased int;  -- /usr/include/xcb/xcb_aux.h:62
      event_mask : aliased int;  -- /usr/include/xcb/xcb_aux.h:63
      dont_propagate : aliased int;  -- /usr/include/xcb/xcb_aux.h:64
      colormap : aliased int;  -- /usr/include/xcb/xcb_aux.h:65
      cursor : aliased int;  -- /usr/include/xcb/xcb_aux.h:66
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_params_cw_t);  -- /usr/include/xcb/xcb_aux.h:67

   type xcb_params_configure_window_t is record
      x : aliased int;  -- /usr/include/xcb/xcb_aux.h:112
      y : aliased int;  -- /usr/include/xcb/xcb_aux.h:113
      width : aliased int;  -- /usr/include/xcb/xcb_aux.h:114
      height : aliased int;  -- /usr/include/xcb/xcb_aux.h:115
      border_width : aliased int;  -- /usr/include/xcb/xcb_aux.h:116
      sibling : aliased int;  -- /usr/include/xcb/xcb_aux.h:117
      stack_mode : aliased int;  -- /usr/include/xcb/xcb_aux.h:118
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_params_configure_window_t);  -- /usr/include/xcb/xcb_aux.h:119

   type xcb_params_gc_t is record
      c_function : aliased int;  -- /usr/include/xcb/xcb_aux.h:128
      plane_mask : aliased int;  -- /usr/include/xcb/xcb_aux.h:129
      foreground : aliased int;  -- /usr/include/xcb/xcb_aux.h:130
      background : aliased int;  -- /usr/include/xcb/xcb_aux.h:131
      line_width : aliased int;  -- /usr/include/xcb/xcb_aux.h:132
      line_style : aliased int;  -- /usr/include/xcb/xcb_aux.h:133
      cap_style : aliased int;  -- /usr/include/xcb/xcb_aux.h:134
      join_style : aliased int;  -- /usr/include/xcb/xcb_aux.h:135
      fill_style : aliased int;  -- /usr/include/xcb/xcb_aux.h:136
      fill_rule : aliased int;  -- /usr/include/xcb/xcb_aux.h:137
      tile : aliased int;  -- /usr/include/xcb/xcb_aux.h:138
      stipple : aliased int;  -- /usr/include/xcb/xcb_aux.h:139
      tile_stipple_origin_x : aliased int;  -- /usr/include/xcb/xcb_aux.h:140
      tile_stipple_origin_y : aliased int;  -- /usr/include/xcb/xcb_aux.h:141
      font : aliased int;  -- /usr/include/xcb/xcb_aux.h:142
      subwindow_mode : aliased int;  -- /usr/include/xcb/xcb_aux.h:143
      graphics_exposures : aliased int;  -- /usr/include/xcb/xcb_aux.h:144
      clip_originX : aliased int;  -- /usr/include/xcb/xcb_aux.h:145
      clip_originY : aliased int;  -- /usr/include/xcb/xcb_aux.h:146
      mask : aliased int;  -- /usr/include/xcb/xcb_aux.h:147
      dash_offset : aliased int;  -- /usr/include/xcb/xcb_aux.h:148
      dash_list : aliased int;  -- /usr/include/xcb/xcb_aux.h:149
      arc_mode : aliased int;  -- /usr/include/xcb/xcb_aux.h:150
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_params_gc_t);  -- /usr/include/xcb/xcb_aux.h:151

   type xcb_params_keyboard_t is record
      key_click_percent : aliased int;  -- /usr/include/xcb/xcb_aux.h:178
      bell_percent : aliased int;  -- /usr/include/xcb/xcb_aux.h:179
      bell_pitch : aliased int;  -- /usr/include/xcb/xcb_aux.h:180
      bell_duration : aliased int;  -- /usr/include/xcb/xcb_aux.h:181
      led : aliased int;  -- /usr/include/xcb/xcb_aux.h:182
      led_mode : aliased int;  -- /usr/include/xcb/xcb_aux.h:183
      key : aliased int;  -- /usr/include/xcb/xcb_aux.h:184
      auto_repeat_mode : aliased int;  -- /usr/include/xcb/xcb_aux.h:185
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_params_keyboard_t);  -- /usr/include/xcb/xcb_aux.h:186

end xcb_xcb_aux_h;
