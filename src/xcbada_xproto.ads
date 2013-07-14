-------------------------------------------------------------------------------
--                                                                           --
--                   Copyright (C) 2012-, Sietse van der Molen               --
--                                                                           --
--    This file is part of xcbada.                                          --
--                                                                           --
--    xcbada is free software: you can redistribute it and/or modify        --
--    it under the terms of the GNU General Public License as published by   --
--    the Free Software Foundation, either version 3 of the License, or      --
--    (at your option) any later version.                                    --
--                                                                           --
--    xcbada is distributed in the hope that it will be useful,             --
--    but WITHOUT ANY WARRANTY; without even the implied warranty of         --
--    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the          --
--    GNU General Public License for more details.                           --
--                                                                           --
--    You should have received a copy of the GNU General Public License      --
--    along with xcbada.  If not, see <http://www.gnu.org/licenses/>.       --
--                                                                           --
-------------------------------------------------------------------------------

with System,
     Interfaces,
     Interfaces.C,
     Interfaces.C.Strings;
with xcb;
with Ada.Unchecked_Conversion;

package xcbada_xproto is
   package IC renames Interfaces.C;
   package ICS renames IC.Strings;

   type xcb_char2b_t is record
      byte1 : aliased Interfaces.Unsigned_8;
      byte2 : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_char2b_t);

   type xcb_char2b_iterator_t is record
      data  : access xcb_char2b_t;
      c_rem : aliased Integer;
      index : aliased Integer;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_char2b_iterator_t);

   subtype xcb_window_t is Interfaces.Unsigned_32;
   type xcb_window_t_p is access all xcb_window_t;

   type xcb_window_t_arr is array (Integer range <>) of xcb_window_t;
   pragma Convention (C, xcb_window_t_arr);
   for xcb_window_t_arr'Component_Size use xcb_window_t'Size;

   type xcb_window_iterator_t is record
      data  : access xcb_window_t;
      c_rem : aliased Integer;
      index : aliased Integer;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_window_iterator_t);

   subtype xcb_pixmap_t is Interfaces.Unsigned_32;

   type xcb_pixmap_iterator_t is record
      data  : access xcb_pixmap_t;
      c_rem : aliased Integer;
      index : aliased Integer;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_pixmap_iterator_t);

   subtype xcb_cursor_t is Interfaces.Unsigned_32;

   type xcb_cursor_iterator_t is record
      data  : access xcb_cursor_t;
      c_rem : aliased Integer;
      index : aliased Integer;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_cursor_iterator_t);

   subtype xcb_font_t is Interfaces.Unsigned_32;

   type xcb_font_iterator_t is record
      data  : access xcb_font_t;
      c_rem : aliased Integer;
      index : aliased Integer;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_font_iterator_t);

   subtype xcb_gcontext_t is Interfaces.Unsigned_32;

   type xcb_gcontext_iterator_t is record
      data  : access xcb_gcontext_t;
      c_rem : aliased Integer;
      index : aliased Integer;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_gcontext_iterator_t);

   subtype xcb_colormap_t is Interfaces.Unsigned_32;

   type xcb_colormap_iterator_t is record
      data  : access xcb_colormap_t;
      c_rem : aliased Integer;
      index : aliased Integer;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_colormap_iterator_t);

   subtype xcb_atom_t is Interfaces.Unsigned_32;

   type xcb_atom_iterator_t is record
      data  : access xcb_atom_t;
      c_rem : aliased Integer;
      index : aliased Integer;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_atom_iterator_t);

   subtype xcb_drawable_t is Interfaces.Unsigned_32;

   type xcb_drawable_iterator_t is record
      data  : access xcb_drawable_t;
      c_rem : aliased Integer;
      index : aliased Integer;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_drawable_iterator_t);

   subtype xcb_fontable_t is Interfaces.Unsigned_32;

   type xcb_fontable_iterator_t is record
      data  : access xcb_fontable_t;
      c_rem : aliased Integer;
      index : aliased Integer;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_fontable_iterator_t);

   subtype xcb_visualid_t is Interfaces.Unsigned_32;

   type xcb_visualid_iterator_t is record
      data  : access xcb_visualid_t;
      c_rem : aliased Integer;
      index : aliased Integer;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_visualid_iterator_t);

   subtype xcb_timestamp_t is Interfaces.Unsigned_32;

   type xcb_timestamp_iterator_t is record
      data  : access xcb_timestamp_t;
      c_rem : aliased Integer;
      index : aliased Integer;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_timestamp_iterator_t);

   subtype xcb_keysym_t is Interfaces.Unsigned_32;

   type xcb_keysym_iterator_t is record
      data  : access xcb_keysym_t;
      c_rem : aliased Integer;
      index : aliased Integer;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_keysym_iterator_t);

   subtype xcb_keycode_t is Interfaces.Unsigned_8;

   type xcb_keycode_iterator_t is record
      data  : access xcb_keycode_t;
      c_rem : aliased Integer;
      index : aliased Integer;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_keycode_iterator_t);

   subtype xcb_button_t is Interfaces.Unsigned_8;

   type xcb_button_iterator_t is record
      data : access xcb_button_t;
      c_rem : aliased Integer;
      index : aliased Integer;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_button_iterator_t);

   type xcb_point_t is record
      x : aliased Interfaces.Unsigned_16;
      y : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_point_t);

   type xcb_point_iterator_t is record
      data  : access xcb_point_t;
      c_rem : aliased Integer;
      index : aliased Integer;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_point_iterator_t);

   type xcb_rectangle_t is record
      x      : aliased Interfaces.Unsigned_16;
      y      : aliased Interfaces.Unsigned_16;
      width  : aliased Interfaces.Unsigned_16;
      height : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_rectangle_t);

   type xcb_rectangle_iterator_t is record
      data  : access xcb_rectangle_t;
      c_rem : aliased Integer;
      index : aliased Integer;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_rectangle_iterator_t);

   type xcb_arc_t is record
      x      : aliased Interfaces.Unsigned_16;
      y      : aliased Interfaces.Unsigned_16;
      width  : aliased Interfaces.Unsigned_16;
      height : aliased Interfaces.Unsigned_16;
      angle1 : aliased Interfaces.Unsigned_16;
      angle2 : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_arc_t);

   type xcb_arc_iterator_t is record
      data : access xcb_arc_t;
      c_rem : aliased Integer;
      index : aliased Integer;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_arc_iterator_t);

   type xcb_format_t is record
      depth : aliased Interfaces.Unsigned_8;
      bits_per_pixel : aliased Interfaces.Unsigned_8;
      scanline_pad : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_format_t);

   type xcb_format_iterator_t is record
      data : access xcb_format_t;
      c_rem : aliased Integer;
      index : aliased Integer;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_format_iterator_t);

   type xcb_visual_class_t is
     (XCB_VISUAL_CLASS_STATIC_GRAY,
      XCB_VISUAL_CLASS_GRAY_SCALE,
      XCB_VISUAL_CLASS_STATIC_COLOR,
      XCB_VISUAL_CLASS_PSEUDO_COLOR,
      XCB_VISUAL_CLASS_TRUE_COLOR,
      XCB_VISUAL_CLASS_DIRECT_COLOR);
   pragma Convention (C, xcb_visual_class_t);

   type xcb_visualtype_t is record
      visual_id          : aliased xcb_visualid_t;
      u_class            : aliased Interfaces.Unsigned_8;
      bits_per_rgb_value : aliased Interfaces.Unsigned_8;
      colormap_entries   : aliased Interfaces.Unsigned_16;
      red_mask           : aliased Interfaces.Unsigned_32;
      green_mask         : aliased Interfaces.Unsigned_32;
      blue_mask          : aliased Interfaces.Unsigned_32;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_visualtype_t);

   type xcb_visualtype_iterator_t is record
      data : access xcb_visualtype_t;
      c_rem : aliased Integer;
      index : aliased Integer;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_visualtype_iterator_t);

   type xcb_depth_t is record
      depth : aliased Interfaces.Unsigned_8;
      visuals_len : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_depth_t);

   type xcb_depth_iterator_t is record
      data  : access xcb_depth_t;
      c_rem : aliased Integer;
      index : aliased Integer;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_depth_iterator_t);

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

   type xcb_backing_store_t is
     (XCB_BACKING_STORE_NOT_USEFUL,
      XCB_BACKING_STORE_WHEN_MAPPED,
      XCB_BACKING_STORE_ALWAYS);
   pragma Convention (C, xcb_backing_store_t);

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
      data : access xcb_screen_t;
      c_rem : aliased Integer;
      index : aliased Integer;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_screen_iterator_t);

   type xcb_setup_request_t is record
      byte_order : aliased Interfaces.Unsigned_8;
      protocol_major_version : aliased Interfaces.Unsigned_16;
      protocol_minor_version : aliased Interfaces.Unsigned_16;
      authorization_protocol_name_len : aliased Interfaces.Unsigned_16;
      authorization_protocol_data_len : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_setup_request_t);

   type xcb_setup_request_iterator_t is record
      data : access xcb_setup_request_t;
      c_rem : aliased Integer;
      index : aliased Integer;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_setup_request_iterator_t);

   type xcb_setup_failed_t is record
      status : aliased Interfaces.Unsigned_8;
      reason_len : aliased Interfaces.Unsigned_8;
      protocol_major_version : aliased Interfaces.Unsigned_16;
      protocol_minor_version : aliased Interfaces.Unsigned_16;
      length : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_setup_failed_t);

   type xcb_setup_failed_iterator_t is record
      data : access xcb_setup_failed_t;
      c_rem : aliased Integer;
      index : aliased Integer;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_setup_failed_iterator_t);

   type xcb_setup_authenticate_t is record
      status : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_setup_authenticate_t);

   type xcb_setup_authenticate_iterator_t is record
      data : access xcb_setup_authenticate_t;
      c_rem : aliased Integer;
      index : aliased Integer;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_setup_authenticate_iterator_t);

   type xcb_image_order_t is
     (XCB_IMAGE_ORDER_LSB_FIRST,
      XCB_IMAGE_ORDER_MSB_FIRST);
   pragma Convention (C, xcb_image_order_t);

   type xcb_setup_t is record
      status                      : aliased Interfaces.Unsigned_8;
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
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_setup_t);

   type xcb_setup_iterator_t is record
      data : access xcb_setup_t;
      c_rem : aliased Integer;
      index : aliased Integer;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_setup_iterator_t);

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

   subtype xcb_key_but_mask_t is Interfaces.Unsigned_16;
   XCB_KEY_BUT_MASK_SHIFT    : constant xcb_key_but_mask_t := 1;
   XCB_KEY_BUT_MASK_LOCK     : constant xcb_key_but_mask_t := 2;
   XCB_KEY_BUT_MASK_CONTROL  : constant xcb_key_but_mask_t := 4;
   XCB_KEY_BUT_MASK_MOD_1    : constant xcb_key_but_mask_t := 8;
   XCB_KEY_BUT_MASK_MOD_2    : constant xcb_key_but_mask_t := 16;
   XCB_KEY_BUT_MASK_MOD_3    : constant xcb_key_but_mask_t := 32;
   XCB_KEY_BUT_MASK_MOD_4    : constant xcb_key_but_mask_t := 64;
   XCB_KEY_BUT_MASK_MOD_5    : constant xcb_key_but_mask_t := 128;
   XCB_KEY_BUT_MASK_BUTTON_1 : constant xcb_key_but_mask_t := 256;
   XCB_KEY_BUT_MASK_BUTTON_2 : constant xcb_key_but_mask_t := 512;
   XCB_KEY_BUT_MASK_BUTTON_3 : constant xcb_key_but_mask_t := 1024;
   XCB_KEY_BUT_MASK_BUTTON_4 : constant xcb_key_but_mask_t := 2048;
   XCB_KEY_BUT_MASK_BUTTON_5 : constant xcb_key_but_mask_t := 4096;

   type xcb_window_enum_t is
     (XCB_WINDOW_NONE);
   pragma Convention (C, xcb_window_enum_t);

   type xcb_key_press_event_t is record
      response_type : aliased Interfaces.Unsigned_8;
      detail : aliased xcb_keycode_t;
      sequence : aliased Interfaces.Unsigned_16;
      time : aliased xcb_timestamp_t;
      root : aliased xcb_window_t;
      event : aliased xcb_window_t;
      child : aliased xcb_window_t;
      root_x : aliased Interfaces.Unsigned_16;
      root_y : aliased Interfaces.Unsigned_16;
      event_x : aliased Interfaces.Unsigned_16;
      event_y : aliased Interfaces.Unsigned_16;
      state : aliased Interfaces.Unsigned_16;
      same_screen : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_key_press_event_t);

   subtype xcb_key_release_event_t is xcb_key_press_event_t;

   subtype xcb_button_mask_t is Interfaces.Unsigned_16;
   XCB_BUTTON_MASK_1 : constant xcb_button_mask_t := 256;
   XCB_BUTTON_MASK_2 : constant xcb_button_mask_t := 512;
   XCB_BUTTON_MASK_3 : constant xcb_button_mask_t := 1024;
   XCB_BUTTON_MASK_4 : constant xcb_button_mask_t := 2048;
   XCB_BUTTON_MASK_5 : constant xcb_button_mask_t := 4096;
   XCB_BUTTON_MASK_ANY : constant xcb_button_mask_t := 32768;

   type xcb_button_press_event_t is record
      response_type : aliased Interfaces.Unsigned_8;
      detail : aliased xcb_button_t;
      sequence : aliased Interfaces.Unsigned_16;
      time : aliased xcb_timestamp_t;
      root : aliased xcb_window_t;
      event : aliased xcb_window_t;
      child : aliased xcb_window_t;
      root_x : aliased Interfaces.Unsigned_16;
      root_y : aliased Interfaces.Unsigned_16;
      event_x : aliased Interfaces.Unsigned_16;
      event_y : aliased Interfaces.Unsigned_16;
      state : aliased Interfaces.Unsigned_16;
      same_screen : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_button_press_event_t);

   subtype xcb_button_release_event_t is xcb_button_press_event_t;

   type xcb_motion_t is
     (XCB_MOTION_NORMAL,
      XCB_MOTION_HINT);
   pragma Convention (C, xcb_motion_t);

   type xcb_motion_notify_event_t is record
      response_type : aliased Interfaces.Unsigned_8;
      detail : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      time : aliased xcb_timestamp_t;
      root : aliased xcb_window_t;
      event : aliased xcb_window_t;
      child : aliased xcb_window_t;
      root_x : aliased Interfaces.Unsigned_16;
      root_y : aliased Interfaces.Unsigned_16;
      event_x : aliased Interfaces.Unsigned_16;
      event_y : aliased Interfaces.Unsigned_16;
      state : aliased Interfaces.Unsigned_16;
      same_screen : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_motion_notify_event_t);

   type xcb_notify_detail_t is
     (XCB_NOTIFY_DETAIL_ANCESTOR,
      XCB_NOTIFY_DETAIL_VIRTUAL,
      XCB_NOTIFY_DETAIL_INFERIOR,
      XCB_NOTIFY_DETAIL_NONLINEAR,
      XCB_NOTIFY_DETAIL_NONLINEAR_VIRTUAL,
      XCB_NOTIFY_DETAIL_POINTER,
      XCB_NOTIFY_DETAIL_POINTER_ROOT,
      XCB_NOTIFY_DETAIL_NONE);
   pragma Convention (C, xcb_notify_detail_t);

   type xcb_notify_mode_t is
     (XCB_NOTIFY_MODE_NORMAL,
      XCB_NOTIFY_MODE_GRAB,
      XCB_NOTIFY_MODE_UNGRAB,
      XCB_NOTIFY_MODE_WHILE_GRABBED);
   pragma Convention (C, xcb_notify_mode_t);

   type xcb_enter_notify_event_t is record
      response_type     : aliased Interfaces.Unsigned_8;
      detail            : aliased Interfaces.Unsigned_8;
      sequence          : aliased Interfaces.Unsigned_16;
      time              : aliased xcb_timestamp_t;
      root              : aliased xcb_window_t;
      event             : aliased xcb_window_t;
      child             : aliased xcb_window_t;
      root_x            : aliased Interfaces.Unsigned_16;
      root_y            : aliased Interfaces.Unsigned_16;
      event_x           : aliased Interfaces.Unsigned_16;
      event_y           : aliased Interfaces.Unsigned_16;
      state             : aliased Interfaces.Unsigned_16;
      mode              : aliased Interfaces.Unsigned_8;
      same_screen_focus : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_enter_notify_event_t);

   subtype xcb_leave_notify_event_t is xcb_enter_notify_event_t;

   type xcb_focus_in_event_t is record
      response_type : aliased Interfaces.Unsigned_8;
      detail        : aliased Interfaces.Unsigned_8;
      sequence      : aliased Interfaces.Unsigned_16;
      event         : aliased xcb_window_t;
      mode          : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_focus_in_event_t);

   subtype xcb_focus_out_event_t is xcb_focus_in_event_t;

   type keys_array_t is array (0 .. 30) of aliased Interfaces.Unsigned_8;
   type xcb_keymap_notify_event_t is record
      response_type : aliased Interfaces.Unsigned_8;
      keys : aliased keys_array_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_keymap_notify_event_t);

   type xcb_expose_event_t is record
      response_type : aliased Interfaces.Unsigned_8;
      sequence      : aliased Interfaces.Unsigned_16;
      window        : aliased xcb_window_t;
      x             : aliased Interfaces.Unsigned_16;
      y             : aliased Interfaces.Unsigned_16;
      width         : aliased Interfaces.Unsigned_16;
      height        : aliased Interfaces.Unsigned_16;
      count         : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_expose_event_t);

   type xcb_graphics_exposure_event_t is record
      response_type : aliased Interfaces.Unsigned_8;
      sequence      : aliased Interfaces.Unsigned_16;
      drawable      : aliased xcb_drawable_t;
      x             : aliased Interfaces.Unsigned_16;
      y             : aliased Interfaces.Unsigned_16;
      width         : aliased Interfaces.Unsigned_16;
      height        : aliased Interfaces.Unsigned_16;
      minor_opcode  : aliased Interfaces.Unsigned_16;
      count         : aliased Interfaces.Unsigned_16;
      major_opcode  : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_graphics_exposure_event_t);

   type xcb_no_exposure_event_t is record
      response_type : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      drawable : aliased xcb_drawable_t;
      minor_opcode : aliased Interfaces.Unsigned_16;
      major_opcode : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_no_exposure_event_t);

   type xcb_visibility_t is
     (XCB_VISIBILITY_UNOBSCURED,
      XCB_VISIBILITY_PARTIALLY_OBSCURED,
      XCB_VISIBILITY_FULLY_OBSCURED);
   pragma Convention (C, xcb_visibility_t);

   type xcb_visibility_notify_event_t is record
      response_type : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      window : aliased xcb_window_t;
      state : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_visibility_notify_event_t);

   type xcb_create_notify_event_t is record
      response_type : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      parent : aliased xcb_window_t;
      window : aliased xcb_window_t;
      x : aliased Interfaces.Unsigned_16;
      y : aliased Interfaces.Unsigned_16;
      width : aliased Interfaces.Unsigned_16;
      height : aliased Interfaces.Unsigned_16;
      border_width : aliased Interfaces.Unsigned_16;
      override_redirect : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_create_notify_event_t);

   type xcb_destroy_notify_event_t is record
      response_type : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      event : aliased xcb_window_t;
      window : aliased xcb_window_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_destroy_notify_event_t);

   type xcb_unmap_notify_event_t is record
      response_type : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      event : aliased xcb_window_t;
      window : aliased xcb_window_t;
      from_configure : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_unmap_notify_event_t);

   type xcb_map_notify_event_t is record
      response_type : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      event : aliased xcb_window_t;
      window : aliased xcb_window_t;
      override_redirect : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_map_notify_event_t);

   type xcb_map_request_event_t is record
      response_type : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      parent : aliased xcb_window_t;
      window : aliased xcb_window_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_map_request_event_t);

   type xcb_reparent_notify_event_t is record
      response_type : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      event : aliased xcb_window_t;
      window : aliased xcb_window_t;
      parent : aliased xcb_window_t;
      x : aliased Interfaces.Unsigned_16;
      y : aliased Interfaces.Unsigned_16;
      override_redirect : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_reparent_notify_event_t);

   type xcb_configure_notify_event_t is record
      response_type : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      event : aliased xcb_window_t;
      window : aliased xcb_window_t;
      above_sibling : aliased xcb_window_t;
      x : aliased Interfaces.Unsigned_16;
      y : aliased Interfaces.Unsigned_16;
      width : aliased Interfaces.Unsigned_16;
      height : aliased Interfaces.Unsigned_16;
      border_width : aliased Interfaces.Unsigned_16;
      override_redirect : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_configure_notify_event_t);

   type xcb_configure_request_event_t is record
      response_type : aliased Interfaces.Unsigned_8;
      stack_mode : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      parent : aliased xcb_window_t;
      window : aliased xcb_window_t;
      sibling : aliased xcb_window_t;
      x : aliased Interfaces.Unsigned_16;
      y : aliased Interfaces.Unsigned_16;
      width : aliased Interfaces.Unsigned_16;
      height : aliased Interfaces.Unsigned_16;
      border_width : aliased Interfaces.Unsigned_16;
      value_mask : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_configure_request_event_t);

   type xcb_gravity_notify_event_t is record
      response_type : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      event : aliased xcb_window_t;
      window : aliased xcb_window_t;
      x : aliased Interfaces.Unsigned_16;
      y : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_gravity_notify_event_t);

   type xcb_resize_request_event_t is record
      response_type : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      window : aliased xcb_window_t;
      width : aliased Interfaces.Unsigned_16;
      height : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_resize_request_event_t);

   type xcb_place_t is
     (XCB_PLACE_ON_TOP,
      XCB_PLACE_ON_BOTTOM);
   pragma Convention (C, xcb_place_t);

   type xcb_circulate_notify_event_t is record
      response_type : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      event : aliased xcb_window_t;
      window : aliased xcb_window_t;
      place : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_circulate_notify_event_t);

   subtype xcb_circulate_request_event_t is xcb_circulate_notify_event_t;

   type xcb_property_t is
     (XCB_PROPERTY_NEW_VALUE,
      XCB_PROPERTY_DELETE);
   pragma Convention (C, xcb_property_t);

   type xcb_property_notify_event_t is record
      response_type : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      window : aliased xcb_window_t;
      atom : aliased xcb_atom_t;
      time : aliased xcb_timestamp_t;
      state : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_property_notify_event_t);

   type xcb_selection_clear_event_t is record
      response_type : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      time : aliased xcb_timestamp_t;
      owner : aliased xcb_window_t;
      selection : aliased xcb_atom_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selection_clear_event_t);

   type xcb_time_t is
     (XCB_TIME_CURRENT_TIME);
   pragma Convention (C, xcb_time_t);

   subtype xcb_atom_enum_t is Interfaces.Unsigned_8;
   XCB_ATOM_NONE : constant xcb_atom_enum_t := 0;
   XCB_ATOM_ANY : constant xcb_atom_enum_t := 0;
   XCB_ATOM_PRIMARY : constant xcb_atom_enum_t := 1;
   XCB_ATOM_SECONDARY : constant xcb_atom_enum_t := 2;
   XCB_ATOM_ARC : constant xcb_atom_enum_t := 3;
   XCB_ATOM_ATOM : constant xcb_atom_enum_t := 4;
   XCB_ATOM_BITMAP : constant xcb_atom_enum_t := 5;
   XCB_ATOM_CARDINAL : constant xcb_atom_enum_t := 6;
   XCB_ATOM_COLORMAP : constant xcb_atom_enum_t := 7;
   XCB_ATOM_CURSOR : constant xcb_atom_enum_t := 8;
   XCB_ATOM_CUT_BUFFER0 : constant xcb_atom_enum_t := 9;
   XCB_ATOM_CUT_BUFFER1 : constant xcb_atom_enum_t := 10;
   XCB_ATOM_CUT_BUFFER2 : constant xcb_atom_enum_t := 11;
   XCB_ATOM_CUT_BUFFER3 : constant xcb_atom_enum_t := 12;
   XCB_ATOM_CUT_BUFFER4 : constant xcb_atom_enum_t := 13;
   XCB_ATOM_CUT_BUFFER5 : constant xcb_atom_enum_t := 14;
   XCB_ATOM_CUT_BUFFER6 : constant xcb_atom_enum_t := 15;
   XCB_ATOM_CUT_BUFFER7 : constant xcb_atom_enum_t := 16;
   XCB_ATOM_DRAWABLE : constant xcb_atom_enum_t := 17;
   XCB_ATOM_FONT : constant xcb_atom_enum_t := 18;
   XCB_ATOM_INTEGER : constant xcb_atom_enum_t := 19;
   XCB_ATOM_PIXMAP : constant xcb_atom_enum_t := 20;
   XCB_ATOM_POINT : constant xcb_atom_enum_t := 21;
   XCB_ATOM_RECTANGLE : constant xcb_atom_enum_t := 22;
   XCB_ATOM_RESOURCE_MANAGER : constant xcb_atom_enum_t := 23;
   XCB_ATOM_RGB_COLOR_MAP : constant xcb_atom_enum_t := 24;
   XCB_ATOM_RGB_BEST_MAP : constant xcb_atom_enum_t := 25;
   XCB_ATOM_RGB_BLUE_MAP : constant xcb_atom_enum_t := 26;
   XCB_ATOM_RGB_DEFAULT_MAP : constant xcb_atom_enum_t := 27;
   XCB_ATOM_RGB_GRAY_MAP : constant xcb_atom_enum_t := 28;
   XCB_ATOM_RGB_GREEN_MAP : constant xcb_atom_enum_t := 29;
   XCB_ATOM_RGB_RED_MAP : constant xcb_atom_enum_t := 30;
   XCB_ATOM_STRING : constant xcb_atom_enum_t := 31;
   XCB_ATOM_VISUALID : constant xcb_atom_enum_t := 32;
   XCB_ATOM_WINDOW : constant xcb_atom_enum_t := 33;
   XCB_ATOM_WM_COMMAND : constant xcb_atom_enum_t := 34;
   XCB_ATOM_WM_HINTS : constant xcb_atom_enum_t := 35;
   XCB_ATOM_WM_CLIENT_MACHINE : constant xcb_atom_enum_t := 36;
   XCB_ATOM_WM_ICON_NAME : constant xcb_atom_enum_t := 37;
   XCB_ATOM_WM_ICON_SIZE : constant xcb_atom_enum_t := 38;
   XCB_ATOM_WM_NAME : constant xcb_atom_enum_t := 39;
   XCB_ATOM_WM_NORMAL_HINTS : constant xcb_atom_enum_t := 40;
   XCB_ATOM_WM_SIZE_HINTS : constant xcb_atom_enum_t := 41;
   XCB_ATOM_WM_ZOOM_HINTS : constant xcb_atom_enum_t := 42;
   XCB_ATOM_MIN_SPACE : constant xcb_atom_enum_t := 43;
   XCB_ATOM_NORM_SPACE : constant xcb_atom_enum_t := 44;
   XCB_ATOM_MAX_SPACE : constant xcb_atom_enum_t := 45;
   XCB_ATOM_END_SPACE : constant xcb_atom_enum_t := 46;
   XCB_ATOM_SUPERSCRIPT_X : constant xcb_atom_enum_t := 47;
   XCB_ATOM_SUPERSCRIPT_Y : constant xcb_atom_enum_t := 48;
   XCB_ATOM_SUBSCRIPT_X : constant xcb_atom_enum_t := 49;
   XCB_ATOM_SUBSCRIPT_Y : constant xcb_atom_enum_t := 50;
   XCB_ATOM_UNDERLINE_POSITION : constant xcb_atom_enum_t := 51;
   XCB_ATOM_UNDERLINE_THICKNESS : constant xcb_atom_enum_t := 52;
   XCB_ATOM_STRIKEOUT_ASCENT : constant xcb_atom_enum_t := 53;
   XCB_ATOM_STRIKEOUT_DESCENT : constant xcb_atom_enum_t := 54;
   XCB_ATOM_ITALIC_ANGLE : constant xcb_atom_enum_t := 55;
   XCB_ATOM_X_HEIGHT : constant xcb_atom_enum_t := 56;
   XCB_ATOM_QUAD_WIDTH : constant xcb_atom_enum_t := 57;
   XCB_ATOM_WEIGHT : constant xcb_atom_enum_t := 58;
   XCB_ATOM_POINT_SIZE : constant xcb_atom_enum_t := 59;
   XCB_ATOM_RESOLUTION : constant xcb_atom_enum_t := 60;
   XCB_ATOM_COPYRIGHT : constant xcb_atom_enum_t := 61;
   XCB_ATOM_NOTICE : constant xcb_atom_enum_t := 62;
   XCB_ATOM_FONT_NAME : constant xcb_atom_enum_t := 63;
   XCB_ATOM_FAMILY_NAME : constant xcb_atom_enum_t := 64;
   XCB_ATOM_FULL_NAME : constant xcb_atom_enum_t := 65;
   XCB_ATOM_CAP_HEIGHT : constant xcb_atom_enum_t := 66;
   XCB_ATOM_WM_CLASS : constant xcb_atom_enum_t := 67;
   XCB_ATOM_WM_TRANSIENT_FOR : constant xcb_atom_enum_t := 68;

   type xcb_selection_request_event_t is record
      response_type : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      time : aliased xcb_timestamp_t;
      owner : aliased xcb_window_t;
      requestor : aliased xcb_window_t;
      selection : aliased xcb_atom_t;
      target : aliased xcb_atom_t;
      property : aliased xcb_atom_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selection_request_event_t);

   type xcb_selection_notify_event_t is record
      response_type : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      time : aliased xcb_timestamp_t;
      requestor : aliased xcb_window_t;
      selection : aliased xcb_atom_t;
      target : aliased xcb_atom_t;
      property : aliased xcb_atom_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selection_notify_event_t);

   type xcb_colormap_state_t is
     (XCB_COLORMAP_STATE_UNINSTALLED,
      XCB_COLORMAP_STATE_INSTALLED);
   pragma Convention (C, xcb_colormap_state_t);

   type xcb_colormap_enum_t is
     (XCB_COLORMAP_NONE);
   pragma Convention (C, xcb_colormap_enum_t);

   type xcb_colormap_notify_event_t is record
      response_type : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      window : aliased xcb_window_t;
      colormap : aliased xcb_colormap_t;
      u_new : aliased Interfaces.Unsigned_8;
      state : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_colormap_notify_event_t);

   type int8array_t is array (0 .. 19) of aliased Interfaces.Unsigned_8;
   type int16array_t is array (0 .. 9) of aliased Interfaces.Unsigned_16;
   type int32array_t is array (0 .. 4) of aliased Interfaces.Unsigned_32;
   type xcb_client_message_data_t (discr : Interfaces.Unsigned_8 := 0) is record
      case discr is
         when 0 =>
            data8 : aliased int8array_t;
         when 1 =>
            data16 : aliased int16array_t;
         when others =>
            data32 : aliased int32array_t;
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_client_message_data_t);
   pragma Unchecked_Union (xcb_client_message_data_t);

   type xcb_client_message_data_iterator_t is record
      data : access xcb_client_message_data_t;
      c_rem : aliased Integer;
      index : aliased Integer;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_client_message_data_iterator_t);

   type xcb_client_message_event_t is record
      response_type : aliased Interfaces.Unsigned_8;
      format : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      window : aliased xcb_window_t;
      c_type : aliased xcb_atom_t;
      data : xcb_client_message_data_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_client_message_event_t);

   type xcb_mapping_t is
     (XCB_MAPPING_MODIFIER,
      XCB_MAPPING_KEYBOARD,
      XCB_MAPPING_POINTER);
   pragma Convention (C, xcb_mapping_t);

   type xcb_mapping_notify_event_t is record
      response_type : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      request : aliased Interfaces.Unsigned_8;
      first_keycode : aliased xcb_keycode_t;
      count : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_mapping_notify_event_t);

   type xcb_request_error_t is record
      response_type : aliased Interfaces.Unsigned_8;
      error_code : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      bad_value : aliased Interfaces.Unsigned_32;
      minor_opcode : aliased Interfaces.Unsigned_16;
      major_opcode : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_request_error_t);

   type xcb_value_error_t is record
      response_type : aliased Interfaces.Unsigned_8;
      error_code : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      bad_value : aliased Interfaces.Unsigned_32;
      minor_opcode : aliased Interfaces.Unsigned_16;
      major_opcode : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_value_error_t);

   subtype xcb_window_error_t is xcb_value_error_t;

   subtype xcb_pixmap_error_t is xcb_value_error_t;

   subtype xcb_atom_error_t is xcb_value_error_t;

   subtype xcb_cursor_error_t is xcb_value_error_t;

   subtype xcb_font_error_t is xcb_value_error_t;

   subtype xcb_match_error_t is xcb_request_error_t;

   subtype xcb_drawable_error_t is xcb_value_error_t;

   subtype xcb_access_error_t is xcb_request_error_t;

   subtype xcb_alloc_error_t is xcb_request_error_t;

   subtype xcb_colormap_error_t is xcb_value_error_t;

   subtype xcb_g_context_error_t is xcb_value_error_t;

   subtype xcb_id_choice_error_t is xcb_value_error_t;

   subtype xcb_name_error_t is xcb_request_error_t;

   subtype xcb_length_error_t is xcb_request_error_t;

   subtype xcb_implementation_error_t is xcb_request_error_t;

   type xcb_window_class_t is
     (XCB_WINDOW_CLASS_COPY_FROM_PARENT,
      XCB_WINDOW_CLASS_INPUT_OUTPUT,
      XCB_WINDOW_CLASS_INPUT_ONLY);
   pragma Convention (C, xcb_window_class_t);

   subtype xcb_cw_t is Interfaces.Unsigned_16;
   XCB_CW_BACK_PIXMAP : constant xcb_cw_t := 1;
   XCB_CW_BACK_PIXEL : constant xcb_cw_t := 2;
   XCB_CW_BORDER_PIXMAP : constant xcb_cw_t := 4;
   XCB_CW_BORDER_PIXEL : constant xcb_cw_t := 8;
   XCB_CW_BIT_GRAVITY : constant xcb_cw_t := 16;
   XCB_CW_WIN_GRAVITY : constant xcb_cw_t := 32;
   XCB_CW_BACKING_STORE : constant xcb_cw_t := 64;
   XCB_CW_BACKING_PLANES : constant xcb_cw_t := 128;
   XCB_CW_BACKING_PIXEL : constant xcb_cw_t := 256;
   XCB_CW_OVERRIDE_REDIRECT : constant xcb_cw_t := 512;
   XCB_CW_SAVE_UNDER : constant xcb_cw_t := 1024;
   XCB_CW_EVENT_MASK : constant xcb_cw_t := 2048;
   XCB_CW_DONT_PROPAGATE : constant xcb_cw_t := 4096;
   XCB_CW_COLORMAP : constant xcb_cw_t := 8192;
   XCB_CW_CURSOR : constant xcb_cw_t := 16384;

   type xcb_back_pixmap_t is
     (XCB_BACK_PIXMAP_NONE,
      XCB_BACK_PIXMAP_PARENT_RELATIVE);
   pragma Convention (C, xcb_back_pixmap_t);

   subtype xcb_gravity_t is Interfaces.Unsigned_8;
   XCB_GRAVITY_BIT_FORGET : constant xcb_gravity_t := 0;
   XCB_GRAVITY_WIN_UNMAP : constant xcb_gravity_t := 0;
   XCB_GRAVITY_NORTH_WEST : constant xcb_gravity_t := 1;
   XCB_GRAVITY_NORTH : constant xcb_gravity_t := 2;
   XCB_GRAVITY_NORTH_EAST : constant xcb_gravity_t := 3;
   XCB_GRAVITY_WEST : constant xcb_gravity_t := 4;
   XCB_GRAVITY_CENTER : constant xcb_gravity_t := 5;
   XCB_GRAVITY_EAST : constant xcb_gravity_t := 6;
   XCB_GRAVITY_SOUTH_WEST : constant xcb_gravity_t := 7;
   XCB_GRAVITY_SOUTH : constant xcb_gravity_t := 8;
   XCB_GRAVITY_SOUTH_EAST : constant xcb_gravity_t := 9;
   XCB_GRAVITY_STATIC : constant xcb_gravity_t := 10;

   type xcb_create_window_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      depth : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      wid : aliased xcb_window_t;
      parent : aliased xcb_window_t;
      x : aliased Interfaces.Unsigned_16;
      y : aliased Interfaces.Unsigned_16;
      width : aliased Interfaces.Unsigned_16;
      height : aliased Interfaces.Unsigned_16;
      border_width : aliased Interfaces.Unsigned_16;
      u_class : aliased Interfaces.Unsigned_16;
      visual : aliased xcb_visualid_t;
      value_mask : aliased Interfaces.Unsigned_32;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_create_window_request_t);

   type xcb_change_window_attributes_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      window : aliased xcb_window_t;
      value_mask : aliased Interfaces.Unsigned_32;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_change_window_attributes_request_t);

   type xcb_map_state_t is
     (XCB_MAP_STATE_UNMAPPED,
      XCB_MAP_STATE_UNVIEWABLE,
      XCB_MAP_STATE_VIEWABLE);
   pragma Convention (C, xcb_map_state_t);

   type xcb_get_window_attributes_cookie_t is record
      sequence : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_window_attributes_cookie_t);

   type xcb_get_window_attributes_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      window : aliased xcb_window_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_window_attributes_request_t);

   type xcb_get_window_attributes_reply_t is record
      response_type : aliased Interfaces.Unsigned_8;
      backing_store : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      length : aliased Interfaces.Unsigned_32;
      visual : aliased xcb_visualid_t;
      u_class : aliased Interfaces.Unsigned_16;
      bit_gravity : aliased Interfaces.Unsigned_8;
      win_gravity : aliased Interfaces.Unsigned_8;
      backing_planes : aliased Interfaces.Unsigned_32;
      backing_pixel : aliased Interfaces.Unsigned_32;
      save_under : aliased Interfaces.Unsigned_8;
      map_is_installed : aliased Interfaces.Unsigned_8;
      map_state : aliased Interfaces.Unsigned_8;
      override_redirect : aliased Interfaces.Unsigned_8;
      colormap : aliased xcb_colormap_t;
      all_event_masks : aliased Interfaces.Unsigned_32;
      your_event_mask : aliased Interfaces.Unsigned_32;
      do_not_propagate_mask : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_window_attributes_reply_t);

   type xcb_destroy_window_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      window : aliased xcb_window_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_destroy_window_request_t);

   type xcb_destroy_subwindows_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      window : aliased xcb_window_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_destroy_subwindows_request_t);

   type xcb_set_mode_t is
     (XCB_SET_MODE_INSERT,
      XCB_SET_MODE_DELETE);
   pragma Convention (C, xcb_set_mode_t);

   type xcb_change_save_set_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      mode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      window : aliased xcb_window_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_change_save_set_request_t);

   type xcb_reparent_window_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      window : aliased xcb_window_t;
      parent : aliased xcb_window_t;
      x : aliased Interfaces.Unsigned_16;
      y : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_reparent_window_request_t);

   type xcb_map_window_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      window : aliased xcb_window_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_map_window_request_t);

   type xcb_map_subwindows_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      window : aliased xcb_window_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_map_subwindows_request_t);

   type xcb_unmap_window_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      window : aliased xcb_window_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_unmap_window_request_t);

   type xcb_unmap_subwindows_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      window : aliased xcb_window_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_unmap_subwindows_request_t);

   subtype xcb_config_window_t is Interfaces.Unsigned_8;
   XCB_CONFIG_WINDOW_X : constant xcb_config_window_t := 1;
   XCB_CONFIG_WINDOW_Y : constant xcb_config_window_t := 2;
   XCB_CONFIG_WINDOW_WIDTH : constant xcb_config_window_t := 4;
   XCB_CONFIG_WINDOW_HEIGHT : constant xcb_config_window_t := 8;
   XCB_CONFIG_WINDOW_BORDER_WIDTH : constant xcb_config_window_t := 16;
   XCB_CONFIG_WINDOW_SIBLING : constant xcb_config_window_t := 32;
   XCB_CONFIG_WINDOW_STACK_MODE : constant xcb_config_window_t := 64;

   type xcb_stack_mode_t is
     (XCB_STACK_MODE_ABOVE,
      XCB_STACK_MODE_BELOW,
      XCB_STACK_MODE_TOP_IF,
      XCB_STACK_MODE_BOTTOM_IF,
      XCB_STACK_MODE_OPPOSITE);
   pragma Convention (C, xcb_stack_mode_t);

   type xcb_configure_window_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      window : aliased xcb_window_t;
      value_mask : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_configure_window_request_t);

   type xcb_circulate_t is
     (XCB_CIRCULATE_RAISE_LOWEST,
      XCB_CIRCULATE_LOWER_HIGHEST);
   pragma Convention (C, xcb_circulate_t);

   type xcb_circulate_window_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      direction : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      window : aliased xcb_window_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_circulate_window_request_t);

   type xcb_get_geometry_cookie_t is record
      sequence : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_geometry_cookie_t);

   type xcb_get_geometry_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      drawable : aliased xcb_drawable_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_geometry_request_t);

   type xcb_get_geometry_reply_t is record
      response_type : aliased Interfaces.Unsigned_8;
      depth : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      length : aliased Interfaces.Unsigned_32;
      root : aliased xcb_window_t;
      x : aliased Interfaces.Unsigned_16;
      y : aliased Interfaces.Unsigned_16;
      width : aliased Interfaces.Unsigned_16;
      height : aliased Interfaces.Unsigned_16;
      border_width : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_geometry_reply_t);

   type xcb_query_tree_cookie_t is record
      sequence : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_tree_cookie_t);

   type xcb_query_tree_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      window : aliased xcb_window_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_tree_request_t);

   type xcb_query_tree_reply_t is record
      response_type : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      length : aliased Interfaces.Unsigned_32;
      root : aliased xcb_window_t;
      parent : aliased xcb_window_t;
      children_len : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_tree_reply_t);
   type xcb_query_tree_reply_t_p is access all xcb_query_tree_reply_t;

   type xcb_intern_atom_cookie_t is record
      sequence : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_intern_atom_cookie_t);

   type xcb_intern_atom_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      only_if_exists : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      name_len : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_intern_atom_request_t);

   type xcb_intern_atom_reply_t is record
      response_type : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      length : aliased Interfaces.Unsigned_32;
      atom : aliased xcb_atom_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_intern_atom_reply_t);

   type xcb_get_atom_name_cookie_t is record
      sequence : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_atom_name_cookie_t);

   type xcb_get_atom_name_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      atom : aliased xcb_atom_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_atom_name_request_t);

   type xcb_get_atom_name_reply_t is record
      response_type : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      length : aliased Interfaces.Unsigned_32;
      name_len : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_atom_name_reply_t);

   type xcb_prop_mode_t is
     (XCB_PROP_MODE_REPLACE,
      XCB_PROP_MODE_PREPEND,
      XCB_PROP_MODE_APPEND);
   pragma Convention (C, xcb_prop_mode_t);

   type xcb_change_property_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      mode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      window : aliased xcb_window_t;
      property : aliased xcb_atom_t;
      c_type : aliased xcb_atom_t;
      format : aliased Interfaces.Unsigned_8;
      data_len : aliased Interfaces.Unsigned_32;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_change_property_request_t);

   type xcb_delete_property_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      window : aliased xcb_window_t;
      property : aliased xcb_atom_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_delete_property_request_t);

   type xcb_get_property_type_t is
     (XCB_GET_PROPERTY_TYPE_ANY);
   pragma Convention (C, xcb_get_property_type_t);

   type xcb_get_property_cookie_t is record
      sequence : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_property_cookie_t);

   type xcb_get_property_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      u_delete : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      window : aliased xcb_window_t;
      property : aliased xcb_atom_t;
      c_type : aliased xcb_atom_t;
      long_offset : aliased Interfaces.Unsigned_32;
      long_length : aliased Interfaces.Unsigned_32;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_property_request_t);

   type xcb_get_property_reply_t is record
      response_type : aliased Interfaces.Unsigned_8;
      format : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      length : aliased Interfaces.Unsigned_32;
      c_type : aliased xcb_atom_t;
      bytes_after : aliased Interfaces.Unsigned_32;
      value_len : aliased Interfaces.Unsigned_32;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_property_reply_t);

   type xcb_list_properties_cookie_t is record
      sequence : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_list_properties_cookie_t);

   type xcb_list_properties_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      window : aliased xcb_window_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_list_properties_request_t);

   type xcb_list_properties_reply_t is record
      response_type : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      length : aliased Interfaces.Unsigned_32;
      atoms_len : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_list_properties_reply_t);

   type xcb_set_selection_owner_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      owner : aliased xcb_window_t;
      selection : aliased xcb_atom_t;
      time : aliased xcb_timestamp_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_set_selection_owner_request_t);

   type xcb_get_selection_owner_cookie_t is record
      sequence : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_selection_owner_cookie_t);

   type xcb_get_selection_owner_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      selection : aliased xcb_atom_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_selection_owner_request_t);

   type xcb_get_selection_owner_reply_t is record
      response_type : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      length : aliased Interfaces.Unsigned_32;
      owner : aliased xcb_window_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_selection_owner_reply_t);

   type xcb_convert_selection_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      requestor : aliased xcb_window_t;
      selection : aliased xcb_atom_t;
      target : aliased xcb_atom_t;
      property : aliased xcb_atom_t;
      time : aliased xcb_timestamp_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_convert_selection_request_t);

   type xcb_send_event_dest_t is
     (XCB_SEND_EVENT_DEST_POINTER_WINDOW,
      XCB_SEND_EVENT_DEST_ITEM_FOCUS);
   pragma Convention (C, xcb_send_event_dest_t);

   type events_array_t is array (1 .. 32) of ICS.chars_ptr;
   type xcb_send_event_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      propagate : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      destination : aliased xcb_window_t;
      event_mask : aliased Interfaces.Unsigned_32;
      event : aliased events_array_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_send_event_request_t);

   type xcb_grab_mode_t is
     (XCB_GRAB_MODE_SYNC,
      XCB_GRAB_MODE_ASYNC);
   pragma Convention (C, xcb_grab_mode_t);

   type xcb_grab_status_t is
     (XCB_GRAB_STATUS_SUCCESS,
      XCB_GRAB_STATUS_ALREADY_GRABBED,
      XCB_GRAB_STATUS_INVALID_TIME,
      XCB_GRAB_STATUS_NOT_VIEWABLE,
      XCB_GRAB_STATUS_FROZEN);
   pragma Convention (C, xcb_grab_status_t);

   type xcb_cursor_enum_t is
     (XCB_CURSOR_NONE);
   pragma Convention (C, xcb_cursor_enum_t);

   type xcb_grab_pointer_cookie_t is record
      sequence : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_grab_pointer_cookie_t);

   type xcb_grab_pointer_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      owner_events : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      grab_window : aliased xcb_window_t;
      event_mask : aliased Interfaces.Unsigned_16;
      pointer_mode : aliased Interfaces.Unsigned_8;
      keyboard_mode : aliased Interfaces.Unsigned_8;
      confine_to : aliased xcb_window_t;
      cursor : aliased xcb_cursor_t;
      time : aliased xcb_timestamp_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_grab_pointer_request_t);

   type xcb_grab_pointer_reply_t is record
      response_type : aliased Interfaces.Unsigned_8;
      status : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      length : aliased Interfaces.Unsigned_32;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_grab_pointer_reply_t);

   type xcb_ungrab_pointer_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      time : aliased xcb_timestamp_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_ungrab_pointer_request_t);

   type xcb_button_index_t is
     (XCB_BUTTON_INDEX_ANY,
      XCB_BUTTON_INDEX_1,
      XCB_BUTTON_INDEX_2,
      XCB_BUTTON_INDEX_3,
      XCB_BUTTON_INDEX_4,
      XCB_BUTTON_INDEX_5);
   pragma Convention (C, xcb_button_index_t);

   type xcb_grab_button_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      owner_events : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      grab_window : aliased xcb_window_t;
      event_mask : aliased Interfaces.Unsigned_32;
      pointer_mode : aliased Interfaces.Unsigned_8;
      keyboard_mode : aliased Interfaces.Unsigned_8;
      confine_to : aliased xcb_window_t;
      cursor : aliased xcb_cursor_t;
      button : aliased Interfaces.Unsigned_8;
      modifiers : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_grab_button_request_t);

   type xcb_ungrab_button_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      button : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      grab_window : aliased xcb_window_t;
      modifiers : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_ungrab_button_request_t);

   type xcb_change_active_pointer_grab_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      cursor : aliased xcb_cursor_t;
      time : aliased xcb_timestamp_t;
      event_mask : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_change_active_pointer_grab_request_t);

   type xcb_grab_keyboard_cookie_t is record
      sequence : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_grab_keyboard_cookie_t);

   type xcb_grab_keyboard_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      owner_events : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      grab_window : aliased xcb_window_t;
      time : aliased xcb_timestamp_t;
      pointer_mode : aliased Interfaces.Unsigned_8;
      keyboard_mode : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_grab_keyboard_request_t);

   type xcb_grab_keyboard_reply_t is record
      response_type : aliased Interfaces.Unsigned_8;
      status : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      length : aliased Interfaces.Unsigned_32;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_grab_keyboard_reply_t);

   type xcb_ungrab_keyboard_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      time : aliased xcb_timestamp_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_ungrab_keyboard_request_t);

   type xcb_grab_t is
     (XCB_GRAB_ANY);
   pragma Convention (C, xcb_grab_t);

   type xcb_grab_key_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      owner_events : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      grab_window : aliased xcb_window_t;
      modifiers : aliased Interfaces.Unsigned_16;
      key : aliased xcb_keycode_t;
      pointer_mode : aliased Interfaces.Unsigned_8;
      keyboard_mode : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_grab_key_request_t);

   type xcb_ungrab_key_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      key : aliased xcb_keycode_t;
      length : aliased Interfaces.Unsigned_16;
      grab_window : aliased xcb_window_t;
      modifiers : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_ungrab_key_request_t);

   type xcb_allow_t is
     (XCB_ALLOW_ASYNC_POINTER,
      XCB_ALLOW_SYNC_POINTER,
      XCB_ALLOW_REPLAY_POINTER,
      XCB_ALLOW_ASYNC_KEYBOARD,
      XCB_ALLOW_SYNC_KEYBOARD,
      XCB_ALLOW_REPLAY_KEYBOARD,
      XCB_ALLOW_ASYNC_BOTH,
      XCB_ALLOW_SYNC_BOTH);
   pragma Convention (C, xcb_allow_t);

   type xcb_allow_events_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      mode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      time : aliased xcb_timestamp_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_allow_events_request_t);

   type xcb_grab_server_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_grab_server_request_t);

   type xcb_ungrab_server_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_ungrab_server_request_t);

   type xcb_query_pointer_cookie_t is record
      sequence : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_pointer_cookie_t);

   type xcb_query_pointer_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      window : aliased xcb_window_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_pointer_request_t);

   type xcb_query_pointer_reply_t is record
      response_type : aliased Interfaces.Unsigned_8;
      same_screen : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      length : aliased Interfaces.Unsigned_32;
      root : aliased xcb_window_t;
      child : aliased xcb_window_t;
      root_x : aliased Interfaces.Unsigned_16;
      root_y : aliased Interfaces.Unsigned_16;
      win_x : aliased Interfaces.Unsigned_16;
      win_y : aliased Interfaces.Unsigned_16;
      mask : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_pointer_reply_t);

   type xcb_timecoord_t is record
      time : aliased xcb_timestamp_t;
      x : aliased Interfaces.Unsigned_16;
      y : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_timecoord_t);

   type xcb_timecoord_iterator_t is record
      data : access xcb_timecoord_t;
      c_rem : aliased Integer;
      index : aliased Integer;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_timecoord_iterator_t);

   type xcb_get_motion_events_cookie_t is record
      sequence : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_motion_events_cookie_t);

   type xcb_get_motion_events_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      window : aliased xcb_window_t;
      start : aliased xcb_timestamp_t;
      stop : aliased xcb_timestamp_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_motion_events_request_t);

   type xcb_get_motion_events_reply_t is record
      response_type : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      length : aliased Interfaces.Unsigned_32;
      events_len : aliased Interfaces.Unsigned_32;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_motion_events_reply_t);

   type xcb_translate_coordinates_cookie_t is record
      sequence : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_translate_coordinates_cookie_t);

   type xcb_translate_coordinates_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      src_window : aliased xcb_window_t;
      dst_window : aliased xcb_window_t;
      src_x : aliased Interfaces.Unsigned_16;
      src_y : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_translate_coordinates_request_t);

   type xcb_translate_coordinates_reply_t is record
      response_type : aliased Interfaces.Unsigned_8;
      same_screen : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      length : aliased Interfaces.Unsigned_32;
      child : aliased xcb_window_t;
      dst_x : aliased Interfaces.Unsigned_16;
      dst_y : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_translate_coordinates_reply_t);

   type xcb_warp_pointer_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      src_window : aliased xcb_window_t;
      dst_window : aliased xcb_window_t;
      src_x : aliased Interfaces.Unsigned_16;
      src_y : aliased Interfaces.Unsigned_16;
      src_width : aliased Interfaces.Unsigned_16;
      src_height : aliased Interfaces.Unsigned_16;
      dst_x : aliased Interfaces.Unsigned_16;
      dst_y : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_warp_pointer_request_t);

   type xcb_input_focus_t is
     (XCB_INPUT_FOCUS_NONE,
      XCB_INPUT_FOCUS_POINTER_ROOT,
      XCB_INPUT_FOCUS_PARENT,
      XCB_INPUT_FOCUS_FOLLOW_KEYBOARD);
   pragma Convention (C, xcb_input_focus_t);

   type xcb_set_input_focus_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      revert_to : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      focus : aliased xcb_window_t;
      time : aliased xcb_timestamp_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_set_input_focus_request_t);

   type xcb_get_input_focus_cookie_t is record
      sequence : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_input_focus_cookie_t);

   type xcb_get_input_focus_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_input_focus_request_t);

   type xcb_get_input_focus_reply_t is record
      response_type : aliased Interfaces.Unsigned_8;
      revert_to : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      length : aliased Interfaces.Unsigned_32;
      focus : aliased xcb_window_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_input_focus_reply_t);

   type xcb_query_keymap_cookie_t is record
      sequence : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_keymap_cookie_t);

   type xcb_query_keymap_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_keymap_request_t);

   type key_array_t is array (0 .. 31) of aliased Interfaces.Unsigned_8;
   type xcb_query_keymap_reply_t is record
      response_type : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      length : aliased Interfaces.Unsigned_32;
      keys : aliased key_array_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_keymap_reply_t);

   type xcb_open_font_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      fid : aliased xcb_font_t;
      name_len : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_open_font_request_t);

   type xcb_close_font_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      font : aliased xcb_font_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_close_font_request_t);

   type xcb_font_draw_t is
     (XCB_FONT_DRAW_LEFT_TO_RIGHT,
      XCB_FONT_DRAW_RIGHT_TO_LEFT);
   pragma Convention (C, xcb_font_draw_t);

   type xcb_fontprop_t is record
      name : aliased xcb_atom_t;
      value : aliased Interfaces.Unsigned_32;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_fontprop_t);

   type xcb_fontprop_iterator_t is record
      data : access xcb_fontprop_t;
      c_rem : aliased Integer;
      index : aliased Integer;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_fontprop_iterator_t);

   type xcb_charinfo_t is record
      left_side_bearing : aliased Interfaces.Unsigned_16;
      right_side_bearing : aliased Interfaces.Unsigned_16;
      character_width : aliased Interfaces.Unsigned_16;
      ascent : aliased Interfaces.Unsigned_16;
      descent : aliased Interfaces.Unsigned_16;
      attributes : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_charinfo_t);

   type xcb_charinfo_iterator_t is record
      data : access xcb_charinfo_t;
      c_rem : aliased Integer;
      index : aliased Integer;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_charinfo_iterator_t);

   type xcb_query_font_cookie_t is record
      sequence : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_font_cookie_t);

   type xcb_query_font_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      font : aliased xcb_fontable_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_font_request_t);

   type xcb_query_font_reply_t is record
      response_type     : aliased Interfaces.Unsigned_8;
      sequence          : aliased Interfaces.Unsigned_16;
      length            : aliased Interfaces.Unsigned_32;
      min_bounds        : aliased xcb_charinfo_t;
      max_bounds        : aliased xcb_charinfo_t;
      min_char_or_byte2 : aliased Interfaces.Unsigned_16;
      max_char_or_byte2 : aliased Interfaces.Unsigned_16;
      default_char      : aliased Interfaces.Unsigned_16;
      properties_len    : aliased Interfaces.Unsigned_16;
      draw_direction    : aliased Interfaces.Unsigned_8;
      min_byte1         : aliased Interfaces.Unsigned_8;
      max_byte1         : aliased Interfaces.Unsigned_8;
      all_chars_exist   : aliased Interfaces.Unsigned_8;
      font_ascent       : aliased Interfaces.Unsigned_16;
      font_descent      : aliased Interfaces.Unsigned_16;
      char_infos_len    : aliased Interfaces.Unsigned_32;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_font_reply_t);

   type xcb_query_text_extents_cookie_t is record
      sequence : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_text_extents_cookie_t);

   type xcb_query_text_extents_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      odd_length : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      font : aliased xcb_fontable_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_text_extents_request_t);

   type xcb_query_text_extents_reply_t is record
      response_type : aliased Interfaces.Unsigned_8;
      draw_direction : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      length : aliased Interfaces.Unsigned_32;
      font_ascent : aliased Interfaces.Unsigned_16;
      font_descent : aliased Interfaces.Unsigned_16;
      overall_ascent : aliased Interfaces.Unsigned_16;
      overall_descent : aliased Interfaces.Unsigned_16;
      overall_width : aliased Interfaces.Unsigned_32;
      overall_left : aliased Interfaces.Unsigned_32;
      overall_right : aliased Interfaces.Unsigned_32;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_text_extents_reply_t);

   type xcb_str_t is record
      name_len : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_str_t);

   type xcb_str_iterator_t is record
      data : access xcb_str_t;
      c_rem : aliased Integer;
      index : aliased Integer;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_str_iterator_t);

   type xcb_list_fonts_cookie_t is record
      sequence : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_list_fonts_cookie_t);

   type xcb_list_fonts_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      max_names : aliased Interfaces.Unsigned_16;
      pattern_len : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_list_fonts_request_t);

   type xcb_list_fonts_reply_t is record
      response_type : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      length : aliased Interfaces.Unsigned_32;
      names_len : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_list_fonts_reply_t);

   type xcb_list_fonts_with_info_cookie_t is record
      sequence : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_list_fonts_with_info_cookie_t);

   type xcb_list_fonts_with_info_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      max_names : aliased Interfaces.Unsigned_16;
      pattern_len : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_list_fonts_with_info_request_t);

   type xcb_list_fonts_with_info_reply_t is record
      response_type : aliased Interfaces.Unsigned_8;
      name_len : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      length : aliased Interfaces.Unsigned_32;
      min_bounds : aliased xcb_charinfo_t;
      max_bounds : aliased xcb_charinfo_t;
      min_char_or_byte2 : aliased Interfaces.Unsigned_16;
      max_char_or_byte2 : aliased Interfaces.Unsigned_16;
      default_char : aliased Interfaces.Unsigned_16;
      properties_len : aliased Interfaces.Unsigned_16;
      draw_direction : aliased Interfaces.Unsigned_8;
      min_byte1 : aliased Interfaces.Unsigned_8;
      max_byte1 : aliased Interfaces.Unsigned_8;
      all_chars_exist : aliased Interfaces.Unsigned_8;
      font_ascent : aliased Interfaces.Unsigned_16;
      font_descent : aliased Interfaces.Unsigned_16;
      replies_hint : aliased Interfaces.Unsigned_32;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_list_fonts_with_info_reply_t);

   type xcb_set_font_path_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      font_qty : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_set_font_path_request_t);

   type xcb_get_font_path_cookie_t is record
      sequence : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_font_path_cookie_t);

   type xcb_get_font_path_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_font_path_request_t);

   type xcb_get_font_path_reply_t is record
      response_type : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      length : aliased Interfaces.Unsigned_32;
      path_len : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_font_path_reply_t);

   type xcb_create_pixmap_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      depth : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      pid : aliased xcb_pixmap_t;
      drawable : aliased xcb_drawable_t;
      width : aliased Interfaces.Unsigned_16;
      height : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_create_pixmap_request_t);

   type xcb_free_pixmap_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      pixmap : aliased xcb_pixmap_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_free_pixmap_request_t);

   subtype xcb_gc_t is Interfaces.Unsigned_32;
   XCB_GC_FUNCTION : constant xcb_gc_t := 1;
   XCB_GC_PLANE_MASK : constant xcb_gc_t := 2;
   XCB_GC_FOREGROUND : constant xcb_gc_t := 4;
   XCB_GC_BACKGROUND : constant xcb_gc_t := 8;
   XCB_GC_LINE_WIDTH : constant xcb_gc_t := 16;
   XCB_GC_LINE_STYLE : constant xcb_gc_t := 32;
   XCB_GC_CAP_STYLE : constant xcb_gc_t := 64;
   XCB_GC_JOIN_STYLE : constant xcb_gc_t := 128;
   XCB_GC_FILL_STYLE : constant xcb_gc_t := 256;
   XCB_GC_FILL_RULE : constant xcb_gc_t := 512;
   XCB_GC_TILE : constant xcb_gc_t := 1024;
   XCB_GC_STIPPLE : constant xcb_gc_t := 2048;
   XCB_GC_TILE_STIPPLE_ORIGIN_X : constant xcb_gc_t := 4096;
   XCB_GC_TILE_STIPPLE_ORIGIN_Y : constant xcb_gc_t := 8192;
   XCB_GC_FONT : constant xcb_gc_t := 16384;
   XCB_GC_SUBWINDOW_MODE : constant xcb_gc_t := 32768;
   XCB_GC_GRAPHICS_EXPOSURES : constant xcb_gc_t := 65536;
   XCB_GC_CLIP_ORIGIN_X : constant xcb_gc_t := 131072;
   XCB_GC_CLIP_ORIGIN_Y : constant xcb_gc_t := 262144;
   XCB_GC_CLIP_MASK : constant xcb_gc_t := 524288;
   XCB_GC_DASH_OFFSET : constant xcb_gc_t := 1048576;
   XCB_GC_DASH_LIST : constant xcb_gc_t := 2097152;
   XCB_GC_ARC_MODE : constant xcb_gc_t := 4194304;

   type xcb_gx_t is
     (XCB_GX_CLEAR,
      XCB_GX_AND,
      XCB_GX_AND_REVERSE,
      XCB_GX_COPY,
      XCB_GX_AND_INVERTED,
      XCB_GX_NOOP,
      XCB_GX_XOR,
      XCB_GX_OR,
      XCB_GX_NOR,
      XCB_GX_EQUIV,
      XCB_GX_INVERT,
      XCB_GX_OR_REVERSE,
      XCB_GX_COPY_INVERTED,
      XCB_GX_OR_INVERTED,
      XCB_GX_NAND,
      XCB_GX_SET);
   pragma Convention (C, xcb_gx_t);

   type xcb_line_style_t is
     (XCB_LINE_STYLE_SOLID,
      XCB_LINE_STYLE_ON_OFF_DASH,
      XCB_LINE_STYLE_DOUBLE_DASH);
   pragma Convention (C, xcb_line_style_t);

   type xcb_cap_style_t is
     (XCB_CAP_STYLE_NOT_LAST,
      XCB_CAP_STYLE_BUTT,
      XCB_CAP_STYLE_ROUND,
      XCB_CAP_STYLE_PROJECTING);
   pragma Convention (C, xcb_cap_style_t);

   type xcb_join_style_t is
     (XCB_JOIN_STYLE_MITER,
      XCB_JOIN_STYLE_ROUND,
      XCB_JOIN_STYLE_BEVEL);
   pragma Convention (C, xcb_join_style_t);

   type xcb_fill_style_t is
     (XCB_FILL_STYLE_SOLID,
      XCB_FILL_STYLE_TILED,
      XCB_FILL_STYLE_STIPPLED,
      XCB_FILL_STYLE_OPAQUE_STIPPLED);
   pragma Convention (C, xcb_fill_style_t);

   type xcb_fill_rule_t is
     (XCB_FILL_RULE_EVEN_ODD,
      XCB_FILL_RULE_WINDING);
   pragma Convention (C, xcb_fill_rule_t);

   type xcb_subwindow_mode_t is
     (XCB_SUBWINDOW_MODE_CLIP_BY_CHILDREN,
      XCB_SUBWINDOW_MODE_INCLUDE_INFERIORS);
   pragma Convention (C, xcb_subwindow_mode_t);

   type xcb_arc_mode_t is
     (XCB_ARC_MODE_CHORD,
      XCB_ARC_MODE_PIE_SLICE);
   pragma Convention (C, xcb_arc_mode_t);

   type xcb_create_gc_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      cid : aliased xcb_gcontext_t;
      drawable : aliased xcb_drawable_t;
      value_mask : aliased Interfaces.Unsigned_32;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_create_gc_request_t);

   type xcb_change_gc_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      gc : aliased xcb_gcontext_t;
      value_mask : aliased Interfaces.Unsigned_32;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_change_gc_request_t);

   type xcb_copy_gc_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      src_gc : aliased xcb_gcontext_t;
      dst_gc : aliased xcb_gcontext_t;
      value_mask : aliased Interfaces.Unsigned_32;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_copy_gc_request_t);

   type xcb_set_dashes_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      gc : aliased xcb_gcontext_t;
      dash_offset : aliased Interfaces.Unsigned_16;
      dashes_len : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_set_dashes_request_t);

   type xcb_clip_ordering_t is
     (XCB_CLIP_ORDERING_UNSORTED,
      XCB_CLIP_ORDERING_Y_SORTED,
      XCB_CLIP_ORDERING_YX_SORTED,
      XCB_CLIP_ORDERING_YX_BANDED);
   pragma Convention (C, xcb_clip_ordering_t);

   type xcb_set_clip_rectangles_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      ordering : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      gc : aliased xcb_gcontext_t;
      clip_x_origin : aliased Interfaces.Unsigned_16;
      clip_y_origin : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_set_clip_rectangles_request_t);

   type xcb_free_gc_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      gc : aliased xcb_gcontext_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_free_gc_request_t);

   type xcb_clear_area_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      exposures : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      window : aliased xcb_window_t;
      x : aliased Interfaces.Unsigned_16;
      y : aliased Interfaces.Unsigned_16;
      width : aliased Interfaces.Unsigned_16;
      height : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_clear_area_request_t);

   type xcb_copy_area_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      src_drawable : aliased xcb_drawable_t;
      dst_drawable : aliased xcb_drawable_t;
      gc : aliased xcb_gcontext_t;
      src_x : aliased Interfaces.Unsigned_16;
      src_y : aliased Interfaces.Unsigned_16;
      dst_x : aliased Interfaces.Unsigned_16;
      dst_y : aliased Interfaces.Unsigned_16;
      width : aliased Interfaces.Unsigned_16;
      height : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_copy_area_request_t);

   type xcb_copy_plane_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      src_drawable : aliased xcb_drawable_t;
      dst_drawable : aliased xcb_drawable_t;
      gc : aliased xcb_gcontext_t;
      src_x : aliased Interfaces.Unsigned_16;
      src_y : aliased Interfaces.Unsigned_16;
      dst_x : aliased Interfaces.Unsigned_16;
      dst_y : aliased Interfaces.Unsigned_16;
      width : aliased Interfaces.Unsigned_16;
      height : aliased Interfaces.Unsigned_16;
      bit_plane : aliased Interfaces.Unsigned_32;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_copy_plane_request_t);

   type xcb_coord_mode_t is
     (XCB_COORD_MODE_ORIGIN,
      XCB_COORD_MODE_PREVIOUS);
   pragma Convention (C, xcb_coord_mode_t);

   type xcb_poly_point_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      coordinate_mode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      drawable : aliased xcb_drawable_t;
      gc : aliased xcb_gcontext_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_poly_point_request_t);

   type xcb_poly_line_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      coordinate_mode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      drawable : aliased xcb_drawable_t;
      gc : aliased xcb_gcontext_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_poly_line_request_t);

   type xcb_segment_t is record
      x1 : aliased Interfaces.Unsigned_16;
      y1 : aliased Interfaces.Unsigned_16;
      x2 : aliased Interfaces.Unsigned_16;
      y2 : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_segment_t);

   type xcb_segment_iterator_t is record
      data : access xcb_segment_t;
      c_rem : aliased Integer;
      index : aliased Integer;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_segment_iterator_t);

   type xcb_poly_segment_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      drawable : aliased xcb_drawable_t;
      gc : aliased xcb_gcontext_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_poly_segment_request_t);

   type xcb_poly_rectangle_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      drawable : aliased xcb_drawable_t;
      gc : aliased xcb_gcontext_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_poly_rectangle_request_t);

   type xcb_poly_arc_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      drawable : aliased xcb_drawable_t;
      gc : aliased xcb_gcontext_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_poly_arc_request_t);

   type xcb_poly_shape_t is
     (XCB_POLY_SHAPE_COMPLEX,
      XCB_POLY_SHAPE_NONCONVEX,
      XCB_POLY_SHAPE_CONVEX);
   pragma Convention (C, xcb_poly_shape_t);

   type xcb_fill_poly_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      drawable : aliased xcb_drawable_t;
      gc : aliased xcb_gcontext_t;
      shape : aliased Interfaces.Unsigned_8;
      coordinate_mode : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_fill_poly_request_t);

   type xcb_poly_fill_rectangle_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      drawable : aliased xcb_drawable_t;
      gc : aliased xcb_gcontext_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_poly_fill_rectangle_request_t);

   type xcb_poly_fill_arc_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      drawable : aliased xcb_drawable_t;
      gc : aliased xcb_gcontext_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_poly_fill_arc_request_t);

   type xcb_image_format_t is
     (XCB_IMAGE_FORMAT_XY_BITMAP,
      XCB_IMAGE_FORMAT_XY_PIXMAP,
      XCB_IMAGE_FORMAT_Z_PIXMAP);
   pragma Convention (C, xcb_image_format_t);

   type xcb_put_image_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      format : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      drawable : aliased xcb_drawable_t;
      gc : aliased xcb_gcontext_t;
      width : aliased Interfaces.Unsigned_16;
      height : aliased Interfaces.Unsigned_16;
      dst_x : aliased Interfaces.Unsigned_16;
      dst_y : aliased Interfaces.Unsigned_16;
      left_pad : aliased Interfaces.Unsigned_8;
      depth : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_put_image_request_t);

   type xcb_get_image_cookie_t is record
      sequence : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_image_cookie_t);

   type xcb_get_image_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      format : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      drawable : aliased xcb_drawable_t;
      x : aliased Interfaces.Unsigned_16;
      y : aliased Interfaces.Unsigned_16;
      width : aliased Interfaces.Unsigned_16;
      height : aliased Interfaces.Unsigned_16;
      plane_mask : aliased Interfaces.Unsigned_32;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_image_request_t);

   type xcb_get_image_reply_t is record
      response_type : aliased Interfaces.Unsigned_8;
      depth : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      length : aliased Interfaces.Unsigned_32;
      visual : aliased xcb_visualid_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_image_reply_t);

   type xcb_poly_text_8_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      drawable : aliased xcb_drawable_t;
      gc : aliased xcb_gcontext_t;
      x : aliased Interfaces.Unsigned_16;
      y : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_poly_text_8_request_t);

   type xcb_poly_text_16_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      drawable : aliased xcb_drawable_t;
      gc : aliased xcb_gcontext_t;
      x : aliased Interfaces.Unsigned_16;
      y : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_poly_text_16_request_t);

   type xcb_image_text_8_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      string_len : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      drawable : aliased xcb_drawable_t;
      gc : aliased xcb_gcontext_t;
      x : aliased Interfaces.Unsigned_16;
      y : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_image_text_8_request_t);

   type xcb_image_text_16_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      string_len : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      drawable : aliased xcb_drawable_t;
      gc : aliased xcb_gcontext_t;
      x : aliased Interfaces.Unsigned_16;
      y : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_image_text_16_request_t);

   type xcb_colormap_alloc_t is
     (XCB_COLORMAP_ALLOC_NONE,
      XCB_COLORMAP_ALLOC_ALL);
   pragma Convention (C, xcb_colormap_alloc_t);

   type xcb_create_colormap_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      alloc : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      mid : aliased xcb_colormap_t;
      window : aliased xcb_window_t;
      visual : aliased xcb_visualid_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_create_colormap_request_t);

   type xcb_free_colormap_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      cmap : aliased xcb_colormap_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_free_colormap_request_t);

   type xcb_copy_colormap_and_free_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      mid : aliased xcb_colormap_t;
      src_cmap : aliased xcb_colormap_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_copy_colormap_and_free_request_t);

   type xcb_install_colormap_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      cmap : aliased xcb_colormap_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_install_colormap_request_t);

   type xcb_uninstall_colormap_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      cmap : aliased xcb_colormap_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_uninstall_colormap_request_t);

   type xcb_list_installed_colormaps_cookie_t is record
      sequence : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_list_installed_colormaps_cookie_t);

   type xcb_list_installed_colormaps_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      window : aliased xcb_window_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_list_installed_colormaps_request_t);

   type xcb_list_installed_colormaps_reply_t is record
      response_type : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      length : aliased Interfaces.Unsigned_32;
      cmaps_len : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_list_installed_colormaps_reply_t);

   type xcb_alloc_color_cookie_t is record
      sequence : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_alloc_color_cookie_t);

   type xcb_alloc_color_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      cmap : aliased xcb_colormap_t;
      red : aliased Interfaces.Unsigned_16;
      green : aliased Interfaces.Unsigned_16;
      blue : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_alloc_color_request_t);

   type xcb_alloc_color_reply_t is record
      response_type : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      length : aliased Interfaces.Unsigned_32;
      red : aliased Interfaces.Unsigned_16;
      green : aliased Interfaces.Unsigned_16;
      blue : aliased Interfaces.Unsigned_16;
      pixel : aliased Interfaces.Unsigned_32;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_alloc_color_reply_t);

   type xcb_alloc_named_color_cookie_t is record
      sequence : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_alloc_named_color_cookie_t);

   type xcb_alloc_named_color_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      cmap : aliased xcb_colormap_t;
      name_len : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_alloc_named_color_request_t);

   type xcb_alloc_named_color_reply_t is record
      response_type : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      length : aliased Interfaces.Unsigned_32;
      pixel : aliased Interfaces.Unsigned_32;
      exact_red : aliased Interfaces.Unsigned_16;
      exact_green : aliased Interfaces.Unsigned_16;
      exact_blue : aliased Interfaces.Unsigned_16;
      visual_red : aliased Interfaces.Unsigned_16;
      visual_green : aliased Interfaces.Unsigned_16;
      visual_blue : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_alloc_named_color_reply_t);

   type xcb_alloc_color_cells_cookie_t is record
      sequence : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_alloc_color_cells_cookie_t);

   type xcb_alloc_color_cells_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      contiguous : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      cmap : aliased xcb_colormap_t;
      colors : aliased Interfaces.Unsigned_16;
      planes : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_alloc_color_cells_request_t);

   type xcb_alloc_color_cells_reply_t is record
      response_type : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      length : aliased Interfaces.Unsigned_32;
      pixels_len : aliased Interfaces.Unsigned_16;
      masks_len : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_alloc_color_cells_reply_t);

   type xcb_alloc_color_planes_cookie_t is record
      sequence : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_alloc_color_planes_cookie_t);

   type xcb_alloc_color_planes_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      contiguous : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      cmap : aliased xcb_colormap_t;
      colors : aliased Interfaces.Unsigned_16;
      reds : aliased Interfaces.Unsigned_16;
      greens : aliased Interfaces.Unsigned_16;
      blues : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_alloc_color_planes_request_t);

   type xcb_alloc_color_planes_reply_t is record
      response_type : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      length : aliased Interfaces.Unsigned_32;
      pixels_len : aliased Interfaces.Unsigned_16;
      red_mask : aliased Interfaces.Unsigned_32;
      green_mask : aliased Interfaces.Unsigned_32;
      blue_mask : aliased Interfaces.Unsigned_32;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_alloc_color_planes_reply_t);

   type xcb_free_colors_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      cmap : aliased xcb_colormap_t;
      plane_mask : aliased Interfaces.Unsigned_32;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_free_colors_request_t);

   subtype xcb_color_flag_t is Interfaces.Unsigned_8;
   XCB_COLOR_FLAG_RED : constant xcb_color_flag_t := 1;
   XCB_COLOR_FLAG_GREEN : constant xcb_color_flag_t := 2;
   XCB_COLOR_FLAG_BLUE : constant xcb_color_flag_t := 4;

   type xcb_coloritem_t is record
      pixel : aliased Interfaces.Unsigned_32;
      red : aliased Interfaces.Unsigned_16;
      green : aliased Interfaces.Unsigned_16;
      blue : aliased Interfaces.Unsigned_16;
      flags : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_coloritem_t);

   type xcb_coloritem_iterator_t is record
      data : access xcb_coloritem_t;
      c_rem : aliased Integer;
      index : aliased Integer;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_coloritem_iterator_t);

   type xcb_store_colors_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      cmap : aliased xcb_colormap_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_store_colors_request_t);

   type xcb_store_named_color_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      flags : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      cmap : aliased xcb_colormap_t;
      pixel : aliased Interfaces.Unsigned_32;
      name_len : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_store_named_color_request_t);

   type xcb_rgb_t is record
      red : aliased Interfaces.Unsigned_16;
      green : aliased Interfaces.Unsigned_16;
      blue : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_rgb_t);

   type xcb_rgb_iterator_t is record
      data : access xcb_rgb_t;
      c_rem : aliased Integer;
      index : aliased Integer;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_rgb_iterator_t);

   type xcb_query_colors_cookie_t is record
      sequence : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_colors_cookie_t);

   type xcb_query_colors_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      cmap : aliased xcb_colormap_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_colors_request_t);

   type xcb_query_colors_reply_t is record
      response_type : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      length : aliased Interfaces.Unsigned_32;
      colors_len : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_colors_reply_t);

   type xcb_lookup_color_cookie_t is record
      sequence : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_lookup_color_cookie_t);

   type xcb_lookup_color_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      cmap : aliased xcb_colormap_t;
      name_len : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_lookup_color_request_t);

   type xcb_lookup_color_reply_t is record
      response_type : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      length : aliased Interfaces.Unsigned_32;
      exact_red : aliased Interfaces.Unsigned_16;
      exact_green : aliased Interfaces.Unsigned_16;
      exact_blue : aliased Interfaces.Unsigned_16;
      visual_red : aliased Interfaces.Unsigned_16;
      visual_green : aliased Interfaces.Unsigned_16;
      visual_blue : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_lookup_color_reply_t);

   type xcb_pixmap_enum_t is
     (XCB_PIXMAP_NONE);
   pragma Convention (C, xcb_pixmap_enum_t);

   type xcb_create_cursor_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      cid : aliased xcb_cursor_t;
      source : aliased xcb_pixmap_t;
      mask : aliased xcb_pixmap_t;
      fore_red : aliased Interfaces.Unsigned_16;
      fore_green : aliased Interfaces.Unsigned_16;
      fore_blue : aliased Interfaces.Unsigned_16;
      back_red : aliased Interfaces.Unsigned_16;
      back_green : aliased Interfaces.Unsigned_16;
      back_blue : aliased Interfaces.Unsigned_16;
      x : aliased Interfaces.Unsigned_16;
      y : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_create_cursor_request_t);

   type xcb_font_enum_t is
     (XCB_FONT_NONE);
   pragma Convention (C, xcb_font_enum_t);

   type xcb_create_glyph_cursor_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      cid : aliased xcb_cursor_t;
      source_font : aliased xcb_font_t;
      mask_font : aliased xcb_font_t;
      source_char : aliased Interfaces.Unsigned_16;
      mask_char : aliased Interfaces.Unsigned_16;
      fore_red : aliased Interfaces.Unsigned_16;
      fore_green : aliased Interfaces.Unsigned_16;
      fore_blue : aliased Interfaces.Unsigned_16;
      back_red : aliased Interfaces.Unsigned_16;
      back_green : aliased Interfaces.Unsigned_16;
      back_blue : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_create_glyph_cursor_request_t);

   type xcb_free_cursor_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      cursor : aliased xcb_cursor_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_free_cursor_request_t);

   type xcb_recolor_cursor_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      cursor : aliased xcb_cursor_t;
      fore_red : aliased Interfaces.Unsigned_16;
      fore_green : aliased Interfaces.Unsigned_16;
      fore_blue : aliased Interfaces.Unsigned_16;
      back_red : aliased Interfaces.Unsigned_16;
      back_green : aliased Interfaces.Unsigned_16;
      back_blue : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_recolor_cursor_request_t);

   type xcb_query_shape_of_t is
     (XCB_QUERY_SHAPE_OF_LARGEST_CURSOR,
      XCB_QUERY_SHAPE_OF_FASTEST_TILE,
      XCB_QUERY_SHAPE_OF_FASTEST_STIPPLE);
   pragma Convention (C, xcb_query_shape_of_t);

   type xcb_query_best_size_cookie_t is record
      sequence : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_best_size_cookie_t);

   type xcb_query_best_size_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      u_class : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      drawable : aliased xcb_drawable_t;
      width : aliased Interfaces.Unsigned_16;
      height : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_best_size_request_t);

   type xcb_query_best_size_reply_t is record
      response_type : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      length : aliased Interfaces.Unsigned_32;
      width : aliased Interfaces.Unsigned_16;
      height : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_best_size_reply_t);

   type xcb_query_extension_cookie_t is record
      sequence : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_extension_cookie_t);

   type xcb_query_extension_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      name_len : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_extension_request_t);

   type xcb_query_extension_reply_t is record
      response_type : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      length : aliased Interfaces.Unsigned_32;
      present : aliased Interfaces.Unsigned_8;
      major_opcode : aliased Interfaces.Unsigned_8;
      first_event : aliased Interfaces.Unsigned_8;
      first_error : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_extension_reply_t);

   type xcb_list_extensions_cookie_t is record
      sequence : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_list_extensions_cookie_t);

   type xcb_list_extensions_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_list_extensions_request_t);

   type xcb_list_extensions_reply_t is record
      response_type : aliased Interfaces.Unsigned_8;
      names_len : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      length : aliased Interfaces.Unsigned_32;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_list_extensions_reply_t);

   type xcb_change_keyboard_mapping_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      keycode_count : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      first_keycode : aliased xcb_keycode_t;
      keysyms_per_keycode : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_change_keyboard_mapping_request_t);

   type xcb_get_keyboard_mapping_cookie_t is record
      sequence : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_keyboard_mapping_cookie_t);

   type xcb_get_keyboard_mapping_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      first_keycode : aliased xcb_keycode_t;
      count : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_keyboard_mapping_request_t);

   type xcb_get_keyboard_mapping_reply_t is record
      response_type : aliased Interfaces.Unsigned_8;
      keysyms_per_keycode : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      length : aliased Interfaces.Unsigned_32;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_keyboard_mapping_reply_t);

   subtype xcb_kb_t is Interfaces.Unsigned_8;
   XCB_KB_KEY_CLICK_PERCENT : constant xcb_kb_t := 1;
   XCB_KB_BELL_PERCENT : constant xcb_kb_t := 2;
   XCB_KB_BELL_PITCH : constant xcb_kb_t := 4;
   XCB_KB_BELL_DURATION : constant xcb_kb_t := 8;
   XCB_KB_LED : constant xcb_kb_t := 16;
   XCB_KB_LED_MODE : constant xcb_kb_t := 32;
   XCB_KB_KEY : constant xcb_kb_t := 64;
   XCB_KB_AUTO_REPEAT_MODE : constant xcb_kb_t := 128;

   type xcb_led_mode_t is
     (XCB_LED_MODE_OFF,
      XCB_LED_MODE_ON);
   pragma Convention (C, xcb_led_mode_t);

   type xcb_auto_repeat_mode_t is
     (XCB_AUTO_REPEAT_MODE_OFF,
      XCB_AUTO_REPEAT_MODE_ON,
      XCB_AUTO_REPEAT_MODE_DEFAULT);
   pragma Convention (C, xcb_auto_repeat_mode_t);

   type xcb_change_keyboard_control_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      value_mask : aliased Interfaces.Unsigned_32;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_change_keyboard_control_request_t);

   type xcb_get_keyboard_control_cookie_t is record
      sequence : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_keyboard_control_cookie_t);

   type xcb_get_keyboard_control_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_keyboard_control_request_t);

   type auto_repeats_array_t is array (0 .. 31) of aliased Interfaces.Unsigned_8;
   type xcb_get_keyboard_control_reply_t is record
      response_type : aliased Interfaces.Unsigned_8;
      global_auto_repeat : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      length : aliased Interfaces.Unsigned_32;
      led_mask : aliased Interfaces.Unsigned_32;
      key_click_percent : aliased Interfaces.Unsigned_8;
      bell_percent : aliased Interfaces.Unsigned_8;
      bell_pitch : aliased Interfaces.Unsigned_16;
      bell_duration : aliased Interfaces.Unsigned_16;
      auto_repeats : aliased auto_repeats_array_t;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_keyboard_control_reply_t);

   type xcb_bell_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      percent : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_bell_request_t);

   type xcb_change_pointer_control_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      acceleration_numerator : aliased Interfaces.Unsigned_16;
      acceleration_denominator : aliased Interfaces.Unsigned_16;
      threshold : aliased Interfaces.Unsigned_16;
      do_acceleration : aliased Interfaces.Unsigned_8;
      do_threshold : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_change_pointer_control_request_t);

   type xcb_get_pointer_control_cookie_t is record
      sequence : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_pointer_control_cookie_t);

   type xcb_get_pointer_control_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_pointer_control_request_t);

   type xcb_get_pointer_control_reply_t is record
      response_type : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      length : aliased Interfaces.Unsigned_32;
      acceleration_numerator : aliased Interfaces.Unsigned_16;
      acceleration_denominator : aliased Interfaces.Unsigned_16;
      threshold : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_pointer_control_reply_t);

   type xcb_blanking_t is
     (XCB_BLANKING_NOT_PREFERRED,
      XCB_BLANKING_PREFERRED,
      XCB_BLANKING_DEFAULT);
   pragma Convention (C, xcb_blanking_t);

   type xcb_exposures_t is
     (XCB_EXPOSURES_NOT_ALLOWED,
      XCB_EXPOSURES_ALLOWED,
      XCB_EXPOSURES_DEFAULT);
   pragma Convention (C, xcb_exposures_t);

   type xcb_set_screen_saver_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      timeout : aliased Interfaces.Unsigned_16;
      interval : aliased Interfaces.Unsigned_16;
      prefer_blanking : aliased Interfaces.Unsigned_8;
      allow_exposures : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_set_screen_saver_request_t);

   type xcb_get_screen_saver_cookie_t is record
      sequence : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_screen_saver_cookie_t);

   type xcb_get_screen_saver_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_screen_saver_request_t);

   type xcb_get_screen_saver_reply_t is record
      response_type : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      length : aliased Interfaces.Unsigned_32;
      timeout : aliased Interfaces.Unsigned_16;
      interval : aliased Interfaces.Unsigned_16;
      prefer_blanking : aliased Interfaces.Unsigned_8;
      allow_exposures : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_screen_saver_reply_t);

   type xcb_host_mode_t is
     (XCB_HOST_MODE_INSERT,
      XCB_HOST_MODE_DELETE);
   pragma Convention (C, xcb_host_mode_t);

   subtype xcb_family_t is Interfaces.Unsigned_8;
   XCB_FAMILY_INTERNET : constant xcb_family_t := 0;
   XCB_FAMILY_DECNET : constant xcb_family_t := 1;
   XCB_FAMILY_CHAOS : constant xcb_family_t := 2;
   XCB_FAMILY_SERVER_INTERPRETED : constant xcb_family_t := 5;
   XCB_FAMILY_INTERNET_6 : constant xcb_family_t := 6;

   type xcb_change_hosts_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      mode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      family : aliased Interfaces.Unsigned_8;
      address_len : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_change_hosts_request_t);

   type xcb_host_t is record
      family : aliased Interfaces.Unsigned_8;
      address_len : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_host_t);

   type xcb_host_iterator_t is record
      data : access xcb_host_t;
      c_rem : aliased Integer;
      index : aliased Integer;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_host_iterator_t);

   type xcb_list_hosts_cookie_t is record
      sequence : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_list_hosts_cookie_t);

   type xcb_list_hosts_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_list_hosts_request_t);

   type xcb_list_hosts_reply_t is record
      response_type : aliased Interfaces.Unsigned_8;
      mode : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      length : aliased Interfaces.Unsigned_32;
      hosts_len : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_list_hosts_reply_t);

   type xcb_access_control_t is
     (XCB_ACCESS_CONTROL_DISABLE,
      XCB_ACCESS_CONTROL_ENABLE);
   pragma Convention (C, xcb_access_control_t);

   type xcb_set_access_control_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      mode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_set_access_control_request_t);

   type xcb_close_down_t is
     (XCB_CLOSE_DOWN_DESTROY_ALL,
      XCB_CLOSE_DOWN_RETAIN_PERMANENT,
      XCB_CLOSE_DOWN_RETAIN_TEMPORARY);
   pragma Convention (C, xcb_close_down_t);

   type xcb_set_close_down_mode_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      mode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_set_close_down_mode_request_t);

   type xcb_kill_t is
     (XCB_KILL_ALL_TEMPORARY);
   pragma Convention (C, xcb_kill_t);

   type xcb_kill_client_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      resource : aliased Interfaces.Unsigned_32;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_kill_client_request_t);

   type xcb_rotate_properties_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
      window : aliased xcb_window_t;
      atoms_len : aliased Interfaces.Unsigned_16;
      c_delta : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_rotate_properties_request_t);

   type xcb_screen_saver_t is
     (XCB_SCREEN_SAVER_RESET,
      XCB_SCREEN_SAVER_ACTIVE);
   pragma Convention (C, xcb_screen_saver_t);

   type xcb_force_screen_saver_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      mode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_force_screen_saver_request_t);

   type xcb_mapping_status_t is
     (XCB_MAPPING_STATUS_SUCCESS,
      XCB_MAPPING_STATUS_BUSY,
      XCB_MAPPING_STATUS_FAILURE);
   pragma Convention (C, xcb_mapping_status_t);

   type xcb_set_pointer_mapping_cookie_t is record
      sequence : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_set_pointer_mapping_cookie_t);

   type xcb_set_pointer_mapping_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      map_len : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_set_pointer_mapping_request_t);

   type xcb_set_pointer_mapping_reply_t is record
      response_type : aliased Interfaces.Unsigned_8;
      status : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      length : aliased Interfaces.Unsigned_32;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_set_pointer_mapping_reply_t);

   type xcb_get_pointer_mapping_cookie_t is record
      sequence : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_pointer_mapping_cookie_t);

   type xcb_get_pointer_mapping_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_pointer_mapping_request_t);

   type xcb_get_pointer_mapping_reply_t is record
      response_type : aliased Interfaces.Unsigned_8;
      map_len : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      length : aliased Interfaces.Unsigned_32;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_pointer_mapping_reply_t);

   type xcb_map_index_t is
     (XCB_MAP_INDEX_SHIFT,
      XCB_MAP_INDEX_LOCK,
      XCB_MAP_INDEX_CONTROL,
      XCB_MAP_INDEX_1,
      XCB_MAP_INDEX_2,
      XCB_MAP_INDEX_3,
      XCB_MAP_INDEX_4,
      XCB_MAP_INDEX_5);
   pragma Convention (C, xcb_map_index_t);

   type xcb_set_modifier_mapping_cookie_t is record
      sequence : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_set_modifier_mapping_cookie_t);

   type xcb_set_modifier_mapping_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      keycodes_per_modifier : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_set_modifier_mapping_request_t);

   type xcb_set_modifier_mapping_reply_t is record
      response_type : aliased Interfaces.Unsigned_8;
      status : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      length : aliased Interfaces.Unsigned_32;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_set_modifier_mapping_reply_t);

   type xcb_get_modifier_mapping_cookie_t is record
      sequence : aliased Interfaces.Unsigned_8;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_modifier_mapping_cookie_t);

   type xcb_get_modifier_mapping_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_modifier_mapping_request_t);

   type xcb_get_modifier_mapping_reply_t is record
      response_type : aliased Interfaces.Unsigned_8;
      keycodes_per_modifier : aliased Interfaces.Unsigned_8;
      sequence : aliased Interfaces.Unsigned_16;
      length : aliased Interfaces.Unsigned_32;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_modifier_mapping_reply_t);

   type xcb_no_operation_request_t is record
      major_opcode : aliased Interfaces.Unsigned_8;
      length : aliased Interfaces.Unsigned_16;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_no_operation_request_t);

   procedure xcb_char2b_next (arg1 : access xcb_char2b_iterator_t);
   pragma Import (C, xcb_char2b_next, "xcb_char2b_next");

   function xcb_char2b_end (arg1 : xcb_char2b_iterator_t) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_char2b_end, "xcb_char2b_end");

   procedure xcb_window_next (arg1 : access xcb_window_iterator_t);
   pragma Import (C, xcb_window_next, "xcb_window_next");

   function xcb_window_end (arg1 : xcb_window_iterator_t) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_window_end, "xcb_window_end");

   procedure xcb_pixmap_next (arg1 : access xcb_pixmap_iterator_t);
   pragma Import (C, xcb_pixmap_next, "xcb_pixmap_next");

   function xcb_pixmap_end (arg1 : xcb_pixmap_iterator_t) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_pixmap_end, "xcb_pixmap_end");

   procedure xcb_cursor_next (arg1 : access xcb_cursor_iterator_t);
   pragma Import (C, xcb_cursor_next, "xcb_cursor_next");

   function xcb_cursor_end (arg1 : xcb_cursor_iterator_t) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_cursor_end, "xcb_cursor_end");

   procedure xcb_font_next (arg1 : access xcb_font_iterator_t);
   pragma Import (C, xcb_font_next, "xcb_font_next");

   function xcb_font_end (arg1 : xcb_font_iterator_t) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_font_end, "xcb_font_end");

   procedure xcb_gcontext_next (arg1 : access xcb_gcontext_iterator_t);
   pragma Import (C, xcb_gcontext_next, "xcb_gcontext_next");

   function xcb_gcontext_end (arg1 : xcb_gcontext_iterator_t) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_gcontext_end, "xcb_gcontext_end");

   procedure xcb_colormap_next (arg1 : access xcb_colormap_iterator_t);
   pragma Import (C, xcb_colormap_next, "xcb_colormap_next");

   function xcb_colormap_end (arg1 : xcb_colormap_iterator_t) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_colormap_end, "xcb_colormap_end");

   procedure xcb_atom_next (arg1 : access xcb_atom_iterator_t);
   pragma Import (C, xcb_atom_next, "xcb_atom_next");

   function xcb_atom_end (arg1 : xcb_atom_iterator_t) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_atom_end, "xcb_atom_end");

   procedure xcb_drawable_next (arg1 : access xcb_drawable_iterator_t);
   pragma Import (C, xcb_drawable_next, "xcb_drawable_next");

   function xcb_drawable_end (arg1 : xcb_drawable_iterator_t) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_drawable_end, "xcb_drawable_end");

   procedure xcb_fontable_next (arg1 : access xcb_fontable_iterator_t);
   pragma Import (C, xcb_fontable_next, "xcb_fontable_next");

   function xcb_fontable_end (arg1 : xcb_fontable_iterator_t) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_fontable_end, "xcb_fontable_end");

   procedure xcb_visualid_next (arg1 : access xcb_visualid_iterator_t);
   pragma Import (C, xcb_visualid_next, "xcb_visualid_next");

   function xcb_visualid_end (arg1 : xcb_visualid_iterator_t) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_visualid_end, "xcb_visualid_end");

   procedure xcb_timestamp_next (arg1 : access xcb_timestamp_iterator_t);
   pragma Import (C, xcb_timestamp_next, "xcb_timestamp_next");

   function xcb_timestamp_end (arg1 : xcb_timestamp_iterator_t) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_timestamp_end, "xcb_timestamp_end");

   procedure xcb_keysym_next (arg1 : access xcb_keysym_iterator_t);
   pragma Import (C, xcb_keysym_next, "xcb_keysym_next");

   function xcb_keysym_end (arg1 : xcb_keysym_iterator_t) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_keysym_end, "xcb_keysym_end");

   procedure xcb_keycode_next (arg1 : access xcb_keycode_iterator_t);
   pragma Import (C, xcb_keycode_next, "xcb_keycode_next");

   function xcb_keycode_end (arg1 : xcb_keycode_iterator_t) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_keycode_end, "xcb_keycode_end");

   procedure xcb_button_next (arg1 : access xcb_button_iterator_t);
   pragma Import (C, xcb_button_next, "xcb_button_next");

   function xcb_button_end (arg1 : xcb_button_iterator_t) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_button_end, "xcb_button_end");

   procedure xcb_point_next (arg1 : access xcb_point_iterator_t);
   pragma Import (C, xcb_point_next, "xcb_point_next");

   function xcb_point_end (arg1 : xcb_point_iterator_t) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_point_end, "xcb_point_end");

   procedure xcb_rectangle_next (arg1 : access xcb_rectangle_iterator_t);
   pragma Import (C, xcb_rectangle_next, "xcb_rectangle_next");

   function xcb_rectangle_end (arg1 : xcb_rectangle_iterator_t) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_rectangle_end, "xcb_rectangle_end");

   procedure xcb_arc_next (arg1 : access xcb_arc_iterator_t);
   pragma Import (C, xcb_arc_next, "xcb_arc_next");

   function xcb_arc_end (arg1 : xcb_arc_iterator_t) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_arc_end, "xcb_arc_end");

   procedure xcb_format_next (arg1 : access xcb_format_iterator_t);
   pragma Import (C, xcb_format_next, "xcb_format_next");

   function xcb_format_end (arg1 : xcb_format_iterator_t) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_format_end, "xcb_format_end");

   procedure xcb_visualtype_next (arg1 : access xcb_visualtype_iterator_t);
   pragma Import (C, xcb_visualtype_next, "xcb_visualtype_next");

   function xcb_visualtype_end (arg1 : xcb_visualtype_iterator_t) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_visualtype_end, "xcb_visualtype_end");

   function xcb_depth_sizeof (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_depth_sizeof, "xcb_depth_sizeof");

   function xcb_depth_visuals (arg1 : System.Address) return access xcb_visualtype_t;
   pragma Import (C, xcb_depth_visuals, "xcb_depth_visuals");

   function xcb_depth_visuals_length (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_depth_visuals_length, "xcb_depth_visuals_length");

   function xcb_depth_visuals_iterator (arg1 : System.Address) return xcb_visualtype_iterator_t;
   pragma Import (C, xcb_depth_visuals_iterator, "xcb_depth_visuals_iterator");

   procedure xcb_depth_next (arg1 : access xcb_depth_iterator_t);
   pragma Import (C, xcb_depth_next, "xcb_depth_next");

   function xcb_depth_end (arg1 : xcb_depth_iterator_t) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_depth_end, "xcb_depth_end");

   function xcb_screen_sizeof (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_screen_sizeof, "xcb_screen_sizeof");

   function xcb_screen_allowed_depths_length (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_screen_allowed_depths_length, "xcb_screen_allowed_depths_length");

   function xcb_screen_allowed_depths_iterator (arg1 : System.Address) return xcb_depth_iterator_t;
   pragma Import (C, xcb_screen_allowed_depths_iterator, "xcb_screen_allowed_depths_iterator");

   procedure xcb_screen_next (arg1 : access xcb_screen_iterator_t);
   pragma Import (C, xcb_screen_next, "xcb_screen_next");

   function xcb_screen_end (arg1 : xcb_screen_iterator_t) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_screen_end, "xcb_screen_end");

   function xcb_setup_request_sizeof (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_setup_request_sizeof, "xcb_setup_request_sizeof");

   function xcb_setup_request_authorization_protocol_name (arg1 : System.Address) return ICS.chars_ptr;
   pragma Import (C, xcb_setup_request_authorization_protocol_name, "xcb_setup_request_authorization_protocol_name");

   function xcb_setup_request_authorization_protocol_name_length (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_setup_request_authorization_protocol_name_length, "xcb_setup_request_authorization_protocol_name_length");

   function xcb_setup_request_authorization_protocol_name_end (arg1 : System.Address) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_setup_request_authorization_protocol_name_end, "xcb_setup_request_authorization_protocol_name_end");

   function xcb_setup_request_authorization_protocol_data (arg1 : System.Address) return ICS.chars_ptr;
   pragma Import (C, xcb_setup_request_authorization_protocol_data, "xcb_setup_request_authorization_protocol_data");

   function xcb_setup_request_authorization_protocol_data_length (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_setup_request_authorization_protocol_data_length, "xcb_setup_request_authorization_protocol_data_length");

   function xcb_setup_request_authorization_protocol_data_end (arg1 : System.Address) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_setup_request_authorization_protocol_data_end, "xcb_setup_request_authorization_protocol_data_end");

   procedure xcb_setup_request_next (arg1 : access xcb_setup_request_iterator_t);
   pragma Import (C, xcb_setup_request_next, "xcb_setup_request_next");

   function xcb_setup_request_end (arg1 : xcb_setup_request_iterator_t) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_setup_request_end, "xcb_setup_request_end");

   function xcb_setup_failed_sizeof (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_setup_failed_sizeof, "xcb_setup_failed_sizeof");

   function xcb_setup_failed_reason (arg1 : System.Address) return ICS.chars_ptr;
   pragma Import (C, xcb_setup_failed_reason, "xcb_setup_failed_reason");

   function xcb_setup_failed_reason_length (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_setup_failed_reason_length, "xcb_setup_failed_reason_length");

   function xcb_setup_failed_reason_end (arg1 : System.Address) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_setup_failed_reason_end, "xcb_setup_failed_reason_end");

   procedure xcb_setup_failed_next (arg1 : access xcb_setup_failed_iterator_t);
   pragma Import (C, xcb_setup_failed_next, "xcb_setup_failed_next");

   function xcb_setup_failed_end (arg1 : xcb_setup_failed_iterator_t) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_setup_failed_end, "xcb_setup_failed_end");

   function xcb_setup_authenticate_sizeof (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_setup_authenticate_sizeof, "xcb_setup_authenticate_sizeof");

   function xcb_setup_authenticate_reason (arg1 : System.Address) return ICS.chars_ptr;
   pragma Import (C, xcb_setup_authenticate_reason, "xcb_setup_authenticate_reason");

   function xcb_setup_authenticate_reason_length (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_setup_authenticate_reason_length, "xcb_setup_authenticate_reason_length");

   function xcb_setup_authenticate_reason_end (arg1 : System.Address) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_setup_authenticate_reason_end, "xcb_setup_authenticate_reason_end");

   procedure xcb_setup_authenticate_next (arg1 : access xcb_setup_authenticate_iterator_t);
   pragma Import (C, xcb_setup_authenticate_next, "xcb_setup_authenticate_next");

   function xcb_setup_authenticate_end (arg1 : xcb_setup_authenticate_iterator_t) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_setup_authenticate_end, "xcb_setup_authenticate_end");

   function xcb_setup_sizeof (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_setup_sizeof, "xcb_setup_sizeof");

   function xcb_setup_vendor (arg1 : System.Address) return ICS.chars_ptr;
   pragma Import (C, xcb_setup_vendor, "xcb_setup_vendor");

   function xcb_setup_vendor_length (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_setup_vendor_length, "xcb_setup_vendor_length");

   function xcb_setup_vendor_end (arg1 : System.Address) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_setup_vendor_end, "xcb_setup_vendor_end");

   function xcb_setup_pixmap_formats (arg1 : System.Address) return access xcb_format_t;
   pragma Import (C, xcb_setup_pixmap_formats, "xcb_setup_pixmap_formats");

   function xcb_setup_pixmap_formats_length (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_setup_pixmap_formats_length, "xcb_setup_pixmap_formats_length");

   function xcb_setup_pixmap_formats_iterator (arg1 : System.Address) return xcb_format_iterator_t;
   pragma Import (C, xcb_setup_pixmap_formats_iterator, "xcb_setup_pixmap_formats_iterator");

   function xcb_setup_roots_length (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_setup_roots_length, "xcb_setup_roots_length");

   function xcb_setup_roots_iterator (arg1 : access xcb_setup_t) return xcb_screen_iterator_t;
   pragma Import (C, xcb_setup_roots_iterator, "xcb_setup_roots_iterator");

   procedure xcb_setup_next (arg1 : access xcb_setup_iterator_t);
   pragma Import (C, xcb_setup_next, "xcb_setup_next");

   function xcb_setup_end (arg1 : xcb_setup_iterator_t) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_setup_end, "xcb_setup_end");

   procedure xcb_client_message_data_next (arg1 : access xcb_client_message_data_iterator_t);
   pragma Import (C, xcb_client_message_data_next, "xcb_client_message_data_next");

   function xcb_client_message_data_end (arg1 : xcb_client_message_data_iterator_t) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_client_message_data_end, "xcb_client_message_data_end");

   function xcb_create_window_sizeof (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_create_window_sizeof, "xcb_create_window_sizeof");

   function xcb_create_window_checked
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_window_t;
      arg4 : xcb_window_t;
      arg5 : Interfaces.Unsigned_16;
      arg6 : Interfaces.Unsigned_16;
      arg7 : Interfaces.Unsigned_16;
      arg8 : Interfaces.Unsigned_16;
      arg9 : Interfaces.Unsigned_16;
      arg10 : Interfaces.Unsigned_16;
      arg11 : xcb_visualid_t;
      arg12 : Interfaces.Unsigned_32;
      arg13 : access Interfaces.Unsigned_32) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_create_window_checked, "xcb_create_window_checked");

   function xcb_create_window
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_window_t;
      arg4 : xcb_window_t;
      arg5 : Interfaces.Unsigned_16;
      arg6 : Interfaces.Unsigned_16;
      arg7 : Interfaces.Unsigned_16;
      arg8 : Interfaces.Unsigned_16;
      arg9 : Interfaces.Unsigned_16;
      arg10 : Interfaces.Unsigned_16;
      arg11 : xcb_visualid_t;
      arg12 : Interfaces.Unsigned_32;
      arg13 : access Interfaces.Unsigned_32) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_create_window, "xcb_create_window");

   function xcb_change_window_attributes_sizeof (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_change_window_attributes_sizeof, "xcb_change_window_attributes_sizeof");

   function xcb_change_window_attributes_checked
     (arg1 : System.Address;
      arg2 : xcb_window_t;
      arg3 : Interfaces.Unsigned_32;
      arg4 : access Interfaces.Unsigned_32) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_change_window_attributes_checked, "xcb_change_window_attributes_checked");

   function xcb_change_window_attributes
     (arg1 : System.Address;
      arg2 : xcb_window_t;
      arg3 : Interfaces.Unsigned_32;
      arg4 : access Interfaces.Unsigned_32) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_change_window_attributes, "xcb_change_window_attributes");

   function xcb_get_window_attributes (arg1 : System.Address; arg2 : xcb_window_t) return xcb_get_window_attributes_cookie_t;
   pragma Import (C, xcb_get_window_attributes, "xcb_get_window_attributes");

   function xcb_get_window_attributes_unchecked (arg1 : System.Address; arg2 : xcb_window_t) return xcb_get_window_attributes_cookie_t;
   pragma Import (C, xcb_get_window_attributes_unchecked, "xcb_get_window_attributes_unchecked");

   function xcb_get_window_attributes_reply
     (arg1 : System.Address;
      arg2 : xcb_get_window_attributes_cookie_t;
      arg3 : System.Address) return access xcb_get_window_attributes_reply_t;
   pragma Import (C, xcb_get_window_attributes_reply, "xcb_get_window_attributes_reply");

   function xcb_destroy_window_checked (arg1 : System.Address; arg2 : xcb_window_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_destroy_window_checked, "xcb_destroy_window_checked");

   function xcb_destroy_window (arg1 : System.Address; arg2 : xcb_window_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_destroy_window, "xcb_destroy_window");

   function xcb_destroy_subwindows_checked (arg1 : System.Address; arg2 : xcb_window_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_destroy_subwindows_checked, "xcb_destroy_subwindows_checked");

   function xcb_destroy_subwindows (arg1 : System.Address; arg2 : xcb_window_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_destroy_subwindows, "xcb_destroy_subwindows");

   function xcb_change_save_set_checked
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_window_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_change_save_set_checked, "xcb_change_save_set_checked");

   function xcb_change_save_set
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_window_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_change_save_set, "xcb_change_save_set");

   function xcb_reparent_window_checked
     (arg1 : System.Address;
      arg2 : xcb_window_t;
      arg3 : xcb_window_t;
      arg4 : Interfaces.Unsigned_16;
      arg5 : Interfaces.Unsigned_16) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_reparent_window_checked, "xcb_reparent_window_checked");

   function xcb_reparent_window
     (arg1 : System.Address;
      arg2 : xcb_window_t;
      arg3 : xcb_window_t;
      arg4 : Interfaces.Unsigned_16;
      arg5 : Interfaces.Unsigned_16) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_reparent_window, "xcb_reparent_window");

   function xcb_map_window_checked (arg1 : System.Address; arg2 : xcb_window_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_map_window_checked, "xcb_map_window_checked");

   function xcb_map_window (arg1 : System.Address; arg2 : xcb_window_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_map_window, "xcb_map_window");

   function xcb_map_subwindows_checked (arg1 : System.Address; arg2 : xcb_window_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_map_subwindows_checked, "xcb_map_subwindows_checked");

   function xcb_map_subwindows (arg1 : System.Address; arg2 : xcb_window_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_map_subwindows, "xcb_map_subwindows");

   function xcb_unmap_window_checked (arg1 : System.Address; arg2 : xcb_window_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_unmap_window_checked, "xcb_unmap_window_checked");

   function xcb_unmap_window (arg1 : System.Address; arg2 : xcb_window_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_unmap_window, "xcb_unmap_window");

   function xcb_unmap_subwindows_checked (arg1 : System.Address; arg2 : xcb_window_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_unmap_subwindows_checked, "xcb_unmap_subwindows_checked");

   function xcb_unmap_subwindows (arg1 : System.Address; arg2 : xcb_window_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_unmap_subwindows, "xcb_unmap_subwindows");

   function xcb_configure_window_sizeof (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_configure_window_sizeof, "xcb_configure_window_sizeof");

   function xcb_configure_window_checked
     (arg1 : System.Address;
      arg2 : xcb_window_t;
      arg3 : Interfaces.Unsigned_16;
      arg4 : access Interfaces.Unsigned_32) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_configure_window_checked, "xcb_configure_window_checked");

   function xcb_configure_window
     (arg1 : System.Address;
      arg2 : xcb_window_t;
      arg3 : Interfaces.Unsigned_16;
      arg4 : access Interfaces.Unsigned_32) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_configure_window, "xcb_configure_window");

   function xcb_circulate_window_checked
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_window_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_circulate_window_checked, "xcb_circulate_window_checked");

   function xcb_circulate_window
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_window_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_circulate_window, "xcb_circulate_window");

   function xcb_get_geometry (arg1 : System.Address; arg2 : xcb_drawable_t) return xcb_get_geometry_cookie_t;
   pragma Import (C, xcb_get_geometry, "xcb_get_geometry");

   function xcb_get_geometry_unchecked (arg1 : System.Address; arg2 : xcb_drawable_t) return xcb_get_geometry_cookie_t;
   pragma Import (C, xcb_get_geometry_unchecked, "xcb_get_geometry_unchecked");

   function xcb_get_geometry_reply
     (arg1 : System.Address;
      arg2 : xcb_get_geometry_cookie_t;
      arg3 : System.Address) return access xcb_get_geometry_reply_t;
   pragma Import (C, xcb_get_geometry_reply, "xcb_get_geometry_reply");

   function xcb_query_tree_sizeof (reply : xcb_query_tree_reply_t) return Integer;
   pragma Import (C, xcb_query_tree_sizeof, "xcb_query_tree_sizeof");

   function xcb_query_tree (con : xcb.xcb_connection_t; arg2 : xcb_window_t) return xcb_query_tree_cookie_t;
   pragma Import (C, xcb_query_tree, "xcb_query_tree");

   function xcb_query_tree_unchecked (arg1 : System.Address; arg2 : xcb_window_t) return xcb_query_tree_cookie_t;
   pragma Import (C, xcb_query_tree_unchecked, "xcb_query_tree_unchecked");

   function xcb_query_tree_children (reply : xcb_query_tree_reply_t) return xcb_window_t_arr;
   pragma Import (C, xcb_query_tree_children, "xcb_query_tree_children");

   function xcb_query_tree_children_length (reply : xcb_query_tree_reply_t) return Integer;
   pragma Import (C, xcb_query_tree_children_length, "xcb_query_tree_children_length");

   function xcb_query_tree_children_end (reply : xcb_query_tree_reply_t) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_query_tree_children_end, "xcb_query_tree_children_end");

   function xcb_query_tree_reply
     (arg1 : System.Address;
      arg2 : xcb_query_tree_cookie_t;
      arg3 : System.Address) return xcb_query_tree_reply_t_p;
   pragma Import (C, xcb_query_tree_reply, "xcb_query_tree_reply");

   function xcb_intern_atom_sizeof (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_intern_atom_sizeof, "xcb_intern_atom_sizeof");

   function xcb_intern_atom
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : Interfaces.Unsigned_16;
      arg4 : ICS.chars_ptr) return xcb_intern_atom_cookie_t;
   pragma Import (C, xcb_intern_atom, "xcb_intern_atom");

   function xcb_intern_atom_unchecked
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : Interfaces.Unsigned_16;
      arg4 : ICS.chars_ptr) return xcb_intern_atom_cookie_t;
   pragma Import (C, xcb_intern_atom_unchecked, "xcb_intern_atom_unchecked");

   function xcb_intern_atom_reply
     (arg1 : System.Address;
      arg2 : xcb_intern_atom_cookie_t;
      arg3 : System.Address) return access xcb_intern_atom_reply_t;
   pragma Import (C, xcb_intern_atom_reply, "xcb_intern_atom_reply");

   function xcb_get_atom_name_sizeof (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_get_atom_name_sizeof, "xcb_get_atom_name_sizeof");

   function xcb_get_atom_name (arg1 : System.Address; arg2 : xcb_atom_t) return xcb_get_atom_name_cookie_t;
   pragma Import (C, xcb_get_atom_name, "xcb_get_atom_name");

   function xcb_get_atom_name_unchecked (arg1 : System.Address; arg2 : xcb_atom_t) return xcb_get_atom_name_cookie_t;
   pragma Import (C, xcb_get_atom_name_unchecked, "xcb_get_atom_name_unchecked");

   function xcb_get_atom_name_name (arg1 : System.Address) return ICS.chars_ptr;
   pragma Import (C, xcb_get_atom_name_name, "xcb_get_atom_name_name");

   function xcb_get_atom_name_name_length (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_get_atom_name_name_length, "xcb_get_atom_name_name_length");

   function xcb_get_atom_name_name_end (arg1 : System.Address) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_get_atom_name_name_end, "xcb_get_atom_name_name_end");

   function xcb_get_atom_name_reply
     (arg1 : System.Address;
      arg2 : xcb_get_atom_name_cookie_t;
      arg3 : System.Address) return access xcb_get_atom_name_reply_t;
   pragma Import (C, xcb_get_atom_name_reply, "xcb_get_atom_name_reply");

   function xcb_change_property_sizeof (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_change_property_sizeof, "xcb_change_property_sizeof");

   function xcb_change_property_checked
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_window_t;
      arg4 : xcb_atom_t;
      arg5 : xcb_atom_t;
      arg6 : Interfaces.Unsigned_8;
      arg7 : Interfaces.Unsigned_32;
      arg8 : System.Address) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_change_property_checked, "xcb_change_property_checked");

   function xcb_change_property
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_window_t;
      arg4 : xcb_atom_t;
      arg5 : xcb_atom_t;
      arg6 : Interfaces.Unsigned_8;
      arg7 : Interfaces.Unsigned_32;
      arg8 : System.Address) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_change_property, "xcb_change_property");

   function xcb_delete_property_checked
     (arg1 : System.Address;
      arg2 : xcb_window_t;
      arg3 : xcb_atom_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_delete_property_checked, "xcb_delete_property_checked");

   function xcb_delete_property
     (arg1 : System.Address;
      arg2 : xcb_window_t;
      arg3 : xcb_atom_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_delete_property, "xcb_delete_property");

   function xcb_get_property_sizeof (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_get_property_sizeof, "xcb_get_property_sizeof");

   function xcb_get_property
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_window_t;
      arg4 : xcb_atom_t;
      arg5 : xcb_atom_t;
      arg6 : Interfaces.Unsigned_32;
      arg7 : Interfaces.Unsigned_32) return xcb_get_property_cookie_t;
   pragma Import (C, xcb_get_property, "xcb_get_property");

   function xcb_get_property_unchecked
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_window_t;
      arg4 : xcb_atom_t;
      arg5 : xcb_atom_t;
      arg6 : Interfaces.Unsigned_32;
      arg7 : Interfaces.Unsigned_32) return xcb_get_property_cookie_t;
   pragma Import (C, xcb_get_property_unchecked, "xcb_get_property_unchecked");

   function xcb_get_property_value (arg1 : System.Address) return System.Address;
   pragma Import (C, xcb_get_property_value, "xcb_get_property_value");

   function xcb_get_property_value_length (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_get_property_value_length, "xcb_get_property_value_length");

   function xcb_get_property_value_end (arg1 : System.Address) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_get_property_value_end, "xcb_get_property_value_end");

   function xcb_get_property_reply
     (arg1 : System.Address;
      arg2 : xcb_get_property_cookie_t;
      arg3 : System.Address) return access xcb_get_property_reply_t;
   pragma Import (C, xcb_get_property_reply, "xcb_get_property_reply");

   function xcb_list_properties_sizeof (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_list_properties_sizeof, "xcb_list_properties_sizeof");

   function xcb_list_properties (arg1 : System.Address; arg2 : xcb_window_t) return xcb_list_properties_cookie_t;
   pragma Import (C, xcb_list_properties, "xcb_list_properties");

   function xcb_list_properties_unchecked (arg1 : System.Address; arg2 : xcb_window_t) return xcb_list_properties_cookie_t;
   pragma Import (C, xcb_list_properties_unchecked, "xcb_list_properties_unchecked");

   function xcb_list_properties_atoms (arg1 : System.Address) return access xcb_atom_t;
   pragma Import (C, xcb_list_properties_atoms, "xcb_list_properties_atoms");

   function xcb_list_properties_atoms_length (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_list_properties_atoms_length, "xcb_list_properties_atoms_length");

   function xcb_list_properties_atoms_end (arg1 : System.Address) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_list_properties_atoms_end, "xcb_list_properties_atoms_end");

   function xcb_list_properties_reply
     (arg1 : System.Address;
      arg2 : xcb_list_properties_cookie_t;
      arg3 : System.Address) return access xcb_list_properties_reply_t;
   pragma Import (C, xcb_list_properties_reply, "xcb_list_properties_reply");

   function xcb_set_selection_owner_checked
     (arg1 : System.Address;
      arg2 : xcb_window_t;
      arg3 : xcb_atom_t;
      arg4 : xcb_timestamp_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_set_selection_owner_checked, "xcb_set_selection_owner_checked");

   function xcb_set_selection_owner
     (arg1 : System.Address;
      arg2 : xcb_window_t;
      arg3 : xcb_atom_t;
      arg4 : xcb_timestamp_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_set_selection_owner, "xcb_set_selection_owner");

   function xcb_get_selection_owner (arg1 : System.Address; arg2 : xcb_atom_t) return xcb_get_selection_owner_cookie_t;
   pragma Import (C, xcb_get_selection_owner, "xcb_get_selection_owner");

   function xcb_get_selection_owner_unchecked (arg1 : System.Address; arg2 : xcb_atom_t) return xcb_get_selection_owner_cookie_t;
   pragma Import (C, xcb_get_selection_owner_unchecked, "xcb_get_selection_owner_unchecked");

   function xcb_get_selection_owner_reply
     (arg1 : System.Address;
      arg2 : xcb_get_selection_owner_cookie_t;
      arg3 : System.Address) return access xcb_get_selection_owner_reply_t;
   pragma Import (C, xcb_get_selection_owner_reply, "xcb_get_selection_owner_reply");

   function xcb_convert_selection_checked
     (arg1 : System.Address;
      arg2 : xcb_window_t;
      arg3 : xcb_atom_t;
      arg4 : xcb_atom_t;
      arg5 : xcb_atom_t;
      arg6 : xcb_timestamp_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_convert_selection_checked, "xcb_convert_selection_checked");

   function xcb_convert_selection
     (arg1 : System.Address;
      arg2 : xcb_window_t;
      arg3 : xcb_atom_t;
      arg4 : xcb_atom_t;
      arg5 : xcb_atom_t;
      arg6 : xcb_timestamp_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_convert_selection, "xcb_convert_selection");

   function xcb_send_event_checked
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_window_t;
      arg4 : Interfaces.Unsigned_32;
      arg5 : ICS.chars_ptr) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_send_event_checked, "xcb_send_event_checked");

   function xcb_send_event
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_window_t;
      arg4 : Interfaces.Unsigned_32;
      arg5 : ICS.chars_ptr) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_send_event, "xcb_send_event");

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

   function xcb_grab_pointer_unchecked
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_window_t;
      arg4 : Interfaces.Unsigned_16;
      arg5 : Interfaces.Unsigned_8;
      arg6 : Interfaces.Unsigned_8;
      arg7 : xcb_window_t;
      arg8 : xcb_cursor_t;
      arg9 : xcb_timestamp_t) return xcb_grab_pointer_cookie_t;
   pragma Import (C, xcb_grab_pointer_unchecked, "xcb_grab_pointer_unchecked");

   function xcb_grab_pointer_reply
     (arg1 : System.Address;
      arg2 : xcb_grab_pointer_cookie_t;
      arg3 : System.Address) return access xcb_grab_pointer_reply_t;
   pragma Import (C, xcb_grab_pointer_reply, "xcb_grab_pointer_reply");

   function xcb_ungrab_pointer_checked (arg1 : System.Address; arg2 : xcb_timestamp_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_ungrab_pointer_checked, "xcb_ungrab_pointer_checked");

   function xcb_ungrab_pointer (arg1 : System.Address; arg2 : xcb_timestamp_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_ungrab_pointer, "xcb_ungrab_pointer");

   function xcb_grab_button_checked
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
   pragma Import (C, xcb_grab_button_checked, "xcb_grab_button_checked");

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

   function xcb_ungrab_button_checked
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_window_t;
      arg4 : Interfaces.Unsigned_16) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_ungrab_button_checked, "xcb_ungrab_button_checked");

   function xcb_ungrab_button
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_window_t;
      arg4 : Interfaces.Unsigned_16) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_ungrab_button, "xcb_ungrab_button");

   function xcb_change_active_pointer_grab_checked
     (arg1 : System.Address;
      arg2 : xcb_cursor_t;
      arg3 : xcb_timestamp_t;
      arg4 : Interfaces.Unsigned_16) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_change_active_pointer_grab_checked, "xcb_change_active_pointer_grab_checked");

   function xcb_change_active_pointer_grab
     (arg1 : System.Address;
      arg2 : xcb_cursor_t;
      arg3 : xcb_timestamp_t;
      arg4 : Interfaces.Unsigned_16) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_change_active_pointer_grab, "xcb_change_active_pointer_grab");

   function xcb_grab_keyboard
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_window_t;
      arg4 : xcb_timestamp_t;
      arg5 : Interfaces.Unsigned_8;
      arg6 : Interfaces.Unsigned_8) return xcb_grab_keyboard_cookie_t;
   pragma Import (C, xcb_grab_keyboard, "xcb_grab_keyboard");

   function xcb_grab_keyboard_unchecked
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_window_t;
      arg4 : xcb_timestamp_t;
      arg5 : Interfaces.Unsigned_8;
      arg6 : Interfaces.Unsigned_8) return xcb_grab_keyboard_cookie_t;
   pragma Import (C, xcb_grab_keyboard_unchecked, "xcb_grab_keyboard_unchecked");

   function xcb_grab_keyboard_reply
     (arg1 : System.Address;
      arg2 : xcb_grab_keyboard_cookie_t;
      arg3 : System.Address) return access xcb_grab_keyboard_reply_t;
   pragma Import (C, xcb_grab_keyboard_reply, "xcb_grab_keyboard_reply");

   function xcb_ungrab_keyboard_checked (arg1 : System.Address; arg2 : xcb_timestamp_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_ungrab_keyboard_checked, "xcb_ungrab_keyboard_checked");

   function xcb_ungrab_keyboard (arg1 : System.Address; arg2 : xcb_timestamp_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_ungrab_keyboard, "xcb_ungrab_keyboard");

   function xcb_grab_key_checked
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_window_t;
      arg4 : Interfaces.Unsigned_16;
      arg5 : xcb_keycode_t;
      arg6 : Interfaces.Unsigned_8;
      arg7 : Interfaces.Unsigned_8) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_grab_key_checked, "xcb_grab_key_checked");

   function xcb_grab_key
     (c             : xcb.xcb_connection_t;
      owner_events  : Interfaces.Unsigned_8;
      grab_window   : xcb_window_t;
      modifiers     : Interfaces.Unsigned_16;
      key           : xcb_keycode_t;
      pointer_mode  : xcb_grab_mode_t;
      keyboard_mode : xcb_grab_mode_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_grab_key, "xcb_grab_key");

   function xcb_ungrab_key_checked
     (arg1 : System.Address;
      arg2 : xcb_keycode_t;
      arg3 : xcb_window_t;
      arg4 : Interfaces.Unsigned_16) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_ungrab_key_checked, "xcb_ungrab_key_checked");

   function xcb_ungrab_key
     (arg1 : System.Address;
      arg2 : xcb_keycode_t;
      arg3 : xcb_window_t;
      arg4 : Interfaces.Unsigned_16) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_ungrab_key, "xcb_ungrab_key");

   function xcb_allow_events_checked
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_timestamp_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_allow_events_checked, "xcb_allow_events_checked");

   function xcb_allow_events
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_timestamp_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_allow_events, "xcb_allow_events");

   function xcb_grab_server_checked (arg1 : System.Address) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_grab_server_checked, "xcb_grab_server_checked");

   function xcb_grab_server (arg1 : System.Address) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_grab_server, "xcb_grab_server");

   function xcb_ungrab_server_checked (arg1 : System.Address) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_ungrab_server_checked, "xcb_ungrab_server_checked");

   function xcb_ungrab_server (arg1 : System.Address) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_ungrab_server, "xcb_ungrab_server");

   function xcb_query_pointer (c : xcb.xcb_connection_t; arg2 : xcb_window_t) return xcb_query_pointer_cookie_t;
   pragma Import (C, xcb_query_pointer, "xcb_query_pointer");

   function xcb_query_pointer_unchecked (c : xcb.xcb_connection_t; arg2 : xcb_window_t) return xcb_query_pointer_cookie_t;
   pragma Import (C, xcb_query_pointer_unchecked, "xcb_query_pointer_unchecked");

   function xcb_query_pointer_reply
     (arg1 : System.Address;
      arg2 : xcb_query_pointer_cookie_t;
      arg3 : System.Address) return access xcb_query_pointer_reply_t;
   pragma Import (C, xcb_query_pointer_reply, "xcb_query_pointer_reply");

   procedure xcb_timecoord_next (arg1 : access xcb_timecoord_iterator_t);
   pragma Import (C, xcb_timecoord_next, "xcb_timecoord_next");

   function xcb_timecoord_end (arg1 : xcb_timecoord_iterator_t) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_timecoord_end, "xcb_timecoord_end");

   function xcb_get_motion_events_sizeof (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_get_motion_events_sizeof, "xcb_get_motion_events_sizeof");

   function xcb_get_motion_events
     (arg1 : System.Address;
      arg2 : xcb_window_t;
      arg3 : xcb_timestamp_t;
      arg4 : xcb_timestamp_t) return xcb_get_motion_events_cookie_t;
   pragma Import (C, xcb_get_motion_events, "xcb_get_motion_events");

   function xcb_get_motion_events_unchecked
     (arg1 : System.Address;
      arg2 : xcb_window_t;
      arg3 : xcb_timestamp_t;
      arg4 : xcb_timestamp_t) return xcb_get_motion_events_cookie_t;
   pragma Import (C, xcb_get_motion_events_unchecked, "xcb_get_motion_events_unchecked");

   function xcb_get_motion_events_events (arg1 : System.Address) return access xcb_timecoord_t;
   pragma Import (C, xcb_get_motion_events_events, "xcb_get_motion_events_events");

   function xcb_get_motion_events_events_length (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_get_motion_events_events_length, "xcb_get_motion_events_events_length");

   function xcb_get_motion_events_events_iterator (arg1 : System.Address) return xcb_timecoord_iterator_t;
   pragma Import (C, xcb_get_motion_events_events_iterator, "xcb_get_motion_events_events_iterator");

   function xcb_get_motion_events_reply
     (arg1 : System.Address;
      arg2 : xcb_get_motion_events_cookie_t;
      arg3 : System.Address) return access xcb_get_motion_events_reply_t;
   pragma Import (C, xcb_get_motion_events_reply, "xcb_get_motion_events_reply");

   function xcb_translate_coordinates
     (arg1 : System.Address;
      arg2 : xcb_window_t;
      arg3 : xcb_window_t;
      arg4 : Interfaces.Unsigned_16;
      arg5 : Interfaces.Unsigned_16) return xcb_translate_coordinates_cookie_t;
   pragma Import (C, xcb_translate_coordinates, "xcb_translate_coordinates");

   function xcb_translate_coordinates_unchecked
     (arg1 : System.Address;
      arg2 : xcb_window_t;
      arg3 : xcb_window_t;
      arg4 : Interfaces.Unsigned_16;
      arg5 : Interfaces.Unsigned_16) return xcb_translate_coordinates_cookie_t;
   pragma Import (C, xcb_translate_coordinates_unchecked, "xcb_translate_coordinates_unchecked");

   function xcb_translate_coordinates_reply
     (arg1 : System.Address;
      arg2 : xcb_translate_coordinates_cookie_t;
      arg3 : System.Address) return access xcb_translate_coordinates_reply_t;
   pragma Import (C, xcb_translate_coordinates_reply, "xcb_translate_coordinates_reply");

   function xcb_warp_pointer_checked
     (arg1 : System.Address;
      arg2 : xcb_window_t;
      arg3 : xcb_window_t;
      arg4 : Interfaces.Unsigned_16;
      arg5 : Interfaces.Unsigned_16;
      arg6 : Interfaces.Unsigned_16;
      arg7 : Interfaces.Unsigned_16;
      arg8 : Interfaces.Unsigned_16;
      arg9 : Interfaces.Unsigned_16) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_warp_pointer_checked, "xcb_warp_pointer_checked");

   function xcb_warp_pointer
     (arg1 : System.Address;
      arg2 : xcb_window_t;
      arg3 : xcb_window_t;
      arg4 : Interfaces.Unsigned_16;
      arg5 : Interfaces.Unsigned_16;
      arg6 : Interfaces.Unsigned_16;
      arg7 : Interfaces.Unsigned_16;
      arg8 : Interfaces.Unsigned_16;
      arg9 : Interfaces.Unsigned_16) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_warp_pointer, "xcb_warp_pointer");

   function xcb_set_input_focus_checked
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_window_t;
      arg4 : xcb_timestamp_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_set_input_focus_checked, "xcb_set_input_focus_checked");

   function xcb_set_input_focus
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_window_t;
      arg4 : xcb_timestamp_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_set_input_focus, "xcb_set_input_focus");

   function xcb_get_input_focus (arg1 : System.Address) return xcb_get_input_focus_cookie_t;
   pragma Import (C, xcb_get_input_focus, "xcb_get_input_focus");

   function xcb_get_input_focus_unchecked (arg1 : System.Address) return xcb_get_input_focus_cookie_t;
   pragma Import (C, xcb_get_input_focus_unchecked, "xcb_get_input_focus_unchecked");

   function xcb_get_input_focus_reply
     (arg1 : System.Address;
      arg2 : xcb_get_input_focus_cookie_t;
      arg3 : System.Address) return access xcb_get_input_focus_reply_t;
   pragma Import (C, xcb_get_input_focus_reply, "xcb_get_input_focus_reply");

   function xcb_query_keymap (arg1 : System.Address) return xcb_query_keymap_cookie_t;
   pragma Import (C, xcb_query_keymap, "xcb_query_keymap");

   function xcb_query_keymap_unchecked (arg1 : System.Address) return xcb_query_keymap_cookie_t;
   pragma Import (C, xcb_query_keymap_unchecked, "xcb_query_keymap_unchecked");

   function xcb_query_keymap_reply
     (arg1 : System.Address;
      arg2 : xcb_query_keymap_cookie_t;
      arg3 : System.Address) return access xcb_query_keymap_reply_t;
   pragma Import (C, xcb_query_keymap_reply, "xcb_query_keymap_reply");

   function xcb_open_font_sizeof (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_open_font_sizeof, "xcb_open_font_sizeof");

   function xcb_open_font_checked
     (arg1 : System.Address;
      arg2 : xcb_font_t;
      arg3 : Interfaces.Unsigned_16;
      arg4 : ICS.chars_ptr) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_open_font_checked, "xcb_open_font_checked");

   function xcb_open_font
     (arg1 : System.Address;
      arg2 : xcb_font_t;
      arg3 : Interfaces.Unsigned_16;
      arg4 : ICS.chars_ptr) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_open_font, "xcb_open_font");

   function xcb_close_font_checked (arg1 : System.Address; arg2 : xcb_font_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_close_font_checked, "xcb_close_font_checked");

   function xcb_close_font (arg1 : System.Address; arg2 : xcb_font_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_close_font, "xcb_close_font");

   procedure xcb_fontprop_next (arg1 : access xcb_fontprop_iterator_t);
   pragma Import (C, xcb_fontprop_next, "xcb_fontprop_next");

   function xcb_fontprop_end (arg1 : xcb_fontprop_iterator_t) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_fontprop_end, "xcb_fontprop_end");

   procedure xcb_charinfo_next (arg1 : access xcb_charinfo_iterator_t);
   pragma Import (C, xcb_charinfo_next, "xcb_charinfo_next");

   function xcb_charinfo_end (arg1 : xcb_charinfo_iterator_t) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_charinfo_end, "xcb_charinfo_end");

   function xcb_query_font_sizeof (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_query_font_sizeof, "xcb_query_font_sizeof");

   function xcb_query_font (arg1 : System.Address; arg2 : xcb_fontable_t) return xcb_query_font_cookie_t;
   pragma Import (C, xcb_query_font, "xcb_query_font");

   function xcb_query_font_unchecked (arg1 : System.Address; arg2 : xcb_fontable_t) return xcb_query_font_cookie_t;
   pragma Import (C, xcb_query_font_unchecked, "xcb_query_font_unchecked");

   function xcb_query_font_properties (arg1 : System.Address) return access xcb_fontprop_t;
   pragma Import (C, xcb_query_font_properties, "xcb_query_font_properties");

   function xcb_query_font_properties_length (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_query_font_properties_length, "xcb_query_font_properties_length");

   function xcb_query_font_properties_iterator (arg1 : System.Address) return xcb_fontprop_iterator_t;
   pragma Import (C, xcb_query_font_properties_iterator, "xcb_query_font_properties_iterator");

   function xcb_query_font_char_infos (arg1 : System.Address) return access xcb_charinfo_t;
   pragma Import (C, xcb_query_font_char_infos, "xcb_query_font_char_infos");

   function xcb_query_font_char_infos_length (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_query_font_char_infos_length, "xcb_query_font_char_infos_length");

   function xcb_query_font_char_infos_iterator (arg1 : System.Address) return xcb_charinfo_iterator_t;
   pragma Import (C, xcb_query_font_char_infos_iterator, "xcb_query_font_char_infos_iterator");

   function xcb_query_font_reply
     (arg1 : System.Address;
      arg2 : xcb_query_font_cookie_t;
      arg3 : System.Address) return access xcb_query_font_reply_t;
   pragma Import (C, xcb_query_font_reply, "xcb_query_font_reply");

   function xcb_query_text_extents_sizeof (arg1 : System.Address; arg2 : Interfaces.Unsigned_32) return Integer;
   pragma Import (C, xcb_query_text_extents_sizeof, "xcb_query_text_extents_sizeof");

   function xcb_query_text_extents
     (arg1 : System.Address;
      arg2 : xcb_fontable_t;
      arg3 : Interfaces.Unsigned_32;
      arg4 : System.Address) return xcb_query_text_extents_cookie_t;
   pragma Import (C, xcb_query_text_extents, "xcb_query_text_extents");

   function xcb_query_text_extents_unchecked
     (arg1 : System.Address;
      arg2 : xcb_fontable_t;
      arg3 : Interfaces.Unsigned_32;
      arg4 : System.Address) return xcb_query_text_extents_cookie_t;
   pragma Import (C, xcb_query_text_extents_unchecked, "xcb_query_text_extents_unchecked");

   function xcb_query_text_extents_reply
     (arg1 : System.Address;
      arg2 : xcb_query_text_extents_cookie_t;
      arg3 : System.Address) return access xcb_query_text_extents_reply_t;
   pragma Import (C, xcb_query_text_extents_reply, "xcb_query_text_extents_reply");

   function xcb_str_sizeof (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_str_sizeof, "xcb_str_sizeof");

   function xcb_str_name (arg1 : System.Address) return ICS.chars_ptr;
   pragma Import (C, xcb_str_name, "xcb_str_name");

   function xcb_str_name_length (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_str_name_length, "xcb_str_name_length");

   function xcb_str_name_end (arg1 : System.Address) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_str_name_end, "xcb_str_name_end");

   procedure xcb_str_next (arg1 : access xcb_str_iterator_t);
   pragma Import (C, xcb_str_next, "xcb_str_next");

   function xcb_str_end (arg1 : xcb_str_iterator_t) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_str_end, "xcb_str_end");

   function xcb_list_fonts_sizeof (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_list_fonts_sizeof, "xcb_list_fonts_sizeof");

   function xcb_list_fonts
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_16;
      arg3 : Interfaces.Unsigned_16;
      arg4 : ICS.chars_ptr) return xcb_list_fonts_cookie_t;
   pragma Import (C, xcb_list_fonts, "xcb_list_fonts");

   function xcb_list_fonts_unchecked
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_16;
      arg3 : Interfaces.Unsigned_16;
      arg4 : ICS.chars_ptr) return xcb_list_fonts_cookie_t;
   pragma Import (C, xcb_list_fonts_unchecked, "xcb_list_fonts_unchecked");

   function xcb_list_fonts_names_length (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_list_fonts_names_length, "xcb_list_fonts_names_length");

   function xcb_list_fonts_names_iterator (arg1 : System.Address) return xcb_str_iterator_t;
   pragma Import (C, xcb_list_fonts_names_iterator, "xcb_list_fonts_names_iterator");

   function xcb_list_fonts_reply
     (arg1 : System.Address;
      arg2 : xcb_list_fonts_cookie_t;
      arg3 : System.Address) return access xcb_list_fonts_reply_t;
   pragma Import (C, xcb_list_fonts_reply, "xcb_list_fonts_reply");

   function xcb_list_fonts_with_info_sizeof (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_list_fonts_with_info_sizeof, "xcb_list_fonts_with_info_sizeof");

   function xcb_list_fonts_with_info
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_16;
      arg3 : Interfaces.Unsigned_16;
      arg4 : ICS.chars_ptr) return xcb_list_fonts_with_info_cookie_t;
   pragma Import (C, xcb_list_fonts_with_info, "xcb_list_fonts_with_info");

   function xcb_list_fonts_with_info_unchecked
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_16;
      arg3 : Interfaces.Unsigned_16;
      arg4 : ICS.chars_ptr) return xcb_list_fonts_with_info_cookie_t;
   pragma Import (C, xcb_list_fonts_with_info_unchecked, "xcb_list_fonts_with_info_unchecked");

   function xcb_list_fonts_with_info_properties (arg1 : System.Address) return access xcb_fontprop_t;
   pragma Import (C, xcb_list_fonts_with_info_properties, "xcb_list_fonts_with_info_properties");

   function xcb_list_fonts_with_info_properties_length (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_list_fonts_with_info_properties_length, "xcb_list_fonts_with_info_properties_length");

   function xcb_list_fonts_with_info_properties_iterator (arg1 : System.Address) return xcb_fontprop_iterator_t;
   pragma Import (C, xcb_list_fonts_with_info_properties_iterator, "xcb_list_fonts_with_info_properties_iterator");

   function xcb_list_fonts_with_info_name (arg1 : System.Address) return ICS.chars_ptr;
   pragma Import (C, xcb_list_fonts_with_info_name, "xcb_list_fonts_with_info_name");

   function xcb_list_fonts_with_info_name_length (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_list_fonts_with_info_name_length, "xcb_list_fonts_with_info_name_length");

   function xcb_list_fonts_with_info_name_end (arg1 : System.Address) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_list_fonts_with_info_name_end, "xcb_list_fonts_with_info_name_end");

   function xcb_list_fonts_with_info_reply
     (arg1 : System.Address;
      arg2 : xcb_list_fonts_with_info_cookie_t;
      arg3 : System.Address) return access xcb_list_fonts_with_info_reply_t;
   pragma Import (C, xcb_list_fonts_with_info_reply, "xcb_list_fonts_with_info_reply");

   function xcb_set_font_path_sizeof (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_set_font_path_sizeof, "xcb_set_font_path_sizeof");

   function xcb_set_font_path_checked
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_16;
      arg3 : System.Address) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_set_font_path_checked, "xcb_set_font_path_checked");

   function xcb_set_font_path
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_16;
      arg3 : System.Address) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_set_font_path, "xcb_set_font_path");

   function xcb_get_font_path_sizeof (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_get_font_path_sizeof, "xcb_get_font_path_sizeof");

   function xcb_get_font_path (arg1 : System.Address) return xcb_get_font_path_cookie_t;
   pragma Import (C, xcb_get_font_path, "xcb_get_font_path");

   function xcb_get_font_path_unchecked (arg1 : System.Address) return xcb_get_font_path_cookie_t;
   pragma Import (C, xcb_get_font_path_unchecked, "xcb_get_font_path_unchecked");

   function xcb_get_font_path_path_length (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_get_font_path_path_length, "xcb_get_font_path_path_length");

   function xcb_get_font_path_path_iterator (arg1 : System.Address) return xcb_str_iterator_t;
   pragma Import (C, xcb_get_font_path_path_iterator, "xcb_get_font_path_path_iterator");

   function xcb_get_font_path_reply
     (arg1 : System.Address;
      arg2 : xcb_get_font_path_cookie_t;
      arg3 : System.Address) return access xcb_get_font_path_reply_t;
   pragma Import (C, xcb_get_font_path_reply, "xcb_get_font_path_reply");

   function xcb_create_pixmap_checked
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_pixmap_t;
      arg4 : xcb_drawable_t;
      arg5 : Interfaces.Unsigned_16;
      arg6 : Interfaces.Unsigned_16) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_create_pixmap_checked, "xcb_create_pixmap_checked");

   function xcb_create_pixmap
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_pixmap_t;
      arg4 : xcb_drawable_t;
      arg5 : Interfaces.Unsigned_16;
      arg6 : Interfaces.Unsigned_16) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_create_pixmap, "xcb_create_pixmap");

   function xcb_free_pixmap_checked (arg1 : System.Address; arg2 : xcb_pixmap_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_free_pixmap_checked, "xcb_free_pixmap_checked");

   function xcb_free_pixmap (arg1 : System.Address; arg2 : xcb_pixmap_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_free_pixmap, "xcb_free_pixmap");

   function xcb_create_gc_sizeof (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_create_gc_sizeof, "xcb_create_gc_sizeof");

   function xcb_create_gc_checked
     (arg1 : System.Address;
      arg2 : xcb_gcontext_t;
      arg3 : xcb_drawable_t;
      arg4 : Interfaces.Unsigned_32;
      arg5 : access Interfaces.Unsigned_32) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_create_gc_checked, "xcb_create_gc_checked");

   function xcb_create_gc
     (arg1 : System.Address;
      arg2 : xcb_gcontext_t;
      arg3 : xcb_drawable_t;
      arg4 : Interfaces.Unsigned_32;
      arg5 : access Interfaces.Unsigned_32) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_create_gc, "xcb_create_gc");

   function xcb_change_gc_sizeof (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_change_gc_sizeof, "xcb_change_gc_sizeof");

   function xcb_change_gc_checked
     (arg1 : System.Address;
      arg2 : xcb_gcontext_t;
      arg3 : Interfaces.Unsigned_32;
      arg4 : access Interfaces.Unsigned_32) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_change_gc_checked, "xcb_change_gc_checked");

   function xcb_change_gc
     (arg1 : System.Address;
      arg2 : xcb_gcontext_t;
      arg3 : Interfaces.Unsigned_32;
      arg4 : access Interfaces.Unsigned_32) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_change_gc, "xcb_change_gc");

   function xcb_copy_gc_checked
     (arg1 : System.Address;
      arg2 : xcb_gcontext_t;
      arg3 : xcb_gcontext_t;
      arg4 : Interfaces.Unsigned_32) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_copy_gc_checked, "xcb_copy_gc_checked");

   function xcb_copy_gc
     (arg1 : System.Address;
      arg2 : xcb_gcontext_t;
      arg3 : xcb_gcontext_t;
      arg4 : Interfaces.Unsigned_32) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_copy_gc, "xcb_copy_gc");

   function xcb_set_dashes_sizeof (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_set_dashes_sizeof, "xcb_set_dashes_sizeof");

   function xcb_set_dashes_checked
     (arg1 : System.Address;
      arg2 : xcb_gcontext_t;
      arg3 : Interfaces.Unsigned_16;
      arg4 : Interfaces.Unsigned_16;
      arg5 : access Interfaces.Unsigned_8) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_set_dashes_checked, "xcb_set_dashes_checked");

   function xcb_set_dashes
     (arg1 : System.Address;
      arg2 : xcb_gcontext_t;
      arg3 : Interfaces.Unsigned_16;
      arg4 : Interfaces.Unsigned_16;
      arg5 : access Interfaces.Unsigned_8) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_set_dashes, "xcb_set_dashes");

   function xcb_set_clip_rectangles_sizeof (arg1 : System.Address; arg2 : Interfaces.Unsigned_32) return Integer;
   pragma Import (C, xcb_set_clip_rectangles_sizeof, "xcb_set_clip_rectangles_sizeof");

   function xcb_set_clip_rectangles_checked
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_gcontext_t;
      arg4 : Interfaces.Unsigned_16;
      arg5 : Interfaces.Unsigned_16;
      arg6 : Interfaces.Unsigned_32;
      arg7 : System.Address) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_set_clip_rectangles_checked, "xcb_set_clip_rectangles_checked");

   function xcb_set_clip_rectangles
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_gcontext_t;
      arg4 : Interfaces.Unsigned_16;
      arg5 : Interfaces.Unsigned_16;
      arg6 : Interfaces.Unsigned_32;
      arg7 : System.Address) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_set_clip_rectangles, "xcb_set_clip_rectangles");

   function xcb_free_gc_checked (arg1 : System.Address; arg2 : xcb_gcontext_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_free_gc_checked, "xcb_free_gc_checked");

   function xcb_free_gc (arg1 : System.Address; arg2 : xcb_gcontext_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_free_gc, "xcb_free_gc");

   function xcb_clear_area_checked
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_window_t;
      arg4 : Interfaces.Unsigned_16;
      arg5 : Interfaces.Unsigned_16;
      arg6 : Interfaces.Unsigned_16;
      arg7 : Interfaces.Unsigned_16) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_clear_area_checked, "xcb_clear_area_checked");

   function xcb_clear_area
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_window_t;
      arg4 : Interfaces.Unsigned_16;
      arg5 : Interfaces.Unsigned_16;
      arg6 : Interfaces.Unsigned_16;
      arg7 : Interfaces.Unsigned_16) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_clear_area, "xcb_clear_area");

   function xcb_copy_area_checked
     (arg1 : System.Address;
      arg2 : xcb_drawable_t;
      arg3 : xcb_drawable_t;
      arg4 : xcb_gcontext_t;
      arg5 : Interfaces.Unsigned_16;
      arg6 : Interfaces.Unsigned_16;
      arg7 : Interfaces.Unsigned_16;
      arg8 : Interfaces.Unsigned_16;
      arg9 : Interfaces.Unsigned_16;
      arg10 : Interfaces.Unsigned_16) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_copy_area_checked, "xcb_copy_area_checked");

   function xcb_copy_area
     (arg1 : System.Address;
      arg2 : xcb_drawable_t;
      arg3 : xcb_drawable_t;
      arg4 : xcb_gcontext_t;
      arg5 : Interfaces.Unsigned_16;
      arg6 : Interfaces.Unsigned_16;
      arg7 : Interfaces.Unsigned_16;
      arg8 : Interfaces.Unsigned_16;
      arg9 : Interfaces.Unsigned_16;
      arg10 : Interfaces.Unsigned_16) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_copy_area, "xcb_copy_area");

   function xcb_copy_plane_checked
     (arg1 : System.Address;
      arg2 : xcb_drawable_t;
      arg3 : xcb_drawable_t;
      arg4 : xcb_gcontext_t;
      arg5 : Interfaces.Unsigned_16;
      arg6 : Interfaces.Unsigned_16;
      arg7 : Interfaces.Unsigned_16;
      arg8 : Interfaces.Unsigned_16;
      arg9 : Interfaces.Unsigned_16;
      arg10 : Interfaces.Unsigned_16;
      arg11 : Interfaces.Unsigned_32) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_copy_plane_checked, "xcb_copy_plane_checked");

   function xcb_copy_plane
     (arg1 : System.Address;
      arg2 : xcb_drawable_t;
      arg3 : xcb_drawable_t;
      arg4 : xcb_gcontext_t;
      arg5 : Interfaces.Unsigned_16;
      arg6 : Interfaces.Unsigned_16;
      arg7 : Interfaces.Unsigned_16;
      arg8 : Interfaces.Unsigned_16;
      arg9 : Interfaces.Unsigned_16;
      arg10 : Interfaces.Unsigned_16;
      arg11 : Interfaces.Unsigned_32) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_copy_plane, "xcb_copy_plane");

   function xcb_poly_point_sizeof (arg1 : System.Address; arg2 : Interfaces.Unsigned_32) return Integer;
   pragma Import (C, xcb_poly_point_sizeof, "xcb_poly_point_sizeof");

   function xcb_poly_point_checked
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_drawable_t;
      arg4 : xcb_gcontext_t;
      arg5 : Interfaces.Unsigned_32;
      arg6 : System.Address) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_poly_point_checked, "xcb_poly_point_checked");

   function xcb_poly_point
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_drawable_t;
      arg4 : xcb_gcontext_t;
      arg5 : Interfaces.Unsigned_32;
      arg6 : System.Address) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_poly_point, "xcb_poly_point");

   function xcb_poly_line_sizeof (arg1 : System.Address; arg2 : Interfaces.Unsigned_32) return Integer;
   pragma Import (C, xcb_poly_line_sizeof, "xcb_poly_line_sizeof");

   function xcb_poly_line_checked
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_drawable_t;
      arg4 : xcb_gcontext_t;
      arg5 : Interfaces.Unsigned_32;
      arg6 : System.Address) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_poly_line_checked, "xcb_poly_line_checked");

   function xcb_poly_line
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_drawable_t;
      arg4 : xcb_gcontext_t;
      arg5 : Interfaces.Unsigned_32;
      arg6 : System.Address) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_poly_line, "xcb_poly_line");

   procedure xcb_segment_next (arg1 : access xcb_segment_iterator_t);
   pragma Import (C, xcb_segment_next, "xcb_segment_next");

   function xcb_segment_end (arg1 : xcb_segment_iterator_t) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_segment_end, "xcb_segment_end");

   function xcb_poly_segment_sizeof (arg1 : System.Address; arg2 : Interfaces.Unsigned_32) return Integer;
   pragma Import (C, xcb_poly_segment_sizeof, "xcb_poly_segment_sizeof");

   function xcb_poly_segment_checked
     (arg1 : System.Address;
      arg2 : xcb_drawable_t;
      arg3 : xcb_gcontext_t;
      arg4 : Interfaces.Unsigned_32;
      arg5 : System.Address) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_poly_segment_checked, "xcb_poly_segment_checked");

   function xcb_poly_segment
     (arg1 : System.Address;
      arg2 : xcb_drawable_t;
      arg3 : xcb_gcontext_t;
      arg4 : Interfaces.Unsigned_32;
      arg5 : System.Address) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_poly_segment, "xcb_poly_segment");

   function xcb_poly_rectangle_sizeof (arg1 : System.Address; arg2 : Interfaces.Unsigned_32) return Integer;
   pragma Import (C, xcb_poly_rectangle_sizeof, "xcb_poly_rectangle_sizeof");

   function xcb_poly_rectangle_checked
     (arg1 : System.Address;
      arg2 : xcb_drawable_t;
      arg3 : xcb_gcontext_t;
      arg4 : Interfaces.Unsigned_32;
      arg5 : System.Address) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_poly_rectangle_checked, "xcb_poly_rectangle_checked");

   function xcb_poly_rectangle
     (arg1 : System.Address;
      arg2 : xcb_drawable_t;
      arg3 : xcb_gcontext_t;
      arg4 : Interfaces.Unsigned_32;
      arg5 : System.Address) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_poly_rectangle, "xcb_poly_rectangle");

   function xcb_poly_arc_sizeof (arg1 : System.Address; arg2 : Interfaces.Unsigned_32) return Integer;
   pragma Import (C, xcb_poly_arc_sizeof, "xcb_poly_arc_sizeof");

   function xcb_poly_arc_checked
     (arg1 : System.Address;
      arg2 : xcb_drawable_t;
      arg3 : xcb_gcontext_t;
      arg4 : Interfaces.Unsigned_32;
      arg5 : System.Address) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_poly_arc_checked, "xcb_poly_arc_checked");

   function xcb_poly_arc
     (arg1 : System.Address;
      arg2 : xcb_drawable_t;
      arg3 : xcb_gcontext_t;
      arg4 : Interfaces.Unsigned_32;
      arg5 : System.Address) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_poly_arc, "xcb_poly_arc");

   function xcb_fill_poly_sizeof (arg1 : System.Address; arg2 : Interfaces.Unsigned_32) return Integer;
   pragma Import (C, xcb_fill_poly_sizeof, "xcb_fill_poly_sizeof");

   function xcb_fill_poly_checked
     (arg1 : System.Address;
      arg2 : xcb_drawable_t;
      arg3 : xcb_gcontext_t;
      arg4 : Interfaces.Unsigned_8;
      arg5 : Interfaces.Unsigned_8;
      arg6 : Interfaces.Unsigned_32;
      arg7 : System.Address) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_fill_poly_checked, "xcb_fill_poly_checked");

   function xcb_fill_poly
     (arg1 : System.Address;
      arg2 : xcb_drawable_t;
      arg3 : xcb_gcontext_t;
      arg4 : Interfaces.Unsigned_8;
      arg5 : Interfaces.Unsigned_8;
      arg6 : Interfaces.Unsigned_32;
      arg7 : System.Address) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_fill_poly, "xcb_fill_poly");

   function xcb_poly_fill_rectangle_sizeof (arg1 : System.Address; arg2 : Interfaces.Unsigned_32) return Integer;
   pragma Import (C, xcb_poly_fill_rectangle_sizeof, "xcb_poly_fill_rectangle_sizeof");

   function xcb_poly_fill_rectangle_checked
     (arg1 : System.Address;
      arg2 : xcb_drawable_t;
      arg3 : xcb_gcontext_t;
      arg4 : Interfaces.Unsigned_32;
      arg5 : System.Address) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_poly_fill_rectangle_checked, "xcb_poly_fill_rectangle_checked");

   function xcb_poly_fill_rectangle
     (arg1 : System.Address;
      arg2 : xcb_drawable_t;
      arg3 : xcb_gcontext_t;
      arg4 : Interfaces.Unsigned_32;
      arg5 : System.Address) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_poly_fill_rectangle, "xcb_poly_fill_rectangle");

   function xcb_poly_fill_arc_sizeof (arg1 : System.Address; arg2 : Interfaces.Unsigned_32) return Integer;
   pragma Import (C, xcb_poly_fill_arc_sizeof, "xcb_poly_fill_arc_sizeof");

   function xcb_poly_fill_arc_checked
     (arg1 : System.Address;
      arg2 : xcb_drawable_t;
      arg3 : xcb_gcontext_t;
      arg4 : Interfaces.Unsigned_32;
      arg5 : System.Address) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_poly_fill_arc_checked, "xcb_poly_fill_arc_checked");

   function xcb_poly_fill_arc
     (arg1 : System.Address;
      arg2 : xcb_drawable_t;
      arg3 : xcb_gcontext_t;
      arg4 : Interfaces.Unsigned_32;
      arg5 : System.Address) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_poly_fill_arc, "xcb_poly_fill_arc");

   function xcb_put_image_sizeof (arg1 : System.Address; arg2 : Interfaces.Unsigned_32) return Integer;
   pragma Import (C, xcb_put_image_sizeof, "xcb_put_image_sizeof");

   function xcb_put_image_checked
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_drawable_t;
      arg4 : xcb_gcontext_t;
      arg5 : Interfaces.Unsigned_16;
      arg6 : Interfaces.Unsigned_16;
      arg7 : Interfaces.Unsigned_16;
      arg8 : Interfaces.Unsigned_16;
      arg9 : Interfaces.Unsigned_8;
      arg10 : Interfaces.Unsigned_8;
      arg11 : Interfaces.Unsigned_32;
      arg12 : access Interfaces.Unsigned_8) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_put_image_checked, "xcb_put_image_checked");

   function xcb_put_image
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_drawable_t;
      arg4 : xcb_gcontext_t;
      arg5 : Interfaces.Unsigned_16;
      arg6 : Interfaces.Unsigned_16;
      arg7 : Interfaces.Unsigned_16;
      arg8 : Interfaces.Unsigned_16;
      arg9 : Interfaces.Unsigned_8;
      arg10 : Interfaces.Unsigned_8;
      arg11 : Interfaces.Unsigned_32;
      arg12 : access Interfaces.Unsigned_8) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_put_image, "xcb_put_image");

   function xcb_get_image_sizeof (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_get_image_sizeof, "xcb_get_image_sizeof");

   function xcb_get_image
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_drawable_t;
      arg4 : Interfaces.Unsigned_16;
      arg5 : Interfaces.Unsigned_16;
      arg6 : Interfaces.Unsigned_16;
      arg7 : Interfaces.Unsigned_16;
      arg8 : Interfaces.Unsigned_32) return xcb_get_image_cookie_t;
   pragma Import (C, xcb_get_image, "xcb_get_image");

   function xcb_get_image_unchecked
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_drawable_t;
      arg4 : Interfaces.Unsigned_16;
      arg5 : Interfaces.Unsigned_16;
      arg6 : Interfaces.Unsigned_16;
      arg7 : Interfaces.Unsigned_16;
      arg8 : Interfaces.Unsigned_32) return xcb_get_image_cookie_t;
   pragma Import (C, xcb_get_image_unchecked, "xcb_get_image_unchecked");

   function xcb_get_image_data (arg1 : System.Address) return access Interfaces.Unsigned_8;
   pragma Import (C, xcb_get_image_data, "xcb_get_image_data");

   function xcb_get_image_data_length (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_get_image_data_length, "xcb_get_image_data_length");

   function xcb_get_image_data_end (arg1 : System.Address) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_get_image_data_end, "xcb_get_image_data_end");

   function xcb_get_image_reply
     (arg1 : System.Address;
      arg2 : xcb_get_image_cookie_t;
      arg3 : System.Address) return access xcb_get_image_reply_t;
   pragma Import (C, xcb_get_image_reply, "xcb_get_image_reply");

   function xcb_poly_text_8_sizeof (arg1 : System.Address; arg2 : Interfaces.Unsigned_32) return Integer;
   pragma Import (C, xcb_poly_text_8_sizeof, "xcb_poly_text_8_sizeof");

   function xcb_poly_text_8_checked
     (arg1 : System.Address;
      arg2 : xcb_drawable_t;
      arg3 : xcb_gcontext_t;
      arg4 : Interfaces.Unsigned_16;
      arg5 : Interfaces.Unsigned_16;
      arg6 : Interfaces.Unsigned_32;
      arg7 : access Interfaces.Unsigned_8) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_poly_text_8_checked, "xcb_poly_text_8_checked");

   function xcb_poly_text_8
     (arg1 : System.Address;
      arg2 : xcb_drawable_t;
      arg3 : xcb_gcontext_t;
      arg4 : Interfaces.Unsigned_16;
      arg5 : Interfaces.Unsigned_16;
      arg6 : Interfaces.Unsigned_32;
      arg7 : access Interfaces.Unsigned_8) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_poly_text_8, "xcb_poly_text_8");

   function xcb_poly_text_16_sizeof (arg1 : System.Address; arg2 : Interfaces.Unsigned_32) return Integer;
   pragma Import (C, xcb_poly_text_16_sizeof, "xcb_poly_text_16_sizeof");

   function xcb_poly_text_16_checked
     (arg1 : System.Address;
      arg2 : xcb_drawable_t;
      arg3 : xcb_gcontext_t;
      arg4 : Interfaces.Unsigned_16;
      arg5 : Interfaces.Unsigned_16;
      arg6 : Interfaces.Unsigned_32;
      arg7 : access Interfaces.Unsigned_8) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_poly_text_16_checked, "xcb_poly_text_16_checked");

   function xcb_poly_text_16
     (arg1 : System.Address;
      arg2 : xcb_drawable_t;
      arg3 : xcb_gcontext_t;
      arg4 : Interfaces.Unsigned_16;
      arg5 : Interfaces.Unsigned_16;
      arg6 : Interfaces.Unsigned_32;
      arg7 : access Interfaces.Unsigned_8) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_poly_text_16, "xcb_poly_text_16");

   function xcb_image_text_8_sizeof (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_image_text_8_sizeof, "xcb_image_text_8_sizeof");

   function xcb_image_text_8_checked
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_drawable_t;
      arg4 : xcb_gcontext_t;
      arg5 : Interfaces.Unsigned_16;
      arg6 : Interfaces.Unsigned_16;
      arg7 : ICS.chars_ptr) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_image_text_8_checked, "xcb_image_text_8_checked");

   function xcb_image_text_8
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_drawable_t;
      arg4 : xcb_gcontext_t;
      arg5 : Interfaces.Unsigned_16;
      arg6 : Interfaces.Unsigned_16;
      arg7 : ICS.chars_ptr) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_image_text_8, "xcb_image_text_8");

   function xcb_image_text_16_sizeof (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_image_text_16_sizeof, "xcb_image_text_16_sizeof");

   function xcb_image_text_16_checked
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_drawable_t;
      arg4 : xcb_gcontext_t;
      arg5 : Interfaces.Unsigned_16;
      arg6 : Interfaces.Unsigned_16;
      arg7 : System.Address) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_image_text_16_checked, "xcb_image_text_16_checked");

   function xcb_image_text_16
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_drawable_t;
      arg4 : xcb_gcontext_t;
      arg5 : Interfaces.Unsigned_16;
      arg6 : Interfaces.Unsigned_16;
      arg7 : System.Address) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_image_text_16, "xcb_image_text_16");

   function xcb_create_colormap_checked
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_colormap_t;
      arg4 : xcb_window_t;
      arg5 : xcb_visualid_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_create_colormap_checked, "xcb_create_colormap_checked");

   function xcb_create_colormap
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_colormap_t;
      arg4 : xcb_window_t;
      arg5 : xcb_visualid_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_create_colormap, "xcb_create_colormap");

   function xcb_free_colormap_checked (arg1 : System.Address; arg2 : xcb_colormap_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_free_colormap_checked, "xcb_free_colormap_checked");

   function xcb_free_colormap (arg1 : System.Address; arg2 : xcb_colormap_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_free_colormap, "xcb_free_colormap");

   function xcb_copy_colormap_and_free_checked
     (arg1 : System.Address;
      arg2 : xcb_colormap_t;
      arg3 : xcb_colormap_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_copy_colormap_and_free_checked, "xcb_copy_colormap_and_free_checked");

   function xcb_copy_colormap_and_free
     (arg1 : System.Address;
      arg2 : xcb_colormap_t;
      arg3 : xcb_colormap_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_copy_colormap_and_free, "xcb_copy_colormap_and_free");

   function xcb_install_colormap_checked (arg1 : System.Address; arg2 : xcb_colormap_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_install_colormap_checked, "xcb_install_colormap_checked");

   function xcb_install_colormap (arg1 : System.Address; arg2 : xcb_colormap_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_install_colormap, "xcb_install_colormap");

   function xcb_uninstall_colormap_checked (arg1 : System.Address; arg2 : xcb_colormap_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_uninstall_colormap_checked, "xcb_uninstall_colormap_checked");

   function xcb_uninstall_colormap (arg1 : System.Address; arg2 : xcb_colormap_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_uninstall_colormap, "xcb_uninstall_colormap");

   function xcb_list_installed_colormaps_sizeof (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_list_installed_colormaps_sizeof, "xcb_list_installed_colormaps_sizeof");

   function xcb_list_installed_colormaps (arg1 : System.Address; arg2 : xcb_window_t) return xcb_list_installed_colormaps_cookie_t;
   pragma Import (C, xcb_list_installed_colormaps, "xcb_list_installed_colormaps");

   function xcb_list_installed_colormaps_unchecked (arg1 : System.Address; arg2 : xcb_window_t) return xcb_list_installed_colormaps_cookie_t;
   pragma Import (C, xcb_list_installed_colormaps_unchecked, "xcb_list_installed_colormaps_unchecked");

   function xcb_list_installed_colormaps_cmaps (arg1 : System.Address) return access xcb_colormap_t;
   pragma Import (C, xcb_list_installed_colormaps_cmaps, "xcb_list_installed_colormaps_cmaps");

   function xcb_list_installed_colormaps_cmaps_length (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_list_installed_colormaps_cmaps_length, "xcb_list_installed_colormaps_cmaps_length");

   function xcb_list_installed_colormaps_cmaps_end (arg1 : System.Address) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_list_installed_colormaps_cmaps_end, "xcb_list_installed_colormaps_cmaps_end");

   function xcb_list_installed_colormaps_reply
     (arg1 : System.Address;
      arg2 : xcb_list_installed_colormaps_cookie_t;
      arg3 : System.Address) return access xcb_list_installed_colormaps_reply_t;
   pragma Import (C, xcb_list_installed_colormaps_reply, "xcb_list_installed_colormaps_reply");

   function xcb_alloc_color
     (arg1 : System.Address;
      arg2 : xcb_colormap_t;
      arg3 : Interfaces.Unsigned_16;
      arg4 : Interfaces.Unsigned_16;
      arg5 : Interfaces.Unsigned_16) return xcb_alloc_color_cookie_t;
   pragma Import (C, xcb_alloc_color, "xcb_alloc_color");

   function xcb_alloc_color_unchecked
     (arg1 : System.Address;
      arg2 : xcb_colormap_t;
      arg3 : Interfaces.Unsigned_16;
      arg4 : Interfaces.Unsigned_16;
      arg5 : Interfaces.Unsigned_16) return xcb_alloc_color_cookie_t;
   pragma Import (C, xcb_alloc_color_unchecked, "xcb_alloc_color_unchecked");

   function xcb_alloc_color_reply
     (arg1 : System.Address;
      arg2 : xcb_alloc_color_cookie_t;
      arg3 : System.Address) return access xcb_alloc_color_reply_t;
   pragma Import (C, xcb_alloc_color_reply, "xcb_alloc_color_reply");

   function xcb_alloc_named_color_sizeof (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_alloc_named_color_sizeof, "xcb_alloc_named_color_sizeof");

   function xcb_alloc_named_color
     (arg1 : System.Address;
      arg2 : xcb_colormap_t;
      arg3 : Interfaces.Unsigned_16;
      arg4 : ICS.chars_ptr) return xcb_alloc_named_color_cookie_t;
   pragma Import (C, xcb_alloc_named_color, "xcb_alloc_named_color");

   function xcb_alloc_named_color_unchecked
     (arg1 : System.Address;
      arg2 : xcb_colormap_t;
      arg3 : Interfaces.Unsigned_16;
      arg4 : ICS.chars_ptr) return xcb_alloc_named_color_cookie_t;
   pragma Import (C, xcb_alloc_named_color_unchecked, "xcb_alloc_named_color_unchecked");

   function xcb_alloc_named_color_reply
     (arg1 : System.Address;
      arg2 : xcb_alloc_named_color_cookie_t;
      arg3 : System.Address) return access xcb_alloc_named_color_reply_t;
   pragma Import (C, xcb_alloc_named_color_reply, "xcb_alloc_named_color_reply");

   function xcb_alloc_color_cells_sizeof (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_alloc_color_cells_sizeof, "xcb_alloc_color_cells_sizeof");

   function xcb_alloc_color_cells
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_colormap_t;
      arg4 : Interfaces.Unsigned_16;
      arg5 : Interfaces.Unsigned_16) return xcb_alloc_color_cells_cookie_t;
   pragma Import (C, xcb_alloc_color_cells, "xcb_alloc_color_cells");

   function xcb_alloc_color_cells_unchecked
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_colormap_t;
      arg4 : Interfaces.Unsigned_16;
      arg5 : Interfaces.Unsigned_16) return xcb_alloc_color_cells_cookie_t;
   pragma Import (C, xcb_alloc_color_cells_unchecked, "xcb_alloc_color_cells_unchecked");

   function xcb_alloc_color_cells_pixels (arg1 : System.Address) return access Interfaces.Unsigned_32;
   pragma Import (C, xcb_alloc_color_cells_pixels, "xcb_alloc_color_cells_pixels");

   function xcb_alloc_color_cells_pixels_length (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_alloc_color_cells_pixels_length, "xcb_alloc_color_cells_pixels_length");

   function xcb_alloc_color_cells_pixels_end (arg1 : System.Address) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_alloc_color_cells_pixels_end, "xcb_alloc_color_cells_pixels_end");

   function xcb_alloc_color_cells_masks (arg1 : System.Address) return access Interfaces.Unsigned_32;
   pragma Import (C, xcb_alloc_color_cells_masks, "xcb_alloc_color_cells_masks");

   function xcb_alloc_color_cells_masks_length (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_alloc_color_cells_masks_length, "xcb_alloc_color_cells_masks_length");

   function xcb_alloc_color_cells_masks_end (arg1 : System.Address) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_alloc_color_cells_masks_end, "xcb_alloc_color_cells_masks_end");

   function xcb_alloc_color_cells_reply
     (arg1 : System.Address;
      arg2 : xcb_alloc_color_cells_cookie_t;
      arg3 : System.Address) return access xcb_alloc_color_cells_reply_t;
   pragma Import (C, xcb_alloc_color_cells_reply, "xcb_alloc_color_cells_reply");

   function xcb_alloc_color_planes_sizeof (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_alloc_color_planes_sizeof, "xcb_alloc_color_planes_sizeof");

   function xcb_alloc_color_planes
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_colormap_t;
      arg4 : Interfaces.Unsigned_16;
      arg5 : Interfaces.Unsigned_16;
      arg6 : Interfaces.Unsigned_16;
      arg7 : Interfaces.Unsigned_16) return xcb_alloc_color_planes_cookie_t;
   pragma Import (C, xcb_alloc_color_planes, "xcb_alloc_color_planes");

   function xcb_alloc_color_planes_unchecked
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_colormap_t;
      arg4 : Interfaces.Unsigned_16;
      arg5 : Interfaces.Unsigned_16;
      arg6 : Interfaces.Unsigned_16;
      arg7 : Interfaces.Unsigned_16) return xcb_alloc_color_planes_cookie_t;
   pragma Import (C, xcb_alloc_color_planes_unchecked, "xcb_alloc_color_planes_unchecked");

   function xcb_alloc_color_planes_pixels (arg1 : System.Address) return access Interfaces.Unsigned_32;
   pragma Import (C, xcb_alloc_color_planes_pixels, "xcb_alloc_color_planes_pixels");

   function xcb_alloc_color_planes_pixels_length (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_alloc_color_planes_pixels_length, "xcb_alloc_color_planes_pixels_length");

   function xcb_alloc_color_planes_pixels_end (arg1 : System.Address) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_alloc_color_planes_pixels_end, "xcb_alloc_color_planes_pixels_end");

   function xcb_alloc_color_planes_reply
     (arg1 : System.Address;
      arg2 : xcb_alloc_color_planes_cookie_t;
      arg3 : System.Address) return access xcb_alloc_color_planes_reply_t;
   pragma Import (C, xcb_alloc_color_planes_reply, "xcb_alloc_color_planes_reply");

   function xcb_free_colors_sizeof (arg1 : System.Address; arg2 : Interfaces.Unsigned_32) return Integer;
   pragma Import (C, xcb_free_colors_sizeof, "xcb_free_colors_sizeof");

   function xcb_free_colors_checked
     (arg1 : System.Address;
      arg2 : xcb_colormap_t;
      arg3 : Interfaces.Unsigned_32;
      arg4 : Interfaces.Unsigned_32;
      arg5 : access Interfaces.Unsigned_32) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_free_colors_checked, "xcb_free_colors_checked");

   function xcb_free_colors
     (arg1 : System.Address;
      arg2 : xcb_colormap_t;
      arg3 : Interfaces.Unsigned_32;
      arg4 : Interfaces.Unsigned_32;
      arg5 : access Interfaces.Unsigned_32) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_free_colors, "xcb_free_colors");

   procedure xcb_coloritem_next (arg1 : access xcb_coloritem_iterator_t);
   pragma Import (C, xcb_coloritem_next, "xcb_coloritem_next");

   function xcb_coloritem_end (arg1 : xcb_coloritem_iterator_t) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_coloritem_end, "xcb_coloritem_end");

   function xcb_store_colors_sizeof (arg1 : System.Address; arg2 : Interfaces.Unsigned_32) return Integer;
   pragma Import (C, xcb_store_colors_sizeof, "xcb_store_colors_sizeof");

   function xcb_store_colors_checked
     (arg1 : System.Address;
      arg2 : xcb_colormap_t;
      arg3 : Interfaces.Unsigned_32;
      arg4 : System.Address) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_store_colors_checked, "xcb_store_colors_checked");

   function xcb_store_colors
     (arg1 : System.Address;
      arg2 : xcb_colormap_t;
      arg3 : Interfaces.Unsigned_32;
      arg4 : System.Address) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_store_colors, "xcb_store_colors");

   function xcb_store_named_color_sizeof (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_store_named_color_sizeof, "xcb_store_named_color_sizeof");

   function xcb_store_named_color_checked
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_colormap_t;
      arg4 : Interfaces.Unsigned_32;
      arg5 : Interfaces.Unsigned_16;
      arg6 : ICS.chars_ptr) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_store_named_color_checked, "xcb_store_named_color_checked");

   function xcb_store_named_color
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_colormap_t;
      arg4 : Interfaces.Unsigned_32;
      arg5 : Interfaces.Unsigned_16;
      arg6 : ICS.chars_ptr) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_store_named_color, "xcb_store_named_color");

   procedure xcb_rgb_next (arg1 : access xcb_rgb_iterator_t);
   pragma Import (C, xcb_rgb_next, "xcb_rgb_next");

   function xcb_rgb_end (arg1 : xcb_rgb_iterator_t) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_rgb_end, "xcb_rgb_end");

   function xcb_query_colors_sizeof (arg1 : System.Address; arg2 : Interfaces.Unsigned_32) return Integer;
   pragma Import (C, xcb_query_colors_sizeof, "xcb_query_colors_sizeof");

   function xcb_query_colors
     (arg1 : System.Address;
      arg2 : xcb_colormap_t;
      arg3 : Interfaces.Unsigned_32;
      arg4 : access Interfaces.Unsigned_32) return xcb_query_colors_cookie_t;
   pragma Import (C, xcb_query_colors, "xcb_query_colors");

   function xcb_query_colors_unchecked
     (arg1 : System.Address;
      arg2 : xcb_colormap_t;
      arg3 : Interfaces.Unsigned_32;
      arg4 : access Interfaces.Unsigned_32) return xcb_query_colors_cookie_t;
   pragma Import (C, xcb_query_colors_unchecked, "xcb_query_colors_unchecked");

   function xcb_query_colors_colors (arg1 : System.Address) return access xcb_rgb_t;
   pragma Import (C, xcb_query_colors_colors, "xcb_query_colors_colors");

   function xcb_query_colors_colors_length (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_query_colors_colors_length, "xcb_query_colors_colors_length");

   function xcb_query_colors_colors_iterator (arg1 : System.Address) return xcb_rgb_iterator_t;
   pragma Import (C, xcb_query_colors_colors_iterator, "xcb_query_colors_colors_iterator");

   function xcb_query_colors_reply
     (arg1 : System.Address;
      arg2 : xcb_query_colors_cookie_t;
      arg3 : System.Address) return access xcb_query_colors_reply_t;
   pragma Import (C, xcb_query_colors_reply, "xcb_query_colors_reply");

   function xcb_lookup_color_sizeof (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_lookup_color_sizeof, "xcb_lookup_color_sizeof");

   function xcb_lookup_color
     (arg1 : System.Address;
      arg2 : xcb_colormap_t;
      arg3 : Interfaces.Unsigned_16;
      arg4 : ICS.chars_ptr) return xcb_lookup_color_cookie_t;
   pragma Import (C, xcb_lookup_color, "xcb_lookup_color");

   function xcb_lookup_color_unchecked
     (arg1 : System.Address;
      arg2 : xcb_colormap_t;
      arg3 : Interfaces.Unsigned_16;
      arg4 : ICS.chars_ptr) return xcb_lookup_color_cookie_t;
   pragma Import (C, xcb_lookup_color_unchecked, "xcb_lookup_color_unchecked");

   function xcb_lookup_color_reply
     (arg1 : System.Address;
      arg2 : xcb_lookup_color_cookie_t;
      arg3 : System.Address) return access xcb_lookup_color_reply_t;
   pragma Import (C, xcb_lookup_color_reply, "xcb_lookup_color_reply");

   function xcb_create_cursor_checked
     (arg1 : System.Address;
      arg2 : xcb_cursor_t;
      arg3 : xcb_pixmap_t;
      arg4 : xcb_pixmap_t;
      arg5 : Interfaces.Unsigned_16;
      arg6 : Interfaces.Unsigned_16;
      arg7 : Interfaces.Unsigned_16;
      arg8 : Interfaces.Unsigned_16;
      arg9 : Interfaces.Unsigned_16;
      arg10 : Interfaces.Unsigned_16;
      arg11 : Interfaces.Unsigned_16;
      arg12 : Interfaces.Unsigned_16) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_create_cursor_checked, "xcb_create_cursor_checked");

   function xcb_create_cursor
     (arg1 : System.Address;
      arg2 : xcb_cursor_t;
      arg3 : xcb_pixmap_t;
      arg4 : xcb_pixmap_t;
      arg5 : Interfaces.Unsigned_16;
      arg6 : Interfaces.Unsigned_16;
      arg7 : Interfaces.Unsigned_16;
      arg8 : Interfaces.Unsigned_16;
      arg9 : Interfaces.Unsigned_16;
      arg10 : Interfaces.Unsigned_16;
      arg11 : Interfaces.Unsigned_16;
      arg12 : Interfaces.Unsigned_16) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_create_cursor, "xcb_create_cursor");

   function xcb_create_glyph_cursor_checked
     (arg1 : System.Address;
      arg2 : xcb_cursor_t;
      arg3 : xcb_font_t;
      arg4 : xcb_font_t;
      arg5 : Interfaces.Unsigned_16;
      arg6 : Interfaces.Unsigned_16;
      arg7 : Interfaces.Unsigned_16;
      arg8 : Interfaces.Unsigned_16;
      arg9 : Interfaces.Unsigned_16;
      arg10 : Interfaces.Unsigned_16;
      arg11 : Interfaces.Unsigned_16;
      arg12 : Interfaces.Unsigned_16) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_create_glyph_cursor_checked, "xcb_create_glyph_cursor_checked");

   function xcb_create_glyph_cursor
     (arg1 : System.Address;
      arg2 : xcb_cursor_t;
      arg3 : xcb_font_t;
      arg4 : xcb_font_t;
      arg5 : Interfaces.Unsigned_16;
      arg6 : Interfaces.Unsigned_16;
      arg7 : Interfaces.Unsigned_16;
      arg8 : Interfaces.Unsigned_16;
      arg9 : Interfaces.Unsigned_16;
      arg10 : Interfaces.Unsigned_16;
      arg11 : Interfaces.Unsigned_16;
      arg12 : Interfaces.Unsigned_16) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_create_glyph_cursor, "xcb_create_glyph_cursor");

   function xcb_free_cursor_checked (arg1 : System.Address; arg2 : xcb_cursor_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_free_cursor_checked, "xcb_free_cursor_checked");

   function xcb_free_cursor (arg1 : System.Address; arg2 : xcb_cursor_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_free_cursor, "xcb_free_cursor");

   function xcb_recolor_cursor_checked
     (arg1 : System.Address;
      arg2 : xcb_cursor_t;
      arg3 : Interfaces.Unsigned_16;
      arg4 : Interfaces.Unsigned_16;
      arg5 : Interfaces.Unsigned_16;
      arg6 : Interfaces.Unsigned_16;
      arg7 : Interfaces.Unsigned_16;
      arg8 : Interfaces.Unsigned_16) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_recolor_cursor_checked, "xcb_recolor_cursor_checked");

   function xcb_recolor_cursor
     (arg1 : System.Address;
      arg2 : xcb_cursor_t;
      arg3 : Interfaces.Unsigned_16;
      arg4 : Interfaces.Unsigned_16;
      arg5 : Interfaces.Unsigned_16;
      arg6 : Interfaces.Unsigned_16;
      arg7 : Interfaces.Unsigned_16;
      arg8 : Interfaces.Unsigned_16) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_recolor_cursor, "xcb_recolor_cursor");

   function xcb_query_best_size
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_drawable_t;
      arg4 : Interfaces.Unsigned_16;
      arg5 : Interfaces.Unsigned_16) return xcb_query_best_size_cookie_t;
   pragma Import (C, xcb_query_best_size, "xcb_query_best_size");

   function xcb_query_best_size_unchecked
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_drawable_t;
      arg4 : Interfaces.Unsigned_16;
      arg5 : Interfaces.Unsigned_16) return xcb_query_best_size_cookie_t;
   pragma Import (C, xcb_query_best_size_unchecked, "xcb_query_best_size_unchecked");

   function xcb_query_best_size_reply
     (arg1 : System.Address;
      arg2 : xcb_query_best_size_cookie_t;
      arg3 : System.Address) return access xcb_query_best_size_reply_t;
   pragma Import (C, xcb_query_best_size_reply, "xcb_query_best_size_reply");

   function xcb_query_extension_sizeof (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_query_extension_sizeof, "xcb_query_extension_sizeof");

   function xcb_query_extension
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_16;
      arg3 : ICS.chars_ptr) return xcb_query_extension_cookie_t;
   pragma Import (C, xcb_query_extension, "xcb_query_extension");

   function xcb_query_extension_unchecked
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_16;
      arg3 : ICS.chars_ptr) return xcb_query_extension_cookie_t;
   pragma Import (C, xcb_query_extension_unchecked, "xcb_query_extension_unchecked");

   function xcb_query_extension_reply
     (arg1 : System.Address;
      arg2 : xcb_query_extension_cookie_t;
      arg3 : System.Address) return access xcb_query_extension_reply_t;
   pragma Import (C, xcb_query_extension_reply, "xcb_query_extension_reply");

   function xcb_list_extensions_sizeof (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_list_extensions_sizeof, "xcb_list_extensions_sizeof");

   function xcb_list_extensions (arg1 : System.Address) return xcb_list_extensions_cookie_t;
   pragma Import (C, xcb_list_extensions, "xcb_list_extensions");

   function xcb_list_extensions_unchecked (arg1 : System.Address) return xcb_list_extensions_cookie_t;
   pragma Import (C, xcb_list_extensions_unchecked, "xcb_list_extensions_unchecked");

   function xcb_list_extensions_names_length (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_list_extensions_names_length, "xcb_list_extensions_names_length");

   function xcb_list_extensions_names_iterator (arg1 : System.Address) return xcb_str_iterator_t;
   pragma Import (C, xcb_list_extensions_names_iterator, "xcb_list_extensions_names_iterator");

   function xcb_list_extensions_reply
     (arg1 : System.Address;
      arg2 : xcb_list_extensions_cookie_t;
      arg3 : System.Address) return access xcb_list_extensions_reply_t;
   pragma Import (C, xcb_list_extensions_reply, "xcb_list_extensions_reply");

   function xcb_change_keyboard_mapping_sizeof (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_change_keyboard_mapping_sizeof, "xcb_change_keyboard_mapping_sizeof");

   function xcb_change_keyboard_mapping_checked
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_keycode_t;
      arg4 : Interfaces.Unsigned_8;
      arg5 : access xcb_keysym_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_change_keyboard_mapping_checked, "xcb_change_keyboard_mapping_checked");

   function xcb_change_keyboard_mapping
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : xcb_keycode_t;
      arg4 : Interfaces.Unsigned_8;
      arg5 : access xcb_keysym_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_change_keyboard_mapping, "xcb_change_keyboard_mapping");

   function xcb_get_keyboard_mapping_sizeof (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_get_keyboard_mapping_sizeof, "xcb_get_keyboard_mapping_sizeof");

   function xcb_get_keyboard_mapping
     (arg1 : System.Address;
      arg2 : xcb_keycode_t;
      arg3 : Interfaces.Unsigned_8) return xcb_get_keyboard_mapping_cookie_t;
   pragma Import (C, xcb_get_keyboard_mapping, "xcb_get_keyboard_mapping");

   function xcb_get_keyboard_mapping_unchecked
     (arg1 : System.Address;
      arg2 : xcb_keycode_t;
      arg3 : Interfaces.Unsigned_8) return xcb_get_keyboard_mapping_cookie_t;
   pragma Import (C, xcb_get_keyboard_mapping_unchecked, "xcb_get_keyboard_mapping_unchecked");

   function xcb_get_keyboard_mapping_keysyms (arg1 : System.Address) return access xcb_keysym_t;
   pragma Import (C, xcb_get_keyboard_mapping_keysyms, "xcb_get_keyboard_mapping_keysyms");

   function xcb_get_keyboard_mapping_keysyms_length (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_get_keyboard_mapping_keysyms_length, "xcb_get_keyboard_mapping_keysyms_length");

   function xcb_get_keyboard_mapping_keysyms_end (arg1 : System.Address) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_get_keyboard_mapping_keysyms_end, "xcb_get_keyboard_mapping_keysyms_end");

   function xcb_get_keyboard_mapping_reply
     (arg1 : System.Address;
      arg2 : xcb_get_keyboard_mapping_cookie_t;
      arg3 : System.Address) return access xcb_get_keyboard_mapping_reply_t;
   pragma Import (C, xcb_get_keyboard_mapping_reply, "xcb_get_keyboard_mapping_reply");

   function xcb_change_keyboard_control_sizeof (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_change_keyboard_control_sizeof, "xcb_change_keyboard_control_sizeof");

   function xcb_change_keyboard_control_checked
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_32;
      arg3 : access Interfaces.Unsigned_32) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_change_keyboard_control_checked, "xcb_change_keyboard_control_checked");

   function xcb_change_keyboard_control
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_32;
      arg3 : access Interfaces.Unsigned_32) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_change_keyboard_control, "xcb_change_keyboard_control");

   function xcb_get_keyboard_control (arg1 : System.Address) return xcb_get_keyboard_control_cookie_t;
   pragma Import (C, xcb_get_keyboard_control, "xcb_get_keyboard_control");

   function xcb_get_keyboard_control_unchecked (arg1 : System.Address) return xcb_get_keyboard_control_cookie_t;
   pragma Import (C, xcb_get_keyboard_control_unchecked, "xcb_get_keyboard_control_unchecked");

   function xcb_get_keyboard_control_reply
     (arg1 : System.Address;
      arg2 : xcb_get_keyboard_control_cookie_t;
      arg3 : System.Address) return access xcb_get_keyboard_control_reply_t;
   pragma Import (C, xcb_get_keyboard_control_reply, "xcb_get_keyboard_control_reply");

   function xcb_bell_checked (arg1 : System.Address; arg2 : Interfaces.Unsigned_8) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_bell_checked, "xcb_bell_checked");

   function xcb_bell (arg1 : System.Address; arg2 : Interfaces.Unsigned_8) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_bell, "xcb_bell");

   function xcb_change_pointer_control_checked
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_16;
      arg3 : Interfaces.Unsigned_16;
      arg4 : Interfaces.Unsigned_16;
      arg5 : Interfaces.Unsigned_8;
      arg6 : Interfaces.Unsigned_8) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_change_pointer_control_checked, "xcb_change_pointer_control_checked");

   function xcb_change_pointer_control
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_16;
      arg3 : Interfaces.Unsigned_16;
      arg4 : Interfaces.Unsigned_16;
      arg5 : Interfaces.Unsigned_8;
      arg6 : Interfaces.Unsigned_8) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_change_pointer_control, "xcb_change_pointer_control");

   function xcb_get_pointer_control (arg1 : System.Address) return xcb_get_pointer_control_cookie_t;
   pragma Import (C, xcb_get_pointer_control, "xcb_get_pointer_control");

   function xcb_get_pointer_control_unchecked (arg1 : System.Address) return xcb_get_pointer_control_cookie_t;
   pragma Import (C, xcb_get_pointer_control_unchecked, "xcb_get_pointer_control_unchecked");

   function xcb_get_pointer_control_reply
     (arg1 : System.Address;
      arg2 : xcb_get_pointer_control_cookie_t;
      arg3 : System.Address) return access xcb_get_pointer_control_reply_t;
   pragma Import (C, xcb_get_pointer_control_reply, "xcb_get_pointer_control_reply");

   function xcb_set_screen_saver_checked
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_16;
      arg3 : Interfaces.Unsigned_16;
      arg4 : Interfaces.Unsigned_8;
      arg5 : Interfaces.Unsigned_8) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_set_screen_saver_checked, "xcb_set_screen_saver_checked");

   function xcb_set_screen_saver
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_16;
      arg3 : Interfaces.Unsigned_16;
      arg4 : Interfaces.Unsigned_8;
      arg5 : Interfaces.Unsigned_8) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_set_screen_saver, "xcb_set_screen_saver");

   function xcb_get_screen_saver (arg1 : System.Address) return xcb_get_screen_saver_cookie_t;
   pragma Import (C, xcb_get_screen_saver, "xcb_get_screen_saver");

   function xcb_get_screen_saver_unchecked (arg1 : System.Address) return xcb_get_screen_saver_cookie_t;
   pragma Import (C, xcb_get_screen_saver_unchecked, "xcb_get_screen_saver_unchecked");

   function xcb_get_screen_saver_reply
     (arg1 : System.Address;
      arg2 : xcb_get_screen_saver_cookie_t;
      arg3 : System.Address) return access xcb_get_screen_saver_reply_t;
   pragma Import (C, xcb_get_screen_saver_reply, "xcb_get_screen_saver_reply");

   function xcb_change_hosts_sizeof (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_change_hosts_sizeof, "xcb_change_hosts_sizeof");

   function xcb_change_hosts_checked
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : Interfaces.Unsigned_8;
      arg4 : Interfaces.Unsigned_16;
      arg5 : access Interfaces.Unsigned_8) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_change_hosts_checked, "xcb_change_hosts_checked");

   function xcb_change_hosts
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : Interfaces.Unsigned_8;
      arg4 : Interfaces.Unsigned_16;
      arg5 : access Interfaces.Unsigned_8) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_change_hosts, "xcb_change_hosts");

   function xcb_host_sizeof (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_host_sizeof, "xcb_host_sizeof");

   function xcb_host_address (arg1 : System.Address) return access Interfaces.Unsigned_8;
   pragma Import (C, xcb_host_address, "xcb_host_address");

   function xcb_host_address_length (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_host_address_length, "xcb_host_address_length");

   function xcb_host_address_end (arg1 : System.Address) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_host_address_end, "xcb_host_address_end");

   procedure xcb_host_next (arg1 : access xcb_host_iterator_t);
   pragma Import (C, xcb_host_next, "xcb_host_next");

   function xcb_host_end (arg1 : xcb_host_iterator_t) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_host_end, "xcb_host_end");

   function xcb_list_hosts_sizeof (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_list_hosts_sizeof, "xcb_list_hosts_sizeof");

   function xcb_list_hosts (arg1 : System.Address) return xcb_list_hosts_cookie_t;
   pragma Import (C, xcb_list_hosts, "xcb_list_hosts");

   function xcb_list_hosts_unchecked (arg1 : System.Address) return xcb_list_hosts_cookie_t;
   pragma Import (C, xcb_list_hosts_unchecked, "xcb_list_hosts_unchecked");

   function xcb_list_hosts_hosts_length (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_list_hosts_hosts_length, "xcb_list_hosts_hosts_length");

   function xcb_list_hosts_hosts_iterator (arg1 : System.Address) return xcb_host_iterator_t;
   pragma Import (C, xcb_list_hosts_hosts_iterator, "xcb_list_hosts_hosts_iterator");

   function xcb_list_hosts_reply
     (arg1 : System.Address;
      arg2 : xcb_list_hosts_cookie_t;
      arg3 : System.Address) return access xcb_list_hosts_reply_t;
   pragma Import (C, xcb_list_hosts_reply, "xcb_list_hosts_reply");

   function xcb_set_access_control_checked (arg1 : System.Address; arg2 : Interfaces.Unsigned_8) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_set_access_control_checked, "xcb_set_access_control_checked");

   function xcb_set_access_control (arg1 : System.Address; arg2 : Interfaces.Unsigned_8) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_set_access_control, "xcb_set_access_control");

   function xcb_set_close_down_mode_checked (arg1 : System.Address; arg2 : Interfaces.Unsigned_8) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_set_close_down_mode_checked, "xcb_set_close_down_mode_checked");

   function xcb_set_close_down_mode (arg1 : System.Address; arg2 : Interfaces.Unsigned_8) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_set_close_down_mode, "xcb_set_close_down_mode");

   function xcb_kill_client_checked (arg1 : System.Address; arg2 : Interfaces.Unsigned_32) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_kill_client_checked, "xcb_kill_client_checked");

   function xcb_kill_client (arg1 : System.Address; arg2 : Interfaces.Unsigned_32) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_kill_client, "xcb_kill_client");

   function xcb_rotate_properties_sizeof (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_rotate_properties_sizeof, "xcb_rotate_properties_sizeof");

   function xcb_rotate_properties_checked
     (arg1 : System.Address;
      arg2 : xcb_window_t;
      arg3 : Interfaces.Unsigned_16;
      arg4 : Interfaces.Unsigned_16;
      arg5 : access xcb_atom_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_rotate_properties_checked, "xcb_rotate_properties_checked");

   function xcb_rotate_properties
     (arg1 : System.Address;
      arg2 : xcb_window_t;
      arg3 : Interfaces.Unsigned_16;
      arg4 : Interfaces.Unsigned_16;
      arg5 : access xcb_atom_t) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_rotate_properties, "xcb_rotate_properties");

   function xcb_force_screen_saver_checked (arg1 : System.Address; arg2 : Interfaces.Unsigned_8) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_force_screen_saver_checked, "xcb_force_screen_saver_checked");

   function xcb_force_screen_saver (arg1 : System.Address; arg2 : Interfaces.Unsigned_8) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_force_screen_saver, "xcb_force_screen_saver");

   function xcb_set_pointer_mapping_sizeof (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_set_pointer_mapping_sizeof, "xcb_set_pointer_mapping_sizeof");

   function xcb_set_pointer_mapping
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : access Interfaces.Unsigned_8) return xcb_set_pointer_mapping_cookie_t;
   pragma Import (C, xcb_set_pointer_mapping, "xcb_set_pointer_mapping");

   function xcb_set_pointer_mapping_unchecked
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : access Interfaces.Unsigned_8) return xcb_set_pointer_mapping_cookie_t;
   pragma Import (C, xcb_set_pointer_mapping_unchecked, "xcb_set_pointer_mapping_unchecked");

   function xcb_set_pointer_mapping_reply
     (arg1 : System.Address;
      arg2 : xcb_set_pointer_mapping_cookie_t;
      arg3 : System.Address) return access xcb_set_pointer_mapping_reply_t;
   pragma Import (C, xcb_set_pointer_mapping_reply, "xcb_set_pointer_mapping_reply");

   function xcb_get_pointer_mapping_sizeof (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_get_pointer_mapping_sizeof, "xcb_get_pointer_mapping_sizeof");

   function xcb_get_pointer_mapping (arg1 : System.Address) return xcb_get_pointer_mapping_cookie_t;
   pragma Import (C, xcb_get_pointer_mapping, "xcb_get_pointer_mapping");

   function xcb_get_pointer_mapping_unchecked (arg1 : System.Address) return xcb_get_pointer_mapping_cookie_t;
   pragma Import (C, xcb_get_pointer_mapping_unchecked, "xcb_get_pointer_mapping_unchecked");

   function xcb_get_pointer_mapping_map (arg1 : System.Address) return access Interfaces.Unsigned_8;
   pragma Import (C, xcb_get_pointer_mapping_map, "xcb_get_pointer_mapping_map");

   function xcb_get_pointer_mapping_map_length (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_get_pointer_mapping_map_length, "xcb_get_pointer_mapping_map_length");

   function xcb_get_pointer_mapping_map_end (arg1 : System.Address) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_get_pointer_mapping_map_end, "xcb_get_pointer_mapping_map_end");

   function xcb_get_pointer_mapping_reply
     (arg1 : System.Address;
      arg2 : xcb_get_pointer_mapping_cookie_t;
      arg3 : System.Address) return access xcb_get_pointer_mapping_reply_t;
   pragma Import (C, xcb_get_pointer_mapping_reply, "xcb_get_pointer_mapping_reply");

   function xcb_set_modifier_mapping_sizeof (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_set_modifier_mapping_sizeof, "xcb_set_modifier_mapping_sizeof");

   function xcb_set_modifier_mapping
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : access xcb_keycode_t) return xcb_set_modifier_mapping_cookie_t;
   pragma Import (C, xcb_set_modifier_mapping, "xcb_set_modifier_mapping");

   function xcb_set_modifier_mapping_unchecked
     (arg1 : System.Address;
      arg2 : Interfaces.Unsigned_8;
      arg3 : access xcb_keycode_t) return xcb_set_modifier_mapping_cookie_t;
   pragma Import (C, xcb_set_modifier_mapping_unchecked, "xcb_set_modifier_mapping_unchecked");

   function xcb_set_modifier_mapping_reply
     (arg1 : System.Address;
      arg2 : xcb_set_modifier_mapping_cookie_t;
      arg3 : System.Address) return access xcb_set_modifier_mapping_reply_t;
   pragma Import (C, xcb_set_modifier_mapping_reply, "xcb_set_modifier_mapping_reply");

   function xcb_get_modifier_mapping_sizeof (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_get_modifier_mapping_sizeof, "xcb_get_modifier_mapping_sizeof");

   function xcb_get_modifier_mapping (arg1 : System.Address) return xcb_get_modifier_mapping_cookie_t;
   pragma Import (C, xcb_get_modifier_mapping, "xcb_get_modifier_mapping");

   function xcb_get_modifier_mapping_unchecked (arg1 : System.Address) return xcb_get_modifier_mapping_cookie_t;
   pragma Import (C, xcb_get_modifier_mapping_unchecked, "xcb_get_modifier_mapping_unchecked");

   function xcb_get_modifier_mapping_keycodes (arg1 : System.Address) return access xcb_keycode_t;
   pragma Import (C, xcb_get_modifier_mapping_keycodes, "xcb_get_modifier_mapping_keycodes");

   function xcb_get_modifier_mapping_keycodes_length (arg1 : System.Address) return Integer;
   pragma Import (C, xcb_get_modifier_mapping_keycodes_length, "xcb_get_modifier_mapping_keycodes_length");

   function xcb_get_modifier_mapping_keycodes_end (arg1 : System.Address) return xcb.xcb_generic_iterator_t;
   pragma Import (C, xcb_get_modifier_mapping_keycodes_end, "xcb_get_modifier_mapping_keycodes_end");

   function xcb_get_modifier_mapping_reply
     (arg1 : System.Address;
      arg2 : xcb_get_modifier_mapping_cookie_t;
      arg3 : System.Address) return access xcb_get_modifier_mapping_reply_t;
   pragma Import (C, xcb_get_modifier_mapping_reply, "xcb_get_modifier_mapping_reply");

   function xcb_no_operation_checked (arg1 : System.Address) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_no_operation_checked, "xcb_no_operation_checked");

   function xcb_no_operation (arg1 : System.Address) return xcb.xcb_void_cookie_t;
   pragma Import (C, xcb_no_operation, "xcb_no_operation");

end xcbada_xproto;
--  vim:ts=3:expandtab:tw=80
