with Interfaces.C; use Interfaces.C;
with stdint_h;
with sys_types_h;
with xcb_xcb_h;
with System;
with Interfaces.C.Strings;

package xcb_xproto_h is

   --  unsupported macro: XCB_KEY_PRESS 2
   --  unsupported macro: XCB_KEY_RELEASE 3
   --  unsupported macro: XCB_BUTTON_PRESS 4
   --  unsupported macro: XCB_BUTTON_RELEASE 5
   --  unsupported macro: XCB_MOTION_NOTIFY 6
   --  unsupported macro: XCB_ENTER_NOTIFY 7
   --  unsupported macro: XCB_LEAVE_NOTIFY 8
   --  unsupported macro: XCB_FOCUS_IN 9
   --  unsupported macro: XCB_FOCUS_OUT 10
   --  unsupported macro: XCB_KEYMAP_NOTIFY 11
   --  unsupported macro: XCB_EXPOSE 12
   --  unsupported macro: XCB_GRAPHICS_EXPOSURE 13
   --  unsupported macro: XCB_NO_EXPOSURE 14
   --  unsupported macro: XCB_VISIBILITY_NOTIFY 15
   --  unsupported macro: XCB_CREATE_NOTIFY 16
   --  unsupported macro: XCB_DESTROY_NOTIFY 17
   --  unsupported macro: XCB_UNMAP_NOTIFY 18
   --  unsupported macro: XCB_MAP_NOTIFY 19
   --  unsupported macro: XCB_MAP_REQUEST 20
   --  unsupported macro: XCB_REPARENT_NOTIFY 21
   --  unsupported macro: XCB_CONFIGURE_NOTIFY 22
   --  unsupported macro: XCB_CONFIGURE_REQUEST 23
   --  unsupported macro: XCB_GRAVITY_NOTIFY 24
   --  unsupported macro: XCB_RESIZE_REQUEST 25
   --  unsupported macro: XCB_CIRCULATE_NOTIFY 26
   --  unsupported macro: XCB_CIRCULATE_REQUEST 27
   --  unsupported macro: XCB_PROPERTY_NOTIFY 28
   --  unsupported macro: XCB_SELECTION_CLEAR 29
   --  unsupported macro: XCB_SELECTION_REQUEST 30
   --  unsupported macro: XCB_SELECTION_NOTIFY 31
   --  unsupported macro: XCB_COLORMAP_NOTIFY 32
   --  unsupported macro: XCB_CLIENT_MESSAGE 33
   --  unsupported macro: XCB_MAPPING_NOTIFY 34
   --  unsupported macro: XCB_REQUEST 1
   --  unsupported macro: XCB_VALUE 2
   --  unsupported macro: XCB_WINDOW 3
   --  unsupported macro: XCB_PIXMAP 4
   --  unsupported macro: XCB_ATOM 5
   --  unsupported macro: XCB_CURSOR 6
   --  unsupported macro: XCB_FONT 7
   --  unsupported macro: XCB_MATCH 8
   --  unsupported macro: XCB_DRAWABLE 9
   --  unsupported macro: XCB_ACCESS 10
   --  unsupported macro: XCB_ALLOC 11
   --  unsupported macro: XCB_COLORMAP 12
   --  unsupported macro: XCB_G_CONTEXT 13
   --  unsupported macro: XCB_ID_CHOICE 14
   --  unsupported macro: XCB_NAME 15
   --  unsupported macro: XCB_LENGTH 16
   --  unsupported macro: XCB_IMPLEMENTATION 17
   --  unsupported macro: XCB_CREATE_WINDOW 1
   --  unsupported macro: XCB_CHANGE_WINDOW_ATTRIBUTES 2
   --  unsupported macro: XCB_GET_WINDOW_ATTRIBUTES 3
   --  unsupported macro: XCB_DESTROY_WINDOW 4
   --  unsupported macro: XCB_DESTROY_SUBWINDOWS 5
   --  unsupported macro: XCB_CHANGE_SAVE_SET 6
   --  unsupported macro: XCB_REPARENT_WINDOW 7
   --  unsupported macro: XCB_MAP_WINDOW 8
   --  unsupported macro: XCB_MAP_SUBWINDOWS 9
   --  unsupported macro: XCB_UNMAP_WINDOW 10
   --  unsupported macro: XCB_UNMAP_SUBWINDOWS 11
   --  unsupported macro: XCB_CONFIGURE_WINDOW 12
   --  unsupported macro: XCB_CIRCULATE_WINDOW 13
   --  unsupported macro: XCB_GET_GEOMETRY 14
   --  unsupported macro: XCB_QUERY_TREE 15
   --  unsupported macro: XCB_INTERN_ATOM 16
   --  unsupported macro: XCB_GET_ATOM_NAME 17
   --  unsupported macro: XCB_CHANGE_PROPERTY 18
   --  unsupported macro: XCB_DELETE_PROPERTY 19
   --  unsupported macro: XCB_GET_PROPERTY 20
   --  unsupported macro: XCB_LIST_PROPERTIES 21
   --  unsupported macro: XCB_SET_SELECTION_OWNER 22
   --  unsupported macro: XCB_GET_SELECTION_OWNER 23
   --  unsupported macro: XCB_CONVERT_SELECTION 24
   --  unsupported macro: XCB_SEND_EVENT 25
   --  unsupported macro: XCB_GRAB_POINTER 26
   --  unsupported macro: XCB_UNGRAB_POINTER 27
   --  unsupported macro: XCB_GRAB_BUTTON 28
   --  unsupported macro: XCB_UNGRAB_BUTTON 29
   --  unsupported macro: XCB_CHANGE_ACTIVE_POINTER_GRAB 30
   --  unsupported macro: XCB_GRAB_KEYBOARD 31
   --  unsupported macro: XCB_UNGRAB_KEYBOARD 32
   --  unsupported macro: XCB_GRAB_KEY 33
   --  unsupported macro: XCB_UNGRAB_KEY 34
   --  unsupported macro: XCB_ALLOW_EVENTS 35
   --  unsupported macro: XCB_GRAB_SERVER 36
   --  unsupported macro: XCB_UNGRAB_SERVER 37
   --  unsupported macro: XCB_QUERY_POINTER 38
   --  unsupported macro: XCB_GET_MOTION_EVENTS 39
   --  unsupported macro: XCB_TRANSLATE_COORDINATES 40
   --  unsupported macro: XCB_WARP_POINTER 41
   --  unsupported macro: XCB_SET_INPUT_FOCUS 42
   --  unsupported macro: XCB_GET_INPUT_FOCUS 43
   --  unsupported macro: XCB_QUERY_KEYMAP 44
   --  unsupported macro: XCB_OPEN_FONT 45
   --  unsupported macro: XCB_CLOSE_FONT 46
   --  unsupported macro: XCB_QUERY_FONT 47
   --  unsupported macro: XCB_QUERY_TEXT_EXTENTS 48
   --  unsupported macro: XCB_LIST_FONTS 49
   --  unsupported macro: XCB_LIST_FONTS_WITH_INFO 50
   --  unsupported macro: XCB_SET_FONT_PATH 51
   --  unsupported macro: XCB_GET_FONT_PATH 52
   --  unsupported macro: XCB_CREATE_PIXMAP 53
   --  unsupported macro: XCB_FREE_PIXMAP 54
   --  unsupported macro: XCB_CREATE_GC 55
   --  unsupported macro: XCB_CHANGE_GC 56
   --  unsupported macro: XCB_COPY_GC 57
   --  unsupported macro: XCB_SET_DASHES 58
   --  unsupported macro: XCB_SET_CLIP_RECTANGLES 59
   --  unsupported macro: XCB_FREE_GC 60
   --  unsupported macro: XCB_CLEAR_AREA 61
   --  unsupported macro: XCB_COPY_AREA 62
   --  unsupported macro: XCB_COPY_PLANE 63
   --  unsupported macro: XCB_POLY_POINT 64
   --  unsupported macro: XCB_POLY_LINE 65
   --  unsupported macro: XCB_POLY_SEGMENT 66
   --  unsupported macro: XCB_POLY_RECTANGLE 67
   --  unsupported macro: XCB_POLY_ARC 68
   --  unsupported macro: XCB_FILL_POLY 69
   --  unsupported macro: XCB_POLY_FILL_RECTANGLE 70
   --  unsupported macro: XCB_POLY_FILL_ARC 71
   --  unsupported macro: XCB_PUT_IMAGE 72
   --  unsupported macro: XCB_GET_IMAGE 73
   --  unsupported macro: XCB_POLY_TEXT_8 74
   --  unsupported macro: XCB_POLY_TEXT_16 75
   --  unsupported macro: XCB_IMAGE_TEXT_8 76
   --  unsupported macro: XCB_IMAGE_TEXT_16 77
   --  unsupported macro: XCB_CREATE_COLORMAP 78
   --  unsupported macro: XCB_FREE_COLORMAP 79
   --  unsupported macro: XCB_COPY_COLORMAP_AND_FREE 80
   --  unsupported macro: XCB_INSTALL_COLORMAP 81
   --  unsupported macro: XCB_UNINSTALL_COLORMAP 82
   --  unsupported macro: XCB_LIST_INSTALLED_COLORMAPS 83
   --  unsupported macro: XCB_ALLOC_COLOR 84
   --  unsupported macro: XCB_ALLOC_NAMED_COLOR 85
   --  unsupported macro: XCB_ALLOC_COLOR_CELLS 86
   --  unsupported macro: XCB_ALLOC_COLOR_PLANES 87
   --  unsupported macro: XCB_FREE_COLORS 88
   --  unsupported macro: XCB_STORE_COLORS 89
   --  unsupported macro: XCB_STORE_NAMED_COLOR 90
   --  unsupported macro: XCB_QUERY_COLORS 91
   --  unsupported macro: XCB_LOOKUP_COLOR 92
   --  unsupported macro: XCB_CREATE_CURSOR 93
   --  unsupported macro: XCB_CREATE_GLYPH_CURSOR 94
   --  unsupported macro: XCB_FREE_CURSOR 95
   --  unsupported macro: XCB_RECOLOR_CURSOR 96
   --  unsupported macro: XCB_QUERY_BEST_SIZE 97
   --  unsupported macro: XCB_QUERY_EXTENSION 98
   --  unsupported macro: XCB_LIST_EXTENSIONS 99
   --  unsupported macro: XCB_CHANGE_KEYBOARD_MAPPING 100
   --  unsupported macro: XCB_GET_KEYBOARD_MAPPING 101
   --  unsupported macro: XCB_CHANGE_KEYBOARD_CONTROL 102
   --  unsupported macro: XCB_GET_KEYBOARD_CONTROL 103
   --  unsupported macro: XCB_BELL 104
   --  unsupported macro: XCB_CHANGE_POINTER_CONTROL 105
   --  unsupported macro: XCB_GET_POINTER_CONTROL 106
   --  unsupported macro: XCB_SET_SCREEN_SAVER 107
   --  unsupported macro: XCB_GET_SCREEN_SAVER 108
   --  unsupported macro: XCB_CHANGE_HOSTS 109
   --  unsupported macro: XCB_LIST_HOSTS 110
   --  unsupported macro: XCB_SET_ACCESS_CONTROL 111
   --  unsupported macro: XCB_SET_CLOSE_DOWN_MODE 112
   --  unsupported macro: XCB_KILL_CLIENT 113
   --  unsupported macro: XCB_ROTATE_PROPERTIES 114
   --  unsupported macro: XCB_FORCE_SCREEN_SAVER 115
   --  unsupported macro: XCB_SET_POINTER_MAPPING 116
   --  unsupported macro: XCB_GET_POINTER_MAPPING 117
   --  unsupported macro: XCB_SET_MODIFIER_MAPPING 118
   --  unsupported macro: XCB_GET_MODIFIER_MAPPING 119
   --  unsupported macro: XCB_NO_OPERATION 127
  -- * This file generated automatically from xproto.xml by c_client.py.
  -- * Edit at your peril.
  --  

  --*
  -- * @defgroup XCB__API XCB  API
  -- * @brief  XCB Protocol Implementation.
  -- * @{
  -- * 

  --*
  -- * @brief xcb_char2b_t
  -- * 

  --*<   
   type xcb_char2b_t is record
      byte1 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:25
      byte2 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:26
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_char2b_t);  -- /usr/include/xcb/xproto.h:24

  --*<   
  --*
  -- * @brief xcb_char2b_iterator_t
  -- * 

  --*<   
   type xcb_char2b_iterator_t is record
      data : access xcb_char2b_t;  -- /usr/include/xcb/xproto.h:33
      c_rem : aliased int;  -- /usr/include/xcb/xproto.h:34
      index : aliased int;  -- /usr/include/xcb/xproto.h:35
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_char2b_iterator_t);  -- /usr/include/xcb/xproto.h:32

  --*<   
  --*<   
   subtype xcb_window_t is stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:38

  --*
  -- * @brief xcb_window_iterator_t
  -- * 

  --*<   
   type xcb_window_iterator_t is record
      data : access xcb_window_t;  -- /usr/include/xcb/xproto.h:44
      c_rem : aliased int;  -- /usr/include/xcb/xproto.h:45
      index : aliased int;  -- /usr/include/xcb/xproto.h:46
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_window_iterator_t);  -- /usr/include/xcb/xproto.h:43

  --*<   
  --*<   
   subtype xcb_pixmap_t is stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:49

  --*
  -- * @brief xcb_pixmap_iterator_t
  -- * 

  --*<   
   type xcb_pixmap_iterator_t is record
      data : access xcb_pixmap_t;  -- /usr/include/xcb/xproto.h:55
      c_rem : aliased int;  -- /usr/include/xcb/xproto.h:56
      index : aliased int;  -- /usr/include/xcb/xproto.h:57
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_pixmap_iterator_t);  -- /usr/include/xcb/xproto.h:54

  --*<   
  --*<   
   subtype xcb_cursor_t is stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:60

  --*
  -- * @brief xcb_cursor_iterator_t
  -- * 

  --*<   
   type xcb_cursor_iterator_t is record
      data : access xcb_cursor_t;  -- /usr/include/xcb/xproto.h:66
      c_rem : aliased int;  -- /usr/include/xcb/xproto.h:67
      index : aliased int;  -- /usr/include/xcb/xproto.h:68
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_cursor_iterator_t);  -- /usr/include/xcb/xproto.h:65

  --*<   
  --*<   
   subtype xcb_font_t is stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:71

  --*
  -- * @brief xcb_font_iterator_t
  -- * 

  --*<   
   type xcb_font_iterator_t is record
      data : access xcb_font_t;  -- /usr/include/xcb/xproto.h:77
      c_rem : aliased int;  -- /usr/include/xcb/xproto.h:78
      index : aliased int;  -- /usr/include/xcb/xproto.h:79
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_font_iterator_t);  -- /usr/include/xcb/xproto.h:76

  --*<   
  --*<   
   subtype xcb_gcontext_t is stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:82

  --*
  -- * @brief xcb_gcontext_iterator_t
  -- * 

  --*<   
   type xcb_gcontext_iterator_t is record
      data : access xcb_gcontext_t;  -- /usr/include/xcb/xproto.h:88
      c_rem : aliased int;  -- /usr/include/xcb/xproto.h:89
      index : aliased int;  -- /usr/include/xcb/xproto.h:90
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_gcontext_iterator_t);  -- /usr/include/xcb/xproto.h:87

  --*<   
  --*<   
   subtype xcb_colormap_t is stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:93

  --*
  -- * @brief xcb_colormap_iterator_t
  -- * 

  --*<   
   type xcb_colormap_iterator_t is record
      data : access xcb_colormap_t;  -- /usr/include/xcb/xproto.h:99
      c_rem : aliased int;  -- /usr/include/xcb/xproto.h:100
      index : aliased int;  -- /usr/include/xcb/xproto.h:101
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_colormap_iterator_t);  -- /usr/include/xcb/xproto.h:98

  --*<   
  --*<   
   subtype xcb_atom_t is stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:104

  --*
  -- * @brief xcb_atom_iterator_t
  -- * 

  --*<   
   type xcb_atom_iterator_t is record
      data : access xcb_atom_t;  -- /usr/include/xcb/xproto.h:110
      c_rem : aliased int;  -- /usr/include/xcb/xproto.h:111
      index : aliased int;  -- /usr/include/xcb/xproto.h:112
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_atom_iterator_t);  -- /usr/include/xcb/xproto.h:109

  --*<   
  --*<   
   subtype xcb_drawable_t is stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:115

  --*
  -- * @brief xcb_drawable_iterator_t
  -- * 

  --*<   
   type xcb_drawable_iterator_t is record
      data : access xcb_drawable_t;  -- /usr/include/xcb/xproto.h:121
      c_rem : aliased int;  -- /usr/include/xcb/xproto.h:122
      index : aliased int;  -- /usr/include/xcb/xproto.h:123
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_drawable_iterator_t);  -- /usr/include/xcb/xproto.h:120

  --*<   
  --*<   
   subtype xcb_fontable_t is stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:126

  --*
  -- * @brief xcb_fontable_iterator_t
  -- * 

  --*<   
   type xcb_fontable_iterator_t is record
      data : access xcb_fontable_t;  -- /usr/include/xcb/xproto.h:132
      c_rem : aliased int;  -- /usr/include/xcb/xproto.h:133
      index : aliased int;  -- /usr/include/xcb/xproto.h:134
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_fontable_iterator_t);  -- /usr/include/xcb/xproto.h:131

  --*<   
  --*<   
   subtype xcb_visualid_t is stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:137

  --*
  -- * @brief xcb_visualid_iterator_t
  -- * 

  --*<   
   type xcb_visualid_iterator_t is record
      data : access xcb_visualid_t;  -- /usr/include/xcb/xproto.h:143
      c_rem : aliased int;  -- /usr/include/xcb/xproto.h:144
      index : aliased int;  -- /usr/include/xcb/xproto.h:145
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_visualid_iterator_t);  -- /usr/include/xcb/xproto.h:142

  --*<   
  --*<   
   subtype xcb_timestamp_t is stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:148

  --*
  -- * @brief xcb_timestamp_iterator_t
  -- * 

  --*<   
   type xcb_timestamp_iterator_t is record
      data : access xcb_timestamp_t;  -- /usr/include/xcb/xproto.h:154
      c_rem : aliased int;  -- /usr/include/xcb/xproto.h:155
      index : aliased int;  -- /usr/include/xcb/xproto.h:156
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_timestamp_iterator_t);  -- /usr/include/xcb/xproto.h:153

  --*<   
  --*<   
   subtype xcb_keysym_t is stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:159

  --*
  -- * @brief xcb_keysym_iterator_t
  -- * 

  --*<   
   type xcb_keysym_iterator_t is record
      data : access xcb_keysym_t;  -- /usr/include/xcb/xproto.h:165
      c_rem : aliased int;  -- /usr/include/xcb/xproto.h:166
      index : aliased int;  -- /usr/include/xcb/xproto.h:167
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_keysym_iterator_t);  -- /usr/include/xcb/xproto.h:164

  --*<   
  --*<   
   subtype xcb_keycode_t is stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:170

  --*
  -- * @brief xcb_keycode_iterator_t
  -- * 

  --*<   
   type xcb_keycode_iterator_t is record
      data : access xcb_keycode_t;  -- /usr/include/xcb/xproto.h:176
      c_rem : aliased int;  -- /usr/include/xcb/xproto.h:177
      index : aliased int;  -- /usr/include/xcb/xproto.h:178
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_keycode_iterator_t);  -- /usr/include/xcb/xproto.h:175

  --*<   
  --*<   
   subtype xcb_button_t is stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:181

  --*
  -- * @brief xcb_button_iterator_t
  -- * 

  --*<   
   type xcb_button_iterator_t is record
      data : access xcb_button_t;  -- /usr/include/xcb/xproto.h:187
      c_rem : aliased int;  -- /usr/include/xcb/xproto.h:188
      index : aliased int;  -- /usr/include/xcb/xproto.h:189
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_button_iterator_t);  -- /usr/include/xcb/xproto.h:186

  --*<   
  --*<   
  --*
  -- * @brief xcb_point_t
  -- * 

  --*<   
   type xcb_point_t is record
      x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:196
      y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:197
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_point_t);  -- /usr/include/xcb/xproto.h:195

  --*<   
  --*
  -- * @brief xcb_point_iterator_t
  -- * 

  --*<   
   type xcb_point_iterator_t is record
      data : access xcb_point_t;  -- /usr/include/xcb/xproto.h:204
      c_rem : aliased int;  -- /usr/include/xcb/xproto.h:205
      index : aliased int;  -- /usr/include/xcb/xproto.h:206
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_point_iterator_t);  -- /usr/include/xcb/xproto.h:203

  --*<   
  --*<   
  --*
  -- * @brief xcb_rectangle_t
  -- * 

  --*<   
   type xcb_rectangle_t is record
      x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:213
      y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:214
      width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:215
      height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:216
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_rectangle_t);  -- /usr/include/xcb/xproto.h:212

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_rectangle_iterator_t
  -- * 

  --*<   
   type xcb_rectangle_iterator_t is record
      data : access xcb_rectangle_t;  -- /usr/include/xcb/xproto.h:223
      c_rem : aliased int;  -- /usr/include/xcb/xproto.h:224
      index : aliased int;  -- /usr/include/xcb/xproto.h:225
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_rectangle_iterator_t);  -- /usr/include/xcb/xproto.h:222

  --*<   
  --*<   
  --*
  -- * @brief xcb_arc_t
  -- * 

  --*<   
   type xcb_arc_t is record
      x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:232
      y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:233
      width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:234
      height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:235
      angle1 : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:236
      angle2 : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:237
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_arc_t);  -- /usr/include/xcb/xproto.h:231

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_arc_iterator_t
  -- * 

  --*<   
   type xcb_arc_iterator_t is record
      data : access xcb_arc_t;  -- /usr/include/xcb/xproto.h:244
      c_rem : aliased int;  -- /usr/include/xcb/xproto.h:245
      index : aliased int;  -- /usr/include/xcb/xproto.h:246
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_arc_iterator_t);  -- /usr/include/xcb/xproto.h:243

  --*<   
  --*<   
  --*
  -- * @brief xcb_format_t
  -- * 

  --*<   
   type anon1754_anon1756_array is array (0 .. 4) of aliased stdint_h.uint8_t;
   type xcb_format_t is record
      depth : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:253
      bits_per_pixel : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:254
      scanline_pad : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:255
      pad0 : aliased anon1754_anon1756_array;  -- /usr/include/xcb/xproto.h:256
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_format_t);  -- /usr/include/xcb/xproto.h:252

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_format_iterator_t
  -- * 

  --*<   
   type xcb_format_iterator_t is record
      data : access xcb_format_t;  -- /usr/include/xcb/xproto.h:263
      c_rem : aliased int;  -- /usr/include/xcb/xproto.h:264
      index : aliased int;  -- /usr/include/xcb/xproto.h:265
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_format_iterator_t);  -- /usr/include/xcb/xproto.h:262

  --*<   
  --*<   
   type xcb_visual_class_t is 
     (XCB_VISUAL_CLASS_STATIC_GRAY,
      XCB_VISUAL_CLASS_GRAY_SCALE,
      XCB_VISUAL_CLASS_STATIC_COLOR,
      XCB_VISUAL_CLASS_PSEUDO_COLOR,
      XCB_VISUAL_CLASS_TRUE_COLOR,
      XCB_VISUAL_CLASS_DIRECT_COLOR);
   pragma Convention (C, xcb_visual_class_t);  -- /usr/include/xcb/xproto.h:268

  --*
  -- * @brief xcb_visualtype_t
  -- * 

  --*<   
   type anon1766_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type xcb_visualtype_t is record
      visual_id : aliased xcb_visualid_t;  -- /usr/include/xcb/xproto.h:281
      u_class : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:282
      bits_per_rgb_value : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:283
      colormap_entries : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:284
      red_mask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:285
      green_mask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:286
      blue_mask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:287
      pad0 : aliased anon1766_anon1768_array;  -- /usr/include/xcb/xproto.h:288
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_visualtype_t);  -- /usr/include/xcb/xproto.h:280

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_visualtype_iterator_t
  -- * 

  --*<   
   type xcb_visualtype_iterator_t is record
      data : access xcb_visualtype_t;  -- /usr/include/xcb/xproto.h:295
      c_rem : aliased int;  -- /usr/include/xcb/xproto.h:296
      index : aliased int;  -- /usr/include/xcb/xproto.h:297
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_visualtype_iterator_t);  -- /usr/include/xcb/xproto.h:294

  --*<   
  --*<   
  --*
  -- * @brief xcb_depth_t
  -- * 

  --*<   
   type anon1775_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type xcb_depth_t is record
      depth : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:304
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:305
      visuals_len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:306
      pad1 : aliased anon1775_anon1768_array;  -- /usr/include/xcb/xproto.h:307
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_depth_t);  -- /usr/include/xcb/xproto.h:303

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_depth_iterator_t
  -- * 

  --*<   
   type xcb_depth_iterator_t is record
      data : access xcb_depth_t;  -- /usr/include/xcb/xproto.h:314
      c_rem : aliased int;  -- /usr/include/xcb/xproto.h:315
      index : aliased int;  -- /usr/include/xcb/xproto.h:316
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_depth_iterator_t);  -- /usr/include/xcb/xproto.h:313

  --*<   
  --*<   
   subtype xcb_event_mask_t is unsigned;
   XCB_EVENT_MASK_NO_EVENT : constant xcb_event_mask_t := 0;
   XCB_EVENT_MASK_KEY_PRESS : constant xcb_event_mask_t := 1;
   XCB_EVENT_MASK_KEY_RELEASE : constant xcb_event_mask_t := 2;
   XCB_EVENT_MASK_BUTTON_PRESS : constant xcb_event_mask_t := 4;
   XCB_EVENT_MASK_BUTTON_RELEASE : constant xcb_event_mask_t := 8;
   XCB_EVENT_MASK_ENTER_WINDOW : constant xcb_event_mask_t := 16;
   XCB_EVENT_MASK_LEAVE_WINDOW : constant xcb_event_mask_t := 32;
   XCB_EVENT_MASK_POINTER_MOTION : constant xcb_event_mask_t := 64;
   XCB_EVENT_MASK_POINTER_MOTION_HINT : constant xcb_event_mask_t := 128;
   XCB_EVENT_MASK_BUTTON_1_MOTION : constant xcb_event_mask_t := 256;
   XCB_EVENT_MASK_BUTTON_2_MOTION : constant xcb_event_mask_t := 512;
   XCB_EVENT_MASK_BUTTON_3_MOTION : constant xcb_event_mask_t := 1024;
   XCB_EVENT_MASK_BUTTON_4_MOTION : constant xcb_event_mask_t := 2048;
   XCB_EVENT_MASK_BUTTON_5_MOTION : constant xcb_event_mask_t := 4096;
   XCB_EVENT_MASK_BUTTON_MOTION : constant xcb_event_mask_t := 8192;
   XCB_EVENT_MASK_KEYMAP_STATE : constant xcb_event_mask_t := 16384;
   XCB_EVENT_MASK_EXPOSURE : constant xcb_event_mask_t := 32768;
   XCB_EVENT_MASK_VISIBILITY_CHANGE : constant xcb_event_mask_t := 65536;
   XCB_EVENT_MASK_STRUCTURE_NOTIFY : constant xcb_event_mask_t := 131072;
   XCB_EVENT_MASK_RESIZE_REDIRECT : constant xcb_event_mask_t := 262144;
   XCB_EVENT_MASK_SUBSTRUCTURE_NOTIFY : constant xcb_event_mask_t := 524288;
   XCB_EVENT_MASK_SUBSTRUCTURE_REDIRECT : constant xcb_event_mask_t := 1048576;
   XCB_EVENT_MASK_FOCUS_CHANGE : constant xcb_event_mask_t := 2097152;
   XCB_EVENT_MASK_PROPERTY_CHANGE : constant xcb_event_mask_t := 4194304;
   XCB_EVENT_MASK_COLOR_MAP_CHANGE : constant xcb_event_mask_t := 8388608;
   XCB_EVENT_MASK_OWNER_GRAB_BUTTON : constant xcb_event_mask_t := 16777216;  -- /usr/include/xcb/xproto.h:319

   type xcb_backing_store_t is 
     (XCB_BACKING_STORE_NOT_USEFUL,
      XCB_BACKING_STORE_WHEN_MAPPED,
      XCB_BACKING_STORE_ALWAYS);
   pragma Convention (C, xcb_backing_store_t);  -- /usr/include/xcb/xproto.h:348

  --*
  -- * @brief xcb_screen_t
  -- * 

  --*<   
   type xcb_screen_t is record
      root : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:358
      default_colormap : aliased xcb_colormap_t;  -- /usr/include/xcb/xproto.h:359
      white_pixel : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:360
      black_pixel : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:361
      current_input_masks : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:362
      width_in_pixels : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:363
      height_in_pixels : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:364
      width_in_millimeters : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:365
      height_in_millimeters : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:366
      min_installed_maps : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:367
      max_installed_maps : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:368
      root_visual : aliased xcb_visualid_t;  -- /usr/include/xcb/xproto.h:369
      backing_stores : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:370
      save_unders : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:371
      root_depth : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:372
      allowed_depths_len : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:373
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_screen_t);  -- /usr/include/xcb/xproto.h:357

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
  --*<   
  --*
  -- * @brief xcb_screen_iterator_t
  -- * 

  --*<   
   type xcb_screen_iterator_t is record
      data : access xcb_screen_t;  -- /usr/include/xcb/xproto.h:380
      c_rem : aliased int;  -- /usr/include/xcb/xproto.h:381
      index : aliased int;  -- /usr/include/xcb/xproto.h:382
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_screen_iterator_t);  -- /usr/include/xcb/xproto.h:379

  --*<   
  --*<   
  --*
  -- * @brief xcb_setup_request_t
  -- * 

  --*<   
   type anon1793_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_setup_request_t is record
      byte_order : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:389
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:390
      protocol_major_version : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:391
      protocol_minor_version : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:392
      authorization_protocol_name_len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:393
      authorization_protocol_data_len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:394
      pad1 : aliased anon1793_anon1795_array;  -- /usr/include/xcb/xproto.h:395
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_setup_request_t);  -- /usr/include/xcb/xproto.h:388

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_setup_request_iterator_t
  -- * 

  --*<   
   type xcb_setup_request_iterator_t is record
      data : access xcb_setup_request_t;  -- /usr/include/xcb/xproto.h:402
      c_rem : aliased int;  -- /usr/include/xcb/xproto.h:403
      index : aliased int;  -- /usr/include/xcb/xproto.h:404
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_setup_request_iterator_t);  -- /usr/include/xcb/xproto.h:401

  --*<   
  --*<   
  --*
  -- * @brief xcb_setup_failed_t
  -- * 

  --*<   
   type xcb_setup_failed_t is record
      status : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:411
      reason_len : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:412
      protocol_major_version : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:413
      protocol_minor_version : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:414
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:415
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_setup_failed_t);  -- /usr/include/xcb/xproto.h:410

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_setup_failed_iterator_t
  -- * 

  --*<   
   type xcb_setup_failed_iterator_t is record
      data : access xcb_setup_failed_t;  -- /usr/include/xcb/xproto.h:422
      c_rem : aliased int;  -- /usr/include/xcb/xproto.h:423
      index : aliased int;  -- /usr/include/xcb/xproto.h:424
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_setup_failed_iterator_t);  -- /usr/include/xcb/xproto.h:421

  --*<   
  --*<   
  --*
  -- * @brief xcb_setup_authenticate_t
  -- * 

  --*<   
   type anon1808_anon1756_array is array (0 .. 4) of aliased stdint_h.uint8_t;
   type xcb_setup_authenticate_t is record
      status : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:431
      pad0 : aliased anon1808_anon1756_array;  -- /usr/include/xcb/xproto.h:432
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:433
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_setup_authenticate_t);  -- /usr/include/xcb/xproto.h:430

  --*<   
  --*<   
  --*
  -- * @brief xcb_setup_authenticate_iterator_t
  -- * 

  --*<   
   type xcb_setup_authenticate_iterator_t is record
      data : access xcb_setup_authenticate_t;  -- /usr/include/xcb/xproto.h:440
      c_rem : aliased int;  -- /usr/include/xcb/xproto.h:441
      index : aliased int;  -- /usr/include/xcb/xproto.h:442
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_setup_authenticate_iterator_t);  -- /usr/include/xcb/xproto.h:439

  --*<   
  --*<   
   type xcb_image_order_t is 
     (XCB_IMAGE_ORDER_LSB_FIRST,
      XCB_IMAGE_ORDER_MSB_FIRST);
   pragma Convention (C, xcb_image_order_t);  -- /usr/include/xcb/xproto.h:445

  --*
  -- * @brief xcb_setup_t
  -- * 

  --*<   
   type anon1818_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type xcb_setup_t is record
      status : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:454
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:455
      protocol_major_version : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:456
      protocol_minor_version : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:457
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:458
      release_number : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:459
      resource_id_base : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:460
      resource_id_mask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:461
      motion_buffer_size : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:462
      vendor_len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:463
      maximum_request_length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:464
      roots_len : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:465
      pixmap_formats_len : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:466
      image_byte_order : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:467
      bitmap_format_bit_order : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:468
      bitmap_format_scanline_unit : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:469
      bitmap_format_scanline_pad : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:470
      min_keycode : aliased xcb_keycode_t;  -- /usr/include/xcb/xproto.h:471
      max_keycode : aliased xcb_keycode_t;  -- /usr/include/xcb/xproto.h:472
      pad1 : aliased anon1818_anon1768_array;  -- /usr/include/xcb/xproto.h:473
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_setup_t);  -- /usr/include/xcb/xproto.h:453

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
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_setup_iterator_t
  -- * 

  --*<   
   type xcb_setup_iterator_t is record
      data : access xcb_setup_t;  -- /usr/include/xcb/xproto.h:480
      c_rem : aliased int;  -- /usr/include/xcb/xproto.h:481
      index : aliased int;  -- /usr/include/xcb/xproto.h:482
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_setup_iterator_t);  -- /usr/include/xcb/xproto.h:479

  --*<   
  --*<   
   subtype xcb_mod_mask_t is unsigned;
   XCB_MOD_MASK_SHIFT : constant xcb_mod_mask_t := 1;
   XCB_MOD_MASK_LOCK : constant xcb_mod_mask_t := 2;
   XCB_MOD_MASK_CONTROL : constant xcb_mod_mask_t := 4;
   XCB_MOD_MASK_1 : constant xcb_mod_mask_t := 8;
   XCB_MOD_MASK_2 : constant xcb_mod_mask_t := 16;
   XCB_MOD_MASK_3 : constant xcb_mod_mask_t := 32;
   XCB_MOD_MASK_4 : constant xcb_mod_mask_t := 64;
   XCB_MOD_MASK_5 : constant xcb_mod_mask_t := 128;
   XCB_MOD_MASK_ANY : constant xcb_mod_mask_t := 32768;  -- /usr/include/xcb/xproto.h:485

   subtype xcb_key_but_mask_t is unsigned;
   XCB_KEY_BUT_MASK_SHIFT : constant xcb_key_but_mask_t := 1;
   XCB_KEY_BUT_MASK_LOCK : constant xcb_key_but_mask_t := 2;
   XCB_KEY_BUT_MASK_CONTROL : constant xcb_key_but_mask_t := 4;
   XCB_KEY_BUT_MASK_MOD_1 : constant xcb_key_but_mask_t := 8;
   XCB_KEY_BUT_MASK_MOD_2 : constant xcb_key_but_mask_t := 16;
   XCB_KEY_BUT_MASK_MOD_3 : constant xcb_key_but_mask_t := 32;
   XCB_KEY_BUT_MASK_MOD_4 : constant xcb_key_but_mask_t := 64;
   XCB_KEY_BUT_MASK_MOD_5 : constant xcb_key_but_mask_t := 128;
   XCB_KEY_BUT_MASK_BUTTON_1 : constant xcb_key_but_mask_t := 256;
   XCB_KEY_BUT_MASK_BUTTON_2 : constant xcb_key_but_mask_t := 512;
   XCB_KEY_BUT_MASK_BUTTON_3 : constant xcb_key_but_mask_t := 1024;
   XCB_KEY_BUT_MASK_BUTTON_4 : constant xcb_key_but_mask_t := 2048;
   XCB_KEY_BUT_MASK_BUTTON_5 : constant xcb_key_but_mask_t := 4096;  -- /usr/include/xcb/xproto.h:497

   type xcb_window_enum_t is 
     (XCB_WINDOW_NONE);
   pragma Convention (C, xcb_window_enum_t);  -- /usr/include/xcb/xproto.h:513

  --* Opcode for xcb_key_press.  
  --*
  -- * @brief xcb_key_press_event_t
  -- * 

  --*<   
   type xcb_key_press_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:524
      detail : aliased xcb_keycode_t;  -- /usr/include/xcb/xproto.h:525
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:526
      time : aliased xcb_timestamp_t;  -- /usr/include/xcb/xproto.h:527
      root : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:528
      event : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:529
      child : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:530
      root_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:531
      root_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:532
      event_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:533
      event_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:534
      state : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:535
      same_screen : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:536
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:537
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_key_press_event_t);  -- /usr/include/xcb/xproto.h:523

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
  --* Opcode for xcb_key_release.  
   subtype xcb_key_release_event_t is xcb_key_press_event_t;

   subtype xcb_button_mask_t is unsigned;
   XCB_BUTTON_MASK_1 : constant xcb_button_mask_t := 256;
   XCB_BUTTON_MASK_2 : constant xcb_button_mask_t := 512;
   XCB_BUTTON_MASK_3 : constant xcb_button_mask_t := 1024;
   XCB_BUTTON_MASK_4 : constant xcb_button_mask_t := 2048;
   XCB_BUTTON_MASK_5 : constant xcb_button_mask_t := 4096;
   XCB_BUTTON_MASK_ANY : constant xcb_button_mask_t := 32768;  -- /usr/include/xcb/xproto.h:545

  --* Opcode for xcb_button_press.  
  --*
  -- * @brief xcb_button_press_event_t
  -- * 

  --*<   
   type xcb_button_press_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:561
      detail : aliased xcb_button_t;  -- /usr/include/xcb/xproto.h:562
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:563
      time : aliased xcb_timestamp_t;  -- /usr/include/xcb/xproto.h:564
      root : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:565
      event : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:566
      child : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:567
      root_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:568
      root_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:569
      event_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:570
      event_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:571
      state : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:572
      same_screen : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:573
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:574
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_button_press_event_t);  -- /usr/include/xcb/xproto.h:560

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
  --* Opcode for xcb_button_release.  
   subtype xcb_button_release_event_t is xcb_button_press_event_t;

   type xcb_motion_t is 
     (XCB_MOTION_NORMAL,
      XCB_MOTION_HINT);
   pragma Convention (C, xcb_motion_t);  -- /usr/include/xcb/xproto.h:582

  --* Opcode for xcb_motion_notify.  
  --*
  -- * @brief xcb_motion_notify_event_t
  -- * 

  --*<   
   type xcb_motion_notify_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:594
      detail : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:595
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:596
      time : aliased xcb_timestamp_t;  -- /usr/include/xcb/xproto.h:597
      root : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:598
      event : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:599
      child : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:600
      root_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:601
      root_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:602
      event_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:603
      event_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:604
      state : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:605
      same_screen : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:606
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:607
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_motion_notify_event_t);  -- /usr/include/xcb/xproto.h:593

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
   type xcb_notify_detail_t is 
     (XCB_NOTIFY_DETAIL_ANCESTOR,
      XCB_NOTIFY_DETAIL_VIRTUAL,
      XCB_NOTIFY_DETAIL_INFERIOR,
      XCB_NOTIFY_DETAIL_NONLINEAR,
      XCB_NOTIFY_DETAIL_NONLINEAR_VIRTUAL,
      XCB_NOTIFY_DETAIL_POINTER,
      XCB_NOTIFY_DETAIL_POINTER_ROOT,
      XCB_NOTIFY_DETAIL_NONE);
   pragma Convention (C, xcb_notify_detail_t);  -- /usr/include/xcb/xproto.h:610

   type xcb_notify_mode_t is 
     (XCB_NOTIFY_MODE_NORMAL,
      XCB_NOTIFY_MODE_GRAB,
      XCB_NOTIFY_MODE_UNGRAB,
      XCB_NOTIFY_MODE_WHILE_GRABBED);
   pragma Convention (C, xcb_notify_mode_t);  -- /usr/include/xcb/xproto.h:621

  --* Opcode for xcb_enter_notify.  
  --*
  -- * @brief xcb_enter_notify_event_t
  -- * 

  --*<   
   type xcb_enter_notify_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:635
      detail : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:636
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:637
      time : aliased xcb_timestamp_t;  -- /usr/include/xcb/xproto.h:638
      root : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:639
      event : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:640
      child : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:641
      root_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:642
      root_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:643
      event_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:644
      event_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:645
      state : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:646
      mode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:647
      same_screen_focus : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:648
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_enter_notify_event_t);  -- /usr/include/xcb/xproto.h:634

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
  --* Opcode for xcb_leave_notify.  
   subtype xcb_leave_notify_event_t is xcb_enter_notify_event_t;

  --* Opcode for xcb_focus_in.  
  --*
  -- * @brief xcb_focus_in_event_t
  -- * 

  --*<   
   type anon1851_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_focus_in_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:663
      detail : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:664
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:665
      event : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:666
      mode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:667
      pad0 : aliased anon1851_anon1853_array;  -- /usr/include/xcb/xproto.h:668
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_focus_in_event_t);  -- /usr/include/xcb/xproto.h:662

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_focus_out.  
   subtype xcb_focus_out_event_t is xcb_focus_in_event_t;

  --* Opcode for xcb_keymap_notify.  
  --*
  -- * @brief xcb_keymap_notify_event_t
  -- * 

  --*<   
   type anon1857_anon1859_array is array (0 .. 30) of aliased stdint_h.uint8_t;
   type xcb_keymap_notify_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:683
      keys : aliased anon1857_anon1859_array;  -- /usr/include/xcb/xproto.h:684
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_keymap_notify_event_t);  -- /usr/include/xcb/xproto.h:682

  --*<   
  --* Opcode for xcb_expose.  
  --*
  -- * @brief xcb_expose_event_t
  -- * 

  --*<   
   type anon1862_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_expose_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:694
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:695
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:696
      window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:697
      x : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:698
      y : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:699
      width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:700
      height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:701
      count : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:702
      pad1 : aliased anon1862_anon1795_array;  -- /usr/include/xcb/xproto.h:703
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_expose_event_t);  -- /usr/include/xcb/xproto.h:693

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_graphics_exposure.  
  --*
  -- * @brief xcb_graphics_exposure_event_t
  -- * 

  --*<   
   type anon1866_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_graphics_exposure_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:713
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:714
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:715
      drawable : aliased xcb_drawable_t;  -- /usr/include/xcb/xproto.h:716
      x : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:717
      y : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:718
      width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:719
      height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:720
      minor_opcode : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:721
      count : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:722
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:723
      pad1 : aliased anon1866_anon1853_array;  -- /usr/include/xcb/xproto.h:724
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_graphics_exposure_event_t);  -- /usr/include/xcb/xproto.h:712

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
  --* Opcode for xcb_no_exposure.  
  --*
  -- * @brief xcb_no_exposure_event_t
  -- * 

  --*<   
   type xcb_no_exposure_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:734
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:735
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:736
      drawable : aliased xcb_drawable_t;  -- /usr/include/xcb/xproto.h:737
      minor_opcode : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:738
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:739
      pad1 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:740
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_no_exposure_event_t);  -- /usr/include/xcb/xproto.h:733

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
   type xcb_visibility_t is 
     (XCB_VISIBILITY_UNOBSCURED,
      XCB_VISIBILITY_PARTIALLY_OBSCURED,
      XCB_VISIBILITY_FULLY_OBSCURED);
   pragma Convention (C, xcb_visibility_t);  -- /usr/include/xcb/xproto.h:743

  --* Opcode for xcb_visibility_notify.  
  --*
  -- * @brief xcb_visibility_notify_event_t
  -- * 

  --*<   
   type anon1874_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_visibility_notify_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:756
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:757
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:758
      window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:759
      state : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:760
      pad1 : aliased anon1874_anon1853_array;  -- /usr/include/xcb/xproto.h:761
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_visibility_notify_event_t);  -- /usr/include/xcb/xproto.h:755

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_create_notify.  
  --*
  -- * @brief xcb_create_notify_event_t
  -- * 

  --*<   
   type xcb_create_notify_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:771
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:772
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:773
      parent : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:774
      window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:775
      x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:776
      y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:777
      width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:778
      height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:779
      border_width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:780
      override_redirect : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:781
      pad1 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:782
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_create_notify_event_t);  -- /usr/include/xcb/xproto.h:770

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
  --* Opcode for xcb_destroy_notify.  
  --*
  -- * @brief xcb_destroy_notify_event_t
  -- * 

  --*<   
   type xcb_destroy_notify_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:792
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:793
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:794
      event : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:795
      window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:796
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_destroy_notify_event_t);  -- /usr/include/xcb/xproto.h:791

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_unmap_notify.  
  --*
  -- * @brief xcb_unmap_notify_event_t
  -- * 

  --*<   
   type anon1882_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_unmap_notify_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:806
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:807
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:808
      event : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:809
      window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:810
      from_configure : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:811
      pad1 : aliased anon1882_anon1853_array;  -- /usr/include/xcb/xproto.h:812
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_unmap_notify_event_t);  -- /usr/include/xcb/xproto.h:805

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_map_notify.  
  --*
  -- * @brief xcb_map_notify_event_t
  -- * 

  --*<   
   type anon1886_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_map_notify_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:822
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:823
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:824
      event : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:825
      window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:826
      override_redirect : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:827
      pad1 : aliased anon1886_anon1853_array;  -- /usr/include/xcb/xproto.h:828
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_map_notify_event_t);  -- /usr/include/xcb/xproto.h:821

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_map_request.  
  --*
  -- * @brief xcb_map_request_event_t
  -- * 

  --*<   
   type xcb_map_request_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:838
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:839
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:840
      parent : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:841
      window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:842
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_map_request_event_t);  -- /usr/include/xcb/xproto.h:837

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_reparent_notify.  
  --*
  -- * @brief xcb_reparent_notify_event_t
  -- * 

  --*<   
   type anon1892_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_reparent_notify_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:852
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:853
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:854
      event : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:855
      window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:856
      parent : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:857
      x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:858
      y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:859
      override_redirect : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:860
      pad1 : aliased anon1892_anon1853_array;  -- /usr/include/xcb/xproto.h:861
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_reparent_notify_event_t);  -- /usr/include/xcb/xproto.h:851

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_configure_notify.  
  --*
  -- * @brief xcb_configure_notify_event_t
  -- * 

  --*<   
   type xcb_configure_notify_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:871
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:872
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:873
      event : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:874
      window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:875
      above_sibling : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:876
      x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:877
      y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:878
      width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:879
      height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:880
      border_width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:881
      override_redirect : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:882
      pad1 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:883
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_configure_notify_event_t);  -- /usr/include/xcb/xproto.h:870

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
  --* Opcode for xcb_configure_request.  
  --*
  -- * @brief xcb_configure_request_event_t
  -- * 

  --*<   
   type xcb_configure_request_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:893
      stack_mode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:894
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:895
      parent : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:896
      window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:897
      sibling : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:898
      x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:899
      y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:900
      width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:901
      height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:902
      border_width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:903
      value_mask : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:904
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_configure_request_event_t);  -- /usr/include/xcb/xproto.h:892

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
  --* Opcode for xcb_gravity_notify.  
  --*
  -- * @brief xcb_gravity_notify_event_t
  -- * 

  --*<   
   type xcb_gravity_notify_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:914
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:915
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:916
      event : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:917
      window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:918
      x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:919
      y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:920
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_gravity_notify_event_t);  -- /usr/include/xcb/xproto.h:913

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_resize_request.  
  --*
  -- * @brief xcb_resize_request_event_t
  -- * 

  --*<   
   type xcb_resize_request_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:930
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:931
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:932
      window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:933
      width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:934
      height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:935
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_resize_request_event_t);  -- /usr/include/xcb/xproto.h:929

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
   type xcb_place_t is 
     (XCB_PLACE_ON_TOP,
      XCB_PLACE_ON_BOTTOM);
   pragma Convention (C, xcb_place_t);  -- /usr/include/xcb/xproto.h:938

  --*< The window is now on top of all siblings.  
  --*< The window is now below all siblings.  
  --* Opcode for xcb_circulate_notify.  
  --*
  -- * @brief xcb_circulate_notify_event_t
  -- * 

  --*<   
   type anon1906_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type anon1906_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_circulate_notify_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:954
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:955
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:956
      event : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:957
      window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:958
      pad1 : aliased anon1906_anon1768_array;  -- /usr/include/xcb/xproto.h:959
      place : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:960
      pad2 : aliased anon1906_anon1853_array;  -- /usr/include/xcb/xproto.h:961
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_circulate_notify_event_t);  -- /usr/include/xcb/xproto.h:953

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_circulate_request.  
   subtype xcb_circulate_request_event_t is xcb_circulate_notify_event_t;

   type xcb_property_t is 
     (XCB_PROPERTY_NEW_VALUE,
      XCB_PROPERTY_DELETE);
   pragma Convention (C, xcb_property_t);  -- /usr/include/xcb/xproto.h:969

  --* Opcode for xcb_property_notify.  
  --*
  -- * @brief xcb_property_notify_event_t
  -- * 

  --*<   
   type anon1915_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_property_notify_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:981
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:982
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:983
      window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:984
      atom : aliased xcb_atom_t;  -- /usr/include/xcb/xproto.h:985
      time : aliased xcb_timestamp_t;  -- /usr/include/xcb/xproto.h:986
      state : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:987
      pad1 : aliased anon1915_anon1853_array;  -- /usr/include/xcb/xproto.h:988
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_property_notify_event_t);  -- /usr/include/xcb/xproto.h:980

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_selection_clear.  
  --*
  -- * @brief xcb_selection_clear_event_t
  -- * 

  --*<   
   type xcb_selection_clear_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:998
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:999
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1000
      time : aliased xcb_timestamp_t;  -- /usr/include/xcb/xproto.h:1001
      owner : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:1002
      selection : aliased xcb_atom_t;  -- /usr/include/xcb/xproto.h:1003
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selection_clear_event_t);  -- /usr/include/xcb/xproto.h:997

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
   type xcb_time_t is 
     (XCB_TIME_CURRENT_TIME);
   pragma Convention (C, xcb_time_t);  -- /usr/include/xcb/xproto.h:1006

   subtype xcb_atom_enum_t is unsigned;
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
   XCB_ATOM_WM_TRANSIENT_FOR : constant xcb_atom_enum_t := 68;  -- /usr/include/xcb/xproto.h:1010

  --* Opcode for xcb_selection_request.  
  --*
  -- * @brief xcb_selection_request_event_t
  -- * 

  --*<   
   type xcb_selection_request_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1090
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1091
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1092
      time : aliased xcb_timestamp_t;  -- /usr/include/xcb/xproto.h:1093
      owner : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:1094
      requestor : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:1095
      selection : aliased xcb_atom_t;  -- /usr/include/xcb/xproto.h:1096
      target : aliased xcb_atom_t;  -- /usr/include/xcb/xproto.h:1097
      property : aliased xcb_atom_t;  -- /usr/include/xcb/xproto.h:1098
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selection_request_event_t);  -- /usr/include/xcb/xproto.h:1089

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_selection_notify.  
  --*
  -- * @brief xcb_selection_notify_event_t
  -- * 

  --*<   
   type xcb_selection_notify_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1108
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1109
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1110
      time : aliased xcb_timestamp_t;  -- /usr/include/xcb/xproto.h:1111
      requestor : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:1112
      selection : aliased xcb_atom_t;  -- /usr/include/xcb/xproto.h:1113
      target : aliased xcb_atom_t;  -- /usr/include/xcb/xproto.h:1114
      property : aliased xcb_atom_t;  -- /usr/include/xcb/xproto.h:1115
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_selection_notify_event_t);  -- /usr/include/xcb/xproto.h:1107

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
   type xcb_colormap_state_t is 
     (XCB_COLORMAP_STATE_UNINSTALLED,
      XCB_COLORMAP_STATE_INSTALLED);
   pragma Convention (C, xcb_colormap_state_t);  -- /usr/include/xcb/xproto.h:1118

  --*< The colormap was uninstalled.  
  --*< The colormap was installed.  
   type xcb_colormap_enum_t is 
     (XCB_COLORMAP_NONE);
   pragma Convention (C, xcb_colormap_enum_t);  -- /usr/include/xcb/xproto.h:1127

  --* Opcode for xcb_colormap_notify.  
  --*
  -- * @brief xcb_colormap_notify_event_t
  -- * 

  --*<   
   type anon1933_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_colormap_notify_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1138
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1139
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1140
      window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:1141
      colormap : aliased xcb_colormap_t;  -- /usr/include/xcb/xproto.h:1142
      u_new : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1143
      state : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1144
      pad1 : aliased anon1933_anon1795_array;  -- /usr/include/xcb/xproto.h:1145
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_colormap_notify_event_t);  -- /usr/include/xcb/xproto.h:1137

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_client_message_data_t
  -- * 

  --*<   
   type anon1937_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type anon1937_anon1942_array is array (0 .. 9) of aliased stdint_h.uint16_t;
   type anon1937_anon1664_array is array (0 .. 4) of aliased stdint_h.uint32_t;
   type xcb_client_message_data_t (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            data8 : aliased anon1937_anon1939_array;  -- /usr/include/xcb/xproto.h:1152
         when 1 =>
            data16 : aliased anon1937_anon1942_array;  -- /usr/include/xcb/xproto.h:1153
         when others =>
            data32 : aliased anon1937_anon1664_array;  -- /usr/include/xcb/xproto.h:1154
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_client_message_data_t);
   pragma Unchecked_Union (xcb_client_message_data_t);  -- /usr/include/xcb/xproto.h:1151

  --*<   
  --*<   
  --*
  -- * @brief xcb_client_message_data_iterator_t
  -- * 

  --*<   
   type xcb_client_message_data_iterator_t is record
      data : access xcb_client_message_data_t;  -- /usr/include/xcb/xproto.h:1161
      c_rem : aliased int;  -- /usr/include/xcb/xproto.h:1162
      index : aliased int;  -- /usr/include/xcb/xproto.h:1163
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_client_message_data_iterator_t);  -- /usr/include/xcb/xproto.h:1160

  --*<   
  --*<   
  --* Opcode for xcb_client_message.  
  --*
  -- * @brief xcb_client_message_event_t
  -- * 

  --*<   
   type xcb_client_message_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1173
      format : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1174
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1175
      window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:1176
      c_type : aliased xcb_atom_t;  -- /usr/include/xcb/xproto.h:1177
      data : xcb_client_message_data_t;  -- /usr/include/xcb/xproto.h:1178
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_client_message_event_t);  -- /usr/include/xcb/xproto.h:1172

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
   type xcb_mapping_t is 
     (XCB_MAPPING_MODIFIER,
      XCB_MAPPING_KEYBOARD,
      XCB_MAPPING_POINTER);
   pragma Convention (C, xcb_mapping_t);  -- /usr/include/xcb/xproto.h:1181

  --* Opcode for xcb_mapping_notify.  
  --*
  -- * @brief xcb_mapping_notify_event_t
  -- * 

  --*<   
   type xcb_mapping_notify_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1194
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1195
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1196
      request : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1197
      first_keycode : aliased xcb_keycode_t;  -- /usr/include/xcb/xproto.h:1198
      count : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1199
      pad1 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1200
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_mapping_notify_event_t);  -- /usr/include/xcb/xproto.h:1193

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_request.  
  --*
  -- * @brief xcb_request_error_t
  -- * 

  --*<   
   type xcb_request_error_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1210
      error_code : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1211
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1212
      bad_value : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:1213
      minor_opcode : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1214
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1215
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1216
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_request_error_t);  -- /usr/include/xcb/xproto.h:1209

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_value.  
  --*
  -- * @brief xcb_value_error_t
  -- * 

  --*<   
   type xcb_value_error_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1226
      error_code : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1227
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1228
      bad_value : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:1229
      minor_opcode : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1230
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1231
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1232
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_value_error_t);  -- /usr/include/xcb/xproto.h:1225

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_window.  
   subtype xcb_window_error_t is xcb_value_error_t;

  --* Opcode for xcb_pixmap.  
   subtype xcb_pixmap_error_t is xcb_value_error_t;

  --* Opcode for xcb_atom.  
   subtype xcb_atom_error_t is xcb_value_error_t;

  --* Opcode for xcb_cursor.  
   subtype xcb_cursor_error_t is xcb_value_error_t;

  --* Opcode for xcb_font.  
   subtype xcb_font_error_t is xcb_value_error_t;

  --* Opcode for xcb_match.  
   subtype xcb_match_error_t is xcb_request_error_t;

  --* Opcode for xcb_drawable.  
   subtype xcb_drawable_error_t is xcb_value_error_t;

  --* Opcode for xcb_access.  
   subtype xcb_access_error_t is xcb_request_error_t;

  --* Opcode for xcb_alloc.  
   subtype xcb_alloc_error_t is xcb_request_error_t;

  --* Opcode for xcb_colormap.  
   subtype xcb_colormap_error_t is xcb_value_error_t;

  --* Opcode for xcb_g_context.  
   subtype xcb_g_context_error_t is xcb_value_error_t;

  --* Opcode for xcb_id_choice.  
   subtype xcb_id_choice_error_t is xcb_value_error_t;

  --* Opcode for xcb_name.  
   subtype xcb_name_error_t is xcb_request_error_t;

  --* Opcode for xcb_length.  
   subtype xcb_length_error_t is xcb_request_error_t;

  --* Opcode for xcb_implementation.  
   subtype xcb_implementation_error_t is xcb_request_error_t;

   type xcb_window_class_t is 
     (XCB_WINDOW_CLASS_COPY_FROM_PARENT,
      XCB_WINDOW_CLASS_INPUT_OUTPUT,
      XCB_WINDOW_CLASS_INPUT_ONLY);
   pragma Convention (C, xcb_window_class_t);  -- /usr/include/xcb/xproto.h:1310

   subtype xcb_cw_t is unsigned;
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
   XCB_CW_CURSOR : constant xcb_cw_t := 16384;  -- /usr/include/xcb/xproto.h:1316

  --*< Overrides the default background-pixmap. The background pixmap and window must
  --have the same root and same depth. Any size pixmap can be used, although some
  --sizes may be faster than others.
  --If `XCB_BACK_PIXMAP_NONE` is specified, the window has no defined background.
  --The server may fill the contents with the previous screen contents or with
  --contents of its own choosing.
  --If `XCB_BACK_PIXMAP_PARENT_RELATIVE` is specified, the parent's background is
  --used, but the window must have the same depth as the parent (or a Match error
  --results).   The parent's background is tracked, and the current version is
  --used each time the window background is required.  

  --*< Overrides `BackPixmap`. A pixmap of undefined size filled with the specified
  --background pixel is used for the background. Range-checking is not performed,
  --the background pixel is truncated to the appropriate number of bits.  

  --*< Overrides the default border-pixmap. The border pixmap and window must have the
  --same root and the same depth. Any size pixmap can be used, although some sizes
  --may be faster than others.
  --The special value `XCB_COPY_FROM_PARENT` means the parent's border pixmap is
  --copied (subsequent changes to the parent's border attribute do not affect the
  --child), but the window must have the same depth as the parent.  

  --*< Overrides `BorderPixmap`. A pixmap of undefined size filled with the specified
  --border pixel is used for the border. Range checking is not performed on the
  --border-pixel value, it is truncated to the appropriate number of bits.  

  --*< Defines which region of the window should be retained if the window is resized.  
  --*< Defines how the window should be repositioned if the parent is resized (see
  --`ConfigureWindow`).  

  --*< A backing-store of `WhenMapped` advises the server that maintaining contents of
  --obscured regions when the window is mapped would be beneficial. A backing-store
  --of `Always` advises the server that maintaining contents even when the window
  --is unmapped would be beneficial. In this case, the server may generate an
  --exposure event when the window is created. A value of `NotUseful` advises the
  --server that maintaining contents is unnecessary, although a server may still
  --choose to maintain contents while the window is mapped. Note that if the server
  --maintains contents, then the server should maintain complete contents not just
  --the region within the parent boundaries, even if the window is larger than its
  --parent. While the server maintains contents, exposure events will not normally
  --be generated, but the server may stop maintaining contents at any time.  

  --*< The backing-planes indicates (with bits set to 1) which bit planes of the
  --window hold dynamic data that must be preserved in backing-stores and during
  --save-unders.  

  --*< The backing-pixel specifies what value to use in planes not covered by
  --backing-planes. The server is free to save only the specified bit planes in the
  --backing-store or save-under and regenerate the remaining planes with the
  --specified pixel value. Any bits beyond the specified depth of the window in
  --these values are simply ignored.  

  --*< The override-redirect specifies whether map and configure requests on this
  --window should override a SubstructureRedirect on the parent, typically to
  --inform a window manager not to tamper with the window.  

  --*< If 1, the server is advised that when this window is mapped, saving the
  --contents of windows it obscures would be beneficial.  

  --*< The event-mask defines which events the client is interested in for this window
  --(or for some event types, inferiors of the window).  

  --*< The do-not-propagate-mask defines which events should not be propagated to
  --ancestor windows when no client has the event type selected in this window.  

  --*< The colormap specifies the colormap that best reflects the true colors of the window. Servers
  --capable of supporting multiple hardware colormaps may use this information, and window man-
  --agers may use it for InstallColormap requests. The colormap must have the same visual type
  --and root as the window (or a Match error results). If CopyFromParent is specified, the parent's
  --colormap is copied (subsequent changes to the parent's colormap attribute do not affect the child).
  --However, the window must have the same visual type as the parent (or a Match error results),
  --and the parent must not have a colormap of None (or a Match error results). For an explanation
  --of None, see FreeColormap request. The colormap is copied by sharing the colormap object
  --between the child and the parent, not by making a complete copy of the colormap contents.  

  --*< If a cursor is specified, it will be used whenever the pointer is in the window. If None is speci-
  --fied, the parent's cursor will be used when the pointer is in the window, and any change in the
  --parent's cursor will cause an immediate change in the displayed cursor.  

   type xcb_back_pixmap_t is 
     (XCB_BACK_PIXMAP_NONE,
      XCB_BACK_PIXMAP_PARENT_RELATIVE);
   pragma Convention (C, xcb_back_pixmap_t);  -- /usr/include/xcb/xproto.h:1417

   subtype xcb_gravity_t is unsigned;
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
   XCB_GRAVITY_STATIC : constant xcb_gravity_t := 10;  -- /usr/include/xcb/xproto.h:1422

  --* Opcode for xcb_create_window.  
  --*
  -- * @brief xcb_create_window_request_t
  -- * 

  --*<   
   type xcb_create_window_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1444
      depth : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1445
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1446
      wid : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:1447
      parent : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:1448
      x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:1449
      y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:1450
      width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1451
      height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1452
      border_width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1453
      u_class : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1454
      visual : aliased xcb_visualid_t;  -- /usr/include/xcb/xproto.h:1455
      value_mask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:1456
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_create_window_request_t);  -- /usr/include/xcb/xproto.h:1443

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
  --* Opcode for xcb_change_window_attributes.  
  --*
  -- * @brief xcb_change_window_attributes_request_t
  -- * 

  --*<   
   type xcb_change_window_attributes_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1466
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1467
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1468
      window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:1469
      value_mask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:1470
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_change_window_attributes_request_t);  -- /usr/include/xcb/xproto.h:1465

  --*<   
  --*<   
  --*<   
  --*<   
   type xcb_map_state_t is 
     (XCB_MAP_STATE_UNMAPPED,
      XCB_MAP_STATE_UNVIEWABLE,
      XCB_MAP_STATE_VIEWABLE);
   pragma Convention (C, xcb_map_state_t);  -- /usr/include/xcb/xproto.h:1473

  --*
  -- * @brief xcb_get_window_attributes_cookie_t
  -- * 

  --*<   
   type xcb_get_window_attributes_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xproto.h:1483
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_window_attributes_cookie_t);  -- /usr/include/xcb/xproto.h:1482

  --* Opcode for xcb_get_window_attributes.  
  --*
  -- * @brief xcb_get_window_attributes_request_t
  -- * 

  --*<   
   type xcb_get_window_attributes_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1493
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1494
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1495
      window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:1496
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_window_attributes_request_t);  -- /usr/include/xcb/xproto.h:1492

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_get_window_attributes_reply_t
  -- * 

  --*<   
   type anon1995_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_get_window_attributes_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1503
      backing_store : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1504
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1505
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:1506
      visual : aliased xcb_visualid_t;  -- /usr/include/xcb/xproto.h:1507
      u_class : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1508
      bit_gravity : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1509
      win_gravity : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1510
      backing_planes : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:1511
      backing_pixel : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:1512
      save_under : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1513
      map_is_installed : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1514
      map_state : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1515
      override_redirect : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1516
      colormap : aliased xcb_colormap_t;  -- /usr/include/xcb/xproto.h:1517
      all_event_masks : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:1518
      your_event_mask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:1519
      do_not_propagate_mask : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1520
      pad0 : aliased anon1995_anon1795_array;  -- /usr/include/xcb/xproto.h:1521
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_window_attributes_reply_t);  -- /usr/include/xcb/xproto.h:1502

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
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_destroy_window.  
  --*
  -- * @brief xcb_destroy_window_request_t
  -- * 

  --*<   
   type xcb_destroy_window_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1531
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1532
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1533
      window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:1534
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_destroy_window_request_t);  -- /usr/include/xcb/xproto.h:1530

  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_destroy_subwindows.  
  --*
  -- * @brief xcb_destroy_subwindows_request_t
  -- * 

  --*<   
   type xcb_destroy_subwindows_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1544
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1545
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1546
      window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:1547
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_destroy_subwindows_request_t);  -- /usr/include/xcb/xproto.h:1543

  --*<   
  --*<   
  --*<   
   type xcb_set_mode_t is 
     (XCB_SET_MODE_INSERT,
      XCB_SET_MODE_DELETE);
   pragma Convention (C, xcb_set_mode_t);  -- /usr/include/xcb/xproto.h:1550

  --* Opcode for xcb_change_save_set.  
  --*
  -- * @brief xcb_change_save_set_request_t
  -- * 

  --*<   
   type xcb_change_save_set_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1562
      mode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1563
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1564
      window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:1565
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_change_save_set_request_t);  -- /usr/include/xcb/xproto.h:1561

  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_reparent_window.  
  --*
  -- * @brief xcb_reparent_window_request_t
  -- * 

  --*<   
   type xcb_reparent_window_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1575
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1576
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1577
      window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:1578
      parent : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:1579
      x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:1580
      y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:1581
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_reparent_window_request_t);  -- /usr/include/xcb/xproto.h:1574

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_map_window.  
  --*
  -- * @brief xcb_map_window_request_t
  -- * 

  --*<   
   type xcb_map_window_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1591
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1592
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1593
      window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:1594
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_map_window_request_t);  -- /usr/include/xcb/xproto.h:1590

  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_map_subwindows.  
  --*
  -- * @brief xcb_map_subwindows_request_t
  -- * 

  --*<   
   type xcb_map_subwindows_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1604
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1605
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1606
      window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:1607
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_map_subwindows_request_t);  -- /usr/include/xcb/xproto.h:1603

  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_unmap_window.  
  --*
  -- * @brief xcb_unmap_window_request_t
  -- * 

  --*<   
   type xcb_unmap_window_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1617
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1618
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1619
      window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:1620
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_unmap_window_request_t);  -- /usr/include/xcb/xproto.h:1616

  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_unmap_subwindows.  
  --*
  -- * @brief xcb_unmap_subwindows_request_t
  -- * 

  --*<   
   type xcb_unmap_subwindows_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1630
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1631
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1632
      window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:1633
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_unmap_subwindows_request_t);  -- /usr/include/xcb/xproto.h:1629

  --*<   
  --*<   
  --*<   
   subtype xcb_config_window_t is unsigned;
   XCB_CONFIG_WINDOW_X : constant xcb_config_window_t := 1;
   XCB_CONFIG_WINDOW_Y : constant xcb_config_window_t := 2;
   XCB_CONFIG_WINDOW_WIDTH : constant xcb_config_window_t := 4;
   XCB_CONFIG_WINDOW_HEIGHT : constant xcb_config_window_t := 8;
   XCB_CONFIG_WINDOW_BORDER_WIDTH : constant xcb_config_window_t := 16;
   XCB_CONFIG_WINDOW_SIBLING : constant xcb_config_window_t := 32;
   XCB_CONFIG_WINDOW_STACK_MODE : constant xcb_config_window_t := 64;  -- /usr/include/xcb/xproto.h:1636

   type xcb_stack_mode_t is 
     (XCB_STACK_MODE_ABOVE,
      XCB_STACK_MODE_BELOW,
      XCB_STACK_MODE_TOP_IF,
      XCB_STACK_MODE_BOTTOM_IF,
      XCB_STACK_MODE_OPPOSITE);
   pragma Convention (C, xcb_stack_mode_t);  -- /usr/include/xcb/xproto.h:1646

  --* Opcode for xcb_configure_window.  
  --*
  -- * @brief xcb_configure_window_request_t
  -- * 

  --*<   
   type anon2021_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_configure_window_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1661
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1662
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1663
      window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:1664
      value_mask : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1665
      pad1 : aliased anon2021_anon1795_array;  -- /usr/include/xcb/xproto.h:1666
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_configure_window_request_t);  -- /usr/include/xcb/xproto.h:1660

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
   type xcb_circulate_t is 
     (XCB_CIRCULATE_RAISE_LOWEST,
      XCB_CIRCULATE_LOWER_HIGHEST);
   pragma Convention (C, xcb_circulate_t);  -- /usr/include/xcb/xproto.h:1669

  --* Opcode for xcb_circulate_window.  
  --*
  -- * @brief xcb_circulate_window_request_t
  -- * 

  --*<   
   type xcb_circulate_window_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1681
      direction : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1682
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1683
      window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:1684
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_circulate_window_request_t);  -- /usr/include/xcb/xproto.h:1680

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_get_geometry_cookie_t
  -- * 

  --*<   
   type xcb_get_geometry_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xproto.h:1691
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_geometry_cookie_t);  -- /usr/include/xcb/xproto.h:1690

  --* Opcode for xcb_get_geometry.  
  --*
  -- * @brief xcb_get_geometry_request_t
  -- * 

  --*<   
   type xcb_get_geometry_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1701
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1702
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1703
      drawable : aliased xcb_drawable_t;  -- /usr/include/xcb/xproto.h:1704
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_geometry_request_t);  -- /usr/include/xcb/xproto.h:1700

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_get_geometry_reply_t
  -- * 

  --*<   
   type anon2033_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_get_geometry_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1711
      depth : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1712
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1713
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:1714
      root : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:1715
      x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:1716
      y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:1717
      width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1718
      height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1719
      border_width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1720
      pad0 : aliased anon2033_anon1795_array;  -- /usr/include/xcb/xproto.h:1721
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_geometry_reply_t);  -- /usr/include/xcb/xproto.h:1710

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
  -- * @brief xcb_query_tree_cookie_t
  -- * 

  --*<   
   type xcb_query_tree_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xproto.h:1728
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_tree_cookie_t);  -- /usr/include/xcb/xproto.h:1727

  --* Opcode for xcb_query_tree.  
  --*
  -- * @brief xcb_query_tree_request_t
  -- * 

  --*<   
   type xcb_query_tree_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1738
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1739
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1740
      window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:1741
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_tree_request_t);  -- /usr/include/xcb/xproto.h:1737

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_query_tree_reply_t
  -- * 

  --*<   
   type anon2041_anon2043_array is array (0 .. 13) of aliased stdint_h.uint8_t;
   type xcb_query_tree_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1748
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1749
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1750
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:1751
      root : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:1752
      parent : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:1753
      children_len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1754
      pad1 : aliased anon2041_anon2043_array;  -- /usr/include/xcb/xproto.h:1755
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_tree_reply_t);  -- /usr/include/xcb/xproto.h:1747

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_intern_atom_cookie_t
  -- * 

  --*<   
   type xcb_intern_atom_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xproto.h:1762
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_intern_atom_cookie_t);  -- /usr/include/xcb/xproto.h:1761

  --* Opcode for xcb_intern_atom.  
  --*
  -- * @brief xcb_intern_atom_request_t
  -- * 

  --*<   
   type anon2048_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_intern_atom_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1772
      only_if_exists : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1773
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1774
      name_len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1775
      pad0 : aliased anon2048_anon1795_array;  -- /usr/include/xcb/xproto.h:1776
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_intern_atom_request_t);  -- /usr/include/xcb/xproto.h:1771

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_intern_atom_reply_t
  -- * 

  --*<   
   type xcb_intern_atom_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1783
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1784
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1785
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:1786
      atom : aliased xcb_atom_t;  -- /usr/include/xcb/xproto.h:1787
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_intern_atom_reply_t);  -- /usr/include/xcb/xproto.h:1782

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_get_atom_name_cookie_t
  -- * 

  --*<   
   type xcb_get_atom_name_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xproto.h:1794
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_atom_name_cookie_t);  -- /usr/include/xcb/xproto.h:1793

  --* Opcode for xcb_get_atom_name.  
  --*
  -- * @brief xcb_get_atom_name_request_t
  -- * 

  --*<   
   type xcb_get_atom_name_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1804
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1805
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1806
      atom : aliased xcb_atom_t;  -- /usr/include/xcb/xproto.h:1807
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_atom_name_request_t);  -- /usr/include/xcb/xproto.h:1803

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_get_atom_name_reply_t
  -- * 

  --*<   
   type anon2058_anon2060_array is array (0 .. 21) of aliased stdint_h.uint8_t;
   type xcb_get_atom_name_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1814
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1815
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1816
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:1817
      name_len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1818
      pad1 : aliased anon2058_anon2060_array;  -- /usr/include/xcb/xproto.h:1819
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_atom_name_reply_t);  -- /usr/include/xcb/xproto.h:1813

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
   type xcb_prop_mode_t is 
     (XCB_PROP_MODE_REPLACE,
      XCB_PROP_MODE_PREPEND,
      XCB_PROP_MODE_APPEND);
   pragma Convention (C, xcb_prop_mode_t);  -- /usr/include/xcb/xproto.h:1822

  --*< Discard the previous property value and store the new data.  
  --*< Insert the new data before the beginning of existing data. The `format` must
  --match existing property value. If the property is undefined, it is treated as
  --defined with the correct type and format with zero-length data.  

  --*< Insert the new data after the beginning of existing data. The `format` must
  --match existing property value. If the property is undefined, it is treated as
  --defined with the correct type and format with zero-length data.  

  --* Opcode for xcb_change_property.  
  --*
  -- * @brief xcb_change_property_request_t
  -- * 

  --*<   
   type anon2065_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_change_property_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1845
      mode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1846
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1847
      window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:1848
      property : aliased xcb_atom_t;  -- /usr/include/xcb/xproto.h:1849
      c_type : aliased xcb_atom_t;  -- /usr/include/xcb/xproto.h:1850
      format : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1851
      pad0 : aliased anon2065_anon1853_array;  -- /usr/include/xcb/xproto.h:1852
      data_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:1853
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_change_property_request_t);  -- /usr/include/xcb/xproto.h:1844

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_delete_property.  
  --*
  -- * @brief xcb_delete_property_request_t
  -- * 

  --*<   
   type xcb_delete_property_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1863
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1864
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1865
      window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:1866
      property : aliased xcb_atom_t;  -- /usr/include/xcb/xproto.h:1867
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_delete_property_request_t);  -- /usr/include/xcb/xproto.h:1862

  --*<   
  --*<   
  --*<   
  --*<   
   type xcb_get_property_type_t is 
     (XCB_GET_PROPERTY_TYPE_ANY);
   pragma Convention (C, xcb_get_property_type_t);  -- /usr/include/xcb/xproto.h:1870

  --*
  -- * @brief xcb_get_property_cookie_t
  -- * 

  --*<   
   type xcb_get_property_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xproto.h:1878
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_property_cookie_t);  -- /usr/include/xcb/xproto.h:1877

  --* Opcode for xcb_get_property.  
  --*
  -- * @brief xcb_get_property_request_t
  -- * 

  --*<   
   type xcb_get_property_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1888
      u_delete : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1889
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1890
      window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:1891
      property : aliased xcb_atom_t;  -- /usr/include/xcb/xproto.h:1892
      c_type : aliased xcb_atom_t;  -- /usr/include/xcb/xproto.h:1893
      long_offset : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:1894
      long_length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:1895
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_property_request_t);  -- /usr/include/xcb/xproto.h:1887

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_get_property_reply_t
  -- * 

  --*<   
   type anon2077_anon2079_array is array (0 .. 11) of aliased stdint_h.uint8_t;
   type xcb_get_property_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1902
      format : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1903
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1904
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:1905
      c_type : aliased xcb_atom_t;  -- /usr/include/xcb/xproto.h:1906
      bytes_after : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:1907
      value_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:1908
      pad0 : aliased anon2077_anon2079_array;  -- /usr/include/xcb/xproto.h:1909
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_property_reply_t);  -- /usr/include/xcb/xproto.h:1901

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_list_properties_cookie_t
  -- * 

  --*<   
   type xcb_list_properties_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xproto.h:1916
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_list_properties_cookie_t);  -- /usr/include/xcb/xproto.h:1915

  --* Opcode for xcb_list_properties.  
  --*
  -- * @brief xcb_list_properties_request_t
  -- * 

  --*<   
   type xcb_list_properties_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1926
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1927
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1928
      window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:1929
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_list_properties_request_t);  -- /usr/include/xcb/xproto.h:1925

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_list_properties_reply_t
  -- * 

  --*<   
   type anon2086_anon2060_array is array (0 .. 21) of aliased stdint_h.uint8_t;
   type xcb_list_properties_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1936
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1937
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1938
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:1939
      atoms_len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1940
      pad1 : aliased anon2086_anon2060_array;  -- /usr/include/xcb/xproto.h:1941
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_list_properties_reply_t);  -- /usr/include/xcb/xproto.h:1935

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_set_selection_owner.  
  --*
  -- * @brief xcb_set_selection_owner_request_t
  -- * 

  --*<   
   type xcb_set_selection_owner_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1951
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1952
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1953
      owner : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:1954
      selection : aliased xcb_atom_t;  -- /usr/include/xcb/xproto.h:1955
      time : aliased xcb_timestamp_t;  -- /usr/include/xcb/xproto.h:1956
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_set_selection_owner_request_t);  -- /usr/include/xcb/xproto.h:1950

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_get_selection_owner_cookie_t
  -- * 

  --*<   
   type xcb_get_selection_owner_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xproto.h:1963
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_selection_owner_cookie_t);  -- /usr/include/xcb/xproto.h:1962

  --* Opcode for xcb_get_selection_owner.  
  --*
  -- * @brief xcb_get_selection_owner_request_t
  -- * 

  --*<   
   type xcb_get_selection_owner_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1973
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1974
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1975
      selection : aliased xcb_atom_t;  -- /usr/include/xcb/xproto.h:1976
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_selection_owner_request_t);  -- /usr/include/xcb/xproto.h:1972

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_get_selection_owner_reply_t
  -- * 

  --*<   
   type xcb_get_selection_owner_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1983
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1984
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1985
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:1986
      owner : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:1987
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_selection_owner_reply_t);  -- /usr/include/xcb/xproto.h:1982

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_convert_selection.  
  --*
  -- * @brief xcb_convert_selection_request_t
  -- * 

  --*<   
   type xcb_convert_selection_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1997
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:1998
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:1999
      requestor : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:2000
      selection : aliased xcb_atom_t;  -- /usr/include/xcb/xproto.h:2001
      target : aliased xcb_atom_t;  -- /usr/include/xcb/xproto.h:2002
      property : aliased xcb_atom_t;  -- /usr/include/xcb/xproto.h:2003
      time : aliased xcb_timestamp_t;  -- /usr/include/xcb/xproto.h:2004
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_convert_selection_request_t);  -- /usr/include/xcb/xproto.h:1996

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
   type xcb_send_event_dest_t is 
     (XCB_SEND_EVENT_DEST_POINTER_WINDOW,
      XCB_SEND_EVENT_DEST_ITEM_FOCUS);
   pragma Convention (C, xcb_send_event_dest_t);  -- /usr/include/xcb/xproto.h:2007

  --* Opcode for xcb_send_event.  
  --*
  -- * @brief xcb_send_event_request_t
  -- * 

  --*<   
   subtype anon2102_anon1056_array is Interfaces.C.char_array (0 .. 31);
   type xcb_send_event_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2019
      propagate : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2020
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2021
      destination : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:2022
      event_mask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:2023
      event : aliased anon2102_anon1056_array;  -- /usr/include/xcb/xproto.h:2024
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_send_event_request_t);  -- /usr/include/xcb/xproto.h:2018

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
   type xcb_grab_mode_t is 
     (XCB_GRAB_MODE_SYNC,
      XCB_GRAB_MODE_ASYNC);
   pragma Convention (C, xcb_grab_mode_t);  -- /usr/include/xcb/xproto.h:2027

  --*< The state of the keyboard appears to freeze: No further keyboard events are
  --generated by the server until the grabbing client issues a releasing
  --`AllowEvents` request or until the keyboard grab is released.  

  --*< Keyboard event processing continues normally.  
   type xcb_grab_status_t is 
     (XCB_GRAB_STATUS_SUCCESS,
      XCB_GRAB_STATUS_ALREADY_GRABBED,
      XCB_GRAB_STATUS_INVALID_TIME,
      XCB_GRAB_STATUS_NOT_VIEWABLE,
      XCB_GRAB_STATUS_FROZEN);
   pragma Convention (C, xcb_grab_status_t);  -- /usr/include/xcb/xproto.h:2038

   type xcb_cursor_enum_t is 
     (XCB_CURSOR_NONE);
   pragma Convention (C, xcb_cursor_enum_t);  -- /usr/include/xcb/xproto.h:2046

  --*
  -- * @brief xcb_grab_pointer_cookie_t
  -- * 

  --*<   
   type xcb_grab_pointer_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xproto.h:2054
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_grab_pointer_cookie_t);  -- /usr/include/xcb/xproto.h:2053

  --* Opcode for xcb_grab_pointer.  
  --*
  -- * @brief xcb_grab_pointer_request_t
  -- * 

  --*<   
   type xcb_grab_pointer_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2064
      owner_events : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2065
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2066
      grab_window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:2067
      event_mask : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2068
      pointer_mode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2069
      keyboard_mode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2070
      confine_to : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:2071
      cursor : aliased xcb_cursor_t;  -- /usr/include/xcb/xproto.h:2072
      time : aliased xcb_timestamp_t;  -- /usr/include/xcb/xproto.h:2073
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_grab_pointer_request_t);  -- /usr/include/xcb/xproto.h:2063

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
  -- * @brief xcb_grab_pointer_reply_t
  -- * 

  --*<   
   type xcb_grab_pointer_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2080
      status : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2081
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2082
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:2083
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_grab_pointer_reply_t);  -- /usr/include/xcb/xproto.h:2079

  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_ungrab_pointer.  
  --*
  -- * @brief xcb_ungrab_pointer_request_t
  -- * 

  --*<   
   type xcb_ungrab_pointer_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2093
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2094
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2095
      time : aliased xcb_timestamp_t;  -- /usr/include/xcb/xproto.h:2096
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_ungrab_pointer_request_t);  -- /usr/include/xcb/xproto.h:2092

  --*<   
  --*<   
  --*<   
   type xcb_button_index_t is 
     (XCB_BUTTON_INDEX_ANY,
      XCB_BUTTON_INDEX_1,
      XCB_BUTTON_INDEX_2,
      XCB_BUTTON_INDEX_3,
      XCB_BUTTON_INDEX_4,
      XCB_BUTTON_INDEX_5);
   pragma Convention (C, xcb_button_index_t);  -- /usr/include/xcb/xproto.h:2099

  --*< Any of the following (or none):  
  --*< The left mouse button.  
  --*< The right mouse button.  
  --*< The middle mouse button.  
  --*< Scroll wheel. TODO: direction?  
  --*< Scroll wheel. TODO: direction?  
  --* Opcode for xcb_grab_button.  
  --*
  -- * @brief xcb_grab_button_request_t
  -- * 

  --*<   
   type xcb_grab_button_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2127
      owner_events : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2128
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2129
      grab_window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:2130
      event_mask : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2131
      pointer_mode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2132
      keyboard_mode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2133
      confine_to : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:2134
      cursor : aliased xcb_cursor_t;  -- /usr/include/xcb/xproto.h:2135
      button : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2136
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2137
      modifiers : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2138
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_grab_button_request_t);  -- /usr/include/xcb/xproto.h:2126

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
  --* Opcode for xcb_ungrab_button.  
  --*
  -- * @brief xcb_ungrab_button_request_t
  -- * 

  --*<   
   type anon2124_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_ungrab_button_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2148
      button : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2149
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2150
      grab_window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:2151
      modifiers : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2152
      pad0 : aliased anon2124_anon1795_array;  -- /usr/include/xcb/xproto.h:2153
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_ungrab_button_request_t);  -- /usr/include/xcb/xproto.h:2147

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_change_active_pointer_grab.  
  --*
  -- * @brief xcb_change_active_pointer_grab_request_t
  -- * 

  --*<   
   type anon2128_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_change_active_pointer_grab_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2163
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2164
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2165
      cursor : aliased xcb_cursor_t;  -- /usr/include/xcb/xproto.h:2166
      time : aliased xcb_timestamp_t;  -- /usr/include/xcb/xproto.h:2167
      event_mask : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2168
      pad1 : aliased anon2128_anon1795_array;  -- /usr/include/xcb/xproto.h:2169
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_change_active_pointer_grab_request_t);  -- /usr/include/xcb/xproto.h:2162

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_grab_keyboard_cookie_t
  -- * 

  --*<   
   type xcb_grab_keyboard_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xproto.h:2176
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_grab_keyboard_cookie_t);  -- /usr/include/xcb/xproto.h:2175

  --* Opcode for xcb_grab_keyboard.  
  --*
  -- * @brief xcb_grab_keyboard_request_t
  -- * 

  --*<   
   type anon2134_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_grab_keyboard_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2186
      owner_events : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2187
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2188
      grab_window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:2189
      time : aliased xcb_timestamp_t;  -- /usr/include/xcb/xproto.h:2190
      pointer_mode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2191
      keyboard_mode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2192
      pad0 : aliased anon2134_anon1795_array;  -- /usr/include/xcb/xproto.h:2193
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_grab_keyboard_request_t);  -- /usr/include/xcb/xproto.h:2185

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_grab_keyboard_reply_t
  -- * 

  --*<   
   type xcb_grab_keyboard_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2200
      status : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2201
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2202
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:2203
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_grab_keyboard_reply_t);  -- /usr/include/xcb/xproto.h:2199

  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_ungrab_keyboard.  
  --*
  -- * @brief xcb_ungrab_keyboard_request_t
  -- * 

  --*<   
   type xcb_ungrab_keyboard_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2213
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2214
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2215
      time : aliased xcb_timestamp_t;  -- /usr/include/xcb/xproto.h:2216
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_ungrab_keyboard_request_t);  -- /usr/include/xcb/xproto.h:2212

  --*<   
  --*<   
  --*<   
   type xcb_grab_t is 
     (XCB_GRAB_ANY);
   pragma Convention (C, xcb_grab_t);  -- /usr/include/xcb/xproto.h:2219

  --* Opcode for xcb_grab_key.  
  --*
  -- * @brief xcb_grab_key_request_t
  -- * 

  --*<   
   type anon2144_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_grab_key_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2230
      owner_events : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2231
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2232
      grab_window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:2233
      modifiers : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2234
      key : aliased xcb_keycode_t;  -- /usr/include/xcb/xproto.h:2235
      pointer_mode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2236
      keyboard_mode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2237
      pad0 : aliased anon2144_anon1853_array;  -- /usr/include/xcb/xproto.h:2238
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_grab_key_request_t);  -- /usr/include/xcb/xproto.h:2229

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_ungrab_key.  
  --*
  -- * @brief xcb_ungrab_key_request_t
  -- * 

  --*<   
   type anon2148_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_ungrab_key_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2248
      key : aliased xcb_keycode_t;  -- /usr/include/xcb/xproto.h:2249
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2250
      grab_window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:2251
      modifiers : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2252
      pad0 : aliased anon2148_anon1795_array;  -- /usr/include/xcb/xproto.h:2253
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_ungrab_key_request_t);  -- /usr/include/xcb/xproto.h:2247

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
   type xcb_allow_t is 
     (XCB_ALLOW_ASYNC_POINTER,
      XCB_ALLOW_SYNC_POINTER,
      XCB_ALLOW_REPLAY_POINTER,
      XCB_ALLOW_ASYNC_KEYBOARD,
      XCB_ALLOW_SYNC_KEYBOARD,
      XCB_ALLOW_REPLAY_KEYBOARD,
      XCB_ALLOW_ASYNC_BOTH,
      XCB_ALLOW_SYNC_BOTH);
   pragma Convention (C, xcb_allow_t);  -- /usr/include/xcb/xproto.h:2256

  --*< For AsyncPointer, if the pointer is frozen by the client, pointer event
  --processing continues normally. If the pointer is frozen twice by the client on
  --behalf of two separate grabs, AsyncPointer thaws for both. AsyncPointer has no
  --effect if the pointer is not frozen by the client, but the pointer need not be
  --grabbed by the client.
  --TODO: rewrite this in more understandable terms.  

  --*< For SyncPointer, if the pointer is frozen and actively grabbed by the client,
  --pointer event processing continues normally until the next ButtonPress or
  --ButtonRelease event is reported to the client, at which time the pointer again
  --appears to freeze. However, if the reported event causes the pointer grab to be
  --released, then the pointer does not freeze. SyncPointer has no effect if the
  --pointer is not frozen by the client or if the pointer is not grabbed by the
  --client.  

  --*< For ReplayPointer, if the pointer is actively grabbed by the client and is
  --frozen as the result of an event having been sent to the client (either from
  --the activation of a GrabButton or from a previous AllowEvents with mode
  --SyncPointer but not from a GrabPointer), then the pointer grab is released and
  --that event is completely reprocessed, this time ignoring any passive grabs at
  --or above (towards the root) the grab-window of the grab just released. The
  --request has no effect if the pointer is not grabbed by the client or if the
  --pointer is not frozen as the result of an event.  

  --*< For AsyncKeyboard, if the keyboard is frozen by the client, keyboard event
  --processing continues normally. If the keyboard is frozen twice by the client on
  --behalf of two separate grabs, AsyncKeyboard thaws for both. AsyncKeyboard has
  --no effect if the keyboard is not frozen by the client, but the keyboard need
  --not be grabbed by the client.  

  --*< For SyncKeyboard, if the keyboard is frozen and actively grabbed by the client,
  --keyboard event processing continues normally until the next KeyPress or
  --KeyRelease event is reported to the client, at which time the keyboard again
  --appears to freeze. However, if the reported event causes the keyboard grab to
  --be released, then the keyboard does not freeze. SyncKeyboard has no effect if
  --the keyboard is not frozen by the client or if the keyboard is not grabbed by
  --the client.  

  --*< For ReplayKeyboard, if the keyboard is actively grabbed by the client and is
  --frozen as the result of an event having been sent to the client (either from
  --the activation of a GrabKey or from a previous AllowEvents with mode
  --SyncKeyboard but not from a GrabKeyboard), then the keyboard grab is released
  --and that event is completely reprocessed, this time ignoring any passive grabs
  --at or above (towards the root) the grab-window of the grab just released. The
  --request has no effect if the keyboard is not grabbed by the client or if the
  --keyboard is not frozen as the result of an event.  

  --*< For AsyncBoth, if the pointer and the keyboard are frozen by the client, event
  --processing for both devices continues normally. If a device is frozen twice by
  --the client on behalf of two separate grabs, AsyncBoth thaws for both. AsyncBoth
  --has no effect unless both pointer and keyboard are frozen by the client.  

  --*< For SyncBoth, if both pointer and keyboard are frozen by the client, event
  --processing (for both devices) continues normally until the next ButtonPress,
  --ButtonRelease, KeyPress, or KeyRelease event is reported to the client for a
  --grabbed device (button event for the pointer, key event for the keyboard), at
  --which time the devices again appear to freeze. However, if the reported event
  --causes the grab to be released, then the devices do not freeze (but if the
  --other device is still grabbed, then a subsequent event for it will still cause
  --both devices to freeze). SyncBoth has no effect unless both pointer and
  --keyboard are frozen by the client. If the pointer or keyboard is frozen twice
  --by the client on behalf of two separate grabs, SyncBoth thaws for both (but a
  --subsequent freeze for SyncBoth will only freeze each device once).  

  --* Opcode for xcb_allow_events.  
  --*
  -- * @brief xcb_allow_events_request_t
  -- * 

  --*<   
   type xcb_allow_events_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2339
      mode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2340
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2341
      time : aliased xcb_timestamp_t;  -- /usr/include/xcb/xproto.h:2342
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_allow_events_request_t);  -- /usr/include/xcb/xproto.h:2338

  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_grab_server.  
  --*
  -- * @brief xcb_grab_server_request_t
  -- * 

  --*<   
   type xcb_grab_server_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2352
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2353
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2354
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_grab_server_request_t);  -- /usr/include/xcb/xproto.h:2351

  --*<   
  --*<   
  --* Opcode for xcb_ungrab_server.  
  --*
  -- * @brief xcb_ungrab_server_request_t
  -- * 

  --*<   
   type xcb_ungrab_server_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2364
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2365
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2366
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_ungrab_server_request_t);  -- /usr/include/xcb/xproto.h:2363

  --*<   
  --*<   
  --*
  -- * @brief xcb_query_pointer_cookie_t
  -- * 

  --*<   
   type xcb_query_pointer_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xproto.h:2373
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_pointer_cookie_t);  -- /usr/include/xcb/xproto.h:2372

  --* Opcode for xcb_query_pointer.  
  --*
  -- * @brief xcb_query_pointer_request_t
  -- * 

  --*<   
   type xcb_query_pointer_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2383
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2384
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2385
      window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:2386
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_pointer_request_t);  -- /usr/include/xcb/xproto.h:2382

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_query_pointer_reply_t
  -- * 

  --*<   
   type anon2164_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_query_pointer_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2393
      same_screen : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2394
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2395
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:2396
      root : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:2397
      child : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:2398
      root_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:2399
      root_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:2400
      win_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:2401
      win_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:2402
      mask : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2403
      pad0 : aliased anon2164_anon1795_array;  -- /usr/include/xcb/xproto.h:2404
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_pointer_reply_t);  -- /usr/include/xcb/xproto.h:2392

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
  --*
  -- * @brief xcb_timecoord_t
  -- * 

  --*<   
   type xcb_timecoord_t is record
      time : aliased xcb_timestamp_t;  -- /usr/include/xcb/xproto.h:2411
      x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:2412
      y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:2413
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_timecoord_t);  -- /usr/include/xcb/xproto.h:2410

  --*<   
  --*<   
  --*
  -- * @brief xcb_timecoord_iterator_t
  -- * 

  --*<   
   type xcb_timecoord_iterator_t is record
      data : access xcb_timecoord_t;  -- /usr/include/xcb/xproto.h:2420
      c_rem : aliased int;  -- /usr/include/xcb/xproto.h:2421
      index : aliased int;  -- /usr/include/xcb/xproto.h:2422
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_timecoord_iterator_t);  -- /usr/include/xcb/xproto.h:2419

  --*<   
  --*<   
  --*
  -- * @brief xcb_get_motion_events_cookie_t
  -- * 

  --*<   
   type xcb_get_motion_events_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xproto.h:2429
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_motion_events_cookie_t);  -- /usr/include/xcb/xproto.h:2428

  --* Opcode for xcb_get_motion_events.  
  --*
  -- * @brief xcb_get_motion_events_request_t
  -- * 

  --*<   
   type xcb_get_motion_events_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2439
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2440
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2441
      window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:2442
      start : aliased xcb_timestamp_t;  -- /usr/include/xcb/xproto.h:2443
      stop : aliased xcb_timestamp_t;  -- /usr/include/xcb/xproto.h:2444
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_motion_events_request_t);  -- /usr/include/xcb/xproto.h:2438

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_get_motion_events_reply_t
  -- * 

  --*<   
   type anon2178_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_get_motion_events_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2451
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2452
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2453
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:2454
      events_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:2455
      pad1 : aliased anon2178_anon1939_array;  -- /usr/include/xcb/xproto.h:2456
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_motion_events_reply_t);  -- /usr/include/xcb/xproto.h:2450

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_translate_coordinates_cookie_t
  -- * 

  --*<   
   type xcb_translate_coordinates_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xproto.h:2463
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_translate_coordinates_cookie_t);  -- /usr/include/xcb/xproto.h:2462

  --* Opcode for xcb_translate_coordinates.  
  --*
  -- * @brief xcb_translate_coordinates_request_t
  -- * 

  --*<   
   type xcb_translate_coordinates_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2473
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2474
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2475
      src_window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:2476
      dst_window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:2477
      src_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:2478
      src_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:2479
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_translate_coordinates_request_t);  -- /usr/include/xcb/xproto.h:2472

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_translate_coordinates_reply_t
  -- * 

  --*<   
   type xcb_translate_coordinates_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2486
      same_screen : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2487
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2488
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:2489
      child : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:2490
      dst_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:2491
      dst_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:2492
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_translate_coordinates_reply_t);  -- /usr/include/xcb/xproto.h:2485

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_warp_pointer.  
  --*
  -- * @brief xcb_warp_pointer_request_t
  -- * 

  --*<   
   type xcb_warp_pointer_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2502
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2503
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2504
      src_window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:2505
      dst_window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:2506
      src_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:2507
      src_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:2508
      src_width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2509
      src_height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2510
      dst_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:2511
      dst_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:2512
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_warp_pointer_request_t);  -- /usr/include/xcb/xproto.h:2501

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
   type xcb_input_focus_t is 
     (XCB_INPUT_FOCUS_NONE,
      XCB_INPUT_FOCUS_POINTER_ROOT,
      XCB_INPUT_FOCUS_PARENT,
      XCB_INPUT_FOCUS_FOLLOW_KEYBOARD);
   pragma Convention (C, xcb_input_focus_t);  -- /usr/include/xcb/xproto.h:2515

  --*< The focus reverts to `XCB_NONE`, so no window will have the input focus.  
  --*< The focus reverts to `XCB_POINTER_ROOT` respectively. When the focus reverts,
  --FocusIn and FocusOut events are generated, but the last-focus-change time is
  --not changed.  

  --*< The focus reverts to the parent (or closest viewable ancestor) and the new
  --revert_to value is `XCB_INPUT_FOCUS_NONE`.  

  --*< NOT YET DOCUMENTED. Only relevant for the xinput extension.  
  --* Opcode for xcb_set_input_focus.  
  --*
  -- * @brief xcb_set_input_focus_request_t
  -- * 

  --*<   
   type xcb_set_input_focus_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2540
      revert_to : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2541
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2542
      focus : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:2543
      time : aliased xcb_timestamp_t;  -- /usr/include/xcb/xproto.h:2544
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_set_input_focus_request_t);  -- /usr/include/xcb/xproto.h:2539

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_get_input_focus_cookie_t
  -- * 

  --*<   
   type xcb_get_input_focus_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xproto.h:2551
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_input_focus_cookie_t);  -- /usr/include/xcb/xproto.h:2550

  --* Opcode for xcb_get_input_focus.  
  --*
  -- * @brief xcb_get_input_focus_request_t
  -- * 

  --*<   
   type xcb_get_input_focus_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2561
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2562
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2563
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_input_focus_request_t);  -- /usr/include/xcb/xproto.h:2560

  --*<   
  --*<   
  --*
  -- * @brief xcb_get_input_focus_reply_t
  -- * 

  --*<   
   type xcb_get_input_focus_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2570
      revert_to : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2571
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2572
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:2573
      focus : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:2574
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_input_focus_reply_t);  -- /usr/include/xcb/xproto.h:2569

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_query_keymap_cookie_t
  -- * 

  --*<   
   type xcb_query_keymap_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xproto.h:2581
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_keymap_cookie_t);  -- /usr/include/xcb/xproto.h:2580

  --* Opcode for xcb_query_keymap.  
  --*
  -- * @brief xcb_query_keymap_request_t
  -- * 

  --*<   
   type xcb_query_keymap_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2591
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2592
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2593
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_keymap_request_t);  -- /usr/include/xcb/xproto.h:2590

  --*<   
  --*<   
  --*
  -- * @brief xcb_query_keymap_reply_t
  -- * 

  --*<   
   type anon2204_anon2206_array is array (0 .. 31) of aliased stdint_h.uint8_t;
   type xcb_query_keymap_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2600
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2601
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2602
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:2603
      keys : aliased anon2204_anon2206_array;  -- /usr/include/xcb/xproto.h:2604
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_keymap_reply_t);  -- /usr/include/xcb/xproto.h:2599

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_open_font.  
  --*
  -- * @brief xcb_open_font_request_t
  -- * 

  --*<   
   type anon2209_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_open_font_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2614
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2615
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2616
      fid : aliased xcb_font_t;  -- /usr/include/xcb/xproto.h:2617
      name_len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2618
      pad1 : aliased anon2209_anon1795_array;  -- /usr/include/xcb/xproto.h:2619
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_open_font_request_t);  -- /usr/include/xcb/xproto.h:2613

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_close_font.  
  --*
  -- * @brief xcb_close_font_request_t
  -- * 

  --*<   
   type xcb_close_font_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2629
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2630
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2631
      font : aliased xcb_font_t;  -- /usr/include/xcb/xproto.h:2632
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_close_font_request_t);  -- /usr/include/xcb/xproto.h:2628

  --*<   
  --*<   
  --*<   
   type xcb_font_draw_t is 
     (XCB_FONT_DRAW_LEFT_TO_RIGHT,
      XCB_FONT_DRAW_RIGHT_TO_LEFT);
   pragma Convention (C, xcb_font_draw_t);  -- /usr/include/xcb/xproto.h:2635

  --*
  -- * @brief xcb_fontprop_t
  -- * 

  --*<   
   type xcb_fontprop_t is record
      name : aliased xcb_atom_t;  -- /usr/include/xcb/xproto.h:2644
      value : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:2645
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_fontprop_t);  -- /usr/include/xcb/xproto.h:2643

  --*<   
  --*
  -- * @brief xcb_fontprop_iterator_t
  -- * 

  --*<   
   type xcb_fontprop_iterator_t is record
      data : access xcb_fontprop_t;  -- /usr/include/xcb/xproto.h:2652
      c_rem : aliased int;  -- /usr/include/xcb/xproto.h:2653
      index : aliased int;  -- /usr/include/xcb/xproto.h:2654
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_fontprop_iterator_t);  -- /usr/include/xcb/xproto.h:2651

  --*<   
  --*<   
  --*
  -- * @brief xcb_charinfo_t
  -- * 

  --*<   
   type xcb_charinfo_t is record
      left_side_bearing : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:2661
      right_side_bearing : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:2662
      character_width : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:2663
      ascent : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:2664
      descent : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:2665
      attributes : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2666
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_charinfo_t);  -- /usr/include/xcb/xproto.h:2660

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_charinfo_iterator_t
  -- * 

  --*<   
   type xcb_charinfo_iterator_t is record
      data : access xcb_charinfo_t;  -- /usr/include/xcb/xproto.h:2673
      c_rem : aliased int;  -- /usr/include/xcb/xproto.h:2674
      index : aliased int;  -- /usr/include/xcb/xproto.h:2675
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_charinfo_iterator_t);  -- /usr/include/xcb/xproto.h:2672

  --*<   
  --*<   
  --*
  -- * @brief xcb_query_font_cookie_t
  -- * 

  --*<   
   type xcb_query_font_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xproto.h:2682
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_font_cookie_t);  -- /usr/include/xcb/xproto.h:2681

  --* Opcode for xcb_query_font.  
  --*
  -- * @brief xcb_query_font_request_t
  -- * 

  --*<   
   type xcb_query_font_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2692
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2693
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2694
      font : aliased xcb_fontable_t;  -- /usr/include/xcb/xproto.h:2695
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_font_request_t);  -- /usr/include/xcb/xproto.h:2691

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_query_font_reply_t
  -- * 

  --*<   
   type anon2233_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type anon2233_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type xcb_query_font_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2702
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2703
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2704
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:2705
      min_bounds : aliased xcb_charinfo_t;  -- /usr/include/xcb/xproto.h:2706
      pad1 : aliased anon2233_anon1768_array;  -- /usr/include/xcb/xproto.h:2707
      max_bounds : aliased xcb_charinfo_t;  -- /usr/include/xcb/xproto.h:2708
      pad2 : aliased anon2233_anon1768_array;  -- /usr/include/xcb/xproto.h:2709
      min_char_or_byte2 : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2710
      max_char_or_byte2 : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2711
      default_char : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2712
      properties_len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2713
      draw_direction : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2714
      min_byte1 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2715
      max_byte1 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2716
      all_chars_exist : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2717
      font_ascent : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:2718
      font_descent : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:2719
      char_infos_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:2720
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_font_reply_t);  -- /usr/include/xcb/xproto.h:2701

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
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_query_text_extents_cookie_t
  -- * 

  --*<   
   type xcb_query_text_extents_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xproto.h:2727
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_text_extents_cookie_t);  -- /usr/include/xcb/xproto.h:2726

  --* Opcode for xcb_query_text_extents.  
  --*
  -- * @brief xcb_query_text_extents_request_t
  -- * 

  --*<   
   type xcb_query_text_extents_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2737
      odd_length : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2738
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2739
      font : aliased xcb_fontable_t;  -- /usr/include/xcb/xproto.h:2740
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_text_extents_request_t);  -- /usr/include/xcb/xproto.h:2736

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_query_text_extents_reply_t
  -- * 

  --*<   
   type xcb_query_text_extents_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2747
      draw_direction : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2748
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2749
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:2750
      font_ascent : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:2751
      font_descent : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:2752
      overall_ascent : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:2753
      overall_descent : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:2754
      overall_width : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xproto.h:2755
      overall_left : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xproto.h:2756
      overall_right : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xproto.h:2757
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_text_extents_reply_t);  -- /usr/include/xcb/xproto.h:2746

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
  -- * @brief xcb_str_t
  -- * 

  --*<   
   type xcb_str_t is record
      name_len : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2764
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_str_t);  -- /usr/include/xcb/xproto.h:2763

  --*
  -- * @brief xcb_str_iterator_t
  -- * 

  --*<   
   type xcb_str_iterator_t is record
      data : access xcb_str_t;  -- /usr/include/xcb/xproto.h:2771
      c_rem : aliased int;  -- /usr/include/xcb/xproto.h:2772
      index : aliased int;  -- /usr/include/xcb/xproto.h:2773
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_str_iterator_t);  -- /usr/include/xcb/xproto.h:2770

  --*<   
  --*<   
  --*
  -- * @brief xcb_list_fonts_cookie_t
  -- * 

  --*<   
   type xcb_list_fonts_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xproto.h:2780
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_list_fonts_cookie_t);  -- /usr/include/xcb/xproto.h:2779

  --* Opcode for xcb_list_fonts.  
  --*
  -- * @brief xcb_list_fonts_request_t
  -- * 

  --*<   
   type xcb_list_fonts_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2790
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2791
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2792
      max_names : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2793
      pattern_len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2794
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_list_fonts_request_t);  -- /usr/include/xcb/xproto.h:2789

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_list_fonts_reply_t
  -- * 

  --*<   
   type anon2255_anon2060_array is array (0 .. 21) of aliased stdint_h.uint8_t;
   type xcb_list_fonts_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2801
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2802
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2803
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:2804
      names_len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2805
      pad1 : aliased anon2255_anon2060_array;  -- /usr/include/xcb/xproto.h:2806
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_list_fonts_reply_t);  -- /usr/include/xcb/xproto.h:2800

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_list_fonts_with_info_cookie_t
  -- * 

  --*<   
   type xcb_list_fonts_with_info_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xproto.h:2813
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_list_fonts_with_info_cookie_t);  -- /usr/include/xcb/xproto.h:2812

  --* Opcode for xcb_list_fonts_with_info.  
  --*
  -- * @brief xcb_list_fonts_with_info_request_t
  -- * 

  --*<   
   type xcb_list_fonts_with_info_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2823
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2824
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2825
      max_names : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2826
      pattern_len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2827
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_list_fonts_with_info_request_t);  -- /usr/include/xcb/xproto.h:2822

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_list_fonts_with_info_reply_t
  -- * 

  --*<   
   type anon2263_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type anon2263_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type xcb_list_fonts_with_info_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2834
      name_len : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2835
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2836
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:2837
      min_bounds : aliased xcb_charinfo_t;  -- /usr/include/xcb/xproto.h:2838
      pad0 : aliased anon2263_anon1768_array;  -- /usr/include/xcb/xproto.h:2839
      max_bounds : aliased xcb_charinfo_t;  -- /usr/include/xcb/xproto.h:2840
      pad1 : aliased anon2263_anon1768_array;  -- /usr/include/xcb/xproto.h:2841
      min_char_or_byte2 : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2842
      max_char_or_byte2 : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2843
      default_char : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2844
      properties_len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2845
      draw_direction : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2846
      min_byte1 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2847
      max_byte1 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2848
      all_chars_exist : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2849
      font_ascent : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:2850
      font_descent : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:2851
      replies_hint : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:2852
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_list_fonts_with_info_reply_t);  -- /usr/include/xcb/xproto.h:2833

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
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_set_font_path.  
  --*
  -- * @brief xcb_set_font_path_request_t
  -- * 

  --*<   
   type anon2269_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_set_font_path_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2862
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2863
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2864
      font_qty : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2865
      pad1 : aliased anon2269_anon1795_array;  -- /usr/include/xcb/xproto.h:2866
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_set_font_path_request_t);  -- /usr/include/xcb/xproto.h:2861

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_get_font_path_cookie_t
  -- * 

  --*<   
   type xcb_get_font_path_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xproto.h:2873
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_font_path_cookie_t);  -- /usr/include/xcb/xproto.h:2872

  --* Opcode for xcb_get_font_path.  
  --*
  -- * @brief xcb_get_font_path_request_t
  -- * 

  --*<   
   type xcb_get_font_path_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2883
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2884
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2885
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_font_path_request_t);  -- /usr/include/xcb/xproto.h:2882

  --*<   
  --*<   
  --*
  -- * @brief xcb_get_font_path_reply_t
  -- * 

  --*<   
   type anon2277_anon2060_array is array (0 .. 21) of aliased stdint_h.uint8_t;
   type xcb_get_font_path_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2892
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2893
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2894
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:2895
      path_len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2896
      pad1 : aliased anon2277_anon2060_array;  -- /usr/include/xcb/xproto.h:2897
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_font_path_reply_t);  -- /usr/include/xcb/xproto.h:2891

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_create_pixmap.  
  --*
  -- * @brief xcb_create_pixmap_request_t
  -- * 

  --*<   
   type xcb_create_pixmap_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2907
      depth : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2908
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2909
      pid : aliased xcb_pixmap_t;  -- /usr/include/xcb/xproto.h:2910
      drawable : aliased xcb_drawable_t;  -- /usr/include/xcb/xproto.h:2911
      width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2912
      height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2913
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_create_pixmap_request_t);  -- /usr/include/xcb/xproto.h:2906

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_free_pixmap.  
  --*
  -- * @brief xcb_free_pixmap_request_t
  -- * 

  --*<   
   type xcb_free_pixmap_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2923
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:2924
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:2925
      pixmap : aliased xcb_pixmap_t;  -- /usr/include/xcb/xproto.h:2926
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_free_pixmap_request_t);  -- /usr/include/xcb/xproto.h:2922

  --*<   
  --*<   
  --*<   
   subtype xcb_gc_t is unsigned;
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
   XCB_GC_ARC_MODE : constant xcb_gc_t := 4194304;  -- /usr/include/xcb/xproto.h:2929

  --*< TODO: Refer to GX  
  --*< In graphics operations, given a source and destination pixel, the result is
  --computed bitwise on corresponding bits of the pixels; that is, a Boolean
  --operation is performed in each bit plane. The plane-mask restricts the
  --operation to a subset of planes, so the result is:
  --        ((src FUNC dst) AND plane-mask) OR (dst AND (NOT plane-mask))  

  --*< Foreground colorpixel.  
  --*< Background colorpixel.  
  --*< The line-width is measured in pixels and can be greater than or equal to one, a wide line, or the
  --special value zero, a thin line.  

  --*< The line-style defines which sections of a line are drawn:
  --Solid                The full path of the line is drawn.
  --DoubleDash           The full path of the line is drawn, but the even dashes are filled differently
  --                     than the odd dashes (see fill-style), with Butt cap-style used where even and
  --                     odd dashes meet.
  --OnOffDash            Only the even dashes are drawn, and cap-style applies to all internal ends of
  --                     the individual dashes (except NotLast is treated as Butt).  

  --*< The cap-style defines how the endpoints of a path are drawn:
  --NotLast    The result is equivalent to Butt, except that for a line-width of zero the final
  --           endpoint is not drawn.
  --Butt       The result is square at the endpoint (perpendicular to the slope of the line)
  --           with no projection beyond.
  --Round      The result is a circular arc with its diameter equal to the line-width, centered
  --           on the endpoint; it is equivalent to Butt for line-width zero.
  --Projecting The result is square at the end, but the path continues beyond the endpoint for
  --           a distance equal to half the line-width; it is equivalent to Butt for line-width
  --           zero.  

  --*< The join-style defines how corners are drawn for wide lines:
  --Miter               The outer edges of the two lines extend to meet at an angle. However, if the
  --                    angle is less than 11 degrees, a Bevel join-style is used instead.
  --Round               The result is a circular arc with a diameter equal to the line-width, centered
  --                    on the joinpoint.
  --Bevel               The result is Butt endpoint styles, and then the triangular notch is filled.  

  --*< The fill-style defines the contents of the source for line, text, and fill requests. For all text and fill
  --requests (for example, PolyText8, PolyText16, PolyFillRectangle, FillPoly, and PolyFillArc)
  --as well as for line requests with line-style Solid, (for example, PolyLine, PolySegment,
  --PolyRectangle, PolyArc) and for the even dashes for line requests with line-style OnOffDash
  --or DoubleDash:
  --Solid                     Foreground
  --Tiled                     Tile
  --OpaqueStippled            A tile with the same width and height as stipple but with background
  --                          everywhere stipple has a zero and with foreground everywhere stipple
  --                          has a one
  --Stippled                  Foreground masked by stipple
  --For the odd dashes for line requests with line-style DoubleDash:
  --Solid                     Background
  --Tiled                     Same as for even dashes
  --OpaqueStippled            Same as for even dashes
  --Stippled                  Background masked by stipple  

  --*<   
  --*< The tile/stipple represents an infinite two-dimensional plane with the tile/stipple replicated in all
  --dimensions. When that plane is superimposed on the drawable for use in a graphics operation,
  --the upper-left corner of some instance of the tile/stipple is at the coordinates within the drawable
  --specified by the tile/stipple origin. The tile/stipple and clip origins are interpreted relative to the
  --origin of whatever destination drawable is specified in a graphics request.
  --The tile pixmap must have the same root and depth as the gcontext (or a Match error results).
  --The stipple pixmap must have depth one and must have the same root as the gcontext (or a
  --Match error results). For fill-style Stippled (but not fill-style
  --OpaqueStippled), the stipple pattern is tiled in a single plane and acts as an
  --additional clip mask to be ANDed with the clip-mask.
  --Any size pixmap can be used for tiling or stippling, although some sizes may be faster to use than
  --others.  

  --*< The tile/stipple represents an infinite two-dimensional plane with the tile/stipple replicated in all
  --dimensions. When that plane is superimposed on the drawable for use in a graphics operation,
  --the upper-left corner of some instance of the tile/stipple is at the coordinates within the drawable
  --specified by the tile/stipple origin. The tile/stipple and clip origins are interpreted relative to the
  --origin of whatever destination drawable is specified in a graphics request.
  --The tile pixmap must have the same root and depth as the gcontext (or a Match error results).
  --The stipple pixmap must have depth one and must have the same root as the gcontext (or a
  --Match error results). For fill-style Stippled (but not fill-style
  --OpaqueStippled), the stipple pattern is tiled in a single plane and acts as an
  --additional clip mask to be ANDed with the clip-mask.
  --Any size pixmap can be used for tiling or stippling, although some sizes may be faster to use than
  --others.  

  --*< TODO  
  --*< TODO  
  --*< Which font to use for the `ImageText8` and `ImageText16` requests.  
  --*< For ClipByChildren, both source and destination windows are additionally
  --clipped by all viewable InputOutput children. For IncludeInferiors, neither
  --source nor destination window is
  --clipped by inferiors. This will result in including subwindow contents in the source and drawing
  --through subwindow boundaries of the destination. The use of IncludeInferiors with a source or
  --destination window of one depth with mapped inferiors of differing depth is not illegal, but the
  --semantics is undefined by the core protocol.  

  --*< Whether ExposureEvents should be generated (1) or not (0).
  --The default is 1.  

  --*< TODO  
  --*< TODO  
  --*< The clip-mask restricts writes to the destination drawable. Only pixels where the clip-mask has
  --bits set to 1 are drawn. Pixels are not drawn outside the area covered by the clip-mask or where
  --the clip-mask has bits set to 0. The clip-mask affects all graphics requests, but it does not clip
  --sources. The clip-mask origin is interpreted relative to the origin of whatever destination drawable is specified in a graphics request. If a pixmap is specified as the clip-mask, it must have
  --depth 1 and have the same root as the gcontext (or a Match error results). If clip-mask is None,
  --then pixels are always drawn, regardless of the clip origin. The clip-mask can also be set with the
  --SetClipRectangles request.  

  --*< TODO  
  --*< TODO  
  --*< TODO  
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
   pragma Convention (C, xcb_gx_t);  -- /usr/include/xcb/xproto.h:3078

   type xcb_line_style_t is 
     (XCB_LINE_STYLE_SOLID,
      XCB_LINE_STYLE_ON_OFF_DASH,
      XCB_LINE_STYLE_DOUBLE_DASH);
   pragma Convention (C, xcb_line_style_t);  -- /usr/include/xcb/xproto.h:3097

   type xcb_cap_style_t is 
     (XCB_CAP_STYLE_NOT_LAST,
      XCB_CAP_STYLE_BUTT,
      XCB_CAP_STYLE_ROUND,
      XCB_CAP_STYLE_PROJECTING);
   pragma Convention (C, xcb_cap_style_t);  -- /usr/include/xcb/xproto.h:3103

   type xcb_join_style_t is 
     (XCB_JOIN_STYLE_MITER,
      XCB_JOIN_STYLE_ROUND,
      XCB_JOIN_STYLE_BEVEL);
   pragma Convention (C, xcb_join_style_t);  -- /usr/include/xcb/xproto.h:3110

   type xcb_fill_style_t is 
     (XCB_FILL_STYLE_SOLID,
      XCB_FILL_STYLE_TILED,
      XCB_FILL_STYLE_STIPPLED,
      XCB_FILL_STYLE_OPAQUE_STIPPLED);
   pragma Convention (C, xcb_fill_style_t);  -- /usr/include/xcb/xproto.h:3116

   type xcb_fill_rule_t is 
     (XCB_FILL_RULE_EVEN_ODD,
      XCB_FILL_RULE_WINDING);
   pragma Convention (C, xcb_fill_rule_t);  -- /usr/include/xcb/xproto.h:3123

   type xcb_subwindow_mode_t is 
     (XCB_SUBWINDOW_MODE_CLIP_BY_CHILDREN,
      XCB_SUBWINDOW_MODE_INCLUDE_INFERIORS);
   pragma Convention (C, xcb_subwindow_mode_t);  -- /usr/include/xcb/xproto.h:3128

   type xcb_arc_mode_t is 
     (XCB_ARC_MODE_CHORD,
      XCB_ARC_MODE_PIE_SLICE);
   pragma Convention (C, xcb_arc_mode_t);  -- /usr/include/xcb/xproto.h:3133

  --* Opcode for xcb_create_gc.  
  --*
  -- * @brief xcb_create_gc_request_t
  -- * 

  --*<   
   type xcb_create_gc_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3145
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3146
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3147
      cid : aliased xcb_gcontext_t;  -- /usr/include/xcb/xproto.h:3148
      drawable : aliased xcb_drawable_t;  -- /usr/include/xcb/xproto.h:3149
      value_mask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:3150
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_create_gc_request_t);  -- /usr/include/xcb/xproto.h:3144

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_change_gc.  
  --*
  -- * @brief xcb_change_gc_request_t
  -- * 

  --*<   
   type xcb_change_gc_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3160
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3161
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3162
      gc : aliased xcb_gcontext_t;  -- /usr/include/xcb/xproto.h:3163
      value_mask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:3164
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_change_gc_request_t);  -- /usr/include/xcb/xproto.h:3159

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_copy_gc.  
  --*
  -- * @brief xcb_copy_gc_request_t
  -- * 

  --*<   
   type xcb_copy_gc_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3174
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3175
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3176
      src_gc : aliased xcb_gcontext_t;  -- /usr/include/xcb/xproto.h:3177
      dst_gc : aliased xcb_gcontext_t;  -- /usr/include/xcb/xproto.h:3178
      value_mask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:3179
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_copy_gc_request_t);  -- /usr/include/xcb/xproto.h:3173

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_set_dashes.  
  --*
  -- * @brief xcb_set_dashes_request_t
  -- * 

  --*<   
   type xcb_set_dashes_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3189
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3190
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3191
      gc : aliased xcb_gcontext_t;  -- /usr/include/xcb/xproto.h:3192
      dash_offset : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3193
      dashes_len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3194
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_set_dashes_request_t);  -- /usr/include/xcb/xproto.h:3188

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
   type xcb_clip_ordering_t is 
     (XCB_CLIP_ORDERING_UNSORTED,
      XCB_CLIP_ORDERING_Y_SORTED,
      XCB_CLIP_ORDERING_YX_SORTED,
      XCB_CLIP_ORDERING_YX_BANDED);
   pragma Convention (C, xcb_clip_ordering_t);  -- /usr/include/xcb/xproto.h:3197

  --* Opcode for xcb_set_clip_rectangles.  
  --*
  -- * @brief xcb_set_clip_rectangles_request_t
  -- * 

  --*<   
   type xcb_set_clip_rectangles_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3211
      ordering : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3212
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3213
      gc : aliased xcb_gcontext_t;  -- /usr/include/xcb/xproto.h:3214
      clip_x_origin : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:3215
      clip_y_origin : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:3216
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_set_clip_rectangles_request_t);  -- /usr/include/xcb/xproto.h:3210

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_free_gc.  
  --*
  -- * @brief xcb_free_gc_request_t
  -- * 

  --*<   
   type xcb_free_gc_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3226
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3227
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3228
      gc : aliased xcb_gcontext_t;  -- /usr/include/xcb/xproto.h:3229
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_free_gc_request_t);  -- /usr/include/xcb/xproto.h:3225

  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_clear_area.  
  --*
  -- * @brief xcb_clear_area_request_t
  -- * 

  --*<   
   type xcb_clear_area_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3239
      exposures : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3240
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3241
      window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:3242
      x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:3243
      y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:3244
      width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3245
      height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3246
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_clear_area_request_t);  -- /usr/include/xcb/xproto.h:3238

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_copy_area.  
  --*
  -- * @brief xcb_copy_area_request_t
  -- * 

  --*<   
   type xcb_copy_area_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3256
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3257
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3258
      src_drawable : aliased xcb_drawable_t;  -- /usr/include/xcb/xproto.h:3259
      dst_drawable : aliased xcb_drawable_t;  -- /usr/include/xcb/xproto.h:3260
      gc : aliased xcb_gcontext_t;  -- /usr/include/xcb/xproto.h:3261
      src_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:3262
      src_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:3263
      dst_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:3264
      dst_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:3265
      width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3266
      height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3267
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_copy_area_request_t);  -- /usr/include/xcb/xproto.h:3255

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
  --* Opcode for xcb_copy_plane.  
  --*
  -- * @brief xcb_copy_plane_request_t
  -- * 

  --*<   
   type xcb_copy_plane_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3277
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3278
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3279
      src_drawable : aliased xcb_drawable_t;  -- /usr/include/xcb/xproto.h:3280
      dst_drawable : aliased xcb_drawable_t;  -- /usr/include/xcb/xproto.h:3281
      gc : aliased xcb_gcontext_t;  -- /usr/include/xcb/xproto.h:3282
      src_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:3283
      src_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:3284
      dst_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:3285
      dst_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:3286
      width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3287
      height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3288
      bit_plane : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:3289
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_copy_plane_request_t);  -- /usr/include/xcb/xproto.h:3276

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
   type xcb_coord_mode_t is 
     (XCB_COORD_MODE_ORIGIN,
      XCB_COORD_MODE_PREVIOUS);
   pragma Convention (C, xcb_coord_mode_t);  -- /usr/include/xcb/xproto.h:3292

  --*< Treats all coordinates as relative to the origin.  
  --*< Treats all coordinates after the first as relative to the previous coordinate.  
  --* Opcode for xcb_poly_point.  
  --*
  -- * @brief xcb_poly_point_request_t
  -- * 

  --*<   
   type xcb_poly_point_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3308
      coordinate_mode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3309
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3310
      drawable : aliased xcb_drawable_t;  -- /usr/include/xcb/xproto.h:3311
      gc : aliased xcb_gcontext_t;  -- /usr/include/xcb/xproto.h:3312
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_poly_point_request_t);  -- /usr/include/xcb/xproto.h:3307

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_poly_line.  
  --*
  -- * @brief xcb_poly_line_request_t
  -- * 

  --*<   
   type xcb_poly_line_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3322
      coordinate_mode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3323
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3324
      drawable : aliased xcb_drawable_t;  -- /usr/include/xcb/xproto.h:3325
      gc : aliased xcb_gcontext_t;  -- /usr/include/xcb/xproto.h:3326
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_poly_line_request_t);  -- /usr/include/xcb/xproto.h:3321

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_segment_t
  -- * 

  --*<   
   type xcb_segment_t is record
      x1 : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:3333
      y1 : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:3334
      x2 : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:3335
      y2 : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:3336
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_segment_t);  -- /usr/include/xcb/xproto.h:3332

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_segment_iterator_t
  -- * 

  --*<   
   type xcb_segment_iterator_t is record
      data : access xcb_segment_t;  -- /usr/include/xcb/xproto.h:3343
      c_rem : aliased int;  -- /usr/include/xcb/xproto.h:3344
      index : aliased int;  -- /usr/include/xcb/xproto.h:3345
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_segment_iterator_t);  -- /usr/include/xcb/xproto.h:3342

  --*<   
  --*<   
  --* Opcode for xcb_poly_segment.  
  --*
  -- * @brief xcb_poly_segment_request_t
  -- * 

  --*<   
   type xcb_poly_segment_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3355
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3356
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3357
      drawable : aliased xcb_drawable_t;  -- /usr/include/xcb/xproto.h:3358
      gc : aliased xcb_gcontext_t;  -- /usr/include/xcb/xproto.h:3359
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_poly_segment_request_t);  -- /usr/include/xcb/xproto.h:3354

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_poly_rectangle.  
  --*
  -- * @brief xcb_poly_rectangle_request_t
  -- * 

  --*<   
   type xcb_poly_rectangle_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3369
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3370
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3371
      drawable : aliased xcb_drawable_t;  -- /usr/include/xcb/xproto.h:3372
      gc : aliased xcb_gcontext_t;  -- /usr/include/xcb/xproto.h:3373
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_poly_rectangle_request_t);  -- /usr/include/xcb/xproto.h:3368

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_poly_arc.  
  --*
  -- * @brief xcb_poly_arc_request_t
  -- * 

  --*<   
   type xcb_poly_arc_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3383
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3384
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3385
      drawable : aliased xcb_drawable_t;  -- /usr/include/xcb/xproto.h:3386
      gc : aliased xcb_gcontext_t;  -- /usr/include/xcb/xproto.h:3387
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_poly_arc_request_t);  -- /usr/include/xcb/xproto.h:3382

  --*<   
  --*<   
  --*<   
  --*<   
   type xcb_poly_shape_t is 
     (XCB_POLY_SHAPE_COMPLEX,
      XCB_POLY_SHAPE_NONCONVEX,
      XCB_POLY_SHAPE_CONVEX);
   pragma Convention (C, xcb_poly_shape_t);  -- /usr/include/xcb/xproto.h:3390

  --* Opcode for xcb_fill_poly.  
  --*
  -- * @brief xcb_fill_poly_request_t
  -- * 

  --*<   
   type anon2343_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_fill_poly_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3403
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3404
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3405
      drawable : aliased xcb_drawable_t;  -- /usr/include/xcb/xproto.h:3406
      gc : aliased xcb_gcontext_t;  -- /usr/include/xcb/xproto.h:3407
      shape : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3408
      coordinate_mode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3409
      pad1 : aliased anon2343_anon1795_array;  -- /usr/include/xcb/xproto.h:3410
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_fill_poly_request_t);  -- /usr/include/xcb/xproto.h:3402

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_poly_fill_rectangle.  
  --*
  -- * @brief xcb_poly_fill_rectangle_request_t
  -- * 

  --*<   
   type xcb_poly_fill_rectangle_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3420
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3421
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3422
      drawable : aliased xcb_drawable_t;  -- /usr/include/xcb/xproto.h:3423
      gc : aliased xcb_gcontext_t;  -- /usr/include/xcb/xproto.h:3424
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_poly_fill_rectangle_request_t);  -- /usr/include/xcb/xproto.h:3419

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_poly_fill_arc.  
  --*
  -- * @brief xcb_poly_fill_arc_request_t
  -- * 

  --*<   
   type xcb_poly_fill_arc_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3434
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3435
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3436
      drawable : aliased xcb_drawable_t;  -- /usr/include/xcb/xproto.h:3437
      gc : aliased xcb_gcontext_t;  -- /usr/include/xcb/xproto.h:3438
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_poly_fill_arc_request_t);  -- /usr/include/xcb/xproto.h:3433

  --*<   
  --*<   
  --*<   
  --*<   
   type xcb_image_format_t is 
     (XCB_IMAGE_FORMAT_XY_BITMAP,
      XCB_IMAGE_FORMAT_XY_PIXMAP,
      XCB_IMAGE_FORMAT_Z_PIXMAP);
   pragma Convention (C, xcb_image_format_t);  -- /usr/include/xcb/xproto.h:3441

  --* Opcode for xcb_put_image.  
  --*
  -- * @brief xcb_put_image_request_t
  -- * 

  --*<   
   type anon2353_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_put_image_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3454
      format : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3455
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3456
      drawable : aliased xcb_drawable_t;  -- /usr/include/xcb/xproto.h:3457
      gc : aliased xcb_gcontext_t;  -- /usr/include/xcb/xproto.h:3458
      width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3459
      height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3460
      dst_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:3461
      dst_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:3462
      left_pad : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3463
      depth : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3464
      pad0 : aliased anon2353_anon1795_array;  -- /usr/include/xcb/xproto.h:3465
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_put_image_request_t);  -- /usr/include/xcb/xproto.h:3453

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
  --*
  -- * @brief xcb_get_image_cookie_t
  -- * 

  --*<   
   type xcb_get_image_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xproto.h:3472
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_image_cookie_t);  -- /usr/include/xcb/xproto.h:3471

  --* Opcode for xcb_get_image.  
  --*
  -- * @brief xcb_get_image_request_t
  -- * 

  --*<   
   type xcb_get_image_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3482
      format : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3483
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3484
      drawable : aliased xcb_drawable_t;  -- /usr/include/xcb/xproto.h:3485
      x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:3486
      y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:3487
      width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3488
      height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3489
      plane_mask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:3490
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_image_request_t);  -- /usr/include/xcb/xproto.h:3481

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_get_image_reply_t
  -- * 

  --*<   
   type anon2361_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_get_image_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3497
      depth : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3498
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3499
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:3500
      visual : aliased xcb_visualid_t;  -- /usr/include/xcb/xproto.h:3501
      pad0 : aliased anon2361_anon1939_array;  -- /usr/include/xcb/xproto.h:3502
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_image_reply_t);  -- /usr/include/xcb/xproto.h:3496

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_poly_text_8.  
  --*
  -- * @brief xcb_poly_text_8_request_t
  -- * 

  --*<   
   type xcb_poly_text_8_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3512
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3513
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3514
      drawable : aliased xcb_drawable_t;  -- /usr/include/xcb/xproto.h:3515
      gc : aliased xcb_gcontext_t;  -- /usr/include/xcb/xproto.h:3516
      x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:3517
      y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:3518
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_poly_text_8_request_t);  -- /usr/include/xcb/xproto.h:3511

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_poly_text_16.  
  --*
  -- * @brief xcb_poly_text_16_request_t
  -- * 

  --*<   
   type xcb_poly_text_16_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3528
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3529
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3530
      drawable : aliased xcb_drawable_t;  -- /usr/include/xcb/xproto.h:3531
      gc : aliased xcb_gcontext_t;  -- /usr/include/xcb/xproto.h:3532
      x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:3533
      y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:3534
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_poly_text_16_request_t);  -- /usr/include/xcb/xproto.h:3527

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_image_text_8.  
  --*
  -- * @brief xcb_image_text_8_request_t
  -- * 

  --*<   
   type xcb_image_text_8_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3544
      string_len : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3545
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3546
      drawable : aliased xcb_drawable_t;  -- /usr/include/xcb/xproto.h:3547
      gc : aliased xcb_gcontext_t;  -- /usr/include/xcb/xproto.h:3548
      x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:3549
      y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:3550
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_image_text_8_request_t);  -- /usr/include/xcb/xproto.h:3543

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_image_text_16.  
  --*
  -- * @brief xcb_image_text_16_request_t
  -- * 

  --*<   
   type xcb_image_text_16_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3560
      string_len : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3561
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3562
      drawable : aliased xcb_drawable_t;  -- /usr/include/xcb/xproto.h:3563
      gc : aliased xcb_gcontext_t;  -- /usr/include/xcb/xproto.h:3564
      x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:3565
      y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:3566
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_image_text_16_request_t);  -- /usr/include/xcb/xproto.h:3559

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
   type xcb_colormap_alloc_t is 
     (XCB_COLORMAP_ALLOC_NONE,
      XCB_COLORMAP_ALLOC_ALL);
   pragma Convention (C, xcb_colormap_alloc_t);  -- /usr/include/xcb/xproto.h:3569

  --* Opcode for xcb_create_colormap.  
  --*
  -- * @brief xcb_create_colormap_request_t
  -- * 

  --*<   
   type xcb_create_colormap_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3581
      alloc : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3582
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3583
      mid : aliased xcb_colormap_t;  -- /usr/include/xcb/xproto.h:3584
      window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:3585
      visual : aliased xcb_visualid_t;  -- /usr/include/xcb/xproto.h:3586
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_create_colormap_request_t);  -- /usr/include/xcb/xproto.h:3580

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_free_colormap.  
  --*
  -- * @brief xcb_free_colormap_request_t
  -- * 

  --*<   
   type xcb_free_colormap_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3596
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3597
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3598
      cmap : aliased xcb_colormap_t;  -- /usr/include/xcb/xproto.h:3599
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_free_colormap_request_t);  -- /usr/include/xcb/xproto.h:3595

  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_copy_colormap_and_free.  
  --*
  -- * @brief xcb_copy_colormap_and_free_request_t
  -- * 

  --*<   
   type xcb_copy_colormap_and_free_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3609
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3610
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3611
      mid : aliased xcb_colormap_t;  -- /usr/include/xcb/xproto.h:3612
      src_cmap : aliased xcb_colormap_t;  -- /usr/include/xcb/xproto.h:3613
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_copy_colormap_and_free_request_t);  -- /usr/include/xcb/xproto.h:3608

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_install_colormap.  
  --*
  -- * @brief xcb_install_colormap_request_t
  -- * 

  --*<   
   type xcb_install_colormap_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3623
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3624
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3625
      cmap : aliased xcb_colormap_t;  -- /usr/include/xcb/xproto.h:3626
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_install_colormap_request_t);  -- /usr/include/xcb/xproto.h:3622

  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_uninstall_colormap.  
  --*
  -- * @brief xcb_uninstall_colormap_request_t
  -- * 

  --*<   
   type xcb_uninstall_colormap_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3636
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3637
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3638
      cmap : aliased xcb_colormap_t;  -- /usr/include/xcb/xproto.h:3639
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_uninstall_colormap_request_t);  -- /usr/include/xcb/xproto.h:3635

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_list_installed_colormaps_cookie_t
  -- * 

  --*<   
   type xcb_list_installed_colormaps_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xproto.h:3646
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_list_installed_colormaps_cookie_t);  -- /usr/include/xcb/xproto.h:3645

  --* Opcode for xcb_list_installed_colormaps.  
  --*
  -- * @brief xcb_list_installed_colormaps_request_t
  -- * 

  --*<   
   type xcb_list_installed_colormaps_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3656
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3657
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3658
      window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:3659
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_list_installed_colormaps_request_t);  -- /usr/include/xcb/xproto.h:3655

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_list_installed_colormaps_reply_t
  -- * 

  --*<   
   type anon2389_anon2060_array is array (0 .. 21) of aliased stdint_h.uint8_t;
   type xcb_list_installed_colormaps_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3666
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3667
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3668
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:3669
      cmaps_len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3670
      pad1 : aliased anon2389_anon2060_array;  -- /usr/include/xcb/xproto.h:3671
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_list_installed_colormaps_reply_t);  -- /usr/include/xcb/xproto.h:3665

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_alloc_color_cookie_t
  -- * 

  --*<   
   type xcb_alloc_color_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xproto.h:3678
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_alloc_color_cookie_t);  -- /usr/include/xcb/xproto.h:3677

  --* Opcode for xcb_alloc_color.  
  --*
  -- * @brief xcb_alloc_color_request_t
  -- * 

  --*<   
   type anon2395_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_alloc_color_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3688
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3689
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3690
      cmap : aliased xcb_colormap_t;  -- /usr/include/xcb/xproto.h:3691
      red : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3692
      green : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3693
      blue : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3694
      pad1 : aliased anon2395_anon1795_array;  -- /usr/include/xcb/xproto.h:3695
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_alloc_color_request_t);  -- /usr/include/xcb/xproto.h:3687

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_alloc_color_reply_t
  -- * 

  --*<   
   type anon2399_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_alloc_color_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3702
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3703
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3704
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:3705
      red : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3706
      green : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3707
      blue : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3708
      pad1 : aliased anon2399_anon1795_array;  -- /usr/include/xcb/xproto.h:3709
      pixel : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:3710
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_alloc_color_reply_t);  -- /usr/include/xcb/xproto.h:3701

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_alloc_named_color_cookie_t
  -- * 

  --*<   
   type xcb_alloc_named_color_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xproto.h:3717
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_alloc_named_color_cookie_t);  -- /usr/include/xcb/xproto.h:3716

  --* Opcode for xcb_alloc_named_color.  
  --*
  -- * @brief xcb_alloc_named_color_request_t
  -- * 

  --*<   
   type anon2405_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_alloc_named_color_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3727
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3728
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3729
      cmap : aliased xcb_colormap_t;  -- /usr/include/xcb/xproto.h:3730
      name_len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3731
      pad1 : aliased anon2405_anon1795_array;  -- /usr/include/xcb/xproto.h:3732
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_alloc_named_color_request_t);  -- /usr/include/xcb/xproto.h:3726

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_alloc_named_color_reply_t
  -- * 

  --*<   
   type xcb_alloc_named_color_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3739
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3740
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3741
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:3742
      pixel : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:3743
      exact_red : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3744
      exact_green : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3745
      exact_blue : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3746
      visual_red : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3747
      visual_green : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3748
      visual_blue : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3749
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_alloc_named_color_reply_t);  -- /usr/include/xcb/xproto.h:3738

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
  -- * @brief xcb_alloc_color_cells_cookie_t
  -- * 

  --*<   
   type xcb_alloc_color_cells_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xproto.h:3756
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_alloc_color_cells_cookie_t);  -- /usr/include/xcb/xproto.h:3755

  --* Opcode for xcb_alloc_color_cells.  
  --*
  -- * @brief xcb_alloc_color_cells_request_t
  -- * 

  --*<   
   type xcb_alloc_color_cells_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3766
      contiguous : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3767
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3768
      cmap : aliased xcb_colormap_t;  -- /usr/include/xcb/xproto.h:3769
      colors : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3770
      planes : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3771
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_alloc_color_cells_request_t);  -- /usr/include/xcb/xproto.h:3765

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_alloc_color_cells_reply_t
  -- * 

  --*<   
   type anon2415_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_alloc_color_cells_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3778
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3779
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3780
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:3781
      pixels_len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3782
      masks_len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3783
      pad1 : aliased anon2415_anon1939_array;  -- /usr/include/xcb/xproto.h:3784
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_alloc_color_cells_reply_t);  -- /usr/include/xcb/xproto.h:3777

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_alloc_color_planes_cookie_t
  -- * 

  --*<   
   type xcb_alloc_color_planes_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xproto.h:3791
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_alloc_color_planes_cookie_t);  -- /usr/include/xcb/xproto.h:3790

  --* Opcode for xcb_alloc_color_planes.  
  --*
  -- * @brief xcb_alloc_color_planes_request_t
  -- * 

  --*<   
   type xcb_alloc_color_planes_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3801
      contiguous : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3802
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3803
      cmap : aliased xcb_colormap_t;  -- /usr/include/xcb/xproto.h:3804
      colors : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3805
      reds : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3806
      greens : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3807
      blues : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3808
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_alloc_color_planes_request_t);  -- /usr/include/xcb/xproto.h:3800

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_alloc_color_planes_reply_t
  -- * 

  --*<   
   type anon2423_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type anon2423_anon2427_array is array (0 .. 7) of aliased stdint_h.uint8_t;
   type xcb_alloc_color_planes_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3815
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3816
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3817
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:3818
      pixels_len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3819
      pad1 : aliased anon2423_anon1795_array;  -- /usr/include/xcb/xproto.h:3820
      red_mask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:3821
      green_mask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:3822
      blue_mask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:3823
      pad2 : aliased anon2423_anon2427_array;  -- /usr/include/xcb/xproto.h:3824
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_alloc_color_planes_reply_t);  -- /usr/include/xcb/xproto.h:3814

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_free_colors.  
  --*
  -- * @brief xcb_free_colors_request_t
  -- * 

  --*<   
   type xcb_free_colors_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3834
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3835
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3836
      cmap : aliased xcb_colormap_t;  -- /usr/include/xcb/xproto.h:3837
      plane_mask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:3838
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_free_colors_request_t);  -- /usr/include/xcb/xproto.h:3833

  --*<   
  --*<   
  --*<   
  --*<   
   subtype xcb_color_flag_t is unsigned;
   XCB_COLOR_FLAG_RED : constant xcb_color_flag_t := 1;
   XCB_COLOR_FLAG_GREEN : constant xcb_color_flag_t := 2;
   XCB_COLOR_FLAG_BLUE : constant xcb_color_flag_t := 4;  -- /usr/include/xcb/xproto.h:3841

  --*
  -- * @brief xcb_coloritem_t
  -- * 

  --*<   
   type xcb_coloritem_t is record
      pixel : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:3851
      red : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3852
      green : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3853
      blue : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3854
      flags : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3855
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3856
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_coloritem_t);  -- /usr/include/xcb/xproto.h:3850

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_coloritem_iterator_t
  -- * 

  --*<   
   type xcb_coloritem_iterator_t is record
      data : access xcb_coloritem_t;  -- /usr/include/xcb/xproto.h:3863
      c_rem : aliased int;  -- /usr/include/xcb/xproto.h:3864
      index : aliased int;  -- /usr/include/xcb/xproto.h:3865
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_coloritem_iterator_t);  -- /usr/include/xcb/xproto.h:3862

  --*<   
  --*<   
  --* Opcode for xcb_store_colors.  
  --*
  -- * @brief xcb_store_colors_request_t
  -- * 

  --*<   
   type xcb_store_colors_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3875
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3876
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3877
      cmap : aliased xcb_colormap_t;  -- /usr/include/xcb/xproto.h:3878
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_store_colors_request_t);  -- /usr/include/xcb/xproto.h:3874

  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_store_named_color.  
  --*
  -- * @brief xcb_store_named_color_request_t
  -- * 

  --*<   
   type anon2442_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_store_named_color_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3888
      flags : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3889
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3890
      cmap : aliased xcb_colormap_t;  -- /usr/include/xcb/xproto.h:3891
      pixel : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:3892
      name_len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3893
      pad0 : aliased anon2442_anon1795_array;  -- /usr/include/xcb/xproto.h:3894
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_store_named_color_request_t);  -- /usr/include/xcb/xproto.h:3887

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_rgb_t
  -- * 

  --*<   
   type anon2446_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_rgb_t is record
      red : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3901
      green : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3902
      blue : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3903
      pad0 : aliased anon2446_anon1795_array;  -- /usr/include/xcb/xproto.h:3904
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_rgb_t);  -- /usr/include/xcb/xproto.h:3900

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_rgb_iterator_t
  -- * 

  --*<   
   type xcb_rgb_iterator_t is record
      data : access xcb_rgb_t;  -- /usr/include/xcb/xproto.h:3911
      c_rem : aliased int;  -- /usr/include/xcb/xproto.h:3912
      index : aliased int;  -- /usr/include/xcb/xproto.h:3913
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_rgb_iterator_t);  -- /usr/include/xcb/xproto.h:3910

  --*<   
  --*<   
  --*
  -- * @brief xcb_query_colors_cookie_t
  -- * 

  --*<   
   type xcb_query_colors_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xproto.h:3920
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_colors_cookie_t);  -- /usr/include/xcb/xproto.h:3919

  --* Opcode for xcb_query_colors.  
  --*
  -- * @brief xcb_query_colors_request_t
  -- * 

  --*<   
   type xcb_query_colors_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3930
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3931
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3932
      cmap : aliased xcb_colormap_t;  -- /usr/include/xcb/xproto.h:3933
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_colors_request_t);  -- /usr/include/xcb/xproto.h:3929

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_query_colors_reply_t
  -- * 

  --*<   
   type anon2458_anon2060_array is array (0 .. 21) of aliased stdint_h.uint8_t;
   type xcb_query_colors_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3940
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3941
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3942
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:3943
      colors_len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3944
      pad1 : aliased anon2458_anon2060_array;  -- /usr/include/xcb/xproto.h:3945
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_colors_reply_t);  -- /usr/include/xcb/xproto.h:3939

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_lookup_color_cookie_t
  -- * 

  --*<   
   type xcb_lookup_color_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xproto.h:3952
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_lookup_color_cookie_t);  -- /usr/include/xcb/xproto.h:3951

  --* Opcode for xcb_lookup_color.  
  --*
  -- * @brief xcb_lookup_color_request_t
  -- * 

  --*<   
   type anon2464_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_lookup_color_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3962
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3963
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3964
      cmap : aliased xcb_colormap_t;  -- /usr/include/xcb/xproto.h:3965
      name_len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3966
      pad1 : aliased anon2464_anon1795_array;  -- /usr/include/xcb/xproto.h:3967
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_lookup_color_request_t);  -- /usr/include/xcb/xproto.h:3961

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_lookup_color_reply_t
  -- * 

  --*<   
   type xcb_lookup_color_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3974
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3975
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3976
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:3977
      exact_red : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3978
      exact_green : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3979
      exact_blue : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3980
      visual_red : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3981
      visual_green : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3982
      visual_blue : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3983
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_lookup_color_reply_t);  -- /usr/include/xcb/xproto.h:3973

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
   type xcb_pixmap_enum_t is 
     (XCB_PIXMAP_NONE);
   pragma Convention (C, xcb_pixmap_enum_t);  -- /usr/include/xcb/xproto.h:3986

  --* Opcode for xcb_create_cursor.  
  --*
  -- * @brief xcb_create_cursor_request_t
  -- * 

  --*<   
   type xcb_create_cursor_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3997
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:3998
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:3999
      cid : aliased xcb_cursor_t;  -- /usr/include/xcb/xproto.h:4000
      source : aliased xcb_pixmap_t;  -- /usr/include/xcb/xproto.h:4001
      mask : aliased xcb_pixmap_t;  -- /usr/include/xcb/xproto.h:4002
      fore_red : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4003
      fore_green : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4004
      fore_blue : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4005
      back_red : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4006
      back_green : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4007
      back_blue : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4008
      x : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4009
      y : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4010
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_create_cursor_request_t);  -- /usr/include/xcb/xproto.h:3996

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
   type xcb_font_enum_t is 
     (XCB_FONT_NONE);
   pragma Convention (C, xcb_font_enum_t);  -- /usr/include/xcb/xproto.h:4013

  --* Opcode for xcb_create_glyph_cursor.  
  --*
  -- * @brief xcb_create_glyph_cursor_request_t
  -- * 

  --*<   
   type xcb_create_glyph_cursor_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4024
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4025
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4026
      cid : aliased xcb_cursor_t;  -- /usr/include/xcb/xproto.h:4027
      source_font : aliased xcb_font_t;  -- /usr/include/xcb/xproto.h:4028
      mask_font : aliased xcb_font_t;  -- /usr/include/xcb/xproto.h:4029
      source_char : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4030
      mask_char : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4031
      fore_red : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4032
      fore_green : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4033
      fore_blue : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4034
      back_red : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4035
      back_green : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4036
      back_blue : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4037
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_create_glyph_cursor_request_t);  -- /usr/include/xcb/xproto.h:4023

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
  --* Opcode for xcb_free_cursor.  
  --*
  -- * @brief xcb_free_cursor_request_t
  -- * 

  --*<   
   type xcb_free_cursor_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4047
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4048
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4049
      cursor : aliased xcb_cursor_t;  -- /usr/include/xcb/xproto.h:4050
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_free_cursor_request_t);  -- /usr/include/xcb/xproto.h:4046

  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_recolor_cursor.  
  --*
  -- * @brief xcb_recolor_cursor_request_t
  -- * 

  --*<   
   type xcb_recolor_cursor_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4060
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4061
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4062
      cursor : aliased xcb_cursor_t;  -- /usr/include/xcb/xproto.h:4063
      fore_red : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4064
      fore_green : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4065
      fore_blue : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4066
      back_red : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4067
      back_green : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4068
      back_blue : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4069
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_recolor_cursor_request_t);  -- /usr/include/xcb/xproto.h:4059

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
   type xcb_query_shape_of_t is 
     (XCB_QUERY_SHAPE_OF_LARGEST_CURSOR,
      XCB_QUERY_SHAPE_OF_FASTEST_TILE,
      XCB_QUERY_SHAPE_OF_FASTEST_STIPPLE);
   pragma Convention (C, xcb_query_shape_of_t);  -- /usr/include/xcb/xproto.h:4072

  --*
  -- * @brief xcb_query_best_size_cookie_t
  -- * 

  --*<   
   type xcb_query_best_size_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xproto.h:4082
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_best_size_cookie_t);  -- /usr/include/xcb/xproto.h:4081

  --* Opcode for xcb_query_best_size.  
  --*
  -- * @brief xcb_query_best_size_request_t
  -- * 

  --*<   
   type xcb_query_best_size_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4092
      u_class : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4093
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4094
      drawable : aliased xcb_drawable_t;  -- /usr/include/xcb/xproto.h:4095
      width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4096
      height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4097
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_best_size_request_t);  -- /usr/include/xcb/xproto.h:4091

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_query_best_size_reply_t
  -- * 

  --*<   
   type xcb_query_best_size_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4104
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4105
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4106
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:4107
      width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4108
      height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4109
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_best_size_reply_t);  -- /usr/include/xcb/xproto.h:4103

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_query_extension_cookie_t
  -- * 

  --*<   
   type xcb_query_extension_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xproto.h:4116
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_extension_cookie_t);  -- /usr/include/xcb/xproto.h:4115

  --* Opcode for xcb_query_extension.  
  --*
  -- * @brief xcb_query_extension_request_t
  -- * 

  --*<   
   type anon2492_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_query_extension_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4126
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4127
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4128
      name_len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4129
      pad1 : aliased anon2492_anon1795_array;  -- /usr/include/xcb/xproto.h:4130
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_extension_request_t);  -- /usr/include/xcb/xproto.h:4125

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_query_extension_reply_t
  -- * 

  --*<   
   type xcb_query_extension_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4137
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4138
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4139
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:4140
      present : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4141
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4142
      first_event : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4143
      first_error : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4144
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_query_extension_reply_t);  -- /usr/include/xcb/xproto.h:4136

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_list_extensions_cookie_t
  -- * 

  --*<   
   type xcb_list_extensions_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xproto.h:4151
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_list_extensions_cookie_t);  -- /usr/include/xcb/xproto.h:4150

  --* Opcode for xcb_list_extensions.  
  --*
  -- * @brief xcb_list_extensions_request_t
  -- * 

  --*<   
   type xcb_list_extensions_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4161
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4162
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4163
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_list_extensions_request_t);  -- /usr/include/xcb/xproto.h:4160

  --*<   
  --*<   
  --*
  -- * @brief xcb_list_extensions_reply_t
  -- * 

  --*<   
   type anon2502_anon2504_array is array (0 .. 23) of aliased stdint_h.uint8_t;
   type xcb_list_extensions_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4170
      names_len : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4171
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4172
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:4173
      pad0 : aliased anon2502_anon2504_array;  -- /usr/include/xcb/xproto.h:4174
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_list_extensions_reply_t);  -- /usr/include/xcb/xproto.h:4169

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_change_keyboard_mapping.  
  --*
  -- * @brief xcb_change_keyboard_mapping_request_t
  -- * 

  --*<   
   type anon2507_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_change_keyboard_mapping_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4184
      keycode_count : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4185
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4186
      first_keycode : aliased xcb_keycode_t;  -- /usr/include/xcb/xproto.h:4187
      keysyms_per_keycode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4188
      pad0 : aliased anon2507_anon1795_array;  -- /usr/include/xcb/xproto.h:4189
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_change_keyboard_mapping_request_t);  -- /usr/include/xcb/xproto.h:4183

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_get_keyboard_mapping_cookie_t
  -- * 

  --*<   
   type xcb_get_keyboard_mapping_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xproto.h:4196
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_keyboard_mapping_cookie_t);  -- /usr/include/xcb/xproto.h:4195

  --* Opcode for xcb_get_keyboard_mapping.  
  --*
  -- * @brief xcb_get_keyboard_mapping_request_t
  -- * 

  --*<   
   type xcb_get_keyboard_mapping_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4206
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4207
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4208
      first_keycode : aliased xcb_keycode_t;  -- /usr/include/xcb/xproto.h:4209
      count : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4210
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_keyboard_mapping_request_t);  -- /usr/include/xcb/xproto.h:4205

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_get_keyboard_mapping_reply_t
  -- * 

  --*<   
   type anon2515_anon2504_array is array (0 .. 23) of aliased stdint_h.uint8_t;
   type xcb_get_keyboard_mapping_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4217
      keysyms_per_keycode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4218
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4219
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:4220
      pad0 : aliased anon2515_anon2504_array;  -- /usr/include/xcb/xproto.h:4221
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_keyboard_mapping_reply_t);  -- /usr/include/xcb/xproto.h:4216

  --*<   
  --*<   
  --*<   
  --*<   
   subtype xcb_kb_t is unsigned;
   XCB_KB_KEY_CLICK_PERCENT : constant xcb_kb_t := 1;
   XCB_KB_BELL_PERCENT : constant xcb_kb_t := 2;
   XCB_KB_BELL_PITCH : constant xcb_kb_t := 4;
   XCB_KB_BELL_DURATION : constant xcb_kb_t := 8;
   XCB_KB_LED : constant xcb_kb_t := 16;
   XCB_KB_LED_MODE : constant xcb_kb_t := 32;
   XCB_KB_KEY : constant xcb_kb_t := 64;
   XCB_KB_AUTO_REPEAT_MODE : constant xcb_kb_t := 128;  -- /usr/include/xcb/xproto.h:4224

   type xcb_led_mode_t is 
     (XCB_LED_MODE_OFF,
      XCB_LED_MODE_ON);
   pragma Convention (C, xcb_led_mode_t);  -- /usr/include/xcb/xproto.h:4235

   type xcb_auto_repeat_mode_t is 
     (XCB_AUTO_REPEAT_MODE_OFF,
      XCB_AUTO_REPEAT_MODE_ON,
      XCB_AUTO_REPEAT_MODE_DEFAULT);
   pragma Convention (C, xcb_auto_repeat_mode_t);  -- /usr/include/xcb/xproto.h:4240

  --* Opcode for xcb_change_keyboard_control.  
  --*
  -- * @brief xcb_change_keyboard_control_request_t
  -- * 

  --*<   
   type xcb_change_keyboard_control_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4253
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4254
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4255
      value_mask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:4256
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_change_keyboard_control_request_t);  -- /usr/include/xcb/xproto.h:4252

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_get_keyboard_control_cookie_t
  -- * 

  --*<   
   type xcb_get_keyboard_control_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xproto.h:4263
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_keyboard_control_cookie_t);  -- /usr/include/xcb/xproto.h:4262

  --* Opcode for xcb_get_keyboard_control.  
  --*
  -- * @brief xcb_get_keyboard_control_request_t
  -- * 

  --*<   
   type xcb_get_keyboard_control_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4273
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4274
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4275
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_keyboard_control_request_t);  -- /usr/include/xcb/xproto.h:4272

  --*<   
  --*<   
  --*
  -- * @brief xcb_get_keyboard_control_reply_t
  -- * 

  --*<   
   type anon2531_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type anon2531_anon2206_array is array (0 .. 31) of aliased stdint_h.uint8_t;
   type xcb_get_keyboard_control_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4282
      global_auto_repeat : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4283
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4284
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:4285
      led_mask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:4286
      key_click_percent : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4287
      bell_percent : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4288
      bell_pitch : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4289
      bell_duration : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4290
      pad0 : aliased anon2531_anon1795_array;  -- /usr/include/xcb/xproto.h:4291
      auto_repeats : aliased anon2531_anon2206_array;  -- /usr/include/xcb/xproto.h:4292
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_keyboard_control_reply_t);  -- /usr/include/xcb/xproto.h:4281

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
  --* Opcode for xcb_bell.  
  --*
  -- * @brief xcb_bell_request_t
  -- * 

  --*<   
   type xcb_bell_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4302
      percent : aliased sys_types_h.int8_t;  -- /usr/include/xcb/xproto.h:4303
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4304
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_bell_request_t);  -- /usr/include/xcb/xproto.h:4301

  --*<   
  --*<   
  --* Opcode for xcb_change_pointer_control.  
  --*
  -- * @brief xcb_change_pointer_control_request_t
  -- * 

  --*<   
   type xcb_change_pointer_control_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4314
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4315
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4316
      acceleration_numerator : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:4317
      acceleration_denominator : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:4318
      threshold : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:4319
      do_acceleration : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4320
      do_threshold : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4321
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_change_pointer_control_request_t);  -- /usr/include/xcb/xproto.h:4313

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_get_pointer_control_cookie_t
  -- * 

  --*<   
   type xcb_get_pointer_control_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xproto.h:4328
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_pointer_control_cookie_t);  -- /usr/include/xcb/xproto.h:4327

  --* Opcode for xcb_get_pointer_control.  
  --*
  -- * @brief xcb_get_pointer_control_request_t
  -- * 

  --*<   
   type xcb_get_pointer_control_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4338
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4339
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4340
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_pointer_control_request_t);  -- /usr/include/xcb/xproto.h:4337

  --*<   
  --*<   
  --*
  -- * @brief xcb_get_pointer_control_reply_t
  -- * 

  --*<   
   type anon2545_anon2547_array is array (0 .. 17) of aliased stdint_h.uint8_t;
   type xcb_get_pointer_control_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4347
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4348
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4349
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:4350
      acceleration_numerator : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4351
      acceleration_denominator : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4352
      threshold : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4353
      pad1 : aliased anon2545_anon2547_array;  -- /usr/include/xcb/xproto.h:4354
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_pointer_control_reply_t);  -- /usr/include/xcb/xproto.h:4346

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
   type xcb_blanking_t is 
     (XCB_BLANKING_NOT_PREFERRED,
      XCB_BLANKING_PREFERRED,
      XCB_BLANKING_DEFAULT);
   pragma Convention (C, xcb_blanking_t);  -- /usr/include/xcb/xproto.h:4357

   type xcb_exposures_t is 
     (XCB_EXPOSURES_NOT_ALLOWED,
      XCB_EXPOSURES_ALLOWED,
      XCB_EXPOSURES_DEFAULT);
   pragma Convention (C, xcb_exposures_t);  -- /usr/include/xcb/xproto.h:4363

  --* Opcode for xcb_set_screen_saver.  
  --*
  -- * @brief xcb_set_screen_saver_request_t
  -- * 

  --*<   
   type xcb_set_screen_saver_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4376
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4377
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4378
      timeout : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:4379
      interval : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:4380
      prefer_blanking : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4381
      allow_exposures : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4382
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_set_screen_saver_request_t);  -- /usr/include/xcb/xproto.h:4375

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_get_screen_saver_cookie_t
  -- * 

  --*<   
   type xcb_get_screen_saver_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xproto.h:4389
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_screen_saver_cookie_t);  -- /usr/include/xcb/xproto.h:4388

  --* Opcode for xcb_get_screen_saver.  
  --*
  -- * @brief xcb_get_screen_saver_request_t
  -- * 

  --*<   
   type xcb_get_screen_saver_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4399
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4400
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4401
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_screen_saver_request_t);  -- /usr/include/xcb/xproto.h:4398

  --*<   
  --*<   
  --*
  -- * @brief xcb_get_screen_saver_reply_t
  -- * 

  --*<   
   type anon2560_anon2547_array is array (0 .. 17) of aliased stdint_h.uint8_t;
   type xcb_get_screen_saver_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4408
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4409
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4410
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:4411
      timeout : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4412
      interval : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4413
      prefer_blanking : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4414
      allow_exposures : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4415
      pad1 : aliased anon2560_anon2547_array;  -- /usr/include/xcb/xproto.h:4416
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_screen_saver_reply_t);  -- /usr/include/xcb/xproto.h:4407

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
   type xcb_host_mode_t is 
     (XCB_HOST_MODE_INSERT,
      XCB_HOST_MODE_DELETE);
   pragma Convention (C, xcb_host_mode_t);  -- /usr/include/xcb/xproto.h:4419

   subtype xcb_family_t is unsigned;
   XCB_FAMILY_INTERNET : constant xcb_family_t := 0;
   XCB_FAMILY_DECNET : constant xcb_family_t := 1;
   XCB_FAMILY_CHAOS : constant xcb_family_t := 2;
   XCB_FAMILY_SERVER_INTERPRETED : constant xcb_family_t := 5;
   XCB_FAMILY_INTERNET_6 : constant xcb_family_t := 6;  -- /usr/include/xcb/xproto.h:4424

  --* Opcode for xcb_change_hosts.  
  --*
  -- * @brief xcb_change_hosts_request_t
  -- * 

  --*<   
   type xcb_change_hosts_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4439
      mode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4440
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4441
      family : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4442
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4443
      address_len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4444
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_change_hosts_request_t);  -- /usr/include/xcb/xproto.h:4438

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_host_t
  -- * 

  --*<   
   type xcb_host_t is record
      family : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4451
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4452
      address_len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4453
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_host_t);  -- /usr/include/xcb/xproto.h:4450

  --*<   
  --*<   
  --*
  -- * @brief xcb_host_iterator_t
  -- * 

  --*<   
   type xcb_host_iterator_t is record
      data : access xcb_host_t;  -- /usr/include/xcb/xproto.h:4460
      c_rem : aliased int;  -- /usr/include/xcb/xproto.h:4461
      index : aliased int;  -- /usr/include/xcb/xproto.h:4462
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_host_iterator_t);  -- /usr/include/xcb/xproto.h:4459

  --*<   
  --*<   
  --*
  -- * @brief xcb_list_hosts_cookie_t
  -- * 

  --*<   
   type xcb_list_hosts_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xproto.h:4469
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_list_hosts_cookie_t);  -- /usr/include/xcb/xproto.h:4468

  --* Opcode for xcb_list_hosts.  
  --*
  -- * @brief xcb_list_hosts_request_t
  -- * 

  --*<   
   type xcb_list_hosts_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4479
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4480
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4481
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_list_hosts_request_t);  -- /usr/include/xcb/xproto.h:4478

  --*<   
  --*<   
  --*
  -- * @brief xcb_list_hosts_reply_t
  -- * 

  --*<   
   type anon2580_anon2060_array is array (0 .. 21) of aliased stdint_h.uint8_t;
   type xcb_list_hosts_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4488
      mode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4489
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4490
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:4491
      hosts_len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4492
      pad0 : aliased anon2580_anon2060_array;  -- /usr/include/xcb/xproto.h:4493
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_list_hosts_reply_t);  -- /usr/include/xcb/xproto.h:4487

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
   type xcb_access_control_t is 
     (XCB_ACCESS_CONTROL_DISABLE,
      XCB_ACCESS_CONTROL_ENABLE);
   pragma Convention (C, xcb_access_control_t);  -- /usr/include/xcb/xproto.h:4496

  --* Opcode for xcb_set_access_control.  
  --*
  -- * @brief xcb_set_access_control_request_t
  -- * 

  --*<   
   type xcb_set_access_control_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4508
      mode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4509
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4510
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_set_access_control_request_t);  -- /usr/include/xcb/xproto.h:4507

  --*<   
  --*<   
   type xcb_close_down_t is 
     (XCB_CLOSE_DOWN_DESTROY_ALL,
      XCB_CLOSE_DOWN_RETAIN_PERMANENT,
      XCB_CLOSE_DOWN_RETAIN_TEMPORARY);
   pragma Convention (C, xcb_close_down_t);  -- /usr/include/xcb/xproto.h:4513

  --* Opcode for xcb_set_close_down_mode.  
  --*
  -- * @brief xcb_set_close_down_mode_request_t
  -- * 

  --*<   
   type xcb_set_close_down_mode_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4526
      mode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4527
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4528
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_set_close_down_mode_request_t);  -- /usr/include/xcb/xproto.h:4525

  --*<   
  --*<   
   type xcb_kill_t is 
     (XCB_KILL_ALL_TEMPORARY);
   pragma Convention (C, xcb_kill_t);  -- /usr/include/xcb/xproto.h:4531

  --* Opcode for xcb_kill_client.  
  --*
  -- * @brief xcb_kill_client_request_t
  -- * 

  --*<   
   type xcb_kill_client_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4542
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4543
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4544
      resource : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:4545
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_kill_client_request_t);  -- /usr/include/xcb/xproto.h:4541

  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_rotate_properties.  
  --*
  -- * @brief xcb_rotate_properties_request_t
  -- * 

  --*<   
   type xcb_rotate_properties_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4555
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4556
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4557
      window : aliased xcb_window_t;  -- /usr/include/xcb/xproto.h:4558
      atoms_len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4559
      c_delta : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xproto.h:4560
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_rotate_properties_request_t);  -- /usr/include/xcb/xproto.h:4554

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
   type xcb_screen_saver_t is 
     (XCB_SCREEN_SAVER_RESET,
      XCB_SCREEN_SAVER_ACTIVE);
   pragma Convention (C, xcb_screen_saver_t);  -- /usr/include/xcb/xproto.h:4563

  --* Opcode for xcb_force_screen_saver.  
  --*
  -- * @brief xcb_force_screen_saver_request_t
  -- * 

  --*<   
   type xcb_force_screen_saver_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4575
      mode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4576
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4577
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_force_screen_saver_request_t);  -- /usr/include/xcb/xproto.h:4574

  --*<   
  --*<   
   type xcb_mapping_status_t is 
     (XCB_MAPPING_STATUS_SUCCESS,
      XCB_MAPPING_STATUS_BUSY,
      XCB_MAPPING_STATUS_FAILURE);
   pragma Convention (C, xcb_mapping_status_t);  -- /usr/include/xcb/xproto.h:4580

  --*
  -- * @brief xcb_set_pointer_mapping_cookie_t
  -- * 

  --*<   
   type xcb_set_pointer_mapping_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xproto.h:4590
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_set_pointer_mapping_cookie_t);  -- /usr/include/xcb/xproto.h:4589

  --* Opcode for xcb_set_pointer_mapping.  
  --*
  -- * @brief xcb_set_pointer_mapping_request_t
  -- * 

  --*<   
   type xcb_set_pointer_mapping_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4600
      map_len : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4601
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4602
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_set_pointer_mapping_request_t);  -- /usr/include/xcb/xproto.h:4599

  --*<   
  --*<   
  --*
  -- * @brief xcb_set_pointer_mapping_reply_t
  -- * 

  --*<   
   type xcb_set_pointer_mapping_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4609
      status : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4610
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4611
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:4612
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_set_pointer_mapping_reply_t);  -- /usr/include/xcb/xproto.h:4608

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_get_pointer_mapping_cookie_t
  -- * 

  --*<   
   type xcb_get_pointer_mapping_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xproto.h:4619
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_pointer_mapping_cookie_t);  -- /usr/include/xcb/xproto.h:4618

  --* Opcode for xcb_get_pointer_mapping.  
  --*
  -- * @brief xcb_get_pointer_mapping_request_t
  -- * 

  --*<   
   type xcb_get_pointer_mapping_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4629
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4630
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4631
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_pointer_mapping_request_t);  -- /usr/include/xcb/xproto.h:4628

  --*<   
  --*<   
  --*
  -- * @brief xcb_get_pointer_mapping_reply_t
  -- * 

  --*<   
   type anon2614_anon2504_array is array (0 .. 23) of aliased stdint_h.uint8_t;
   type xcb_get_pointer_mapping_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4638
      map_len : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4639
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4640
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:4641
      pad0 : aliased anon2614_anon2504_array;  -- /usr/include/xcb/xproto.h:4642
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_pointer_mapping_reply_t);  -- /usr/include/xcb/xproto.h:4637

  --*<   
  --*<   
  --*<   
  --*<   
   type xcb_map_index_t is 
     (XCB_MAP_INDEX_SHIFT,
      XCB_MAP_INDEX_LOCK,
      XCB_MAP_INDEX_CONTROL,
      XCB_MAP_INDEX_1,
      XCB_MAP_INDEX_2,
      XCB_MAP_INDEX_3,
      XCB_MAP_INDEX_4,
      XCB_MAP_INDEX_5);
   pragma Convention (C, xcb_map_index_t);  -- /usr/include/xcb/xproto.h:4645

  --*
  -- * @brief xcb_set_modifier_mapping_cookie_t
  -- * 

  --*<   
   type xcb_set_modifier_mapping_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xproto.h:4660
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_set_modifier_mapping_cookie_t);  -- /usr/include/xcb/xproto.h:4659

  --* Opcode for xcb_set_modifier_mapping.  
  --*
  -- * @brief xcb_set_modifier_mapping_request_t
  -- * 

  --*<   
   type xcb_set_modifier_mapping_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4670
      keycodes_per_modifier : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4671
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4672
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_set_modifier_mapping_request_t);  -- /usr/include/xcb/xproto.h:4669

  --*<   
  --*<   
  --*
  -- * @brief xcb_set_modifier_mapping_reply_t
  -- * 

  --*<   
   type xcb_set_modifier_mapping_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4679
      status : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4680
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4681
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:4682
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_set_modifier_mapping_reply_t);  -- /usr/include/xcb/xproto.h:4678

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_get_modifier_mapping_cookie_t
  -- * 

  --*<   
   type xcb_get_modifier_mapping_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xproto.h:4689
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_modifier_mapping_cookie_t);  -- /usr/include/xcb/xproto.h:4688

  --* Opcode for xcb_get_modifier_mapping.  
  --*
  -- * @brief xcb_get_modifier_mapping_request_t
  -- * 

  --*<   
   type xcb_get_modifier_mapping_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4699
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4700
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4701
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_modifier_mapping_request_t);  -- /usr/include/xcb/xproto.h:4698

  --*<   
  --*<   
  --*
  -- * @brief xcb_get_modifier_mapping_reply_t
  -- * 

  --*<   
   type anon2630_anon2504_array is array (0 .. 23) of aliased stdint_h.uint8_t;
   type xcb_get_modifier_mapping_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4708
      keycodes_per_modifier : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4709
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4710
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:4711
      pad0 : aliased anon2630_anon2504_array;  -- /usr/include/xcb/xproto.h:4712
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_get_modifier_mapping_reply_t);  -- /usr/include/xcb/xproto.h:4707

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_no_operation.  
  --*
  -- * @brief xcb_no_operation_request_t
  -- * 

  --*<   
   type xcb_no_operation_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4722
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:4723
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xproto.h:4724
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_no_operation_request_t);  -- /usr/include/xcb/xproto.h:4721

  --*<   
  --*<   
  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_char2b_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_char2b_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_char2b_next
  -- ** 
  -- ** @param xcb_char2b_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_char2b_next (arg1 : access xcb_char2b_iterator_t);  -- /usr/include/xcb/xproto.h:4746
   pragma Import (C, xcb_char2b_next, "xcb_char2b_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_char2b_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_char2b_end
  -- ** 
  -- ** @param xcb_char2b_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_char2b_end (arg1 : xcb_char2b_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:4768
   pragma Import (C, xcb_char2b_end, "xcb_char2b_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_window_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_window_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_window_next
  -- ** 
  -- ** @param xcb_window_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_window_next (arg1 : access xcb_window_iterator_t);  -- /usr/include/xcb/xproto.h:4789
   pragma Import (C, xcb_window_next, "xcb_window_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_window_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_window_end
  -- ** 
  -- ** @param xcb_window_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_window_end (arg1 : xcb_window_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:4811
   pragma Import (C, xcb_window_end, "xcb_window_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_pixmap_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_pixmap_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_pixmap_next
  -- ** 
  -- ** @param xcb_pixmap_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_pixmap_next (arg1 : access xcb_pixmap_iterator_t);  -- /usr/include/xcb/xproto.h:4832
   pragma Import (C, xcb_pixmap_next, "xcb_pixmap_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_pixmap_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_pixmap_end
  -- ** 
  -- ** @param xcb_pixmap_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_pixmap_end (arg1 : xcb_pixmap_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:4854
   pragma Import (C, xcb_pixmap_end, "xcb_pixmap_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_cursor_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_cursor_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_cursor_next
  -- ** 
  -- ** @param xcb_cursor_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_cursor_next (arg1 : access xcb_cursor_iterator_t);  -- /usr/include/xcb/xproto.h:4875
   pragma Import (C, xcb_cursor_next, "xcb_cursor_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_cursor_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_cursor_end
  -- ** 
  -- ** @param xcb_cursor_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_cursor_end (arg1 : xcb_cursor_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:4897
   pragma Import (C, xcb_cursor_end, "xcb_cursor_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_font_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_font_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_font_next
  -- ** 
  -- ** @param xcb_font_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_font_next (arg1 : access xcb_font_iterator_t);  -- /usr/include/xcb/xproto.h:4918
   pragma Import (C, xcb_font_next, "xcb_font_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_font_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_font_end
  -- ** 
  -- ** @param xcb_font_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_font_end (arg1 : xcb_font_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:4940
   pragma Import (C, xcb_font_end, "xcb_font_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_gcontext_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_gcontext_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_gcontext_next
  -- ** 
  -- ** @param xcb_gcontext_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_gcontext_next (arg1 : access xcb_gcontext_iterator_t);  -- /usr/include/xcb/xproto.h:4961
   pragma Import (C, xcb_gcontext_next, "xcb_gcontext_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_gcontext_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_gcontext_end
  -- ** 
  -- ** @param xcb_gcontext_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_gcontext_end (arg1 : xcb_gcontext_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:4983
   pragma Import (C, xcb_gcontext_end, "xcb_gcontext_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_colormap_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_colormap_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_colormap_next
  -- ** 
  -- ** @param xcb_colormap_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_colormap_next (arg1 : access xcb_colormap_iterator_t);  -- /usr/include/xcb/xproto.h:5004
   pragma Import (C, xcb_colormap_next, "xcb_colormap_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_colormap_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_colormap_end
  -- ** 
  -- ** @param xcb_colormap_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_colormap_end (arg1 : xcb_colormap_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:5026
   pragma Import (C, xcb_colormap_end, "xcb_colormap_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_atom_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_atom_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_atom_next
  -- ** 
  -- ** @param xcb_atom_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_atom_next (arg1 : access xcb_atom_iterator_t);  -- /usr/include/xcb/xproto.h:5047
   pragma Import (C, xcb_atom_next, "xcb_atom_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_atom_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_atom_end
  -- ** 
  -- ** @param xcb_atom_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_atom_end (arg1 : xcb_atom_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:5069
   pragma Import (C, xcb_atom_end, "xcb_atom_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_drawable_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_drawable_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_drawable_next
  -- ** 
  -- ** @param xcb_drawable_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_drawable_next (arg1 : access xcb_drawable_iterator_t);  -- /usr/include/xcb/xproto.h:5090
   pragma Import (C, xcb_drawable_next, "xcb_drawable_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_drawable_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_drawable_end
  -- ** 
  -- ** @param xcb_drawable_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_drawable_end (arg1 : xcb_drawable_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:5112
   pragma Import (C, xcb_drawable_end, "xcb_drawable_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_fontable_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_fontable_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_fontable_next
  -- ** 
  -- ** @param xcb_fontable_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_fontable_next (arg1 : access xcb_fontable_iterator_t);  -- /usr/include/xcb/xproto.h:5133
   pragma Import (C, xcb_fontable_next, "xcb_fontable_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_fontable_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_fontable_end
  -- ** 
  -- ** @param xcb_fontable_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_fontable_end (arg1 : xcb_fontable_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:5155
   pragma Import (C, xcb_fontable_end, "xcb_fontable_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_visualid_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_visualid_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_visualid_next
  -- ** 
  -- ** @param xcb_visualid_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_visualid_next (arg1 : access xcb_visualid_iterator_t);  -- /usr/include/xcb/xproto.h:5176
   pragma Import (C, xcb_visualid_next, "xcb_visualid_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_visualid_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_visualid_end
  -- ** 
  -- ** @param xcb_visualid_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_visualid_end (arg1 : xcb_visualid_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:5198
   pragma Import (C, xcb_visualid_end, "xcb_visualid_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_timestamp_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_timestamp_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_timestamp_next
  -- ** 
  -- ** @param xcb_timestamp_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_timestamp_next (arg1 : access xcb_timestamp_iterator_t);  -- /usr/include/xcb/xproto.h:5219
   pragma Import (C, xcb_timestamp_next, "xcb_timestamp_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_timestamp_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_timestamp_end
  -- ** 
  -- ** @param xcb_timestamp_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_timestamp_end (arg1 : xcb_timestamp_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:5241
   pragma Import (C, xcb_timestamp_end, "xcb_timestamp_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_keysym_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_keysym_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_keysym_next
  -- ** 
  -- ** @param xcb_keysym_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_keysym_next (arg1 : access xcb_keysym_iterator_t);  -- /usr/include/xcb/xproto.h:5262
   pragma Import (C, xcb_keysym_next, "xcb_keysym_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_keysym_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_keysym_end
  -- ** 
  -- ** @param xcb_keysym_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_keysym_end (arg1 : xcb_keysym_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:5284
   pragma Import (C, xcb_keysym_end, "xcb_keysym_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_keycode_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_keycode_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_keycode_next
  -- ** 
  -- ** @param xcb_keycode_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_keycode_next (arg1 : access xcb_keycode_iterator_t);  -- /usr/include/xcb/xproto.h:5305
   pragma Import (C, xcb_keycode_next, "xcb_keycode_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_keycode_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_keycode_end
  -- ** 
  -- ** @param xcb_keycode_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_keycode_end (arg1 : xcb_keycode_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:5327
   pragma Import (C, xcb_keycode_end, "xcb_keycode_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_button_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_button_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_button_next
  -- ** 
  -- ** @param xcb_button_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_button_next (arg1 : access xcb_button_iterator_t);  -- /usr/include/xcb/xproto.h:5348
   pragma Import (C, xcb_button_next, "xcb_button_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_button_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_button_end
  -- ** 
  -- ** @param xcb_button_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_button_end (arg1 : xcb_button_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:5370
   pragma Import (C, xcb_button_end, "xcb_button_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_point_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_point_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_point_next
  -- ** 
  -- ** @param xcb_point_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_point_next (arg1 : access xcb_point_iterator_t);  -- /usr/include/xcb/xproto.h:5391
   pragma Import (C, xcb_point_next, "xcb_point_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_point_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_point_end
  -- ** 
  -- ** @param xcb_point_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_point_end (arg1 : xcb_point_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:5413
   pragma Import (C, xcb_point_end, "xcb_point_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_rectangle_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_rectangle_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_rectangle_next
  -- ** 
  -- ** @param xcb_rectangle_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_rectangle_next (arg1 : access xcb_rectangle_iterator_t);  -- /usr/include/xcb/xproto.h:5434
   pragma Import (C, xcb_rectangle_next, "xcb_rectangle_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_rectangle_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_rectangle_end
  -- ** 
  -- ** @param xcb_rectangle_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_rectangle_end (arg1 : xcb_rectangle_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:5456
   pragma Import (C, xcb_rectangle_end, "xcb_rectangle_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_arc_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_arc_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_arc_next
  -- ** 
  -- ** @param xcb_arc_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_arc_next (arg1 : access xcb_arc_iterator_t);  -- /usr/include/xcb/xproto.h:5477
   pragma Import (C, xcb_arc_next, "xcb_arc_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_arc_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_arc_end
  -- ** 
  -- ** @param xcb_arc_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_arc_end (arg1 : xcb_arc_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:5499
   pragma Import (C, xcb_arc_end, "xcb_arc_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_format_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_format_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_format_next
  -- ** 
  -- ** @param xcb_format_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_format_next (arg1 : access xcb_format_iterator_t);  -- /usr/include/xcb/xproto.h:5520
   pragma Import (C, xcb_format_next, "xcb_format_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_format_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_format_end
  -- ** 
  -- ** @param xcb_format_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_format_end (arg1 : xcb_format_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:5542
   pragma Import (C, xcb_format_end, "xcb_format_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_visualtype_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_visualtype_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_visualtype_next
  -- ** 
  -- ** @param xcb_visualtype_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_visualtype_next (arg1 : access xcb_visualtype_iterator_t);  -- /usr/include/xcb/xproto.h:5563
   pragma Import (C, xcb_visualtype_next, "xcb_visualtype_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_visualtype_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_visualtype_end
  -- ** 
  -- ** @param xcb_visualtype_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_visualtype_end (arg1 : xcb_visualtype_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:5585
   pragma Import (C, xcb_visualtype_end, "xcb_visualtype_end");

  --*<  
   function xcb_depth_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:5588
   pragma Import (C, xcb_depth_sizeof, "xcb_depth_sizeof");

  --****************************************************************************
  -- **
  -- ** xcb_visualtype_t * xcb_depth_visuals
  -- ** 
  -- ** @param const xcb_depth_t *R
  -- ** @returns xcb_visualtype_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_depth_visuals (arg1 : System.Address) return access xcb_visualtype_t;  -- /usr/include/xcb/xproto.h:5601
   pragma Import (C, xcb_depth_visuals, "xcb_depth_visuals");

  --****************************************************************************
  -- **
  -- ** int xcb_depth_visuals_length
  -- ** 
  -- ** @param const xcb_depth_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_depth_visuals_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:5614
   pragma Import (C, xcb_depth_visuals_length, "xcb_depth_visuals_length");

  --****************************************************************************
  -- **
  -- ** xcb_visualtype_iterator_t xcb_depth_visuals_iterator
  -- ** 
  -- ** @param const xcb_depth_t *R
  -- ** @returns xcb_visualtype_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_depth_visuals_iterator (arg1 : System.Address) return xcb_visualtype_iterator_t;  -- /usr/include/xcb/xproto.h:5627
   pragma Import (C, xcb_depth_visuals_iterator, "xcb_depth_visuals_iterator");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_depth_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_depth_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_depth_next
  -- ** 
  -- ** @param xcb_depth_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_depth_next (arg1 : access xcb_depth_iterator_t);  -- /usr/include/xcb/xproto.h:5648
   pragma Import (C, xcb_depth_next, "xcb_depth_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_depth_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_depth_end
  -- ** 
  -- ** @param xcb_depth_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_depth_end (arg1 : xcb_depth_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:5670
   pragma Import (C, xcb_depth_end, "xcb_depth_end");

  --*<  
   function xcb_screen_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:5673
   pragma Import (C, xcb_screen_sizeof, "xcb_screen_sizeof");

  --****************************************************************************
  -- **
  -- ** int xcb_screen_allowed_depths_length
  -- ** 
  -- ** @param const xcb_screen_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_screen_allowed_depths_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:5686
   pragma Import (C, xcb_screen_allowed_depths_length, "xcb_screen_allowed_depths_length");

  --****************************************************************************
  -- **
  -- ** xcb_depth_iterator_t xcb_screen_allowed_depths_iterator
  -- ** 
  -- ** @param const xcb_screen_t *R
  -- ** @returns xcb_depth_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_screen_allowed_depths_iterator (arg1 : System.Address) return xcb_depth_iterator_t;  -- /usr/include/xcb/xproto.h:5699
   pragma Import (C, xcb_screen_allowed_depths_iterator, "xcb_screen_allowed_depths_iterator");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_screen_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_screen_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_screen_next
  -- ** 
  -- ** @param xcb_screen_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_screen_next (arg1 : access xcb_screen_iterator_t);  -- /usr/include/xcb/xproto.h:5720
   pragma Import (C, xcb_screen_next, "xcb_screen_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_screen_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_screen_end
  -- ** 
  -- ** @param xcb_screen_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_screen_end (arg1 : xcb_screen_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:5742
   pragma Import (C, xcb_screen_end, "xcb_screen_end");

  --*<  
   function xcb_setup_request_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:5745
   pragma Import (C, xcb_setup_request_sizeof, "xcb_setup_request_sizeof");

  --****************************************************************************
  -- **
  -- ** char * xcb_setup_request_authorization_protocol_name
  -- ** 
  -- ** @param const xcb_setup_request_t *R
  -- ** @returns char *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_setup_request_authorization_protocol_name (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/xproto.h:5758
   pragma Import (C, xcb_setup_request_authorization_protocol_name, "xcb_setup_request_authorization_protocol_name");

  --****************************************************************************
  -- **
  -- ** int xcb_setup_request_authorization_protocol_name_length
  -- ** 
  -- ** @param const xcb_setup_request_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_setup_request_authorization_protocol_name_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:5771
   pragma Import (C, xcb_setup_request_authorization_protocol_name_length, "xcb_setup_request_authorization_protocol_name_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_setup_request_authorization_protocol_name_end
  -- ** 
  -- ** @param const xcb_setup_request_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_setup_request_authorization_protocol_name_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:5784
   pragma Import (C, xcb_setup_request_authorization_protocol_name_end, "xcb_setup_request_authorization_protocol_name_end");

  --****************************************************************************
  -- **
  -- ** char * xcb_setup_request_authorization_protocol_data
  -- ** 
  -- ** @param const xcb_setup_request_t *R
  -- ** @returns char *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_setup_request_authorization_protocol_data (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/xproto.h:5797
   pragma Import (C, xcb_setup_request_authorization_protocol_data, "xcb_setup_request_authorization_protocol_data");

  --****************************************************************************
  -- **
  -- ** int xcb_setup_request_authorization_protocol_data_length
  -- ** 
  -- ** @param const xcb_setup_request_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_setup_request_authorization_protocol_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:5810
   pragma Import (C, xcb_setup_request_authorization_protocol_data_length, "xcb_setup_request_authorization_protocol_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_setup_request_authorization_protocol_data_end
  -- ** 
  -- ** @param const xcb_setup_request_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_setup_request_authorization_protocol_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:5823
   pragma Import (C, xcb_setup_request_authorization_protocol_data_end, "xcb_setup_request_authorization_protocol_data_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_setup_request_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_setup_request_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_setup_request_next
  -- ** 
  -- ** @param xcb_setup_request_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_setup_request_next (arg1 : access xcb_setup_request_iterator_t);  -- /usr/include/xcb/xproto.h:5844
   pragma Import (C, xcb_setup_request_next, "xcb_setup_request_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_setup_request_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_setup_request_end
  -- ** 
  -- ** @param xcb_setup_request_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_setup_request_end (arg1 : xcb_setup_request_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:5866
   pragma Import (C, xcb_setup_request_end, "xcb_setup_request_end");

  --*<  
   function xcb_setup_failed_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:5869
   pragma Import (C, xcb_setup_failed_sizeof, "xcb_setup_failed_sizeof");

  --****************************************************************************
  -- **
  -- ** char * xcb_setup_failed_reason
  -- ** 
  -- ** @param const xcb_setup_failed_t *R
  -- ** @returns char *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_setup_failed_reason (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/xproto.h:5882
   pragma Import (C, xcb_setup_failed_reason, "xcb_setup_failed_reason");

  --****************************************************************************
  -- **
  -- ** int xcb_setup_failed_reason_length
  -- ** 
  -- ** @param const xcb_setup_failed_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_setup_failed_reason_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:5895
   pragma Import (C, xcb_setup_failed_reason_length, "xcb_setup_failed_reason_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_setup_failed_reason_end
  -- ** 
  -- ** @param const xcb_setup_failed_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_setup_failed_reason_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:5908
   pragma Import (C, xcb_setup_failed_reason_end, "xcb_setup_failed_reason_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_setup_failed_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_setup_failed_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_setup_failed_next
  -- ** 
  -- ** @param xcb_setup_failed_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_setup_failed_next (arg1 : access xcb_setup_failed_iterator_t);  -- /usr/include/xcb/xproto.h:5929
   pragma Import (C, xcb_setup_failed_next, "xcb_setup_failed_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_setup_failed_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_setup_failed_end
  -- ** 
  -- ** @param xcb_setup_failed_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_setup_failed_end (arg1 : xcb_setup_failed_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:5951
   pragma Import (C, xcb_setup_failed_end, "xcb_setup_failed_end");

  --*<  
   function xcb_setup_authenticate_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:5954
   pragma Import (C, xcb_setup_authenticate_sizeof, "xcb_setup_authenticate_sizeof");

  --****************************************************************************
  -- **
  -- ** char * xcb_setup_authenticate_reason
  -- ** 
  -- ** @param const xcb_setup_authenticate_t *R
  -- ** @returns char *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_setup_authenticate_reason (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/xproto.h:5967
   pragma Import (C, xcb_setup_authenticate_reason, "xcb_setup_authenticate_reason");

  --****************************************************************************
  -- **
  -- ** int xcb_setup_authenticate_reason_length
  -- ** 
  -- ** @param const xcb_setup_authenticate_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_setup_authenticate_reason_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:5980
   pragma Import (C, xcb_setup_authenticate_reason_length, "xcb_setup_authenticate_reason_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_setup_authenticate_reason_end
  -- ** 
  -- ** @param const xcb_setup_authenticate_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_setup_authenticate_reason_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:5993
   pragma Import (C, xcb_setup_authenticate_reason_end, "xcb_setup_authenticate_reason_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_setup_authenticate_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_setup_authenticate_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_setup_authenticate_next
  -- ** 
  -- ** @param xcb_setup_authenticate_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_setup_authenticate_next (arg1 : access xcb_setup_authenticate_iterator_t);  -- /usr/include/xcb/xproto.h:6014
   pragma Import (C, xcb_setup_authenticate_next, "xcb_setup_authenticate_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_setup_authenticate_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_setup_authenticate_end
  -- ** 
  -- ** @param xcb_setup_authenticate_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_setup_authenticate_end (arg1 : xcb_setup_authenticate_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:6036
   pragma Import (C, xcb_setup_authenticate_end, "xcb_setup_authenticate_end");

  --*<  
   function xcb_setup_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:6039
   pragma Import (C, xcb_setup_sizeof, "xcb_setup_sizeof");

  --****************************************************************************
  -- **
  -- ** char * xcb_setup_vendor
  -- ** 
  -- ** @param const xcb_setup_t *R
  -- ** @returns char *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_setup_vendor (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/xproto.h:6052
   pragma Import (C, xcb_setup_vendor, "xcb_setup_vendor");

  --****************************************************************************
  -- **
  -- ** int xcb_setup_vendor_length
  -- ** 
  -- ** @param const xcb_setup_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_setup_vendor_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:6065
   pragma Import (C, xcb_setup_vendor_length, "xcb_setup_vendor_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_setup_vendor_end
  -- ** 
  -- ** @param const xcb_setup_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_setup_vendor_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:6078
   pragma Import (C, xcb_setup_vendor_end, "xcb_setup_vendor_end");

  --****************************************************************************
  -- **
  -- ** xcb_format_t * xcb_setup_pixmap_formats
  -- ** 
  -- ** @param const xcb_setup_t *R
  -- ** @returns xcb_format_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_setup_pixmap_formats (arg1 : System.Address) return access xcb_format_t;  -- /usr/include/xcb/xproto.h:6091
   pragma Import (C, xcb_setup_pixmap_formats, "xcb_setup_pixmap_formats");

  --****************************************************************************
  -- **
  -- ** int xcb_setup_pixmap_formats_length
  -- ** 
  -- ** @param const xcb_setup_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_setup_pixmap_formats_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:6104
   pragma Import (C, xcb_setup_pixmap_formats_length, "xcb_setup_pixmap_formats_length");

  --****************************************************************************
  -- **
  -- ** xcb_format_iterator_t xcb_setup_pixmap_formats_iterator
  -- ** 
  -- ** @param const xcb_setup_t *R
  -- ** @returns xcb_format_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_setup_pixmap_formats_iterator (arg1 : System.Address) return xcb_format_iterator_t;  -- /usr/include/xcb/xproto.h:6117
   pragma Import (C, xcb_setup_pixmap_formats_iterator, "xcb_setup_pixmap_formats_iterator");

  --****************************************************************************
  -- **
  -- ** int xcb_setup_roots_length
  -- ** 
  -- ** @param const xcb_setup_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_setup_roots_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:6130
   pragma Import (C, xcb_setup_roots_length, "xcb_setup_roots_length");

  --****************************************************************************
  -- **
  -- ** xcb_screen_iterator_t xcb_setup_roots_iterator
  -- ** 
  -- ** @param const xcb_setup_t *R
  -- ** @returns xcb_screen_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_setup_roots_iterator (arg1 : System.Address) return xcb_screen_iterator_t;  -- /usr/include/xcb/xproto.h:6143
   pragma Import (C, xcb_setup_roots_iterator, "xcb_setup_roots_iterator");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_setup_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_setup_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_setup_next
  -- ** 
  -- ** @param xcb_setup_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_setup_next (arg1 : access xcb_setup_iterator_t);  -- /usr/include/xcb/xproto.h:6164
   pragma Import (C, xcb_setup_next, "xcb_setup_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_setup_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_setup_end
  -- ** 
  -- ** @param xcb_setup_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_setup_end (arg1 : xcb_setup_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:6186
   pragma Import (C, xcb_setup_end, "xcb_setup_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_client_message_data_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_client_message_data_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_client_message_data_next
  -- ** 
  -- ** @param xcb_client_message_data_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_client_message_data_next (arg1 : access xcb_client_message_data_iterator_t);  -- /usr/include/xcb/xproto.h:6207
   pragma Import (C, xcb_client_message_data_next, "xcb_client_message_data_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_client_message_data_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_client_message_data_end
  -- ** 
  -- ** @param xcb_client_message_data_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_client_message_data_end (arg1 : xcb_client_message_data_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:6229
   pragma Import (C, xcb_client_message_data_end, "xcb_client_message_data_end");

  --*<  
   function xcb_create_window_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:6232
   pragma Import (C, xcb_create_window_sizeof, "xcb_create_window_sizeof");

  --*
  -- * @brief Creates a window
  -- *
  -- * @param c The connection
  -- * @param depth Specifies the new window's depth (TODO: what unit?).
  -- * \n
  -- * The special value `XCB_COPY_FROM_PARENT` means the depth is taken from the
  -- * \a parent window.
  -- * @param wid The ID with which you will refer to the new window, created by
  -- * `xcb_generate_id`.
  -- * @param parent The parent window of the new window.
  -- * @param x The X coordinate of the new window.
  -- * @param y The Y coordinate of the new window.
  -- * @param width The width of the new window.
  -- * @param height The height of the new window.
  -- * @param border_width TODO:
  -- * \n
  -- * Must be zero if the `class` is `InputOnly` or a `xcb_match_error_t` occurs.
  -- * @param _class A bitmask of #xcb_window_class_t values.
  -- * @param _class \n
  -- * @param visual Specifies the id for the new window's visual.
  -- * \n
  -- * The special value `XCB_COPY_FROM_PARENT` means the visual is taken from the
  -- * \a parent window.
  -- * @param value_mask A bitmask of #xcb_cw_t values.
  -- * @return A cookie
  -- *
  -- * Creates an unmapped window as child of the specified \a parent window. A
  -- * CreateNotify event will be generated. The new window is placed on top in the
  -- * stacking order with respect to siblings.
  -- * 
  -- * The coordinate system has the X axis horizontal and the Y axis vertical with
  -- * the origin [0, 0] at the upper-left corner. Coordinates are integral, in terms
  -- * of pixels, and coincide with pixel centers. Each window and pixmap has its own
  -- * coordinate system. For a window, the origin is inside the border at the inside,
  -- * upper-left corner.
  -- * 
  -- * The created window is not yet displayed (mapped), call `xcb_map_window` to
  -- * display it.
  -- * 
  -- * The created window will initially use the same cursor as its parent.
  -- * 
  -- * This form can be used only if the request will not cause
  -- * a reply to be generated. Any returned error will be
  -- * saved for handling by xcb_request_check().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_create_window_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           depth
  -- ** @param xcb_window_t      wid
  -- ** @param xcb_window_t      parent
  -- ** @param int16_t           x
  -- ** @param int16_t           y
  -- ** @param uint16_t          width
  -- ** @param uint16_t          height
  -- ** @param uint16_t          border_width
  -- ** @param uint16_t          _class
  -- ** @param xcb_visualid_t    visual
  -- ** @param uint32_t          value_mask
  -- ** @param const uint32_t   *value_list
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_create_window_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_window_t;
      arg4 : xcb_window_t;
      arg5 : sys_types_h.int16_t;
      arg6 : sys_types_h.int16_t;
      arg7 : stdint_h.uint16_t;
      arg8 : stdint_h.uint16_t;
      arg9 : stdint_h.uint16_t;
      arg10 : stdint_h.uint16_t;
      arg11 : xcb_visualid_t;
      arg12 : stdint_h.uint32_t;
      arg13 : access stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:6303
   pragma Import (C, xcb_create_window_checked, "xcb_create_window_checked");

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
  --*
  -- * @brief Creates a window
  -- *
  -- * @param c The connection
  -- * @param depth Specifies the new window's depth (TODO: what unit?).
  -- * \n
  -- * The special value `XCB_COPY_FROM_PARENT` means the depth is taken from the
  -- * \a parent window.
  -- * @param wid The ID with which you will refer to the new window, created by
  -- * `xcb_generate_id`.
  -- * @param parent The parent window of the new window.
  -- * @param x The X coordinate of the new window.
  -- * @param y The Y coordinate of the new window.
  -- * @param width The width of the new window.
  -- * @param height The height of the new window.
  -- * @param border_width TODO:
  -- * \n
  -- * Must be zero if the `class` is `InputOnly` or a `xcb_match_error_t` occurs.
  -- * @param _class A bitmask of #xcb_window_class_t values.
  -- * @param _class \n
  -- * @param visual Specifies the id for the new window's visual.
  -- * \n
  -- * The special value `XCB_COPY_FROM_PARENT` means the visual is taken from the
  -- * \a parent window.
  -- * @param value_mask A bitmask of #xcb_cw_t values.
  -- * @return A cookie
  -- *
  -- * Creates an unmapped window as child of the specified \a parent window. A
  -- * CreateNotify event will be generated. The new window is placed on top in the
  -- * stacking order with respect to siblings.
  -- * 
  -- * The coordinate system has the X axis horizontal and the Y axis vertical with
  -- * the origin [0, 0] at the upper-left corner. Coordinates are integral, in terms
  -- * of pixels, and coincide with pixel centers. Each window and pixmap has its own
  -- * coordinate system. For a window, the origin is inside the border at the inside,
  -- * upper-left corner.
  -- * 
  -- * The created window is not yet displayed (mapped), call `xcb_map_window` to
  -- * display it.
  -- * 
  -- * The created window will initially use the same cursor as its parent.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_create_window
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           depth
  -- ** @param xcb_window_t      wid
  -- ** @param xcb_window_t      parent
  -- ** @param int16_t           x
  -- ** @param int16_t           y
  -- ** @param uint16_t          width
  -- ** @param uint16_t          height
  -- ** @param uint16_t          border_width
  -- ** @param uint16_t          _class
  -- ** @param xcb_visualid_t    visual
  -- ** @param uint32_t          value_mask
  -- ** @param const uint32_t   *value_list
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_create_window
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_window_t;
      arg4 : xcb_window_t;
      arg5 : sys_types_h.int16_t;
      arg6 : sys_types_h.int16_t;
      arg7 : stdint_h.uint16_t;
      arg8 : stdint_h.uint16_t;
      arg9 : stdint_h.uint16_t;
      arg10 : stdint_h.uint16_t;
      arg11 : xcb_visualid_t;
      arg12 : stdint_h.uint32_t;
      arg13 : access stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:6383
   pragma Import (C, xcb_create_window, "xcb_create_window");

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
   function xcb_change_window_attributes_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:6398
   pragma Import (C, xcb_change_window_attributes_sizeof, "xcb_change_window_attributes_sizeof");

  --*
  -- * @brief change window attributes
  -- *
  -- * @param c The connection
  -- * @param window The window to change.
  -- * @param value_mask A bitmask of #xcb_cw_t values.
  -- * @param value_mask \n
  -- * @param value_list Values for each of the attributes specified in the bitmask \a value_mask. The
  -- * order has to correspond to the order of possible \a value_mask bits. See the
  -- * example.
  -- * @return A cookie
  -- *
  -- * Changes the attributes specified by \a value_mask for the specified \a window.
  -- * 
  -- * This form can be used only if the request will not cause
  -- * a reply to be generated. Any returned error will be
  -- * saved for handling by xcb_request_check().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_change_window_attributes_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @param uint32_t          value_mask
  -- ** @param const uint32_t   *value_list
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_change_window_attributes_checked
     (arg1 : System.Address;
      arg2 : xcb_window_t;
      arg3 : stdint_h.uint32_t;
      arg4 : access stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:6432
   pragma Import (C, xcb_change_window_attributes_checked, "xcb_change_window_attributes_checked");

  --*<  
  --*<  
  --*<  
  --*
  -- * @brief change window attributes
  -- *
  -- * @param c The connection
  -- * @param window The window to change.
  -- * @param value_mask A bitmask of #xcb_cw_t values.
  -- * @param value_mask \n
  -- * @param value_list Values for each of the attributes specified in the bitmask \a value_mask. The
  -- * order has to correspond to the order of possible \a value_mask bits. See the
  -- * example.
  -- * @return A cookie
  -- *
  -- * Changes the attributes specified by \a value_mask for the specified \a window.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_change_window_attributes
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @param uint32_t          value_mask
  -- ** @param const uint32_t   *value_list
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_change_window_attributes
     (arg1 : System.Address;
      arg2 : xcb_window_t;
      arg3 : stdint_h.uint32_t;
      arg4 : access stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:6466
   pragma Import (C, xcb_change_window_attributes, "xcb_change_window_attributes");

  --*<  
  --*<  
  --*<  
  --*
  -- * @brief Gets window attributes
  -- *
  -- * @param c The connection
  -- * @param window The window to get the attributes from.
  -- * @return A cookie
  -- *
  -- * Gets the current attributes for the specified \a window.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_get_window_attributes_cookie_t xcb_get_window_attributes
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_get_window_attributes_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_window_attributes (arg1 : System.Address; arg2 : xcb_window_t) return xcb_get_window_attributes_cookie_t;  -- /usr/include/xcb/xproto.h:6493
   pragma Import (C, xcb_get_window_attributes, "xcb_get_window_attributes");

  --*<  
  --*
  -- * @brief Gets window attributes
  -- *
  -- * @param c The connection
  -- * @param window The window to get the attributes from.
  -- * @return A cookie
  -- *
  -- * Gets the current attributes for the specified \a window.
  -- * 
  -- * This form can be used only if the request will cause
  -- * a reply to be generated. Any returned error will be
  -- * placed in the event queue.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_get_window_attributes_cookie_t xcb_get_window_attributes_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_get_window_attributes_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_window_attributes_unchecked (arg1 : System.Address; arg2 : xcb_window_t) return xcb_get_window_attributes_cookie_t;  -- /usr/include/xcb/xproto.h:6521
   pragma Import (C, xcb_get_window_attributes_unchecked, "xcb_get_window_attributes_unchecked");

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
  -- * xcb_get_window_attributes_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_get_window_attributes_reply_t * xcb_get_window_attributes_reply
  -- ** 
  -- ** @param xcb_connection_t                    *c
  -- ** @param xcb_get_window_attributes_cookie_t   cookie
  -- ** @param xcb_generic_error_t                **e
  -- ** @returns xcb_get_window_attributes_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_window_attributes_reply
     (arg1 : System.Address;
      arg2 : xcb_get_window_attributes_cookie_t;
      arg3 : System.Address) return access xcb_get_window_attributes_reply_t;  -- /usr/include/xcb/xproto.h:6551
   pragma Import (C, xcb_get_window_attributes_reply, "xcb_get_window_attributes_reply");

  --*<  
  --*<  
  --*
  -- * @brief Destroys a window
  -- *
  -- * @param c The connection
  -- * @param window The window to destroy.
  -- * @return A cookie
  -- *
  -- * Destroys the specified window and all of its subwindows. A DestroyNotify event
  -- * is generated for each destroyed window (a DestroyNotify event is first generated
  -- * for any given window's inferiors). If the window was mapped, it will be
  -- * automatically unmapped before destroying.
  -- * 
  -- * Calling DestroyWindow on the root window will do nothing.
  -- * 
  -- * This form can be used only if the request will not cause
  -- * a reply to be generated. Any returned error will be
  -- * saved for handling by xcb_request_check().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_destroy_window_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_destroy_window_checked (arg1 : System.Address; arg2 : xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:6585
   pragma Import (C, xcb_destroy_window_checked, "xcb_destroy_window_checked");

  --*<  
  --*
  -- * @brief Destroys a window
  -- *
  -- * @param c The connection
  -- * @param window The window to destroy.
  -- * @return A cookie
  -- *
  -- * Destroys the specified window and all of its subwindows. A DestroyNotify event
  -- * is generated for each destroyed window (a DestroyNotify event is first generated
  -- * for any given window's inferiors). If the window was mapped, it will be
  -- * automatically unmapped before destroying.
  -- * 
  -- * Calling DestroyWindow on the root window will do nothing.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_destroy_window
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_destroy_window (arg1 : System.Address; arg2 : xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:6615
   pragma Import (C, xcb_destroy_window, "xcb_destroy_window");

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
  -- ** xcb_void_cookie_t xcb_destroy_subwindows_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_destroy_subwindows_checked (arg1 : System.Address; arg2 : xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:6641
   pragma Import (C, xcb_destroy_subwindows_checked, "xcb_destroy_subwindows_checked");

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
  -- ** xcb_void_cookie_t xcb_destroy_subwindows
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_destroy_subwindows (arg1 : System.Address; arg2 : xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:6664
   pragma Import (C, xcb_destroy_subwindows, "xcb_destroy_subwindows");

  --*<  
  --*
  -- * @brief Changes a client's save set
  -- *
  -- * @param c The connection
  -- * @param mode A bitmask of #xcb_set_mode_t values.
  -- * @param mode Insert to add the specified window to the save set or Delete to delete it from the save set.
  -- * @param window The window to add or delete to/from your save set.
  -- * @return A cookie
  -- *
  -- * TODO: explain what the save set is for.
  -- * 
  -- * This function either adds or removes the specified window to the client's (your
  -- * application's) save set.
  -- * 
  -- * This form can be used only if the request will not cause
  -- * a reply to be generated. Any returned error will be
  -- * saved for handling by xcb_request_check().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_change_save_set_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           mode
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_change_save_set_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:6698
   pragma Import (C, xcb_change_save_set_checked, "xcb_change_save_set_checked");

  --*<  
  --*<  
  --*
  -- * @brief Changes a client's save set
  -- *
  -- * @param c The connection
  -- * @param mode A bitmask of #xcb_set_mode_t values.
  -- * @param mode Insert to add the specified window to the save set or Delete to delete it from the save set.
  -- * @param window The window to add or delete to/from your save set.
  -- * @return A cookie
  -- *
  -- * TODO: explain what the save set is for.
  -- * 
  -- * This function either adds or removes the specified window to the client's (your
  -- * application's) save set.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_change_save_set
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           mode
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_change_save_set
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:6730
   pragma Import (C, xcb_change_save_set, "xcb_change_save_set");

  --*<  
  --*<  
  --*
  -- * @brief Reparents a window
  -- *
  -- * @param c The connection
  -- * @param window The window to reparent.
  -- * @param parent The new parent of the window.
  -- * @param x The X position of the window within its new parent.
  -- * @param y The Y position of the window within its new parent.
  -- * @return A cookie
  -- *
  -- * Makes the specified window a child of the specified parent window. If the
  -- * window is mapped, it will automatically be unmapped before reparenting and
  -- * re-mapped after reparenting. The window is placed in the stacking order on top
  -- * with respect to sibling windows.
  -- * 
  -- * After reparenting, a ReparentNotify event is generated.
  -- * 
  -- * This form can be used only if the request will not cause
  -- * a reply to be generated. Any returned error will be
  -- * saved for handling by xcb_request_check().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_reparent_window_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @param xcb_window_t      parent
  -- ** @param int16_t           x
  -- ** @param int16_t           y
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_reparent_window_checked
     (arg1 : System.Address;
      arg2 : xcb_window_t;
      arg3 : xcb_window_t;
      arg4 : sys_types_h.int16_t;
      arg5 : sys_types_h.int16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:6770
   pragma Import (C, xcb_reparent_window_checked, "xcb_reparent_window_checked");

  --*<  
  --*<  
  --*<  
  --*<  
  --*
  -- * @brief Reparents a window
  -- *
  -- * @param c The connection
  -- * @param window The window to reparent.
  -- * @param parent The new parent of the window.
  -- * @param x The X position of the window within its new parent.
  -- * @param y The Y position of the window within its new parent.
  -- * @return A cookie
  -- *
  -- * Makes the specified window a child of the specified parent window. If the
  -- * window is mapped, it will automatically be unmapped before reparenting and
  -- * re-mapped after reparenting. The window is placed in the stacking order on top
  -- * with respect to sibling windows.
  -- * 
  -- * After reparenting, a ReparentNotify event is generated.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_reparent_window
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @param xcb_window_t      parent
  -- ** @param int16_t           x
  -- ** @param int16_t           y
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_reparent_window
     (arg1 : System.Address;
      arg2 : xcb_window_t;
      arg3 : xcb_window_t;
      arg4 : sys_types_h.int16_t;
      arg5 : sys_types_h.int16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:6809
   pragma Import (C, xcb_reparent_window, "xcb_reparent_window");

  --*<  
  --*<  
  --*<  
  --*<  
  --*
  -- * @brief Makes a window visible
  -- *
  -- * @param c The connection
  -- * @param window The window to make visible.
  -- * @return A cookie
  -- *
  -- * Maps the specified window. This means making the window visible (as long as its
  -- * parent is visible).
  -- * 
  -- * This MapWindow request will be translated to a MapRequest request if a window
  -- * manager is running. The window manager then decides to either map the window or
  -- * not. Set the override-redirect window attribute to true if you want to bypass
  -- * this mechanism.
  -- * 
  -- * If the window manager decides to map the window (or if no window manager is
  -- * running), a MapNotify event is generated.
  -- * 
  -- * If the window becomes viewable and no earlier contents for it are remembered,
  -- * the X server tiles the window with its background. If the window's background
  -- * is undefined, the existing screen contents are not altered, and the X server
  -- * generates zero or more Expose events.
  -- * 
  -- * If the window type is InputOutput, an Expose event will be generated when the
  -- * window becomes visible. The normal response to an Expose event should be to
  -- * repaint the window.
  -- * 
  -- * This form can be used only if the request will not cause
  -- * a reply to be generated. Any returned error will be
  -- * saved for handling by xcb_request_check().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_map_window_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_map_window_checked (arg1 : System.Address; arg2 : xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:6858
   pragma Import (C, xcb_map_window_checked, "xcb_map_window_checked");

  --*<  
  --*
  -- * @brief Makes a window visible
  -- *
  -- * @param c The connection
  -- * @param window The window to make visible.
  -- * @return A cookie
  -- *
  -- * Maps the specified window. This means making the window visible (as long as its
  -- * parent is visible).
  -- * 
  -- * This MapWindow request will be translated to a MapRequest request if a window
  -- * manager is running. The window manager then decides to either map the window or
  -- * not. Set the override-redirect window attribute to true if you want to bypass
  -- * this mechanism.
  -- * 
  -- * If the window manager decides to map the window (or if no window manager is
  -- * running), a MapNotify event is generated.
  -- * 
  -- * If the window becomes viewable and no earlier contents for it are remembered,
  -- * the X server tiles the window with its background. If the window's background
  -- * is undefined, the existing screen contents are not altered, and the X server
  -- * generates zero or more Expose events.
  -- * 
  -- * If the window type is InputOutput, an Expose event will be generated when the
  -- * window becomes visible. The normal response to an Expose event should be to
  -- * repaint the window.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_map_window
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_map_window (arg1 : System.Address; arg2 : xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:6901
   pragma Import (C, xcb_map_window, "xcb_map_window");

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
  -- ** xcb_void_cookie_t xcb_map_subwindows_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_map_subwindows_checked (arg1 : System.Address; arg2 : xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:6927
   pragma Import (C, xcb_map_subwindows_checked, "xcb_map_subwindows_checked");

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
  -- ** xcb_void_cookie_t xcb_map_subwindows
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_map_subwindows (arg1 : System.Address; arg2 : xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:6950
   pragma Import (C, xcb_map_subwindows, "xcb_map_subwindows");

  --*<  
  --*
  -- * @brief Makes a window invisible
  -- *
  -- * @param c The connection
  -- * @param window The window to make invisible.
  -- * @return A cookie
  -- *
  -- * Unmaps the specified window. This means making the window invisible (and all
  -- * its child windows).
  -- * 
  -- * Unmapping a window leads to the `UnmapNotify` event being generated. Also,
  -- * `Expose` events are generated for formerly obscured windows.
  -- * 
  -- * This form can be used only if the request will not cause
  -- * a reply to be generated. Any returned error will be
  -- * saved for handling by xcb_request_check().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_unmap_window_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_unmap_window_checked (arg1 : System.Address; arg2 : xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:6982
   pragma Import (C, xcb_unmap_window_checked, "xcb_unmap_window_checked");

  --*<  
  --*
  -- * @brief Makes a window invisible
  -- *
  -- * @param c The connection
  -- * @param window The window to make invisible.
  -- * @return A cookie
  -- *
  -- * Unmaps the specified window. This means making the window invisible (and all
  -- * its child windows).
  -- * 
  -- * Unmapping a window leads to the `UnmapNotify` event being generated. Also,
  -- * `Expose` events are generated for formerly obscured windows.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_unmap_window
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_unmap_window (arg1 : System.Address; arg2 : xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:7011
   pragma Import (C, xcb_unmap_window, "xcb_unmap_window");

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
  -- ** xcb_void_cookie_t xcb_unmap_subwindows_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_unmap_subwindows_checked (arg1 : System.Address; arg2 : xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:7037
   pragma Import (C, xcb_unmap_subwindows_checked, "xcb_unmap_subwindows_checked");

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
  -- ** xcb_void_cookie_t xcb_unmap_subwindows
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_unmap_subwindows (arg1 : System.Address; arg2 : xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:7060
   pragma Import (C, xcb_unmap_subwindows, "xcb_unmap_subwindows");

  --*<  
  --*<  
   function xcb_configure_window_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:7064
   pragma Import (C, xcb_configure_window_sizeof, "xcb_configure_window_sizeof");

  --*
  -- * @brief Configures window attributes
  -- *
  -- * @param c The connection
  -- * @param window The window to configure.
  -- * @param value_mask Bitmask of attributes to change.
  -- * @param value_list New values, corresponding to the attributes in value_mask. The order has to
  -- * correspond to the order of possible \a value_mask bits. See the example.
  -- * @return A cookie
  -- *
  -- * Configures a window's size, position, border width and stacking order.
  -- * 
  -- * This form can be used only if the request will not cause
  -- * a reply to be generated. Any returned error will be
  -- * saved for handling by xcb_request_check().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_configure_window_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @param uint16_t          value_mask
  -- ** @param const uint32_t   *value_list
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_configure_window_checked
     (arg1 : System.Address;
      arg2 : xcb_window_t;
      arg3 : stdint_h.uint16_t;
      arg4 : access stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:7096
   pragma Import (C, xcb_configure_window_checked, "xcb_configure_window_checked");

  --*<  
  --*<  
  --*<  
  --*
  -- * @brief Configures window attributes
  -- *
  -- * @param c The connection
  -- * @param window The window to configure.
  -- * @param value_mask Bitmask of attributes to change.
  -- * @param value_list New values, corresponding to the attributes in value_mask. The order has to
  -- * correspond to the order of possible \a value_mask bits. See the example.
  -- * @return A cookie
  -- *
  -- * Configures a window's size, position, border width and stacking order.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_configure_window
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @param uint16_t          value_mask
  -- ** @param const uint32_t   *value_list
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_configure_window
     (arg1 : System.Address;
      arg2 : xcb_window_t;
      arg3 : stdint_h.uint16_t;
      arg4 : access stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:7128
   pragma Import (C, xcb_configure_window, "xcb_configure_window");

  --*<  
  --*<  
  --*<  
  --*
  -- * @brief Change window stacking order
  -- *
  -- * @param c The connection
  -- * @param direction A bitmask of #xcb_circulate_t values.
  -- * @param direction \n
  -- * @param window The window to raise/lower (depending on \a direction).
  -- * @return A cookie
  -- *
  -- * If \a direction is `XCB_CIRCULATE_RAISE_LOWEST`, the lowest mapped child (if
  -- * any) will be raised to the top of the stack.
  -- * 
  -- * If \a direction is `XCB_CIRCULATE_LOWER_HIGHEST`, the highest mapped child will
  -- * be lowered to the bottom of the stack.
  -- * 
  -- * This form can be used only if the request will not cause
  -- * a reply to be generated. Any returned error will be
  -- * saved for handling by xcb_request_check().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_circulate_window_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           direction
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_circulate_window_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:7165
   pragma Import (C, xcb_circulate_window_checked, "xcb_circulate_window_checked");

  --*<  
  --*<  
  --*
  -- * @brief Change window stacking order
  -- *
  -- * @param c The connection
  -- * @param direction A bitmask of #xcb_circulate_t values.
  -- * @param direction \n
  -- * @param window The window to raise/lower (depending on \a direction).
  -- * @return A cookie
  -- *
  -- * If \a direction is `XCB_CIRCULATE_RAISE_LOWEST`, the lowest mapped child (if
  -- * any) will be raised to the top of the stack.
  -- * 
  -- * If \a direction is `XCB_CIRCULATE_LOWER_HIGHEST`, the highest mapped child will
  -- * be lowered to the bottom of the stack.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_circulate_window
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           direction
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_circulate_window
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:7198
   pragma Import (C, xcb_circulate_window, "xcb_circulate_window");

  --*<  
  --*<  
  --*
  -- * @brief Get current window geometry
  -- *
  -- * @param c The connection
  -- * @param drawable The drawable (`Window` or `Pixmap`) of which the geometry will be received.
  -- * @return A cookie
  -- *
  -- * Gets the current geometry of the specified drawable (either `Window` or `Pixmap`).
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_get_geometry_cookie_t xcb_get_geometry
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    drawable
  -- ** @returns xcb_get_geometry_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_geometry (arg1 : System.Address; arg2 : xcb_drawable_t) return xcb_get_geometry_cookie_t;  -- /usr/include/xcb/xproto.h:7224
   pragma Import (C, xcb_get_geometry, "xcb_get_geometry");

  --*<  
  --*
  -- * @brief Get current window geometry
  -- *
  -- * @param c The connection
  -- * @param drawable The drawable (`Window` or `Pixmap`) of which the geometry will be received.
  -- * @return A cookie
  -- *
  -- * Gets the current geometry of the specified drawable (either `Window` or `Pixmap`).
  -- * 
  -- * This form can be used only if the request will cause
  -- * a reply to be generated. Any returned error will be
  -- * placed in the event queue.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_get_geometry_cookie_t xcb_get_geometry_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    drawable
  -- ** @returns xcb_get_geometry_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_geometry_unchecked (arg1 : System.Address; arg2 : xcb_drawable_t) return xcb_get_geometry_cookie_t;  -- /usr/include/xcb/xproto.h:7252
   pragma Import (C, xcb_get_geometry_unchecked, "xcb_get_geometry_unchecked");

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
  -- * xcb_get_geometry_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_get_geometry_reply_t * xcb_get_geometry_reply
  -- ** 
  -- ** @param xcb_connection_t           *c
  -- ** @param xcb_get_geometry_cookie_t   cookie
  -- ** @param xcb_generic_error_t       **e
  -- ** @returns xcb_get_geometry_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_geometry_reply
     (arg1 : System.Address;
      arg2 : xcb_get_geometry_cookie_t;
      arg3 : System.Address) return access xcb_get_geometry_reply_t;  -- /usr/include/xcb/xproto.h:7282
   pragma Import (C, xcb_get_geometry_reply, "xcb_get_geometry_reply");

  --*<  
  --*<  
  --*<  
   function xcb_query_tree_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:7287
   pragma Import (C, xcb_query_tree_sizeof, "xcb_query_tree_sizeof");

  --*
  -- * @brief query the window tree
  -- *
  -- * @param c The connection
  -- * @param window The \a window to query.
  -- * @return A cookie
  -- *
  -- * Gets the root window ID, parent window ID and list of children windows for the
  -- * specified \a window. The children are listed in bottom-to-top stacking order.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_query_tree_cookie_t xcb_query_tree
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_query_tree_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_query_tree (arg1 : System.Address; arg2 : xcb_window_t) return xcb_query_tree_cookie_t;  -- /usr/include/xcb/xproto.h:7312
   pragma Import (C, xcb_query_tree, "xcb_query_tree");

  --*<  
  --*
  -- * @brief query the window tree
  -- *
  -- * @param c The connection
  -- * @param window The \a window to query.
  -- * @return A cookie
  -- *
  -- * Gets the root window ID, parent window ID and list of children windows for the
  -- * specified \a window. The children are listed in bottom-to-top stacking order.
  -- * 
  -- * This form can be used only if the request will cause
  -- * a reply to be generated. Any returned error will be
  -- * placed in the event queue.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_query_tree_cookie_t xcb_query_tree_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_query_tree_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_query_tree_unchecked (arg1 : System.Address; arg2 : xcb_window_t) return xcb_query_tree_cookie_t;  -- /usr/include/xcb/xproto.h:7341
   pragma Import (C, xcb_query_tree_unchecked, "xcb_query_tree_unchecked");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_window_t * xcb_query_tree_children
  -- ** 
  -- ** @param const xcb_query_tree_reply_t *R
  -- ** @returns xcb_window_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_query_tree_children (arg1 : System.Address) return access xcb_window_t;  -- /usr/include/xcb/xproto.h:7355
   pragma Import (C, xcb_query_tree_children, "xcb_query_tree_children");

  --****************************************************************************
  -- **
  -- ** int xcb_query_tree_children_length
  -- ** 
  -- ** @param const xcb_query_tree_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_query_tree_children_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:7368
   pragma Import (C, xcb_query_tree_children_length, "xcb_query_tree_children_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_query_tree_children_end
  -- ** 
  -- ** @param const xcb_query_tree_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_query_tree_children_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:7381
   pragma Import (C, xcb_query_tree_children_end, "xcb_query_tree_children_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_query_tree_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_query_tree_reply_t * xcb_query_tree_reply
  -- ** 
  -- ** @param xcb_connection_t         *c
  -- ** @param xcb_query_tree_cookie_t   cookie
  -- ** @param xcb_generic_error_t     **e
  -- ** @returns xcb_query_tree_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_query_tree_reply
     (arg1 : System.Address;
      arg2 : xcb_query_tree_cookie_t;
      arg3 : System.Address) return access xcb_query_tree_reply_t;  -- /usr/include/xcb/xproto.h:7410
   pragma Import (C, xcb_query_tree_reply, "xcb_query_tree_reply");

  --*<  
  --*<  
  --*<  
   function xcb_intern_atom_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:7415
   pragma Import (C, xcb_intern_atom_sizeof, "xcb_intern_atom_sizeof");

  --*
  -- * @brief Get atom identifier by name
  -- *
  -- * @param c The connection
  -- * @param only_if_exists Return a valid atom id only if the atom already exists.
  -- * @param name_len The length of the following \a name.
  -- * @param name The name of the atom.
  -- * @return A cookie
  -- *
  -- * Retrieves the identifier (xcb_atom_t TODO) for the atom with the specified
  -- * name. Atoms are used in protocols like EWMH, for example to store window titles
  -- * (`_NET_WM_NAME` atom) as property of a window.
  -- * 
  -- * If \a only_if_exists is 0, the atom will be created if it does not already exist.
  -- * If \a only_if_exists is 1, `XCB_ATOM_NONE` will be returned if the atom does
  -- * not yet exist.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_intern_atom_cookie_t xcb_intern_atom
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           only_if_exists
  -- ** @param uint16_t          name_len
  -- ** @param const char       *name
  -- ** @returns xcb_intern_atom_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_intern_atom
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint16_t;
      arg4 : Interfaces.C.Strings.chars_ptr) return xcb_intern_atom_cookie_t;  -- /usr/include/xcb/xproto.h:7449
   pragma Import (C, xcb_intern_atom, "xcb_intern_atom");

  --*<  
  --*<  
  --*<  
  --*
  -- * @brief Get atom identifier by name
  -- *
  -- * @param c The connection
  -- * @param only_if_exists Return a valid atom id only if the atom already exists.
  -- * @param name_len The length of the following \a name.
  -- * @param name The name of the atom.
  -- * @return A cookie
  -- *
  -- * Retrieves the identifier (xcb_atom_t TODO) for the atom with the specified
  -- * name. Atoms are used in protocols like EWMH, for example to store window titles
  -- * (`_NET_WM_NAME` atom) as property of a window.
  -- * 
  -- * If \a only_if_exists is 0, the atom will be created if it does not already exist.
  -- * If \a only_if_exists is 1, `XCB_ATOM_NONE` will be returned if the atom does
  -- * not yet exist.
  -- * 
  -- * This form can be used only if the request will cause
  -- * a reply to be generated. Any returned error will be
  -- * placed in the event queue.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_intern_atom_cookie_t xcb_intern_atom_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           only_if_exists
  -- ** @param uint16_t          name_len
  -- ** @param const char       *name
  -- ** @returns xcb_intern_atom_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_intern_atom_unchecked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint16_t;
      arg4 : Interfaces.C.Strings.chars_ptr) return xcb_intern_atom_cookie_t;  -- /usr/include/xcb/xproto.h:7489
   pragma Import (C, xcb_intern_atom_unchecked, "xcb_intern_atom_unchecked");

  --*<  
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
  -- * xcb_intern_atom_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_intern_atom_reply_t * xcb_intern_atom_reply
  -- ** 
  -- ** @param xcb_connection_t          *c
  -- ** @param xcb_intern_atom_cookie_t   cookie
  -- ** @param xcb_generic_error_t      **e
  -- ** @returns xcb_intern_atom_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_intern_atom_reply
     (arg1 : System.Address;
      arg2 : xcb_intern_atom_cookie_t;
      arg3 : System.Address) return access xcb_intern_atom_reply_t;  -- /usr/include/xcb/xproto.h:7521
   pragma Import (C, xcb_intern_atom_reply, "xcb_intern_atom_reply");

  --*<  
  --*<  
  --*<  
   function xcb_get_atom_name_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:7526
   pragma Import (C, xcb_get_atom_name_sizeof, "xcb_get_atom_name_sizeof");

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
  -- ** xcb_get_atom_name_cookie_t xcb_get_atom_name
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_atom_t        atom
  -- ** @returns xcb_get_atom_name_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_atom_name (arg1 : System.Address; arg2 : xcb_atom_t) return xcb_get_atom_name_cookie_t;  -- /usr/include/xcb/xproto.h:7548
   pragma Import (C, xcb_get_atom_name, "xcb_get_atom_name");

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
  -- ** xcb_get_atom_name_cookie_t xcb_get_atom_name_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_atom_t        atom
  -- ** @returns xcb_get_atom_name_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_atom_name_unchecked (arg1 : System.Address; arg2 : xcb_atom_t) return xcb_get_atom_name_cookie_t;  -- /usr/include/xcb/xproto.h:7574
   pragma Import (C, xcb_get_atom_name_unchecked, "xcb_get_atom_name_unchecked");

  --*<  
  --****************************************************************************
  -- **
  -- ** char * xcb_get_atom_name_name
  -- ** 
  -- ** @param const xcb_get_atom_name_reply_t *R
  -- ** @returns char *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_atom_name_name (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/xproto.h:7588
   pragma Import (C, xcb_get_atom_name_name, "xcb_get_atom_name_name");

  --****************************************************************************
  -- **
  -- ** int xcb_get_atom_name_name_length
  -- ** 
  -- ** @param const xcb_get_atom_name_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_atom_name_name_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:7601
   pragma Import (C, xcb_get_atom_name_name_length, "xcb_get_atom_name_name_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_get_atom_name_name_end
  -- ** 
  -- ** @param const xcb_get_atom_name_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_atom_name_name_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:7614
   pragma Import (C, xcb_get_atom_name_name_end, "xcb_get_atom_name_name_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_get_atom_name_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_get_atom_name_reply_t * xcb_get_atom_name_reply
  -- ** 
  -- ** @param xcb_connection_t            *c
  -- ** @param xcb_get_atom_name_cookie_t   cookie
  -- ** @param xcb_generic_error_t        **e
  -- ** @returns xcb_get_atom_name_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_atom_name_reply
     (arg1 : System.Address;
      arg2 : xcb_get_atom_name_cookie_t;
      arg3 : System.Address) return access xcb_get_atom_name_reply_t;  -- /usr/include/xcb/xproto.h:7643
   pragma Import (C, xcb_get_atom_name_reply, "xcb_get_atom_name_reply");

  --*<  
  --*<  
  --*<  
   function xcb_change_property_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:7648
   pragma Import (C, xcb_change_property_sizeof, "xcb_change_property_sizeof");

  --*
  -- * @brief Changes a window property
  -- *
  -- * @param c The connection
  -- * @param mode A bitmask of #xcb_prop_mode_t values.
  -- * @param mode \n
  -- * @param window The window whose property you want to change.
  -- * @param property The property you want to change (an atom).
  -- * @param type The type of the property you want to change (an atom).
  -- * @param format Specifies whether the data should be viewed as a list of 8-bit, 16-bit or
  -- * 32-bit quantities. Possible values are 8, 16 and 32. This information allows
  -- * the X server to correctly perform byte-swap operations as necessary.
  -- * @param data_len Specifies the number of elements (see \a format).
  -- * @param data The property data.
  -- * @return A cookie
  -- *
  -- * Sets or updates a property on the specified \a window. Properties are for
  -- * example the window title (`WM_NAME`) or its minimum size (`WM_NORMAL_HINTS`).
  -- * Protocols such as EWMH also use properties - for example EWMH defines the
  -- * window title, encoded as UTF-8 string, in the `_NET_WM_NAME` property.
  -- * 
  -- * This form can be used only if the request will not cause
  -- * a reply to be generated. Any returned error will be
  -- * saved for handling by xcb_request_check().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_change_property_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           mode
  -- ** @param xcb_window_t      window
  -- ** @param xcb_atom_t        property
  -- ** @param xcb_atom_t        type
  -- ** @param uint8_t           format
  -- ** @param uint32_t          data_len
  -- ** @param const void       *data
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_change_property_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_window_t;
      arg4 : xcb_atom_t;
      arg5 : xcb_atom_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint32_t;
      arg8 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:7693
   pragma Import (C, xcb_change_property_checked, "xcb_change_property_checked");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*
  -- * @brief Changes a window property
  -- *
  -- * @param c The connection
  -- * @param mode A bitmask of #xcb_prop_mode_t values.
  -- * @param mode \n
  -- * @param window The window whose property you want to change.
  -- * @param property The property you want to change (an atom).
  -- * @param type The type of the property you want to change (an atom).
  -- * @param format Specifies whether the data should be viewed as a list of 8-bit, 16-bit or
  -- * 32-bit quantities. Possible values are 8, 16 and 32. This information allows
  -- * the X server to correctly perform byte-swap operations as necessary.
  -- * @param data_len Specifies the number of elements (see \a format).
  -- * @param data The property data.
  -- * @return A cookie
  -- *
  -- * Sets or updates a property on the specified \a window. Properties are for
  -- * example the window title (`WM_NAME`) or its minimum size (`WM_NORMAL_HINTS`).
  -- * Protocols such as EWMH also use properties - for example EWMH defines the
  -- * window title, encoded as UTF-8 string, in the `_NET_WM_NAME` property.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_change_property
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           mode
  -- ** @param xcb_window_t      window
  -- ** @param xcb_atom_t        property
  -- ** @param xcb_atom_t        type
  -- ** @param uint8_t           format
  -- ** @param uint32_t          data_len
  -- ** @param const void       *data
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_change_property
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_window_t;
      arg4 : xcb_atom_t;
      arg5 : xcb_atom_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint32_t;
      arg8 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:7742
   pragma Import (C, xcb_change_property, "xcb_change_property");

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
  -- ** xcb_void_cookie_t xcb_delete_property_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @param xcb_atom_t        property
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_delete_property_checked
     (arg1 : System.Address;
      arg2 : xcb_window_t;
      arg3 : xcb_atom_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:7775
   pragma Import (C, xcb_delete_property_checked, "xcb_delete_property_checked");

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
  -- ** xcb_void_cookie_t xcb_delete_property
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @param xcb_atom_t        property
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_delete_property
     (arg1 : System.Address;
      arg2 : xcb_window_t;
      arg3 : xcb_atom_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:7800
   pragma Import (C, xcb_delete_property, "xcb_delete_property");

  --*<  
  --*<  
  --*<  
   function xcb_get_property_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:7805
   pragma Import (C, xcb_get_property_sizeof, "xcb_get_property_sizeof");

  --*
  -- * @brief Gets a window property
  -- *
  -- * @param c The connection
  -- * @param _delete Whether the property should actually be deleted. For deleting a property, the
  -- * specified \a type has to match the actual property type.
  -- * @param window The window whose property you want to get.
  -- * @param property The property you want to get (an atom).
  -- * @param type The type of the property you want to get (an atom).
  -- * @param long_offset Specifies the offset (in 32-bit multiples) in the specified property where the
  -- * data is to be retrieved.
  -- * @param long_length Specifies how many 32-bit multiples of data should be retrieved (e.g. if you
  -- * set \a long_length to 4, you will receive 16 bytes of data).
  -- * @return A cookie
  -- *
  -- * Gets the specified \a property from the specified \a window. Properties are for
  -- * example the window title (`WM_NAME`) or its minimum size (`WM_NORMAL_HINTS`).
  -- * Protocols such as EWMH also use properties - for example EWMH defines the
  -- * window title, encoded as UTF-8 string, in the `_NET_WM_NAME` property.
  -- * 
  -- * TODO: talk about \a type
  -- * 
  -- * TODO: talk about `delete`
  -- * 
  -- * TODO: talk about the offset/length thing. what's a valid use case?
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_get_property_cookie_t xcb_get_property
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           _delete
  -- ** @param xcb_window_t      window
  -- ** @param xcb_atom_t        property
  -- ** @param xcb_atom_t        type
  -- ** @param uint32_t          long_offset
  -- ** @param uint32_t          long_length
  -- ** @returns xcb_get_property_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_property
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_window_t;
      arg4 : xcb_atom_t;
      arg5 : xcb_atom_t;
      arg6 : stdint_h.uint32_t;
      arg7 : stdint_h.uint32_t) return xcb_get_property_cookie_t;  -- /usr/include/xcb/xproto.h:7851
   pragma Import (C, xcb_get_property, "xcb_get_property");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*
  -- * @brief Gets a window property
  -- *
  -- * @param c The connection
  -- * @param _delete Whether the property should actually be deleted. For deleting a property, the
  -- * specified \a type has to match the actual property type.
  -- * @param window The window whose property you want to get.
  -- * @param property The property you want to get (an atom).
  -- * @param type The type of the property you want to get (an atom).
  -- * @param long_offset Specifies the offset (in 32-bit multiples) in the specified property where the
  -- * data is to be retrieved.
  -- * @param long_length Specifies how many 32-bit multiples of data should be retrieved (e.g. if you
  -- * set \a long_length to 4, you will receive 16 bytes of data).
  -- * @return A cookie
  -- *
  -- * Gets the specified \a property from the specified \a window. Properties are for
  -- * example the window title (`WM_NAME`) or its minimum size (`WM_NORMAL_HINTS`).
  -- * Protocols such as EWMH also use properties - for example EWMH defines the
  -- * window title, encoded as UTF-8 string, in the `_NET_WM_NAME` property.
  -- * 
  -- * TODO: talk about \a type
  -- * 
  -- * TODO: talk about `delete`
  -- * 
  -- * TODO: talk about the offset/length thing. what's a valid use case?
  -- * 
  -- * This form can be used only if the request will cause
  -- * a reply to be generated. Any returned error will be
  -- * placed in the event queue.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_get_property_cookie_t xcb_get_property_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           _delete
  -- ** @param xcb_window_t      window
  -- ** @param xcb_atom_t        property
  -- ** @param xcb_atom_t        type
  -- ** @param uint32_t          long_offset
  -- ** @param uint32_t          long_length
  -- ** @returns xcb_get_property_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_property_unchecked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_window_t;
      arg4 : xcb_atom_t;
      arg5 : xcb_atom_t;
      arg6 : stdint_h.uint32_t;
      arg7 : stdint_h.uint32_t) return xcb_get_property_cookie_t;  -- /usr/include/xcb/xproto.h:7906
   pragma Import (C, xcb_get_property_unchecked, "xcb_get_property_unchecked");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** void * xcb_get_property_value
  -- ** 
  -- ** @param const xcb_get_property_reply_t *R
  -- ** @returns void *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_property_value (arg1 : System.Address) return System.Address;  -- /usr/include/xcb/xproto.h:7925
   pragma Import (C, xcb_get_property_value, "xcb_get_property_value");

  --****************************************************************************
  -- **
  -- ** int xcb_get_property_value_length
  -- ** 
  -- ** @param const xcb_get_property_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_property_value_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:7938
   pragma Import (C, xcb_get_property_value_length, "xcb_get_property_value_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_get_property_value_end
  -- ** 
  -- ** @param const xcb_get_property_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_property_value_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:7951
   pragma Import (C, xcb_get_property_value_end, "xcb_get_property_value_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_get_property_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_get_property_reply_t * xcb_get_property_reply
  -- ** 
  -- ** @param xcb_connection_t           *c
  -- ** @param xcb_get_property_cookie_t   cookie
  -- ** @param xcb_generic_error_t       **e
  -- ** @returns xcb_get_property_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_property_reply
     (arg1 : System.Address;
      arg2 : xcb_get_property_cookie_t;
      arg3 : System.Address) return access xcb_get_property_reply_t;  -- /usr/include/xcb/xproto.h:7980
   pragma Import (C, xcb_get_property_reply, "xcb_get_property_reply");

  --*<  
  --*<  
  --*<  
   function xcb_list_properties_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:7985
   pragma Import (C, xcb_list_properties_sizeof, "xcb_list_properties_sizeof");

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
  -- ** xcb_list_properties_cookie_t xcb_list_properties
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_list_properties_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_list_properties (arg1 : System.Address; arg2 : xcb_window_t) return xcb_list_properties_cookie_t;  -- /usr/include/xcb/xproto.h:8007
   pragma Import (C, xcb_list_properties, "xcb_list_properties");

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
  -- ** xcb_list_properties_cookie_t xcb_list_properties_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_list_properties_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_list_properties_unchecked (arg1 : System.Address; arg2 : xcb_window_t) return xcb_list_properties_cookie_t;  -- /usr/include/xcb/xproto.h:8033
   pragma Import (C, xcb_list_properties_unchecked, "xcb_list_properties_unchecked");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_atom_t * xcb_list_properties_atoms
  -- ** 
  -- ** @param const xcb_list_properties_reply_t *R
  -- ** @returns xcb_atom_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_list_properties_atoms (arg1 : System.Address) return access xcb_atom_t;  -- /usr/include/xcb/xproto.h:8047
   pragma Import (C, xcb_list_properties_atoms, "xcb_list_properties_atoms");

  --****************************************************************************
  -- **
  -- ** int xcb_list_properties_atoms_length
  -- ** 
  -- ** @param const xcb_list_properties_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_list_properties_atoms_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:8060
   pragma Import (C, xcb_list_properties_atoms_length, "xcb_list_properties_atoms_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_list_properties_atoms_end
  -- ** 
  -- ** @param const xcb_list_properties_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_list_properties_atoms_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:8073
   pragma Import (C, xcb_list_properties_atoms_end, "xcb_list_properties_atoms_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_list_properties_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_list_properties_reply_t * xcb_list_properties_reply
  -- ** 
  -- ** @param xcb_connection_t              *c
  -- ** @param xcb_list_properties_cookie_t   cookie
  -- ** @param xcb_generic_error_t          **e
  -- ** @returns xcb_list_properties_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_list_properties_reply
     (arg1 : System.Address;
      arg2 : xcb_list_properties_cookie_t;
      arg3 : System.Address) return access xcb_list_properties_reply_t;  -- /usr/include/xcb/xproto.h:8102
   pragma Import (C, xcb_list_properties_reply, "xcb_list_properties_reply");

  --*<  
  --*<  
  --*
  -- * @brief Sets the owner of a selection
  -- *
  -- * @param c The connection
  -- * @param owner The new owner of the selection.
  -- * \n
  -- * The special value `XCB_NONE` means that the selection will have no owner.
  -- * @param selection The selection.
  -- * @param time Timestamp to avoid race conditions when running X over the network.
  -- * \n
  -- * The selection will not be changed if \a time is earlier than the current
  -- * last-change time of the \a selection or is later than the current X server time.
  -- * Otherwise, the last-change time is set to the specified time.
  -- * \n
  -- * The special value `XCB_CURRENT_TIME` will be replaced with the current server
  -- * time.
  -- * @return A cookie
  -- *
  -- * Makes `window` the owner of the selection \a selection and updates the
  -- * last-change time of the specified selection.
  -- * 
  -- * TODO: briefly explain what a selection is.
  -- * 
  -- * This form can be used only if the request will not cause
  -- * a reply to be generated. Any returned error will be
  -- * saved for handling by xcb_request_check().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_set_selection_owner_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      owner
  -- ** @param xcb_atom_t        selection
  -- ** @param xcb_timestamp_t   time
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_set_selection_owner_checked
     (arg1 : System.Address;
      arg2 : xcb_window_t;
      arg3 : xcb_atom_t;
      arg4 : xcb_timestamp_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:8147
   pragma Import (C, xcb_set_selection_owner_checked, "xcb_set_selection_owner_checked");

  --*<  
  --*<  
  --*<  
  --*
  -- * @brief Sets the owner of a selection
  -- *
  -- * @param c The connection
  -- * @param owner The new owner of the selection.
  -- * \n
  -- * The special value `XCB_NONE` means that the selection will have no owner.
  -- * @param selection The selection.
  -- * @param time Timestamp to avoid race conditions when running X over the network.
  -- * \n
  -- * The selection will not be changed if \a time is earlier than the current
  -- * last-change time of the \a selection or is later than the current X server time.
  -- * Otherwise, the last-change time is set to the specified time.
  -- * \n
  -- * The special value `XCB_CURRENT_TIME` will be replaced with the current server
  -- * time.
  -- * @return A cookie
  -- *
  -- * Makes `window` the owner of the selection \a selection and updates the
  -- * last-change time of the specified selection.
  -- * 
  -- * TODO: briefly explain what a selection is.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_set_selection_owner
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      owner
  -- ** @param xcb_atom_t        selection
  -- ** @param xcb_timestamp_t   time
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_set_selection_owner
     (arg1 : System.Address;
      arg2 : xcb_window_t;
      arg3 : xcb_atom_t;
      arg4 : xcb_timestamp_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:8190
   pragma Import (C, xcb_set_selection_owner, "xcb_set_selection_owner");

  --*<  
  --*<  
  --*<  
  --*
  -- * @brief Gets the owner of a selection
  -- *
  -- * @param c The connection
  -- * @param selection The selection.
  -- * @return A cookie
  -- *
  -- * Gets the owner of the specified selection.
  -- * 
  -- * TODO: briefly explain what a selection is.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_get_selection_owner_cookie_t xcb_get_selection_owner
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_atom_t        selection
  -- ** @returns xcb_get_selection_owner_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_selection_owner (arg1 : System.Address; arg2 : xcb_atom_t) return xcb_get_selection_owner_cookie_t;  -- /usr/include/xcb/xproto.h:8219
   pragma Import (C, xcb_get_selection_owner, "xcb_get_selection_owner");

  --*<  
  --*
  -- * @brief Gets the owner of a selection
  -- *
  -- * @param c The connection
  -- * @param selection The selection.
  -- * @return A cookie
  -- *
  -- * Gets the owner of the specified selection.
  -- * 
  -- * TODO: briefly explain what a selection is.
  -- * 
  -- * This form can be used only if the request will cause
  -- * a reply to be generated. Any returned error will be
  -- * placed in the event queue.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_get_selection_owner_cookie_t xcb_get_selection_owner_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_atom_t        selection
  -- ** @returns xcb_get_selection_owner_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_selection_owner_unchecked (arg1 : System.Address; arg2 : xcb_atom_t) return xcb_get_selection_owner_cookie_t;  -- /usr/include/xcb/xproto.h:8249
   pragma Import (C, xcb_get_selection_owner_unchecked, "xcb_get_selection_owner_unchecked");

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
  -- * xcb_get_selection_owner_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_get_selection_owner_reply_t * xcb_get_selection_owner_reply
  -- ** 
  -- ** @param xcb_connection_t                  *c
  -- ** @param xcb_get_selection_owner_cookie_t   cookie
  -- ** @param xcb_generic_error_t              **e
  -- ** @returns xcb_get_selection_owner_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_selection_owner_reply
     (arg1 : System.Address;
      arg2 : xcb_get_selection_owner_cookie_t;
      arg3 : System.Address) return access xcb_get_selection_owner_reply_t;  -- /usr/include/xcb/xproto.h:8279
   pragma Import (C, xcb_get_selection_owner_reply, "xcb_get_selection_owner_reply");

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
  -- ** xcb_void_cookie_t xcb_convert_selection_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      requestor
  -- ** @param xcb_atom_t        selection
  -- ** @param xcb_atom_t        target
  -- ** @param xcb_atom_t        property
  -- ** @param xcb_timestamp_t   time
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_convert_selection_checked
     (arg1 : System.Address;
      arg2 : xcb_window_t;
      arg3 : xcb_atom_t;
      arg4 : xcb_atom_t;
      arg5 : xcb_atom_t;
      arg6 : xcb_timestamp_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:8310
   pragma Import (C, xcb_convert_selection_checked, "xcb_convert_selection_checked");

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
  -- ** xcb_void_cookie_t xcb_convert_selection
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      requestor
  -- ** @param xcb_atom_t        selection
  -- ** @param xcb_atom_t        target
  -- ** @param xcb_atom_t        property
  -- ** @param xcb_timestamp_t   time
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_convert_selection
     (arg1 : System.Address;
      arg2 : xcb_window_t;
      arg3 : xcb_atom_t;
      arg4 : xcb_atom_t;
      arg5 : xcb_atom_t;
      arg6 : xcb_timestamp_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:8341
   pragma Import (C, xcb_convert_selection, "xcb_convert_selection");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*
  -- * @brief send an event
  -- *
  -- * @param c The connection
  -- * @param propagate If \a propagate is true and no clients have selected any event on \a destination,
  -- * the destination is replaced with the closest ancestor of \a destination for
  -- * which some client has selected a type in \a event_mask and for which no
  -- * intervening window has that type in its do-not-propagate-mask. If no such
  -- * window exists or if the window is an ancestor of the focus window and
  -- * `InputFocus` was originally specified as the destination, the event is not sent
  -- * to any clients. Otherwise, the event is reported to every client selecting on
  -- * the final destination any of the types specified in \a event_mask.
  -- * @param destination The window to send this event to. Every client which selects any event within
  -- * \a event_mask on \a destination will get the event.
  -- * \n
  -- * The special value `XCB_SEND_EVENT_DEST_POINTER_WINDOW` refers to the window
  -- * that contains the mouse pointer.
  -- * \n
  -- * The special value `XCB_SEND_EVENT_DEST_ITEM_FOCUS` refers to the window which
  -- * has the keyboard focus.
  -- * @param event_mask Event_mask for determining which clients should receive the specified event.
  -- * See \a destination and \a propagate.
  -- * @param event The event to send to the specified \a destination.
  -- * @return A cookie
  -- *
  -- * Identifies the \a destination window, determines which clients should receive
  -- * the specified event and ignores any active grabs.
  -- * 
  -- * The \a event must be one of the core events or an event defined by an extension,
  -- * so that the X server can correctly byte-swap the contents as necessary. The
  -- * contents of \a event are otherwise unaltered and unchecked except for the
  -- * `send_event` field which is forced to 'true'.
  -- * 
  -- * This form can be used only if the request will not cause
  -- * a reply to be generated. Any returned error will be
  -- * saved for handling by xcb_request_check().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_send_event_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           propagate
  -- ** @param xcb_window_t      destination
  -- ** @param uint32_t          event_mask
  -- ** @param const char       *event
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_send_event_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_window_t;
      arg4 : stdint_h.uint32_t;
      arg5 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:8400
   pragma Import (C, xcb_send_event_checked, "xcb_send_event_checked");

  --*<  
  --*<  
  --*<  
  --*<  
  --*
  -- * @brief send an event
  -- *
  -- * @param c The connection
  -- * @param propagate If \a propagate is true and no clients have selected any event on \a destination,
  -- * the destination is replaced with the closest ancestor of \a destination for
  -- * which some client has selected a type in \a event_mask and for which no
  -- * intervening window has that type in its do-not-propagate-mask. If no such
  -- * window exists or if the window is an ancestor of the focus window and
  -- * `InputFocus` was originally specified as the destination, the event is not sent
  -- * to any clients. Otherwise, the event is reported to every client selecting on
  -- * the final destination any of the types specified in \a event_mask.
  -- * @param destination The window to send this event to. Every client which selects any event within
  -- * \a event_mask on \a destination will get the event.
  -- * \n
  -- * The special value `XCB_SEND_EVENT_DEST_POINTER_WINDOW` refers to the window
  -- * that contains the mouse pointer.
  -- * \n
  -- * The special value `XCB_SEND_EVENT_DEST_ITEM_FOCUS` refers to the window which
  -- * has the keyboard focus.
  -- * @param event_mask Event_mask for determining which clients should receive the specified event.
  -- * See \a destination and \a propagate.
  -- * @param event The event to send to the specified \a destination.
  -- * @return A cookie
  -- *
  -- * Identifies the \a destination window, determines which clients should receive
  -- * the specified event and ignores any active grabs.
  -- * 
  -- * The \a event must be one of the core events or an event defined by an extension,
  -- * so that the X server can correctly byte-swap the contents as necessary. The
  -- * contents of \a event are otherwise unaltered and unchecked except for the
  -- * `send_event` field which is forced to 'true'.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_send_event
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           propagate
  -- ** @param xcb_window_t      destination
  -- ** @param uint32_t          event_mask
  -- ** @param const char       *event
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_send_event
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_window_t;
      arg4 : stdint_h.uint32_t;
      arg5 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:8455
   pragma Import (C, xcb_send_event, "xcb_send_event");

  --*<  
  --*<  
  --*<  
  --*<  
  --*
  -- * @brief Grab the pointer
  -- *
  -- * @param c The connection
  -- * @param owner_events If 1, the \a grab_window will still get the pointer events. If 0, events are not
  -- * reported to the \a grab_window.
  -- * @param grab_window Specifies the window on which the pointer should be grabbed.
  -- * @param event_mask Specifies which pointer events are reported to the client.
  -- * \n
  -- * TODO: which values?
  -- * @param pointer_mode A bitmask of #xcb_grab_mode_t values.
  -- * @param pointer_mode \n
  -- * @param keyboard_mode A bitmask of #xcb_grab_mode_t values.
  -- * @param keyboard_mode \n
  -- * @param confine_to Specifies the window to confine the pointer in (the user will not be able to
  -- * move the pointer out of that window).
  -- * \n
  -- * The special value `XCB_NONE` means don't confine the pointer.
  -- * @param cursor Specifies the cursor that should be displayed or `XCB_NONE` to not change the
  -- * cursor.
  -- * @param time The time argument allows you to avoid certain circumstances that come up if
  -- * applications take a long time to respond or if there are long network delays.
  -- * Consider a situation where you have two applications, both of which normally
  -- * grab the pointer when clicked on. If both applications specify the timestamp
  -- * from the event, the second application may wake up faster and successfully grab
  -- * the pointer before the first application. The first application then will get
  -- * an indication that the other application grabbed the pointer before its request
  -- * was processed.
  -- * \n
  -- * The special value `XCB_CURRENT_TIME` will be replaced with the current server
  -- * time.
  -- * @return A cookie
  -- *
  -- * Actively grabs control of the pointer. Further pointer events are reported only to the grabbing client. Overrides any active pointer grab by this client.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_grab_pointer_cookie_t xcb_grab_pointer
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           owner_events
  -- ** @param xcb_window_t      grab_window
  -- ** @param uint16_t          event_mask
  -- ** @param uint8_t           pointer_mode
  -- ** @param uint8_t           keyboard_mode
  -- ** @param xcb_window_t      confine_to
  -- ** @param xcb_cursor_t      cursor
  -- ** @param xcb_timestamp_t   time
  -- ** @returns xcb_grab_pointer_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_grab_pointer
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_window_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint8_t;
      arg6 : stdint_h.uint8_t;
      arg7 : xcb_window_t;
      arg8 : xcb_cursor_t;
      arg9 : xcb_timestamp_t) return xcb_grab_pointer_cookie_t;  -- /usr/include/xcb/xproto.h:8516
   pragma Import (C, xcb_grab_pointer, "xcb_grab_pointer");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*
  -- * @brief Grab the pointer
  -- *
  -- * @param c The connection
  -- * @param owner_events If 1, the \a grab_window will still get the pointer events. If 0, events are not
  -- * reported to the \a grab_window.
  -- * @param grab_window Specifies the window on which the pointer should be grabbed.
  -- * @param event_mask Specifies which pointer events are reported to the client.
  -- * \n
  -- * TODO: which values?
  -- * @param pointer_mode A bitmask of #xcb_grab_mode_t values.
  -- * @param pointer_mode \n
  -- * @param keyboard_mode A bitmask of #xcb_grab_mode_t values.
  -- * @param keyboard_mode \n
  -- * @param confine_to Specifies the window to confine the pointer in (the user will not be able to
  -- * move the pointer out of that window).
  -- * \n
  -- * The special value `XCB_NONE` means don't confine the pointer.
  -- * @param cursor Specifies the cursor that should be displayed or `XCB_NONE` to not change the
  -- * cursor.
  -- * @param time The time argument allows you to avoid certain circumstances that come up if
  -- * applications take a long time to respond or if there are long network delays.
  -- * Consider a situation where you have two applications, both of which normally
  -- * grab the pointer when clicked on. If both applications specify the timestamp
  -- * from the event, the second application may wake up faster and successfully grab
  -- * the pointer before the first application. The first application then will get
  -- * an indication that the other application grabbed the pointer before its request
  -- * was processed.
  -- * \n
  -- * The special value `XCB_CURRENT_TIME` will be replaced with the current server
  -- * time.
  -- * @return A cookie
  -- *
  -- * Actively grabs control of the pointer. Further pointer events are reported only to the grabbing client. Overrides any active pointer grab by this client.
  -- * 
  -- * This form can be used only if the request will cause
  -- * a reply to be generated. Any returned error will be
  -- * placed in the event queue.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_grab_pointer_cookie_t xcb_grab_pointer_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           owner_events
  -- ** @param xcb_window_t      grab_window
  -- ** @param uint16_t          event_mask
  -- ** @param uint8_t           pointer_mode
  -- ** @param uint8_t           keyboard_mode
  -- ** @param xcb_window_t      confine_to
  -- ** @param xcb_cursor_t      cursor
  -- ** @param xcb_timestamp_t   time
  -- ** @returns xcb_grab_pointer_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_grab_pointer_unchecked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_window_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint8_t;
      arg6 : stdint_h.uint8_t;
      arg7 : xcb_window_t;
      arg8 : xcb_cursor_t;
      arg9 : xcb_timestamp_t) return xcb_grab_pointer_cookie_t;  -- /usr/include/xcb/xproto.h:8584
   pragma Import (C, xcb_grab_pointer_unchecked, "xcb_grab_pointer_unchecked");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
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
  -- * xcb_grab_pointer_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_grab_pointer_reply_t * xcb_grab_pointer_reply
  -- ** 
  -- ** @param xcb_connection_t           *c
  -- ** @param xcb_grab_pointer_cookie_t   cookie
  -- ** @param xcb_generic_error_t       **e
  -- ** @returns xcb_grab_pointer_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_grab_pointer_reply
     (arg1 : System.Address;
      arg2 : xcb_grab_pointer_cookie_t;
      arg3 : System.Address) return access xcb_grab_pointer_reply_t;  -- /usr/include/xcb/xproto.h:8621
   pragma Import (C, xcb_grab_pointer_reply, "xcb_grab_pointer_reply");

  --*<  
  --*<  
  --*
  -- * @brief release the pointer
  -- *
  -- * @param c The connection
  -- * @param time Timestamp to avoid race conditions when running X over the network.
  -- * \n
  -- * The pointer will not be released if \a time is earlier than the
  -- * last-pointer-grab time or later than the current X server time.
  -- * @return A cookie
  -- *
  -- * Releases the pointer and any queued events if you actively grabbed the pointer
  -- * before using `xcb_grab_pointer`, `xcb_grab_button` or within a normal button
  -- * press.
  -- * 
  -- * EnterNotify and LeaveNotify events are generated.
  -- * 
  -- * This form can be used only if the request will not cause
  -- * a reply to be generated. Any returned error will be
  -- * saved for handling by xcb_request_check().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_ungrab_pointer_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_timestamp_t   time
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_ungrab_pointer_checked (arg1 : System.Address; arg2 : xcb_timestamp_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:8657
   pragma Import (C, xcb_ungrab_pointer_checked, "xcb_ungrab_pointer_checked");

  --*<  
  --*
  -- * @brief release the pointer
  -- *
  -- * @param c The connection
  -- * @param time Timestamp to avoid race conditions when running X over the network.
  -- * \n
  -- * The pointer will not be released if \a time is earlier than the
  -- * last-pointer-grab time or later than the current X server time.
  -- * @return A cookie
  -- *
  -- * Releases the pointer and any queued events if you actively grabbed the pointer
  -- * before using `xcb_grab_pointer`, `xcb_grab_button` or within a normal button
  -- * press.
  -- * 
  -- * EnterNotify and LeaveNotify events are generated.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_ungrab_pointer
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_timestamp_t   time
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_ungrab_pointer (arg1 : System.Address; arg2 : xcb_timestamp_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:8689
   pragma Import (C, xcb_ungrab_pointer, "xcb_ungrab_pointer");

  --*<  
  --*
  -- * @brief Grab pointer button(s)
  -- *
  -- * @param c The connection
  -- * @param owner_events If 1, the \a grab_window will still get the pointer events. If 0, events are not
  -- * reported to the \a grab_window.
  -- * @param grab_window Specifies the window on which the pointer should be grabbed.
  -- * @param event_mask Specifies which pointer events are reported to the client.
  -- * \n
  -- * TODO: which values?
  -- * @param pointer_mode A bitmask of #xcb_grab_mode_t values.
  -- * @param pointer_mode \n
  -- * @param keyboard_mode A bitmask of #xcb_grab_mode_t values.
  -- * @param keyboard_mode \n
  -- * @param confine_to Specifies the window to confine the pointer in (the user will not be able to
  -- * move the pointer out of that window).
  -- * \n
  -- * The special value `XCB_NONE` means don't confine the pointer.
  -- * @param cursor Specifies the cursor that should be displayed or `XCB_NONE` to not change the
  -- * cursor.
  -- * @param button A bitmask of #xcb_button_index_t values.
  -- * @param button \n
  -- * @param modifiers The modifiers to grab.
  -- * \n
  -- * Using the special value `XCB_MOD_MASK_ANY` means grab the pointer with all
  -- * possible modifier combinations.
  -- * @return A cookie
  -- *
  -- * This request establishes a passive grab. The pointer is actively grabbed as
  -- * described in GrabPointer, the last-pointer-grab time is set to the time at
  -- * which the button was pressed (as transmitted in the ButtonPress event), and the
  -- * ButtonPress event is reported if all of the following conditions are true:
  -- * 
  -- * The pointer is not grabbed and the specified button is logically pressed when
  -- * the specified modifier keys are logically down, and no other buttons or
  -- * modifier keys are logically down.
  -- * 
  -- * The grab-window contains the pointer.
  -- * 
  -- * The confine-to window (if any) is viewable.
  -- * 
  -- * A passive grab on the same button/key combination does not exist on any
  -- * ancestor of grab-window.
  -- * 
  -- * The interpretation of the remaining arguments is the same as for GrabPointer.
  -- * The active grab is terminated automatically when the logical state of the
  -- * pointer has all buttons released, independent of the logical state of modifier
  -- * keys. Note that the logical state of a device (as seen by means of the
  -- * protocol) may lag the physical state if device event processing is frozen. This
  -- * request overrides all previous passive grabs by the same client on the same
  -- * button/key combinations on the same window. A modifier of AnyModifier is
  -- * equivalent to issuing the request for all possible modifier combinations
  -- * (including the combination of no modifiers). It is not required that all
  -- * specified modifiers have currently assigned keycodes. A button of AnyButton is
  -- * equivalent to issuing the request for all possible buttons. Otherwise, it is
  -- * not required that the button specified currently be assigned to a physical
  -- * button.
  -- * 
  -- * An Access error is generated if some other client has already issued a
  -- * GrabButton request with the same button/key combination on the same window.
  -- * When using AnyModifier or AnyButton, the request fails completely (no grabs are
  -- * established), and an Access error is generated if there is a conflicting grab
  -- * for any combination. The request has no effect on an active grab.
  -- * 
  -- * This form can be used only if the request will not cause
  -- * a reply to be generated. Any returned error will be
  -- * saved for handling by xcb_request_check().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_grab_button_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           owner_events
  -- ** @param xcb_window_t      grab_window
  -- ** @param uint16_t          event_mask
  -- ** @param uint8_t           pointer_mode
  -- ** @param uint8_t           keyboard_mode
  -- ** @param xcb_window_t      confine_to
  -- ** @param xcb_cursor_t      cursor
  -- ** @param uint8_t           button
  -- ** @param uint16_t          modifiers
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_grab_button_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_window_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint8_t;
      arg6 : stdint_h.uint8_t;
      arg7 : xcb_window_t;
      arg8 : xcb_cursor_t;
      arg9 : stdint_h.uint8_t;
      arg10 : stdint_h.uint16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:8780
   pragma Import (C, xcb_grab_button_checked, "xcb_grab_button_checked");

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
  -- * @brief Grab pointer button(s)
  -- *
  -- * @param c The connection
  -- * @param owner_events If 1, the \a grab_window will still get the pointer events. If 0, events are not
  -- * reported to the \a grab_window.
  -- * @param grab_window Specifies the window on which the pointer should be grabbed.
  -- * @param event_mask Specifies which pointer events are reported to the client.
  -- * \n
  -- * TODO: which values?
  -- * @param pointer_mode A bitmask of #xcb_grab_mode_t values.
  -- * @param pointer_mode \n
  -- * @param keyboard_mode A bitmask of #xcb_grab_mode_t values.
  -- * @param keyboard_mode \n
  -- * @param confine_to Specifies the window to confine the pointer in (the user will not be able to
  -- * move the pointer out of that window).
  -- * \n
  -- * The special value `XCB_NONE` means don't confine the pointer.
  -- * @param cursor Specifies the cursor that should be displayed or `XCB_NONE` to not change the
  -- * cursor.
  -- * @param button A bitmask of #xcb_button_index_t values.
  -- * @param button \n
  -- * @param modifiers The modifiers to grab.
  -- * \n
  -- * Using the special value `XCB_MOD_MASK_ANY` means grab the pointer with all
  -- * possible modifier combinations.
  -- * @return A cookie
  -- *
  -- * This request establishes a passive grab. The pointer is actively grabbed as
  -- * described in GrabPointer, the last-pointer-grab time is set to the time at
  -- * which the button was pressed (as transmitted in the ButtonPress event), and the
  -- * ButtonPress event is reported if all of the following conditions are true:
  -- * 
  -- * The pointer is not grabbed and the specified button is logically pressed when
  -- * the specified modifier keys are logically down, and no other buttons or
  -- * modifier keys are logically down.
  -- * 
  -- * The grab-window contains the pointer.
  -- * 
  -- * The confine-to window (if any) is viewable.
  -- * 
  -- * A passive grab on the same button/key combination does not exist on any
  -- * ancestor of grab-window.
  -- * 
  -- * The interpretation of the remaining arguments is the same as for GrabPointer.
  -- * The active grab is terminated automatically when the logical state of the
  -- * pointer has all buttons released, independent of the logical state of modifier
  -- * keys. Note that the logical state of a device (as seen by means of the
  -- * protocol) may lag the physical state if device event processing is frozen. This
  -- * request overrides all previous passive grabs by the same client on the same
  -- * button/key combinations on the same window. A modifier of AnyModifier is
  -- * equivalent to issuing the request for all possible modifier combinations
  -- * (including the combination of no modifiers). It is not required that all
  -- * specified modifiers have currently assigned keycodes. A button of AnyButton is
  -- * equivalent to issuing the request for all possible buttons. Otherwise, it is
  -- * not required that the button specified currently be assigned to a physical
  -- * button.
  -- * 
  -- * An Access error is generated if some other client has already issued a
  -- * GrabButton request with the same button/key combination on the same window.
  -- * When using AnyModifier or AnyButton, the request fails completely (no grabs are
  -- * established), and an Access error is generated if there is a conflicting grab
  -- * for any combination. The request has no effect on an active grab.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_grab_button
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           owner_events
  -- ** @param xcb_window_t      grab_window
  -- ** @param uint16_t          event_mask
  -- ** @param uint8_t           pointer_mode
  -- ** @param uint8_t           keyboard_mode
  -- ** @param xcb_window_t      confine_to
  -- ** @param xcb_cursor_t      cursor
  -- ** @param uint8_t           button
  -- ** @param uint16_t          modifiers
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_grab_button
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_window_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint8_t;
      arg6 : stdint_h.uint8_t;
      arg7 : xcb_window_t;
      arg8 : xcb_cursor_t;
      arg9 : stdint_h.uint8_t;
      arg10 : stdint_h.uint16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:8876
   pragma Import (C, xcb_grab_button, "xcb_grab_button");

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
  -- ** xcb_void_cookie_t xcb_ungrab_button_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           button
  -- ** @param xcb_window_t      grab_window
  -- ** @param uint16_t          modifiers
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_ungrab_button_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_window_t;
      arg4 : stdint_h.uint16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:8912
   pragma Import (C, xcb_ungrab_button_checked, "xcb_ungrab_button_checked");

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
  -- ** xcb_void_cookie_t xcb_ungrab_button
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           button
  -- ** @param xcb_window_t      grab_window
  -- ** @param uint16_t          modifiers
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_ungrab_button
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_window_t;
      arg4 : stdint_h.uint16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:8939
   pragma Import (C, xcb_ungrab_button, "xcb_ungrab_button");

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
  -- ** xcb_void_cookie_t xcb_change_active_pointer_grab_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_cursor_t      cursor
  -- ** @param xcb_timestamp_t   time
  -- ** @param uint16_t          event_mask
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_change_active_pointer_grab_checked
     (arg1 : System.Address;
      arg2 : xcb_cursor_t;
      arg3 : xcb_timestamp_t;
      arg4 : stdint_h.uint16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:8969
   pragma Import (C, xcb_change_active_pointer_grab_checked, "xcb_change_active_pointer_grab_checked");

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
  -- ** xcb_void_cookie_t xcb_change_active_pointer_grab
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_cursor_t      cursor
  -- ** @param xcb_timestamp_t   time
  -- ** @param uint16_t          event_mask
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_change_active_pointer_grab
     (arg1 : System.Address;
      arg2 : xcb_cursor_t;
      arg3 : xcb_timestamp_t;
      arg4 : stdint_h.uint16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:8996
   pragma Import (C, xcb_change_active_pointer_grab, "xcb_change_active_pointer_grab");

  --*<  
  --*<  
  --*<  
  --*
  -- * @brief Grab the keyboard
  -- *
  -- * @param c The connection
  -- * @param owner_events If 1, the \a grab_window will still get the pointer events. If 0, events are not
  -- * reported to the \a grab_window.
  -- * @param grab_window Specifies the window on which the pointer should be grabbed.
  -- * @param time Timestamp to avoid race conditions when running X over the network.
  -- * \n
  -- * The special value `XCB_CURRENT_TIME` will be replaced with the current server
  -- * time.
  -- * @param pointer_mode A bitmask of #xcb_grab_mode_t values.
  -- * @param pointer_mode \n
  -- * @param keyboard_mode A bitmask of #xcb_grab_mode_t values.
  -- * @param keyboard_mode \n
  -- * @return A cookie
  -- *
  -- * Actively grabs control of the keyboard and generates FocusIn and FocusOut
  -- * events. Further key events are reported only to the grabbing client.
  -- * 
  -- * Any active keyboard grab by this client is overridden. If the keyboard is
  -- * actively grabbed by some other client, `AlreadyGrabbed` is returned. If
  -- * \a grab_window is not viewable, `GrabNotViewable` is returned. If the keyboard
  -- * is frozen by an active grab of another client, `GrabFrozen` is returned. If the
  -- * specified \a time is earlier than the last-keyboard-grab time or later than the
  -- * current X server time, `GrabInvalidTime` is returned. Otherwise, the
  -- * last-keyboard-grab time is set to the specified time.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_grab_keyboard_cookie_t xcb_grab_keyboard
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           owner_events
  -- ** @param xcb_window_t      grab_window
  -- ** @param xcb_timestamp_t   time
  -- ** @param uint8_t           pointer_mode
  -- ** @param uint8_t           keyboard_mode
  -- ** @returns xcb_grab_keyboard_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_grab_keyboard
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_window_t;
      arg4 : xcb_timestamp_t;
      arg5 : stdint_h.uint8_t;
      arg6 : stdint_h.uint8_t) return xcb_grab_keyboard_cookie_t;  -- /usr/include/xcb/xproto.h:9046
   pragma Import (C, xcb_grab_keyboard, "xcb_grab_keyboard");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*
  -- * @brief Grab the keyboard
  -- *
  -- * @param c The connection
  -- * @param owner_events If 1, the \a grab_window will still get the pointer events. If 0, events are not
  -- * reported to the \a grab_window.
  -- * @param grab_window Specifies the window on which the pointer should be grabbed.
  -- * @param time Timestamp to avoid race conditions when running X over the network.
  -- * \n
  -- * The special value `XCB_CURRENT_TIME` will be replaced with the current server
  -- * time.
  -- * @param pointer_mode A bitmask of #xcb_grab_mode_t values.
  -- * @param pointer_mode \n
  -- * @param keyboard_mode A bitmask of #xcb_grab_mode_t values.
  -- * @param keyboard_mode \n
  -- * @return A cookie
  -- *
  -- * Actively grabs control of the keyboard and generates FocusIn and FocusOut
  -- * events. Further key events are reported only to the grabbing client.
  -- * 
  -- * Any active keyboard grab by this client is overridden. If the keyboard is
  -- * actively grabbed by some other client, `AlreadyGrabbed` is returned. If
  -- * \a grab_window is not viewable, `GrabNotViewable` is returned. If the keyboard
  -- * is frozen by an active grab of another client, `GrabFrozen` is returned. If the
  -- * specified \a time is earlier than the last-keyboard-grab time or later than the
  -- * current X server time, `GrabInvalidTime` is returned. Otherwise, the
  -- * last-keyboard-grab time is set to the specified time.
  -- * 
  -- * This form can be used only if the request will cause
  -- * a reply to be generated. Any returned error will be
  -- * placed in the event queue.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_grab_keyboard_cookie_t xcb_grab_keyboard_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           owner_events
  -- ** @param xcb_window_t      grab_window
  -- ** @param xcb_timestamp_t   time
  -- ** @param uint8_t           pointer_mode
  -- ** @param uint8_t           keyboard_mode
  -- ** @returns xcb_grab_keyboard_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_grab_keyboard_unchecked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_window_t;
      arg4 : xcb_timestamp_t;
      arg5 : stdint_h.uint8_t;
      arg6 : stdint_h.uint8_t) return xcb_grab_keyboard_cookie_t;  -- /usr/include/xcb/xproto.h:9101
   pragma Import (C, xcb_grab_keyboard_unchecked, "xcb_grab_keyboard_unchecked");

  --*<  
  --*<  
  --*<  
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
  -- * xcb_grab_keyboard_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_grab_keyboard_reply_t * xcb_grab_keyboard_reply
  -- ** 
  -- ** @param xcb_connection_t            *c
  -- ** @param xcb_grab_keyboard_cookie_t   cookie
  -- ** @param xcb_generic_error_t        **e
  -- ** @returns xcb_grab_keyboard_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_grab_keyboard_reply
     (arg1 : System.Address;
      arg2 : xcb_grab_keyboard_cookie_t;
      arg3 : System.Address) return access xcb_grab_keyboard_reply_t;  -- /usr/include/xcb/xproto.h:9135
   pragma Import (C, xcb_grab_keyboard_reply, "xcb_grab_keyboard_reply");

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
  -- ** xcb_void_cookie_t xcb_ungrab_keyboard_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_timestamp_t   time
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_ungrab_keyboard_checked (arg1 : System.Address; arg2 : xcb_timestamp_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:9162
   pragma Import (C, xcb_ungrab_keyboard_checked, "xcb_ungrab_keyboard_checked");

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
  -- ** xcb_void_cookie_t xcb_ungrab_keyboard
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_timestamp_t   time
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_ungrab_keyboard (arg1 : System.Address; arg2 : xcb_timestamp_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:9185
   pragma Import (C, xcb_ungrab_keyboard, "xcb_ungrab_keyboard");

  --*<  
  --*
  -- * @brief Grab keyboard key(s)
  -- *
  -- * @param c The connection
  -- * @param owner_events If 1, the \a grab_window will still get the pointer events. If 0, events are not
  -- * reported to the \a grab_window.
  -- * @param grab_window Specifies the window on which the pointer should be grabbed.
  -- * @param modifiers The modifiers to grab.
  -- * \n
  -- * Using the special value `XCB_MOD_MASK_ANY` means grab the pointer with all
  -- * possible modifier combinations.
  -- * @param key The keycode of the key to grab.
  -- * \n
  -- * The special value `XCB_GRAB_ANY` means grab any key.
  -- * @param pointer_mode A bitmask of #xcb_grab_mode_t values.
  -- * @param pointer_mode \n
  -- * @param keyboard_mode A bitmask of #xcb_grab_mode_t values.
  -- * @param keyboard_mode \n
  -- * @return A cookie
  -- *
  -- * Establishes a passive grab on the keyboard. In the future, the keyboard is
  -- * actively grabbed (as for `GrabKeyboard`), the last-keyboard-grab time is set to
  -- * the time at which the key was pressed (as transmitted in the KeyPress event),
  -- * and the KeyPress event is reported if all of the following conditions are true:
  -- * 
  -- * The keyboard is not grabbed and the specified key (which can itself be a
  -- * modifier key) is logically pressed when the specified modifier keys are
  -- * logically down, and no other modifier keys are logically down.
  -- * 
  -- * Either the grab_window is an ancestor of (or is) the focus window, or the
  -- * grab_window is a descendant of the focus window and contains the pointer.
  -- * 
  -- * A passive grab on the same key combination does not exist on any ancestor of
  -- * grab_window.
  -- * 
  -- * The interpretation of the remaining arguments is as for XGrabKeyboard.  The active grab is terminated
  -- * automatically when the logical state of the keyboard has the specified key released (independent of the
  -- * logical state of the modifier keys), at which point a KeyRelease event is reported to the grabbing window.
  -- * 
  -- * Note that the logical state of a device (as seen by client applications) may lag the physical state if
  -- * device event processing is frozen.
  -- * 
  -- * A modifiers argument of AnyModifier is equivalent to issuing the request for all possible modifier combinations (including the combination of no modifiers).  It is not required that all modifiers specified
  -- * have currently assigned KeyCodes.  A keycode argument of AnyKey is equivalent to issuing the request for
  -- * all possible KeyCodes.  Otherwise, the specified keycode must be in the range specified by min_keycode
  -- * and max_keycode in the connection setup, or a BadValue error results.
  -- * 
  -- * If some other client has issued a XGrabKey with the same key combination on the same window, a BadAccess
  -- * error results.  When using AnyModifier or AnyKey, the request fails completely, and a BadAccess error
  -- * results (no grabs are established) if there is a conflicting grab for any combination.
  -- * 
  -- * This form can be used only if the request will not cause
  -- * a reply to be generated. Any returned error will be
  -- * saved for handling by xcb_request_check().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_grab_key_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           owner_events
  -- ** @param xcb_window_t      grab_window
  -- ** @param uint16_t          modifiers
  -- ** @param xcb_keycode_t     key
  -- ** @param uint8_t           pointer_mode
  -- ** @param uint8_t           keyboard_mode
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_grab_key_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_window_t;
      arg4 : stdint_h.uint16_t;
      arg5 : xcb_keycode_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:9260
   pragma Import (C, xcb_grab_key_checked, "xcb_grab_key_checked");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*
  -- * @brief Grab keyboard key(s)
  -- *
  -- * @param c The connection
  -- * @param owner_events If 1, the \a grab_window will still get the pointer events. If 0, events are not
  -- * reported to the \a grab_window.
  -- * @param grab_window Specifies the window on which the pointer should be grabbed.
  -- * @param modifiers The modifiers to grab.
  -- * \n
  -- * Using the special value `XCB_MOD_MASK_ANY` means grab the pointer with all
  -- * possible modifier combinations.
  -- * @param key The keycode of the key to grab.
  -- * \n
  -- * The special value `XCB_GRAB_ANY` means grab any key.
  -- * @param pointer_mode A bitmask of #xcb_grab_mode_t values.
  -- * @param pointer_mode \n
  -- * @param keyboard_mode A bitmask of #xcb_grab_mode_t values.
  -- * @param keyboard_mode \n
  -- * @return A cookie
  -- *
  -- * Establishes a passive grab on the keyboard. In the future, the keyboard is
  -- * actively grabbed (as for `GrabKeyboard`), the last-keyboard-grab time is set to
  -- * the time at which the key was pressed (as transmitted in the KeyPress event),
  -- * and the KeyPress event is reported if all of the following conditions are true:
  -- * 
  -- * The keyboard is not grabbed and the specified key (which can itself be a
  -- * modifier key) is logically pressed when the specified modifier keys are
  -- * logically down, and no other modifier keys are logically down.
  -- * 
  -- * Either the grab_window is an ancestor of (or is) the focus window, or the
  -- * grab_window is a descendant of the focus window and contains the pointer.
  -- * 
  -- * A passive grab on the same key combination does not exist on any ancestor of
  -- * grab_window.
  -- * 
  -- * The interpretation of the remaining arguments is as for XGrabKeyboard.  The active grab is terminated
  -- * automatically when the logical state of the keyboard has the specified key released (independent of the
  -- * logical state of the modifier keys), at which point a KeyRelease event is reported to the grabbing window.
  -- * 
  -- * Note that the logical state of a device (as seen by client applications) may lag the physical state if
  -- * device event processing is frozen.
  -- * 
  -- * A modifiers argument of AnyModifier is equivalent to issuing the request for all possible modifier combinations (including the combination of no modifiers).  It is not required that all modifiers specified
  -- * have currently assigned KeyCodes.  A keycode argument of AnyKey is equivalent to issuing the request for
  -- * all possible KeyCodes.  Otherwise, the specified keycode must be in the range specified by min_keycode
  -- * and max_keycode in the connection setup, or a BadValue error results.
  -- * 
  -- * If some other client has issued a XGrabKey with the same key combination on the same window, a BadAccess
  -- * error results.  When using AnyModifier or AnyKey, the request fails completely, and a BadAccess error
  -- * results (no grabs are established) if there is a conflicting grab for any combination.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_grab_key
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           owner_events
  -- ** @param xcb_window_t      grab_window
  -- ** @param uint16_t          modifiers
  -- ** @param xcb_keycode_t     key
  -- ** @param uint8_t           pointer_mode
  -- ** @param uint8_t           keyboard_mode
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_grab_key
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_window_t;
      arg4 : stdint_h.uint16_t;
      arg5 : xcb_keycode_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:9337
   pragma Import (C, xcb_grab_key, "xcb_grab_key");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*
  -- * @brief release a key combination
  -- *
  -- * @param c The connection
  -- * @param key The keycode of the specified key combination.
  -- * \n
  -- * Using the special value `XCB_GRAB_ANY` means releasing all possible key codes.
  -- * @param grab_window The window on which the grabbed key combination will be released.
  -- * @param modifiers The modifiers of the specified key combination.
  -- * \n
  -- * Using the special value `XCB_MOD_MASK_ANY` means releasing the key combination
  -- * with every possible modifier combination.
  -- * @return A cookie
  -- *
  -- * Releases the key combination on \a grab_window if you grabbed it using
  -- * `xcb_grab_key` before.
  -- * 
  -- * This form can be used only if the request will not cause
  -- * a reply to be generated. Any returned error will be
  -- * saved for handling by xcb_request_check().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_ungrab_key_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_keycode_t     key
  -- ** @param xcb_window_t      grab_window
  -- ** @param uint16_t          modifiers
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_ungrab_key_checked
     (arg1 : System.Address;
      arg2 : xcb_keycode_t;
      arg3 : xcb_window_t;
      arg4 : stdint_h.uint16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:9380
   pragma Import (C, xcb_ungrab_key_checked, "xcb_ungrab_key_checked");

  --*<  
  --*<  
  --*<  
  --*
  -- * @brief release a key combination
  -- *
  -- * @param c The connection
  -- * @param key The keycode of the specified key combination.
  -- * \n
  -- * Using the special value `XCB_GRAB_ANY` means releasing all possible key codes.
  -- * @param grab_window The window on which the grabbed key combination will be released.
  -- * @param modifiers The modifiers of the specified key combination.
  -- * \n
  -- * Using the special value `XCB_MOD_MASK_ANY` means releasing the key combination
  -- * with every possible modifier combination.
  -- * @return A cookie
  -- *
  -- * Releases the key combination on \a grab_window if you grabbed it using
  -- * `xcb_grab_key` before.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_ungrab_key
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_keycode_t     key
  -- ** @param xcb_window_t      grab_window
  -- ** @param uint16_t          modifiers
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_ungrab_key
     (arg1 : System.Address;
      arg2 : xcb_keycode_t;
      arg3 : xcb_window_t;
      arg4 : stdint_h.uint16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:9417
   pragma Import (C, xcb_ungrab_key, "xcb_ungrab_key");

  --*<  
  --*<  
  --*<  
  --*
  -- * @brief release queued events
  -- *
  -- * @param c The connection
  -- * @param mode A bitmask of #xcb_allow_t values.
  -- * @param mode \n
  -- * @param time Timestamp to avoid race conditions when running X over the network.
  -- * \n
  -- * The special value `XCB_CURRENT_TIME` will be replaced with the current server
  -- * time.
  -- * @return A cookie
  -- *
  -- * Releases queued events if the client has caused a device (pointer/keyboard) to
  -- * freeze due to grabbing it actively. This request has no effect if \a time is
  -- * earlier than the last-grab time of the most recent active grab for this client
  -- * or if \a time is later than the current X server time.
  -- * 
  -- * This form can be used only if the request will not cause
  -- * a reply to be generated. Any returned error will be
  -- * saved for handling by xcb_request_check().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_allow_events_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           mode
  -- ** @param xcb_timestamp_t   time
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_allow_events_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_timestamp_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:9456
   pragma Import (C, xcb_allow_events_checked, "xcb_allow_events_checked");

  --*<  
  --*<  
  --*
  -- * @brief release queued events
  -- *
  -- * @param c The connection
  -- * @param mode A bitmask of #xcb_allow_t values.
  -- * @param mode \n
  -- * @param time Timestamp to avoid race conditions when running X over the network.
  -- * \n
  -- * The special value `XCB_CURRENT_TIME` will be replaced with the current server
  -- * time.
  -- * @return A cookie
  -- *
  -- * Releases queued events if the client has caused a device (pointer/keyboard) to
  -- * freeze due to grabbing it actively. This request has no effect if \a time is
  -- * earlier than the last-grab time of the most recent active grab for this client
  -- * or if \a time is later than the current X server time.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_allow_events
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           mode
  -- ** @param xcb_timestamp_t   time
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_allow_events
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_timestamp_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:9491
   pragma Import (C, xcb_allow_events, "xcb_allow_events");

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
  -- ** xcb_void_cookie_t xcb_grab_server_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_grab_server_checked (arg1 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:9517
   pragma Import (C, xcb_grab_server_checked, "xcb_grab_server_checked");

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
  -- ** xcb_void_cookie_t xcb_grab_server
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_grab_server (arg1 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:9538
   pragma Import (C, xcb_grab_server, "xcb_grab_server");

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
  -- ** xcb_void_cookie_t xcb_ungrab_server_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_ungrab_server_checked (arg1 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:9562
   pragma Import (C, xcb_ungrab_server_checked, "xcb_ungrab_server_checked");

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
  -- ** xcb_void_cookie_t xcb_ungrab_server
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_ungrab_server (arg1 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:9583
   pragma Import (C, xcb_ungrab_server, "xcb_ungrab_server");

  --*
  -- * @brief get pointer coordinates
  -- *
  -- * @param c The connection
  -- * @param window A window to check if the pointer is on the same screen as \a window (see the
  -- * `same_screen` field in the reply).
  -- * @return A cookie
  -- *
  -- * Gets the root window the pointer is logically on and the pointer coordinates
  -- * relative to the root window's origin.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_query_pointer_cookie_t xcb_query_pointer
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_query_pointer_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_query_pointer (arg1 : System.Address; arg2 : xcb_window_t) return xcb_query_pointer_cookie_t;  -- /usr/include/xcb/xproto.h:9609
   pragma Import (C, xcb_query_pointer, "xcb_query_pointer");

  --*<  
  --*
  -- * @brief get pointer coordinates
  -- *
  -- * @param c The connection
  -- * @param window A window to check if the pointer is on the same screen as \a window (see the
  -- * `same_screen` field in the reply).
  -- * @return A cookie
  -- *
  -- * Gets the root window the pointer is logically on and the pointer coordinates
  -- * relative to the root window's origin.
  -- * 
  -- * This form can be used only if the request will cause
  -- * a reply to be generated. Any returned error will be
  -- * placed in the event queue.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_query_pointer_cookie_t xcb_query_pointer_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_query_pointer_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_query_pointer_unchecked (arg1 : System.Address; arg2 : xcb_window_t) return xcb_query_pointer_cookie_t;  -- /usr/include/xcb/xproto.h:9639
   pragma Import (C, xcb_query_pointer_unchecked, "xcb_query_pointer_unchecked");

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
  -- * xcb_query_pointer_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_query_pointer_reply_t * xcb_query_pointer_reply
  -- ** 
  -- ** @param xcb_connection_t            *c
  -- ** @param xcb_query_pointer_cookie_t   cookie
  -- ** @param xcb_generic_error_t        **e
  -- ** @returns xcb_query_pointer_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_query_pointer_reply
     (arg1 : System.Address;
      arg2 : xcb_query_pointer_cookie_t;
      arg3 : System.Address) return access xcb_query_pointer_reply_t;  -- /usr/include/xcb/xproto.h:9669
   pragma Import (C, xcb_query_pointer_reply, "xcb_query_pointer_reply");

  --*<  
  --*<  
  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_timecoord_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_timecoord_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_timecoord_next
  -- ** 
  -- ** @param xcb_timecoord_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_timecoord_next (arg1 : access xcb_timecoord_iterator_t);  -- /usr/include/xcb/xproto.h:9692
   pragma Import (C, xcb_timecoord_next, "xcb_timecoord_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_timecoord_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_timecoord_end
  -- ** 
  -- ** @param xcb_timecoord_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_timecoord_end (arg1 : xcb_timecoord_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:9714
   pragma Import (C, xcb_timecoord_end, "xcb_timecoord_end");

  --*<  
   function xcb_get_motion_events_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:9717
   pragma Import (C, xcb_get_motion_events_sizeof, "xcb_get_motion_events_sizeof");

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
  -- ** xcb_get_motion_events_cookie_t xcb_get_motion_events
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @param xcb_timestamp_t   start
  -- ** @param xcb_timestamp_t   stop
  -- ** @returns xcb_get_motion_events_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_motion_events
     (arg1 : System.Address;
      arg2 : xcb_window_t;
      arg3 : xcb_timestamp_t;
      arg4 : xcb_timestamp_t) return xcb_get_motion_events_cookie_t;  -- /usr/include/xcb/xproto.h:9741
   pragma Import (C, xcb_get_motion_events, "xcb_get_motion_events");

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
  -- ** xcb_get_motion_events_cookie_t xcb_get_motion_events_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @param xcb_timestamp_t   start
  -- ** @param xcb_timestamp_t   stop
  -- ** @returns xcb_get_motion_events_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_motion_events_unchecked
     (arg1 : System.Address;
      arg2 : xcb_window_t;
      arg3 : xcb_timestamp_t;
      arg4 : xcb_timestamp_t) return xcb_get_motion_events_cookie_t;  -- /usr/include/xcb/xproto.h:9771
   pragma Import (C, xcb_get_motion_events_unchecked, "xcb_get_motion_events_unchecked");

  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_timecoord_t * xcb_get_motion_events_events
  -- ** 
  -- ** @param const xcb_get_motion_events_reply_t *R
  -- ** @returns xcb_timecoord_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_motion_events_events (arg1 : System.Address) return access xcb_timecoord_t;  -- /usr/include/xcb/xproto.h:9787
   pragma Import (C, xcb_get_motion_events_events, "xcb_get_motion_events_events");

  --****************************************************************************
  -- **
  -- ** int xcb_get_motion_events_events_length
  -- ** 
  -- ** @param const xcb_get_motion_events_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_motion_events_events_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:9800
   pragma Import (C, xcb_get_motion_events_events_length, "xcb_get_motion_events_events_length");

  --****************************************************************************
  -- **
  -- ** xcb_timecoord_iterator_t xcb_get_motion_events_events_iterator
  -- ** 
  -- ** @param const xcb_get_motion_events_reply_t *R
  -- ** @returns xcb_timecoord_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_motion_events_events_iterator (arg1 : System.Address) return xcb_timecoord_iterator_t;  -- /usr/include/xcb/xproto.h:9813
   pragma Import (C, xcb_get_motion_events_events_iterator, "xcb_get_motion_events_events_iterator");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_get_motion_events_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_get_motion_events_reply_t * xcb_get_motion_events_reply
  -- ** 
  -- ** @param xcb_connection_t                *c
  -- ** @param xcb_get_motion_events_cookie_t   cookie
  -- ** @param xcb_generic_error_t            **e
  -- ** @returns xcb_get_motion_events_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_motion_events_reply
     (arg1 : System.Address;
      arg2 : xcb_get_motion_events_cookie_t;
      arg3 : System.Address) return access xcb_get_motion_events_reply_t;  -- /usr/include/xcb/xproto.h:9842
   pragma Import (C, xcb_get_motion_events_reply, "xcb_get_motion_events_reply");

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
  -- ** xcb_translate_coordinates_cookie_t xcb_translate_coordinates
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      src_window
  -- ** @param xcb_window_t      dst_window
  -- ** @param int16_t           src_x
  -- ** @param int16_t           src_y
  -- ** @returns xcb_translate_coordinates_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_translate_coordinates
     (arg1 : System.Address;
      arg2 : xcb_window_t;
      arg3 : xcb_window_t;
      arg4 : sys_types_h.int16_t;
      arg5 : sys_types_h.int16_t) return xcb_translate_coordinates_cookie_t;  -- /usr/include/xcb/xproto.h:9869
   pragma Import (C, xcb_translate_coordinates, "xcb_translate_coordinates");

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
  -- ** xcb_translate_coordinates_cookie_t xcb_translate_coordinates_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      src_window
  -- ** @param xcb_window_t      dst_window
  -- ** @param int16_t           src_x
  -- ** @param int16_t           src_y
  -- ** @returns xcb_translate_coordinates_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_translate_coordinates_unchecked
     (arg1 : System.Address;
      arg2 : xcb_window_t;
      arg3 : xcb_window_t;
      arg4 : sys_types_h.int16_t;
      arg5 : sys_types_h.int16_t) return xcb_translate_coordinates_cookie_t;  -- /usr/include/xcb/xproto.h:9901
   pragma Import (C, xcb_translate_coordinates_unchecked, "xcb_translate_coordinates_unchecked");

  --*<  
  --*<  
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
  -- * xcb_translate_coordinates_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_translate_coordinates_reply_t * xcb_translate_coordinates_reply
  -- ** 
  -- ** @param xcb_connection_t                    *c
  -- ** @param xcb_translate_coordinates_cookie_t   cookie
  -- ** @param xcb_generic_error_t                **e
  -- ** @returns xcb_translate_coordinates_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_translate_coordinates_reply
     (arg1 : System.Address;
      arg2 : xcb_translate_coordinates_cookie_t;
      arg3 : System.Address) return access xcb_translate_coordinates_reply_t;  -- /usr/include/xcb/xproto.h:9934
   pragma Import (C, xcb_translate_coordinates_reply, "xcb_translate_coordinates_reply");

  --*<  
  --*<  
  --*
  -- * @brief move mouse pointer
  -- *
  -- * @param c The connection
  -- * @param src_window If \a src_window is not `XCB_NONE` (TODO), the move will only take place if the
  -- * pointer is inside \a src_window and within the rectangle specified by (\a src_x,
  -- * \a src_y, \a src_width, \a src_height). The rectangle coordinates are relative to
  -- * \a src_window.
  -- * @param dst_window If \a dst_window is not `XCB_NONE` (TODO), the pointer will be moved to the
  -- * offsets (\a dst_x, \a dst_y) relative to \a dst_window. If \a dst_window is
  -- * `XCB_NONE` (TODO), the pointer will be moved by the offsets (\a dst_x, \a dst_y)
  -- * relative to the current position of the pointer.
  -- * @return A cookie
  -- *
  -- * Moves the mouse pointer to the specified position.
  -- * 
  -- * If \a src_window is not `XCB_NONE` (TODO), the move will only take place if the
  -- * pointer is inside \a src_window and within the rectangle specified by (\a src_x,
  -- * \a src_y, \a src_width, \a src_height). The rectangle coordinates are relative to
  -- * \a src_window.
  -- * 
  -- * If \a dst_window is not `XCB_NONE` (TODO), the pointer will be moved to the
  -- * offsets (\a dst_x, \a dst_y) relative to \a dst_window. If \a dst_window is
  -- * `XCB_NONE` (TODO), the pointer will be moved by the offsets (\a dst_x, \a dst_y)
  -- * relative to the current position of the pointer.
  -- * 
  -- * This form can be used only if the request will not cause
  -- * a reply to be generated. Any returned error will be
  -- * saved for handling by xcb_request_check().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_warp_pointer_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      src_window
  -- ** @param xcb_window_t      dst_window
  -- ** @param int16_t           src_x
  -- ** @param int16_t           src_y
  -- ** @param uint16_t          src_width
  -- ** @param uint16_t          src_height
  -- ** @param int16_t           dst_x
  -- ** @param int16_t           dst_y
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_warp_pointer_checked
     (arg1 : System.Address;
      arg2 : xcb_window_t;
      arg3 : xcb_window_t;
      arg4 : sys_types_h.int16_t;
      arg5 : sys_types_h.int16_t;
      arg6 : stdint_h.uint16_t;
      arg7 : stdint_h.uint16_t;
      arg8 : sys_types_h.int16_t;
      arg9 : sys_types_h.int16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:9987
   pragma Import (C, xcb_warp_pointer_checked, "xcb_warp_pointer_checked");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*
  -- * @brief move mouse pointer
  -- *
  -- * @param c The connection
  -- * @param src_window If \a src_window is not `XCB_NONE` (TODO), the move will only take place if the
  -- * pointer is inside \a src_window and within the rectangle specified by (\a src_x,
  -- * \a src_y, \a src_width, \a src_height). The rectangle coordinates are relative to
  -- * \a src_window.
  -- * @param dst_window If \a dst_window is not `XCB_NONE` (TODO), the pointer will be moved to the
  -- * offsets (\a dst_x, \a dst_y) relative to \a dst_window. If \a dst_window is
  -- * `XCB_NONE` (TODO), the pointer will be moved by the offsets (\a dst_x, \a dst_y)
  -- * relative to the current position of the pointer.
  -- * @return A cookie
  -- *
  -- * Moves the mouse pointer to the specified position.
  -- * 
  -- * If \a src_window is not `XCB_NONE` (TODO), the move will only take place if the
  -- * pointer is inside \a src_window and within the rectangle specified by (\a src_x,
  -- * \a src_y, \a src_width, \a src_height). The rectangle coordinates are relative to
  -- * \a src_window.
  -- * 
  -- * If \a dst_window is not `XCB_NONE` (TODO), the pointer will be moved to the
  -- * offsets (\a dst_x, \a dst_y) relative to \a dst_window. If \a dst_window is
  -- * `XCB_NONE` (TODO), the pointer will be moved by the offsets (\a dst_x, \a dst_y)
  -- * relative to the current position of the pointer.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_warp_pointer
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      src_window
  -- ** @param xcb_window_t      dst_window
  -- ** @param int16_t           src_x
  -- ** @param int16_t           src_y
  -- ** @param uint16_t          src_width
  -- ** @param uint16_t          src_height
  -- ** @param int16_t           dst_x
  -- ** @param int16_t           dst_y
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_warp_pointer
     (arg1 : System.Address;
      arg2 : xcb_window_t;
      arg3 : xcb_window_t;
      arg4 : sys_types_h.int16_t;
      arg5 : sys_types_h.int16_t;
      arg6 : stdint_h.uint16_t;
      arg7 : stdint_h.uint16_t;
      arg8 : sys_types_h.int16_t;
      arg9 : sys_types_h.int16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:10043
   pragma Import (C, xcb_warp_pointer, "xcb_warp_pointer");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*
  -- * @brief Sets input focus
  -- *
  -- * @param c The connection
  -- * @param revert_to A bitmask of #xcb_input_focus_t values.
  -- * @param revert_to Specifies what happens when the \a focus window becomes unviewable (if \a focus
  -- * is neither `XCB_NONE` nor `XCB_POINTER_ROOT`).
  -- * @param focus The window to focus. All keyboard events will be reported to this window. The
  -- * window must be viewable (TODO), or a `xcb_match_error_t` occurs (TODO).
  -- * \n
  -- * If \a focus is `XCB_NONE` (TODO), all keyboard events are
  -- * discarded until a new focus window is set.
  -- * \n
  -- * If \a focus is `XCB_POINTER_ROOT` (TODO), focus is on the root window of the
  -- * screen on which the pointer is on currently.
  -- * @param time Timestamp to avoid race conditions when running X over the network.
  -- * \n
  -- * The special value `XCB_CURRENT_TIME` will be replaced with the current server
  -- * time.
  -- * @return A cookie
  -- *
  -- * Changes the input focus and the last-focus-change time. If the specified \a time
  -- * is earlier than the current last-focus-change time, the request is ignored (to
  -- * avoid race conditions when running X over the network).
  -- * 
  -- * A FocusIn and FocusOut event is generated when focus is changed.
  -- * 
  -- * This form can be used only if the request will not cause
  -- * a reply to be generated. Any returned error will be
  -- * saved for handling by xcb_request_check().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_set_input_focus_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           revert_to
  -- ** @param xcb_window_t      focus
  -- ** @param xcb_timestamp_t   time
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_set_input_focus_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_window_t;
      arg4 : xcb_timestamp_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:10098
   pragma Import (C, xcb_set_input_focus_checked, "xcb_set_input_focus_checked");

  --*<  
  --*<  
  --*<  
  --*
  -- * @brief Sets input focus
  -- *
  -- * @param c The connection
  -- * @param revert_to A bitmask of #xcb_input_focus_t values.
  -- * @param revert_to Specifies what happens when the \a focus window becomes unviewable (if \a focus
  -- * is neither `XCB_NONE` nor `XCB_POINTER_ROOT`).
  -- * @param focus The window to focus. All keyboard events will be reported to this window. The
  -- * window must be viewable (TODO), or a `xcb_match_error_t` occurs (TODO).
  -- * \n
  -- * If \a focus is `XCB_NONE` (TODO), all keyboard events are
  -- * discarded until a new focus window is set.
  -- * \n
  -- * If \a focus is `XCB_POINTER_ROOT` (TODO), focus is on the root window of the
  -- * screen on which the pointer is on currently.
  -- * @param time Timestamp to avoid race conditions when running X over the network.
  -- * \n
  -- * The special value `XCB_CURRENT_TIME` will be replaced with the current server
  -- * time.
  -- * @return A cookie
  -- *
  -- * Changes the input focus and the last-focus-change time. If the specified \a time
  -- * is earlier than the current last-focus-change time, the request is ignored (to
  -- * avoid race conditions when running X over the network).
  -- * 
  -- * A FocusIn and FocusOut event is generated when focus is changed.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_set_input_focus
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           revert_to
  -- ** @param xcb_window_t      focus
  -- ** @param xcb_timestamp_t   time
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_set_input_focus
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_window_t;
      arg4 : xcb_timestamp_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:10145
   pragma Import (C, xcb_set_input_focus, "xcb_set_input_focus");

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
  -- ** xcb_get_input_focus_cookie_t xcb_get_input_focus
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_get_input_focus_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_input_focus (arg1 : System.Address) return xcb_get_input_focus_cookie_t;  -- /usr/include/xcb/xproto.h:10169
   pragma Import (C, xcb_get_input_focus, "xcb_get_input_focus");

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
  -- ** xcb_get_input_focus_cookie_t xcb_get_input_focus_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_get_input_focus_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_input_focus_unchecked (arg1 : System.Address) return xcb_get_input_focus_cookie_t;  -- /usr/include/xcb/xproto.h:10193
   pragma Import (C, xcb_get_input_focus_unchecked, "xcb_get_input_focus_unchecked");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_get_input_focus_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_get_input_focus_reply_t * xcb_get_input_focus_reply
  -- ** 
  -- ** @param xcb_connection_t              *c
  -- ** @param xcb_get_input_focus_cookie_t   cookie
  -- ** @param xcb_generic_error_t          **e
  -- ** @returns xcb_get_input_focus_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_input_focus_reply
     (arg1 : System.Address;
      arg2 : xcb_get_input_focus_cookie_t;
      arg3 : System.Address) return access xcb_get_input_focus_reply_t;  -- /usr/include/xcb/xproto.h:10222
   pragma Import (C, xcb_get_input_focus_reply, "xcb_get_input_focus_reply");

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
  -- ** xcb_query_keymap_cookie_t xcb_query_keymap
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_query_keymap_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_query_keymap (arg1 : System.Address) return xcb_query_keymap_cookie_t;  -- /usr/include/xcb/xproto.h:10245
   pragma Import (C, xcb_query_keymap, "xcb_query_keymap");

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
  -- ** xcb_query_keymap_cookie_t xcb_query_keymap_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_query_keymap_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_query_keymap_unchecked (arg1 : System.Address) return xcb_query_keymap_cookie_t;  -- /usr/include/xcb/xproto.h:10269
   pragma Import (C, xcb_query_keymap_unchecked, "xcb_query_keymap_unchecked");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_query_keymap_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_query_keymap_reply_t * xcb_query_keymap_reply
  -- ** 
  -- ** @param xcb_connection_t           *c
  -- ** @param xcb_query_keymap_cookie_t   cookie
  -- ** @param xcb_generic_error_t       **e
  -- ** @returns xcb_query_keymap_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_query_keymap_reply
     (arg1 : System.Address;
      arg2 : xcb_query_keymap_cookie_t;
      arg3 : System.Address) return access xcb_query_keymap_reply_t;  -- /usr/include/xcb/xproto.h:10298
   pragma Import (C, xcb_query_keymap_reply, "xcb_query_keymap_reply");

  --*<  
  --*<  
  --*<  
   function xcb_open_font_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:10303
   pragma Import (C, xcb_open_font_sizeof, "xcb_open_font_sizeof");

  --*
  -- * @brief opens a font
  -- *
  -- * @param c The connection
  -- * @param fid The ID with which you will refer to the font, created by `xcb_generate_id`.
  -- * @param name_len Length (in bytes) of \a name.
  -- * @param name A pattern describing an X core font.
  -- * @return A cookie
  -- *
  -- * Opens any X core font matching the given \a name (for example "-misc-fixed-*").
  -- * 
  -- * Note that X core fonts are deprecated (but still supported) in favor of
  -- * client-side rendering using Xft.
  -- * 
  -- * This form can be used only if the request will not cause
  -- * a reply to be generated. Any returned error will be
  -- * saved for handling by xcb_request_check().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_open_font_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_font_t        fid
  -- ** @param uint16_t          name_len
  -- ** @param const char       *name
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_open_font_checked
     (arg1 : System.Address;
      arg2 : xcb_font_t;
      arg3 : stdint_h.uint16_t;
      arg4 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:10337
   pragma Import (C, xcb_open_font_checked, "xcb_open_font_checked");

  --*<  
  --*<  
  --*<  
  --*
  -- * @brief opens a font
  -- *
  -- * @param c The connection
  -- * @param fid The ID with which you will refer to the font, created by `xcb_generate_id`.
  -- * @param name_len Length (in bytes) of \a name.
  -- * @param name A pattern describing an X core font.
  -- * @return A cookie
  -- *
  -- * Opens any X core font matching the given \a name (for example "-misc-fixed-*").
  -- * 
  -- * Note that X core fonts are deprecated (but still supported) in favor of
  -- * client-side rendering using Xft.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_open_font
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_font_t        fid
  -- ** @param uint16_t          name_len
  -- ** @param const char       *name
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_open_font
     (arg1 : System.Address;
      arg2 : xcb_font_t;
      arg3 : stdint_h.uint16_t;
      arg4 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:10371
   pragma Import (C, xcb_open_font, "xcb_open_font");

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
  -- ** xcb_void_cookie_t xcb_close_font_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_font_t        font
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_close_font_checked (arg1 : System.Address; arg2 : xcb_font_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:10399
   pragma Import (C, xcb_close_font_checked, "xcb_close_font_checked");

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
  -- ** xcb_void_cookie_t xcb_close_font
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_font_t        font
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_close_font (arg1 : System.Address; arg2 : xcb_font_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:10422
   pragma Import (C, xcb_close_font, "xcb_close_font");

  --*<  
  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_fontprop_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_fontprop_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_fontprop_next
  -- ** 
  -- ** @param xcb_fontprop_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_fontprop_next (arg1 : access xcb_fontprop_iterator_t);  -- /usr/include/xcb/xproto.h:10444
   pragma Import (C, xcb_fontprop_next, "xcb_fontprop_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_fontprop_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_fontprop_end
  -- ** 
  -- ** @param xcb_fontprop_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_fontprop_end (arg1 : xcb_fontprop_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:10466
   pragma Import (C, xcb_fontprop_end, "xcb_fontprop_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_charinfo_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_charinfo_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_charinfo_next
  -- ** 
  -- ** @param xcb_charinfo_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_charinfo_next (arg1 : access xcb_charinfo_iterator_t);  -- /usr/include/xcb/xproto.h:10487
   pragma Import (C, xcb_charinfo_next, "xcb_charinfo_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_charinfo_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_charinfo_end
  -- ** 
  -- ** @param xcb_charinfo_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_charinfo_end (arg1 : xcb_charinfo_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:10509
   pragma Import (C, xcb_charinfo_end, "xcb_charinfo_end");

  --*<  
   function xcb_query_font_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:10512
   pragma Import (C, xcb_query_font_sizeof, "xcb_query_font_sizeof");

  --*
  -- * @brief query font metrics
  -- *
  -- * @param c The connection
  -- * @param font The fontable (Font or Graphics Context) to query.
  -- * @return A cookie
  -- *
  -- * Queries information associated with the font.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_query_font_cookie_t xcb_query_font
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_fontable_t    font
  -- ** @returns xcb_query_font_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_query_font (arg1 : System.Address; arg2 : xcb_fontable_t) return xcb_query_font_cookie_t;  -- /usr/include/xcb/xproto.h:10536
   pragma Import (C, xcb_query_font, "xcb_query_font");

  --*<  
  --*
  -- * @brief query font metrics
  -- *
  -- * @param c The connection
  -- * @param font The fontable (Font or Graphics Context) to query.
  -- * @return A cookie
  -- *
  -- * Queries information associated with the font.
  -- * 
  -- * This form can be used only if the request will cause
  -- * a reply to be generated. Any returned error will be
  -- * placed in the event queue.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_query_font_cookie_t xcb_query_font_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_fontable_t    font
  -- ** @returns xcb_query_font_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_query_font_unchecked (arg1 : System.Address; arg2 : xcb_fontable_t) return xcb_query_font_cookie_t;  -- /usr/include/xcb/xproto.h:10564
   pragma Import (C, xcb_query_font_unchecked, "xcb_query_font_unchecked");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_fontprop_t * xcb_query_font_properties
  -- ** 
  -- ** @param const xcb_query_font_reply_t *R
  -- ** @returns xcb_fontprop_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_query_font_properties (arg1 : System.Address) return access xcb_fontprop_t;  -- /usr/include/xcb/xproto.h:10578
   pragma Import (C, xcb_query_font_properties, "xcb_query_font_properties");

  --****************************************************************************
  -- **
  -- ** int xcb_query_font_properties_length
  -- ** 
  -- ** @param const xcb_query_font_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_query_font_properties_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:10591
   pragma Import (C, xcb_query_font_properties_length, "xcb_query_font_properties_length");

  --****************************************************************************
  -- **
  -- ** xcb_fontprop_iterator_t xcb_query_font_properties_iterator
  -- ** 
  -- ** @param const xcb_query_font_reply_t *R
  -- ** @returns xcb_fontprop_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_query_font_properties_iterator (arg1 : System.Address) return xcb_fontprop_iterator_t;  -- /usr/include/xcb/xproto.h:10604
   pragma Import (C, xcb_query_font_properties_iterator, "xcb_query_font_properties_iterator");

  --****************************************************************************
  -- **
  -- ** xcb_charinfo_t * xcb_query_font_char_infos
  -- ** 
  -- ** @param const xcb_query_font_reply_t *R
  -- ** @returns xcb_charinfo_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_query_font_char_infos (arg1 : System.Address) return access xcb_charinfo_t;  -- /usr/include/xcb/xproto.h:10617
   pragma Import (C, xcb_query_font_char_infos, "xcb_query_font_char_infos");

  --****************************************************************************
  -- **
  -- ** int xcb_query_font_char_infos_length
  -- ** 
  -- ** @param const xcb_query_font_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_query_font_char_infos_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:10630
   pragma Import (C, xcb_query_font_char_infos_length, "xcb_query_font_char_infos_length");

  --****************************************************************************
  -- **
  -- ** xcb_charinfo_iterator_t xcb_query_font_char_infos_iterator
  -- ** 
  -- ** @param const xcb_query_font_reply_t *R
  -- ** @returns xcb_charinfo_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_query_font_char_infos_iterator (arg1 : System.Address) return xcb_charinfo_iterator_t;  -- /usr/include/xcb/xproto.h:10643
   pragma Import (C, xcb_query_font_char_infos_iterator, "xcb_query_font_char_infos_iterator");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_query_font_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_query_font_reply_t * xcb_query_font_reply
  -- ** 
  -- ** @param xcb_connection_t         *c
  -- ** @param xcb_query_font_cookie_t   cookie
  -- ** @param xcb_generic_error_t     **e
  -- ** @returns xcb_query_font_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_query_font_reply
     (arg1 : System.Address;
      arg2 : xcb_query_font_cookie_t;
      arg3 : System.Address) return access xcb_query_font_reply_t;  -- /usr/include/xcb/xproto.h:10672
   pragma Import (C, xcb_query_font_reply, "xcb_query_font_reply");

  --*<  
  --*<  
  --*<  
   function xcb_query_text_extents_sizeof (arg1 : System.Address; arg2 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/xproto.h:10677
   pragma Import (C, xcb_query_text_extents_sizeof, "xcb_query_text_extents_sizeof");

  --*<  
  --*
  -- * @brief get text extents
  -- *
  -- * @param c The connection
  -- * @param font The \a font to calculate text extents in. You can also pass a graphics context.
  -- * @param string_len The number of characters in \a string.
  -- * @param string The text to get text extents for.
  -- * @return A cookie
  -- *
  -- * Query text extents from the X11 server. This request returns the bounding box
  -- * of the specified 16-bit character string in the specified \a font or the font
  -- * contained in the specified graphics context.
  -- * 
  -- * `font_ascent` is set to the maximum of the ascent metrics of all characters in
  -- * the string. `font_descent` is set to the maximum of the descent metrics.
  -- * `overall_width` is set to the sum of the character-width metrics of all
  -- * characters in the string. For each character in the string, let W be the sum of
  -- * the character-width metrics of all characters preceding it in the string. Let L
  -- * be the left-side-bearing metric of the character plus W. Let R be the
  -- * right-side-bearing metric of the character plus W. The lbearing member is set
  -- * to the minimum L of all characters in the string. The rbearing member is set to
  -- * the maximum R.
  -- * 
  -- * For fonts defined with linear indexing rather than 2-byte matrix indexing, each
  -- * `xcb_char2b_t` structure is interpreted as a 16-bit number with byte1 as the
  -- * most significant byte. If the font has no defined default character, undefined
  -- * characters in the string are taken to have all zero metrics.
  -- * 
  -- * Characters with all zero metrics are ignored. If the font has no defined
  -- * default_char, the undefined characters in the string are also ignored.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_query_text_extents_cookie_t xcb_query_text_extents
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_fontable_t      font
  -- ** @param uint32_t            string_len
  -- ** @param const xcb_char2b_t *string
  -- ** @returns xcb_query_text_extents_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_query_text_extents
     (arg1 : System.Address;
      arg2 : xcb_fontable_t;
      arg3 : stdint_h.uint32_t;
      arg4 : System.Address) return xcb_query_text_extents_cookie_t;  -- /usr/include/xcb/xproto.h:10726
   pragma Import (C, xcb_query_text_extents, "xcb_query_text_extents");

  --*<  
  --*<  
  --*<  
  --*
  -- * @brief get text extents
  -- *
  -- * @param c The connection
  -- * @param font The \a font to calculate text extents in. You can also pass a graphics context.
  -- * @param string_len The number of characters in \a string.
  -- * @param string The text to get text extents for.
  -- * @return A cookie
  -- *
  -- * Query text extents from the X11 server. This request returns the bounding box
  -- * of the specified 16-bit character string in the specified \a font or the font
  -- * contained in the specified graphics context.
  -- * 
  -- * `font_ascent` is set to the maximum of the ascent metrics of all characters in
  -- * the string. `font_descent` is set to the maximum of the descent metrics.
  -- * `overall_width` is set to the sum of the character-width metrics of all
  -- * characters in the string. For each character in the string, let W be the sum of
  -- * the character-width metrics of all characters preceding it in the string. Let L
  -- * be the left-side-bearing metric of the character plus W. Let R be the
  -- * right-side-bearing metric of the character plus W. The lbearing member is set
  -- * to the minimum L of all characters in the string. The rbearing member is set to
  -- * the maximum R.
  -- * 
  -- * For fonts defined with linear indexing rather than 2-byte matrix indexing, each
  -- * `xcb_char2b_t` structure is interpreted as a 16-bit number with byte1 as the
  -- * most significant byte. If the font has no defined default character, undefined
  -- * characters in the string are taken to have all zero metrics.
  -- * 
  -- * Characters with all zero metrics are ignored. If the font has no defined
  -- * default_char, the undefined characters in the string are also ignored.
  -- * 
  -- * This form can be used only if the request will cause
  -- * a reply to be generated. Any returned error will be
  -- * placed in the event queue.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_query_text_extents_cookie_t xcb_query_text_extents_unchecked
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_fontable_t      font
  -- ** @param uint32_t            string_len
  -- ** @param const xcb_char2b_t *string
  -- ** @returns xcb_query_text_extents_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_query_text_extents_unchecked
     (arg1 : System.Address;
      arg2 : xcb_fontable_t;
      arg3 : stdint_h.uint32_t;
      arg4 : System.Address) return xcb_query_text_extents_cookie_t;  -- /usr/include/xcb/xproto.h:10780
   pragma Import (C, xcb_query_text_extents_unchecked, "xcb_query_text_extents_unchecked");

  --*<  
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
  -- * xcb_query_text_extents_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_query_text_extents_reply_t * xcb_query_text_extents_reply
  -- ** 
  -- ** @param xcb_connection_t                 *c
  -- ** @param xcb_query_text_extents_cookie_t   cookie
  -- ** @param xcb_generic_error_t             **e
  -- ** @returns xcb_query_text_extents_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_query_text_extents_reply
     (arg1 : System.Address;
      arg2 : xcb_query_text_extents_cookie_t;
      arg3 : System.Address) return access xcb_query_text_extents_reply_t;  -- /usr/include/xcb/xproto.h:10812
   pragma Import (C, xcb_query_text_extents_reply, "xcb_query_text_extents_reply");

  --*<  
  --*<  
  --*<  
   function xcb_str_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:10817
   pragma Import (C, xcb_str_sizeof, "xcb_str_sizeof");

  --****************************************************************************
  -- **
  -- ** char * xcb_str_name
  -- ** 
  -- ** @param const xcb_str_t *R
  -- ** @returns char *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_str_name (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/xproto.h:10830
   pragma Import (C, xcb_str_name, "xcb_str_name");

  --****************************************************************************
  -- **
  -- ** int xcb_str_name_length
  -- ** 
  -- ** @param const xcb_str_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_str_name_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:10843
   pragma Import (C, xcb_str_name_length, "xcb_str_name_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_str_name_end
  -- ** 
  -- ** @param const xcb_str_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_str_name_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:10856
   pragma Import (C, xcb_str_name_end, "xcb_str_name_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_str_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_str_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_str_next
  -- ** 
  -- ** @param xcb_str_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_str_next (arg1 : access xcb_str_iterator_t);  -- /usr/include/xcb/xproto.h:10877
   pragma Import (C, xcb_str_next, "xcb_str_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_str_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_str_end
  -- ** 
  -- ** @param xcb_str_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_str_end (arg1 : xcb_str_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:10899
   pragma Import (C, xcb_str_end, "xcb_str_end");

  --*<  
   function xcb_list_fonts_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:10902
   pragma Import (C, xcb_list_fonts_sizeof, "xcb_list_fonts_sizeof");

  --*
  -- * @brief get matching font names
  -- *
  -- * @param c The connection
  -- * @param max_names The maximum number of fonts to be returned.
  -- * @param pattern_len The length (in bytes) of \a pattern.
  -- * @param pattern A font pattern, for example "-misc-fixed-*".
  -- * \n
  -- * The asterisk (*) is a wildcard for any number of characters. The question mark
  -- * (?) is a wildcard for a single character. Use of uppercase or lowercase does
  -- * not matter.
  -- * @return A cookie
  -- *
  -- * Gets a list of available font names which match the given \a pattern.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_list_fonts_cookie_t xcb_list_fonts
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint16_t          max_names
  -- ** @param uint16_t          pattern_len
  -- ** @param const char       *pattern
  -- ** @returns xcb_list_fonts_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_list_fonts
     (arg1 : System.Address;
      arg2 : stdint_h.uint16_t;
      arg3 : stdint_h.uint16_t;
      arg4 : Interfaces.C.Strings.chars_ptr) return xcb_list_fonts_cookie_t;  -- /usr/include/xcb/xproto.h:10934
   pragma Import (C, xcb_list_fonts, "xcb_list_fonts");

  --*<  
  --*<  
  --*<  
  --*
  -- * @brief get matching font names
  -- *
  -- * @param c The connection
  -- * @param max_names The maximum number of fonts to be returned.
  -- * @param pattern_len The length (in bytes) of \a pattern.
  -- * @param pattern A font pattern, for example "-misc-fixed-*".
  -- * \n
  -- * The asterisk (*) is a wildcard for any number of characters. The question mark
  -- * (?) is a wildcard for a single character. Use of uppercase or lowercase does
  -- * not matter.
  -- * @return A cookie
  -- *
  -- * Gets a list of available font names which match the given \a pattern.
  -- * 
  -- * This form can be used only if the request will cause
  -- * a reply to be generated. Any returned error will be
  -- * placed in the event queue.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_list_fonts_cookie_t xcb_list_fonts_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint16_t          max_names
  -- ** @param uint16_t          pattern_len
  -- ** @param const char       *pattern
  -- ** @returns xcb_list_fonts_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_list_fonts_unchecked
     (arg1 : System.Address;
      arg2 : stdint_h.uint16_t;
      arg3 : stdint_h.uint16_t;
      arg4 : Interfaces.C.Strings.chars_ptr) return xcb_list_fonts_cookie_t;  -- /usr/include/xcb/xproto.h:10972
   pragma Import (C, xcb_list_fonts_unchecked, "xcb_list_fonts_unchecked");

  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** int xcb_list_fonts_names_length
  -- ** 
  -- ** @param const xcb_list_fonts_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_list_fonts_names_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:10988
   pragma Import (C, xcb_list_fonts_names_length, "xcb_list_fonts_names_length");

  --****************************************************************************
  -- **
  -- ** xcb_str_iterator_t xcb_list_fonts_names_iterator
  -- ** 
  -- ** @param const xcb_list_fonts_reply_t *R
  -- ** @returns xcb_str_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_list_fonts_names_iterator (arg1 : System.Address) return xcb_str_iterator_t;  -- /usr/include/xcb/xproto.h:11001
   pragma Import (C, xcb_list_fonts_names_iterator, "xcb_list_fonts_names_iterator");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_list_fonts_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_list_fonts_reply_t * xcb_list_fonts_reply
  -- ** 
  -- ** @param xcb_connection_t         *c
  -- ** @param xcb_list_fonts_cookie_t   cookie
  -- ** @param xcb_generic_error_t     **e
  -- ** @returns xcb_list_fonts_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_list_fonts_reply
     (arg1 : System.Address;
      arg2 : xcb_list_fonts_cookie_t;
      arg3 : System.Address) return access xcb_list_fonts_reply_t;  -- /usr/include/xcb/xproto.h:11030
   pragma Import (C, xcb_list_fonts_reply, "xcb_list_fonts_reply");

  --*<  
  --*<  
  --*<  
   function xcb_list_fonts_with_info_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:11035
   pragma Import (C, xcb_list_fonts_with_info_sizeof, "xcb_list_fonts_with_info_sizeof");

  --*
  -- * @brief get matching font names and information
  -- *
  -- * @param c The connection
  -- * @param max_names The maximum number of fonts to be returned.
  -- * @param pattern_len The length (in bytes) of \a pattern.
  -- * @param pattern A font pattern, for example "-misc-fixed-*".
  -- * \n
  -- * The asterisk (*) is a wildcard for any number of characters. The question mark
  -- * (?) is a wildcard for a single character. Use of uppercase or lowercase does
  -- * not matter.
  -- * @return A cookie
  -- *
  -- * Gets a list of available font names which match the given \a pattern.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_list_fonts_with_info_cookie_t xcb_list_fonts_with_info
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint16_t          max_names
  -- ** @param uint16_t          pattern_len
  -- ** @param const char       *pattern
  -- ** @returns xcb_list_fonts_with_info_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_list_fonts_with_info
     (arg1 : System.Address;
      arg2 : stdint_h.uint16_t;
      arg3 : stdint_h.uint16_t;
      arg4 : Interfaces.C.Strings.chars_ptr) return xcb_list_fonts_with_info_cookie_t;  -- /usr/include/xcb/xproto.h:11067
   pragma Import (C, xcb_list_fonts_with_info, "xcb_list_fonts_with_info");

  --*<  
  --*<  
  --*<  
  --*
  -- * @brief get matching font names and information
  -- *
  -- * @param c The connection
  -- * @param max_names The maximum number of fonts to be returned.
  -- * @param pattern_len The length (in bytes) of \a pattern.
  -- * @param pattern A font pattern, for example "-misc-fixed-*".
  -- * \n
  -- * The asterisk (*) is a wildcard for any number of characters. The question mark
  -- * (?) is a wildcard for a single character. Use of uppercase or lowercase does
  -- * not matter.
  -- * @return A cookie
  -- *
  -- * Gets a list of available font names which match the given \a pattern.
  -- * 
  -- * This form can be used only if the request will cause
  -- * a reply to be generated. Any returned error will be
  -- * placed in the event queue.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_list_fonts_with_info_cookie_t xcb_list_fonts_with_info_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint16_t          max_names
  -- ** @param uint16_t          pattern_len
  -- ** @param const char       *pattern
  -- ** @returns xcb_list_fonts_with_info_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_list_fonts_with_info_unchecked
     (arg1 : System.Address;
      arg2 : stdint_h.uint16_t;
      arg3 : stdint_h.uint16_t;
      arg4 : Interfaces.C.Strings.chars_ptr) return xcb_list_fonts_with_info_cookie_t;  -- /usr/include/xcb/xproto.h:11105
   pragma Import (C, xcb_list_fonts_with_info_unchecked, "xcb_list_fonts_with_info_unchecked");

  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_fontprop_t * xcb_list_fonts_with_info_properties
  -- ** 
  -- ** @param const xcb_list_fonts_with_info_reply_t *R
  -- ** @returns xcb_fontprop_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_list_fonts_with_info_properties (arg1 : System.Address) return access xcb_fontprop_t;  -- /usr/include/xcb/xproto.h:11121
   pragma Import (C, xcb_list_fonts_with_info_properties, "xcb_list_fonts_with_info_properties");

  --****************************************************************************
  -- **
  -- ** int xcb_list_fonts_with_info_properties_length
  -- ** 
  -- ** @param const xcb_list_fonts_with_info_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_list_fonts_with_info_properties_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:11134
   pragma Import (C, xcb_list_fonts_with_info_properties_length, "xcb_list_fonts_with_info_properties_length");

  --****************************************************************************
  -- **
  -- ** xcb_fontprop_iterator_t xcb_list_fonts_with_info_properties_iterator
  -- ** 
  -- ** @param const xcb_list_fonts_with_info_reply_t *R
  -- ** @returns xcb_fontprop_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_list_fonts_with_info_properties_iterator (arg1 : System.Address) return xcb_fontprop_iterator_t;  -- /usr/include/xcb/xproto.h:11147
   pragma Import (C, xcb_list_fonts_with_info_properties_iterator, "xcb_list_fonts_with_info_properties_iterator");

  --****************************************************************************
  -- **
  -- ** char * xcb_list_fonts_with_info_name
  -- ** 
  -- ** @param const xcb_list_fonts_with_info_reply_t *R
  -- ** @returns char *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_list_fonts_with_info_name (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/xproto.h:11160
   pragma Import (C, xcb_list_fonts_with_info_name, "xcb_list_fonts_with_info_name");

  --****************************************************************************
  -- **
  -- ** int xcb_list_fonts_with_info_name_length
  -- ** 
  -- ** @param const xcb_list_fonts_with_info_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_list_fonts_with_info_name_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:11173
   pragma Import (C, xcb_list_fonts_with_info_name_length, "xcb_list_fonts_with_info_name_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_list_fonts_with_info_name_end
  -- ** 
  -- ** @param const xcb_list_fonts_with_info_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_list_fonts_with_info_name_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:11186
   pragma Import (C, xcb_list_fonts_with_info_name_end, "xcb_list_fonts_with_info_name_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_list_fonts_with_info_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_list_fonts_with_info_reply_t * xcb_list_fonts_with_info_reply
  -- ** 
  -- ** @param xcb_connection_t                   *c
  -- ** @param xcb_list_fonts_with_info_cookie_t   cookie
  -- ** @param xcb_generic_error_t               **e
  -- ** @returns xcb_list_fonts_with_info_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_list_fonts_with_info_reply
     (arg1 : System.Address;
      arg2 : xcb_list_fonts_with_info_cookie_t;
      arg3 : System.Address) return access xcb_list_fonts_with_info_reply_t;  -- /usr/include/xcb/xproto.h:11215
   pragma Import (C, xcb_list_fonts_with_info_reply, "xcb_list_fonts_with_info_reply");

  --*<  
  --*<  
  --*<  
   function xcb_set_font_path_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:11220
   pragma Import (C, xcb_set_font_path_sizeof, "xcb_set_font_path_sizeof");

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
  -- ** xcb_void_cookie_t xcb_set_font_path_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint16_t          font_qty
  -- ** @param const xcb_str_t  *font
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_set_font_path_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint16_t;
      arg3 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:11246
   pragma Import (C, xcb_set_font_path_checked, "xcb_set_font_path_checked");

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
  -- ** xcb_void_cookie_t xcb_set_font_path
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint16_t          font_qty
  -- ** @param const xcb_str_t  *font
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_set_font_path
     (arg1 : System.Address;
      arg2 : stdint_h.uint16_t;
      arg3 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:11271
   pragma Import (C, xcb_set_font_path, "xcb_set_font_path");

  --*<  
  --*<  
  --*<  
   function xcb_get_font_path_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:11276
   pragma Import (C, xcb_get_font_path_sizeof, "xcb_get_font_path_sizeof");

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
  -- ** xcb_get_font_path_cookie_t xcb_get_font_path
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_get_font_path_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_font_path (arg1 : System.Address) return xcb_get_font_path_cookie_t;  -- /usr/include/xcb/xproto.h:11297
   pragma Import (C, xcb_get_font_path, "xcb_get_font_path");

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
  -- ** xcb_get_font_path_cookie_t xcb_get_font_path_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_get_font_path_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_font_path_unchecked (arg1 : System.Address) return xcb_get_font_path_cookie_t;  -- /usr/include/xcb/xproto.h:11321
   pragma Import (C, xcb_get_font_path_unchecked, "xcb_get_font_path_unchecked");

  --****************************************************************************
  -- **
  -- ** int xcb_get_font_path_path_length
  -- ** 
  -- ** @param const xcb_get_font_path_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_font_path_path_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:11334
   pragma Import (C, xcb_get_font_path_path_length, "xcb_get_font_path_path_length");

  --****************************************************************************
  -- **
  -- ** xcb_str_iterator_t xcb_get_font_path_path_iterator
  -- ** 
  -- ** @param const xcb_get_font_path_reply_t *R
  -- ** @returns xcb_str_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_font_path_path_iterator (arg1 : System.Address) return xcb_str_iterator_t;  -- /usr/include/xcb/xproto.h:11347
   pragma Import (C, xcb_get_font_path_path_iterator, "xcb_get_font_path_path_iterator");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_get_font_path_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_get_font_path_reply_t * xcb_get_font_path_reply
  -- ** 
  -- ** @param xcb_connection_t            *c
  -- ** @param xcb_get_font_path_cookie_t   cookie
  -- ** @param xcb_generic_error_t        **e
  -- ** @returns xcb_get_font_path_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_font_path_reply
     (arg1 : System.Address;
      arg2 : xcb_get_font_path_cookie_t;
      arg3 : System.Address) return access xcb_get_font_path_reply_t;  -- /usr/include/xcb/xproto.h:11376
   pragma Import (C, xcb_get_font_path_reply, "xcb_get_font_path_reply");

  --*<  
  --*<  
  --*
  -- * @brief Creates a pixmap
  -- *
  -- * @param c The connection
  -- * @param depth TODO
  -- * @param pid The ID with which you will refer to the new pixmap, created by
  -- * `xcb_generate_id`.
  -- * @param drawable Drawable to get the screen from.
  -- * @param width The width of the new pixmap.
  -- * @param height The height of the new pixmap.
  -- * @return A cookie
  -- *
  -- * Creates a pixmap. The pixmap can only be used on the same screen as \a drawable
  -- * is on and only with drawables of the same \a depth.
  -- * 
  -- * This form can be used only if the request will not cause
  -- * a reply to be generated. Any returned error will be
  -- * saved for handling by xcb_request_check().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_create_pixmap_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           depth
  -- ** @param xcb_pixmap_t      pid
  -- ** @param xcb_drawable_t    drawable
  -- ** @param uint16_t          width
  -- ** @param uint16_t          height
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_create_pixmap_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_pixmap_t;
      arg4 : xcb_drawable_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:11415
   pragma Import (C, xcb_create_pixmap_checked, "xcb_create_pixmap_checked");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*
  -- * @brief Creates a pixmap
  -- *
  -- * @param c The connection
  -- * @param depth TODO
  -- * @param pid The ID with which you will refer to the new pixmap, created by
  -- * `xcb_generate_id`.
  -- * @param drawable Drawable to get the screen from.
  -- * @param width The width of the new pixmap.
  -- * @param height The height of the new pixmap.
  -- * @return A cookie
  -- *
  -- * Creates a pixmap. The pixmap can only be used on the same screen as \a drawable
  -- * is on and only with drawables of the same \a depth.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_create_pixmap
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           depth
  -- ** @param xcb_pixmap_t      pid
  -- ** @param xcb_drawable_t    drawable
  -- ** @param uint16_t          width
  -- ** @param uint16_t          height
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_create_pixmap
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_pixmap_t;
      arg4 : xcb_drawable_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:11454
   pragma Import (C, xcb_create_pixmap, "xcb_create_pixmap");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*
  -- * @brief Destroys a pixmap
  -- *
  -- * @param c The connection
  -- * @param pixmap The pixmap to destroy.
  -- * @return A cookie
  -- *
  -- * Deletes the association between the pixmap ID and the pixmap. The pixmap
  -- * storage will be freed when there are no more references to it.
  -- * 
  -- * This form can be used only if the request will not cause
  -- * a reply to be generated. Any returned error will be
  -- * saved for handling by xcb_request_check().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_free_pixmap_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_pixmap_t      pixmap
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_free_pixmap_checked (arg1 : System.Address; arg2 : xcb_pixmap_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:11487
   pragma Import (C, xcb_free_pixmap_checked, "xcb_free_pixmap_checked");

  --*<  
  --*
  -- * @brief Destroys a pixmap
  -- *
  -- * @param c The connection
  -- * @param pixmap The pixmap to destroy.
  -- * @return A cookie
  -- *
  -- * Deletes the association between the pixmap ID and the pixmap. The pixmap
  -- * storage will be freed when there are no more references to it.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_free_pixmap
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_pixmap_t      pixmap
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_free_pixmap (arg1 : System.Address; arg2 : xcb_pixmap_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:11513
   pragma Import (C, xcb_free_pixmap, "xcb_free_pixmap");

  --*<  
  --*<  
   function xcb_create_gc_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:11517
   pragma Import (C, xcb_create_gc_sizeof, "xcb_create_gc_sizeof");

  --*
  -- * @brief Creates a graphics context
  -- *
  -- * @param c The connection
  -- * @param cid The ID with which you will refer to the graphics context, created by
  -- * `xcb_generate_id`.
  -- * @param drawable Drawable to get the root/depth from.
  -- * @return A cookie
  -- *
  -- * Creates a graphics context. The graphics context can be used with any drawable
  -- * that has the same root and depth as the specified drawable.
  -- * 
  -- * This form can be used only if the request will not cause
  -- * a reply to be generated. Any returned error will be
  -- * saved for handling by xcb_request_check().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_create_gc_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_gcontext_t    cid
  -- ** @param xcb_drawable_t    drawable
  -- ** @param uint32_t          value_mask
  -- ** @param const uint32_t   *value_list
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_create_gc_checked
     (arg1 : System.Address;
      arg2 : xcb_gcontext_t;
      arg3 : xcb_drawable_t;
      arg4 : stdint_h.uint32_t;
      arg5 : access stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:11550
   pragma Import (C, xcb_create_gc_checked, "xcb_create_gc_checked");

  --*<  
  --*<  
  --*<  
  --*<  
  --*
  -- * @brief Creates a graphics context
  -- *
  -- * @param c The connection
  -- * @param cid The ID with which you will refer to the graphics context, created by
  -- * `xcb_generate_id`.
  -- * @param drawable Drawable to get the root/depth from.
  -- * @return A cookie
  -- *
  -- * Creates a graphics context. The graphics context can be used with any drawable
  -- * that has the same root and depth as the specified drawable.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_create_gc
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_gcontext_t    cid
  -- ** @param xcb_drawable_t    drawable
  -- ** @param uint32_t          value_mask
  -- ** @param const uint32_t   *value_list
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_create_gc
     (arg1 : System.Address;
      arg2 : xcb_gcontext_t;
      arg3 : xcb_drawable_t;
      arg4 : stdint_h.uint32_t;
      arg5 : access stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:11584
   pragma Import (C, xcb_create_gc, "xcb_create_gc");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_change_gc_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:11591
   pragma Import (C, xcb_change_gc_sizeof, "xcb_change_gc_sizeof");

  --*
  -- * @brief change graphics context components
  -- *
  -- * @param c The connection
  -- * @param gc The graphics context to change.
  -- * @param value_mask A bitmask of #xcb_gc_t values.
  -- * @param value_mask \n
  -- * @param value_list Values for each of the components specified in the bitmask \a value_mask. The
  -- * order has to correspond to the order of possible \a value_mask bits. See the
  -- * example.
  -- * @return A cookie
  -- *
  -- * Changes the components specified by \a value_mask for the specified graphics context.
  -- * 
  -- * This form can be used only if the request will not cause
  -- * a reply to be generated. Any returned error will be
  -- * saved for handling by xcb_request_check().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_change_gc_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_gcontext_t    gc
  -- ** @param uint32_t          value_mask
  -- ** @param const uint32_t   *value_list
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_change_gc_checked
     (arg1 : System.Address;
      arg2 : xcb_gcontext_t;
      arg3 : stdint_h.uint32_t;
      arg4 : access stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:11625
   pragma Import (C, xcb_change_gc_checked, "xcb_change_gc_checked");

  --*<  
  --*<  
  --*<  
  --*
  -- * @brief change graphics context components
  -- *
  -- * @param c The connection
  -- * @param gc The graphics context to change.
  -- * @param value_mask A bitmask of #xcb_gc_t values.
  -- * @param value_mask \n
  -- * @param value_list Values for each of the components specified in the bitmask \a value_mask. The
  -- * order has to correspond to the order of possible \a value_mask bits. See the
  -- * example.
  -- * @return A cookie
  -- *
  -- * Changes the components specified by \a value_mask for the specified graphics context.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_change_gc
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_gcontext_t    gc
  -- ** @param uint32_t          value_mask
  -- ** @param const uint32_t   *value_list
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_change_gc
     (arg1 : System.Address;
      arg2 : xcb_gcontext_t;
      arg3 : stdint_h.uint32_t;
      arg4 : access stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:11659
   pragma Import (C, xcb_change_gc, "xcb_change_gc");

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
  -- ** xcb_void_cookie_t xcb_copy_gc_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_gcontext_t    src_gc
  -- ** @param xcb_gcontext_t    dst_gc
  -- ** @param uint32_t          value_mask
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_copy_gc_checked
     (arg1 : System.Address;
      arg2 : xcb_gcontext_t;
      arg3 : xcb_gcontext_t;
      arg4 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:11689
   pragma Import (C, xcb_copy_gc_checked, "xcb_copy_gc_checked");

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
  -- ** xcb_void_cookie_t xcb_copy_gc
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_gcontext_t    src_gc
  -- ** @param xcb_gcontext_t    dst_gc
  -- ** @param uint32_t          value_mask
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_copy_gc
     (arg1 : System.Address;
      arg2 : xcb_gcontext_t;
      arg3 : xcb_gcontext_t;
      arg4 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:11716
   pragma Import (C, xcb_copy_gc, "xcb_copy_gc");

  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_set_dashes_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:11722
   pragma Import (C, xcb_set_dashes_sizeof, "xcb_set_dashes_sizeof");

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
  -- ** xcb_void_cookie_t xcb_set_dashes_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_gcontext_t    gc
  -- ** @param uint16_t          dash_offset
  -- ** @param uint16_t          dashes_len
  -- ** @param const uint8_t    *dashes
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_set_dashes_checked
     (arg1 : System.Address;
      arg2 : xcb_gcontext_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint16_t;
      arg5 : access stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:11750
   pragma Import (C, xcb_set_dashes_checked, "xcb_set_dashes_checked");

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
  -- ** xcb_void_cookie_t xcb_set_dashes
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_gcontext_t    gc
  -- ** @param uint16_t          dash_offset
  -- ** @param uint16_t          dashes_len
  -- ** @param const uint8_t    *dashes
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_set_dashes
     (arg1 : System.Address;
      arg2 : xcb_gcontext_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint16_t;
      arg5 : access stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:11779
   pragma Import (C, xcb_set_dashes, "xcb_set_dashes");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_set_clip_rectangles_sizeof (arg1 : System.Address; arg2 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/xproto.h:11786
   pragma Import (C, xcb_set_clip_rectangles_sizeof, "xcb_set_clip_rectangles_sizeof");

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
  -- ** xcb_void_cookie_t xcb_set_clip_rectangles_checked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param uint8_t                ordering
  -- ** @param xcb_gcontext_t         gc
  -- ** @param int16_t                clip_x_origin
  -- ** @param int16_t                clip_y_origin
  -- ** @param uint32_t               rectangles_len
  -- ** @param const xcb_rectangle_t *rectangles
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_set_clip_rectangles_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_gcontext_t;
      arg4 : sys_types_h.int16_t;
      arg5 : sys_types_h.int16_t;
      arg6 : stdint_h.uint32_t;
      arg7 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:11817
   pragma Import (C, xcb_set_clip_rectangles_checked, "xcb_set_clip_rectangles_checked");

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
  -- ** xcb_void_cookie_t xcb_set_clip_rectangles
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param uint8_t                ordering
  -- ** @param xcb_gcontext_t         gc
  -- ** @param int16_t                clip_x_origin
  -- ** @param int16_t                clip_y_origin
  -- ** @param uint32_t               rectangles_len
  -- ** @param const xcb_rectangle_t *rectangles
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_set_clip_rectangles
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_gcontext_t;
      arg4 : sys_types_h.int16_t;
      arg5 : sys_types_h.int16_t;
      arg6 : stdint_h.uint32_t;
      arg7 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:11850
   pragma Import (C, xcb_set_clip_rectangles, "xcb_set_clip_rectangles");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*
  -- * @brief Destroys a graphics context
  -- *
  -- * @param c The connection
  -- * @param gc The graphics context to destroy.
  -- * @return A cookie
  -- *
  -- * Destroys the specified \a gc and all associated storage.
  -- * 
  -- * This form can be used only if the request will not cause
  -- * a reply to be generated. Any returned error will be
  -- * saved for handling by xcb_request_check().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_free_gc_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_gcontext_t    gc
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_free_gc_checked (arg1 : System.Address; arg2 : xcb_gcontext_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:11883
   pragma Import (C, xcb_free_gc_checked, "xcb_free_gc_checked");

  --*<  
  --*
  -- * @brief Destroys a graphics context
  -- *
  -- * @param c The connection
  -- * @param gc The graphics context to destroy.
  -- * @return A cookie
  -- *
  -- * Destroys the specified \a gc and all associated storage.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_free_gc
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_gcontext_t    gc
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_free_gc (arg1 : System.Address; arg2 : xcb_gcontext_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:11908
   pragma Import (C, xcb_free_gc, "xcb_free_gc");

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
  -- ** xcb_void_cookie_t xcb_clear_area_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           exposures
  -- ** @param xcb_window_t      window
  -- ** @param int16_t           x
  -- ** @param int16_t           y
  -- ** @param uint16_t          width
  -- ** @param uint16_t          height
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_clear_area_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_window_t;
      arg4 : sys_types_h.int16_t;
      arg5 : sys_types_h.int16_t;
      arg6 : stdint_h.uint16_t;
      arg7 : stdint_h.uint16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:11939
   pragma Import (C, xcb_clear_area_checked, "xcb_clear_area_checked");

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
  -- ** xcb_void_cookie_t xcb_clear_area
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           exposures
  -- ** @param xcb_window_t      window
  -- ** @param int16_t           x
  -- ** @param int16_t           y
  -- ** @param uint16_t          width
  -- ** @param uint16_t          height
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_clear_area
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_window_t;
      arg4 : sys_types_h.int16_t;
      arg5 : sys_types_h.int16_t;
      arg6 : stdint_h.uint16_t;
      arg7 : stdint_h.uint16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:11972
   pragma Import (C, xcb_clear_area, "xcb_clear_area");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*
  -- * @brief copy areas
  -- *
  -- * @param c The connection
  -- * @param src_drawable The source drawable (Window or Pixmap).
  -- * @param dst_drawable The destination drawable (Window or Pixmap).
  -- * @param gc The graphics context to use.
  -- * @param src_x The source X coordinate.
  -- * @param src_y The source Y coordinate.
  -- * @param dst_x The destination X coordinate.
  -- * @param dst_y The destination Y coordinate.
  -- * @param width The width of the area to copy (in pixels).
  -- * @param height The height of the area to copy (in pixels).
  -- * @return A cookie
  -- *
  -- * Copies the specified rectangle from \a src_drawable to \a dst_drawable.
  -- * 
  -- * This form can be used only if the request will not cause
  -- * a reply to be generated. Any returned error will be
  -- * saved for handling by xcb_request_check().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_copy_area_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    src_drawable
  -- ** @param xcb_drawable_t    dst_drawable
  -- ** @param xcb_gcontext_t    gc
  -- ** @param int16_t           src_x
  -- ** @param int16_t           src_y
  -- ** @param int16_t           dst_x
  -- ** @param int16_t           dst_y
  -- ** @param uint16_t          width
  -- ** @param uint16_t          height
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_copy_area_checked
     (arg1 : System.Address;
      arg2 : xcb_drawable_t;
      arg3 : xcb_drawable_t;
      arg4 : xcb_gcontext_t;
      arg5 : sys_types_h.int16_t;
      arg6 : sys_types_h.int16_t;
      arg7 : sys_types_h.int16_t;
      arg8 : sys_types_h.int16_t;
      arg9 : stdint_h.uint16_t;
      arg10 : stdint_h.uint16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:12021
   pragma Import (C, xcb_copy_area_checked, "xcb_copy_area_checked");

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
  -- * @brief copy areas
  -- *
  -- * @param c The connection
  -- * @param src_drawable The source drawable (Window or Pixmap).
  -- * @param dst_drawable The destination drawable (Window or Pixmap).
  -- * @param gc The graphics context to use.
  -- * @param src_x The source X coordinate.
  -- * @param src_y The source Y coordinate.
  -- * @param dst_x The destination X coordinate.
  -- * @param dst_y The destination Y coordinate.
  -- * @param width The width of the area to copy (in pixels).
  -- * @param height The height of the area to copy (in pixels).
  -- * @return A cookie
  -- *
  -- * Copies the specified rectangle from \a src_drawable to \a dst_drawable.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_copy_area
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    src_drawable
  -- ** @param xcb_drawable_t    dst_drawable
  -- ** @param xcb_gcontext_t    gc
  -- ** @param int16_t           src_x
  -- ** @param int16_t           src_y
  -- ** @param int16_t           dst_x
  -- ** @param int16_t           dst_y
  -- ** @param uint16_t          width
  -- ** @param uint16_t          height
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_copy_area
     (arg1 : System.Address;
      arg2 : xcb_drawable_t;
      arg3 : xcb_drawable_t;
      arg4 : xcb_gcontext_t;
      arg5 : sys_types_h.int16_t;
      arg6 : sys_types_h.int16_t;
      arg7 : sys_types_h.int16_t;
      arg8 : sys_types_h.int16_t;
      arg9 : stdint_h.uint16_t;
      arg10 : stdint_h.uint16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:12070
   pragma Import (C, xcb_copy_area, "xcb_copy_area");

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
  -- ** xcb_void_cookie_t xcb_copy_plane_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    src_drawable
  -- ** @param xcb_drawable_t    dst_drawable
  -- ** @param xcb_gcontext_t    gc
  -- ** @param int16_t           src_x
  -- ** @param int16_t           src_y
  -- ** @param int16_t           dst_x
  -- ** @param int16_t           dst_y
  -- ** @param uint16_t          width
  -- ** @param uint16_t          height
  -- ** @param uint32_t          bit_plane
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_copy_plane_checked
     (arg1 : System.Address;
      arg2 : xcb_drawable_t;
      arg3 : xcb_drawable_t;
      arg4 : xcb_gcontext_t;
      arg5 : sys_types_h.int16_t;
      arg6 : sys_types_h.int16_t;
      arg7 : sys_types_h.int16_t;
      arg8 : sys_types_h.int16_t;
      arg9 : stdint_h.uint16_t;
      arg10 : stdint_h.uint16_t;
      arg11 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:12113
   pragma Import (C, xcb_copy_plane_checked, "xcb_copy_plane_checked");

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
  -- *
  -- * @param c The connection
  -- * @return A cookie
  -- *
  -- * Delivers a request to the X server.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_copy_plane
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    src_drawable
  -- ** @param xcb_drawable_t    dst_drawable
  -- ** @param xcb_gcontext_t    gc
  -- ** @param int16_t           src_x
  -- ** @param int16_t           src_y
  -- ** @param int16_t           dst_x
  -- ** @param int16_t           dst_y
  -- ** @param uint16_t          width
  -- ** @param uint16_t          height
  -- ** @param uint32_t          bit_plane
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_copy_plane
     (arg1 : System.Address;
      arg2 : xcb_drawable_t;
      arg3 : xcb_drawable_t;
      arg4 : xcb_gcontext_t;
      arg5 : sys_types_h.int16_t;
      arg6 : sys_types_h.int16_t;
      arg7 : sys_types_h.int16_t;
      arg8 : sys_types_h.int16_t;
      arg9 : stdint_h.uint16_t;
      arg10 : stdint_h.uint16_t;
      arg11 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:12154
   pragma Import (C, xcb_copy_plane, "xcb_copy_plane");

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
   function xcb_poly_point_sizeof (arg1 : System.Address; arg2 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/xproto.h:12167
   pragma Import (C, xcb_poly_point_sizeof, "xcb_poly_point_sizeof");

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
  -- ** xcb_void_cookie_t xcb_poly_point_checked
  -- ** 
  -- ** @param xcb_connection_t  *c
  -- ** @param uint8_t            coordinate_mode
  -- ** @param xcb_drawable_t     drawable
  -- ** @param xcb_gcontext_t     gc
  -- ** @param uint32_t           points_len
  -- ** @param const xcb_point_t *points
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_poly_point_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_drawable_t;
      arg4 : xcb_gcontext_t;
      arg5 : stdint_h.uint32_t;
      arg6 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:12197
   pragma Import (C, xcb_poly_point_checked, "xcb_poly_point_checked");

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
  -- ** xcb_void_cookie_t xcb_poly_point
  -- ** 
  -- ** @param xcb_connection_t  *c
  -- ** @param uint8_t            coordinate_mode
  -- ** @param xcb_drawable_t     drawable
  -- ** @param xcb_gcontext_t     gc
  -- ** @param uint32_t           points_len
  -- ** @param const xcb_point_t *points
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_poly_point
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_drawable_t;
      arg4 : xcb_gcontext_t;
      arg5 : stdint_h.uint32_t;
      arg6 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:12228
   pragma Import (C, xcb_poly_point, "xcb_poly_point");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_poly_line_sizeof (arg1 : System.Address; arg2 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/xproto.h:12236
   pragma Import (C, xcb_poly_line_sizeof, "xcb_poly_line_sizeof");

  --*<  
  --*
  -- * @brief draw lines
  -- *
  -- * @param c The connection
  -- * @param coordinate_mode A bitmask of #xcb_coord_mode_t values.
  -- * @param coordinate_mode \n
  -- * @param drawable The drawable to draw the line(s) on.
  -- * @param gc The graphics context to use.
  -- * @param points_len The number of `xcb_point_t` structures in \a points.
  -- * @param points An array of points.
  -- * @return A cookie
  -- *
  -- * Draws \a points_len-1 lines between each pair of points (point[i], point[i+1])
  -- * in the \a points array. The lines are drawn in the order listed in the array.
  -- * They join correctly at all intermediate points, and if the first and last
  -- * points coincide, the first and last lines also join correctly. For any given
  -- * line, a pixel is not drawn more than once. If thin (zero line-width) lines
  -- * intersect, the intersecting pixels are drawn multiple times. If wide lines
  -- * intersect, the intersecting pixels are drawn only once, as though the entire
  -- * request were a single, filled shape.
  -- * 
  -- * This form can be used only if the request will not cause
  -- * a reply to be generated. Any returned error will be
  -- * saved for handling by xcb_request_check().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_poly_line_checked
  -- ** 
  -- ** @param xcb_connection_t  *c
  -- ** @param uint8_t            coordinate_mode
  -- ** @param xcb_drawable_t     drawable
  -- ** @param xcb_gcontext_t     gc
  -- ** @param uint32_t           points_len
  -- ** @param const xcb_point_t *points
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_poly_line_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_drawable_t;
      arg4 : xcb_gcontext_t;
      arg5 : stdint_h.uint32_t;
      arg6 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:12280
   pragma Import (C, xcb_poly_line_checked, "xcb_poly_line_checked");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*
  -- * @brief draw lines
  -- *
  -- * @param c The connection
  -- * @param coordinate_mode A bitmask of #xcb_coord_mode_t values.
  -- * @param coordinate_mode \n
  -- * @param drawable The drawable to draw the line(s) on.
  -- * @param gc The graphics context to use.
  -- * @param points_len The number of `xcb_point_t` structures in \a points.
  -- * @param points An array of points.
  -- * @return A cookie
  -- *
  -- * Draws \a points_len-1 lines between each pair of points (point[i], point[i+1])
  -- * in the \a points array. The lines are drawn in the order listed in the array.
  -- * They join correctly at all intermediate points, and if the first and last
  -- * points coincide, the first and last lines also join correctly. For any given
  -- * line, a pixel is not drawn more than once. If thin (zero line-width) lines
  -- * intersect, the intersecting pixels are drawn multiple times. If wide lines
  -- * intersect, the intersecting pixels are drawn only once, as though the entire
  -- * request were a single, filled shape.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_poly_line
  -- ** 
  -- ** @param xcb_connection_t  *c
  -- ** @param uint8_t            coordinate_mode
  -- ** @param xcb_drawable_t     drawable
  -- ** @param xcb_gcontext_t     gc
  -- ** @param uint32_t           points_len
  -- ** @param const xcb_point_t *points
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_poly_line
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_drawable_t;
      arg4 : xcb_gcontext_t;
      arg5 : stdint_h.uint32_t;
      arg6 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:12325
   pragma Import (C, xcb_poly_line, "xcb_poly_line");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_segment_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_segment_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_segment_next
  -- ** 
  -- ** @param xcb_segment_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_segment_next (arg1 : access xcb_segment_iterator_t);  -- /usr/include/xcb/xproto.h:12351
   pragma Import (C, xcb_segment_next, "xcb_segment_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_segment_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_segment_end
  -- ** 
  -- ** @param xcb_segment_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_segment_end (arg1 : xcb_segment_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:12373
   pragma Import (C, xcb_segment_end, "xcb_segment_end");

  --*<  
   function xcb_poly_segment_sizeof (arg1 : System.Address; arg2 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/xproto.h:12376
   pragma Import (C, xcb_poly_segment_sizeof, "xcb_poly_segment_sizeof");

  --*<  
  --*
  -- * @brief draw lines
  -- *
  -- * @param c The connection
  -- * @param drawable A drawable (Window or Pixmap) to draw on.
  -- * @param gc The graphics context to use.
  -- * \n
  -- * TODO: document which attributes of a gc are used
  -- * @param segments_len The number of `xcb_segment_t` structures in \a segments.
  -- * @param segments An array of `xcb_segment_t` structures.
  -- * @return A cookie
  -- *
  -- * Draws multiple, unconnected lines. For each segment, a line is drawn between
  -- * (x1, y1) and (x2, y2). The lines are drawn in the order listed in the array of
  -- * `xcb_segment_t` structures and does not perform joining at coincident
  -- * endpoints. For any given line, a pixel is not drawn more than once. If lines
  -- * intersect, the intersecting pixels are drawn multiple times.
  -- * 
  -- * TODO: include the xcb_segment_t data structure
  -- * 
  -- * TODO: an example
  -- * 
  -- * This form can be used only if the request will not cause
  -- * a reply to be generated. Any returned error will be
  -- * saved for handling by xcb_request_check().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_poly_segment_checked
  -- ** 
  -- ** @param xcb_connection_t    *c
  -- ** @param xcb_drawable_t       drawable
  -- ** @param xcb_gcontext_t       gc
  -- ** @param uint32_t             segments_len
  -- ** @param const xcb_segment_t *segments
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_poly_segment_checked
     (arg1 : System.Address;
      arg2 : xcb_drawable_t;
      arg3 : xcb_gcontext_t;
      arg4 : stdint_h.uint32_t;
      arg5 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:12420
   pragma Import (C, xcb_poly_segment_checked, "xcb_poly_segment_checked");

  --*<  
  --*<  
  --*<  
  --*<  
  --*
  -- * @brief draw lines
  -- *
  -- * @param c The connection
  -- * @param drawable A drawable (Window or Pixmap) to draw on.
  -- * @param gc The graphics context to use.
  -- * \n
  -- * TODO: document which attributes of a gc are used
  -- * @param segments_len The number of `xcb_segment_t` structures in \a segments.
  -- * @param segments An array of `xcb_segment_t` structures.
  -- * @return A cookie
  -- *
  -- * Draws multiple, unconnected lines. For each segment, a line is drawn between
  -- * (x1, y1) and (x2, y2). The lines are drawn in the order listed in the array of
  -- * `xcb_segment_t` structures and does not perform joining at coincident
  -- * endpoints. For any given line, a pixel is not drawn more than once. If lines
  -- * intersect, the intersecting pixels are drawn multiple times.
  -- * 
  -- * TODO: include the xcb_segment_t data structure
  -- * 
  -- * TODO: an example
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_poly_segment
  -- ** 
  -- ** @param xcb_connection_t    *c
  -- ** @param xcb_drawable_t       drawable
  -- ** @param xcb_gcontext_t       gc
  -- ** @param uint32_t             segments_len
  -- ** @param const xcb_segment_t *segments
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_poly_segment
     (arg1 : System.Address;
      arg2 : xcb_drawable_t;
      arg3 : xcb_gcontext_t;
      arg4 : stdint_h.uint32_t;
      arg5 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:12464
   pragma Import (C, xcb_poly_segment, "xcb_poly_segment");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_poly_rectangle_sizeof (arg1 : System.Address; arg2 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/xproto.h:12471
   pragma Import (C, xcb_poly_rectangle_sizeof, "xcb_poly_rectangle_sizeof");

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
  -- ** xcb_void_cookie_t xcb_poly_rectangle_checked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_drawable_t         drawable
  -- ** @param xcb_gcontext_t         gc
  -- ** @param uint32_t               rectangles_len
  -- ** @param const xcb_rectangle_t *rectangles
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_poly_rectangle_checked
     (arg1 : System.Address;
      arg2 : xcb_drawable_t;
      arg3 : xcb_gcontext_t;
      arg4 : stdint_h.uint32_t;
      arg5 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:12500
   pragma Import (C, xcb_poly_rectangle_checked, "xcb_poly_rectangle_checked");

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
  -- ** xcb_void_cookie_t xcb_poly_rectangle
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_drawable_t         drawable
  -- ** @param xcb_gcontext_t         gc
  -- ** @param uint32_t               rectangles_len
  -- ** @param const xcb_rectangle_t *rectangles
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_poly_rectangle
     (arg1 : System.Address;
      arg2 : xcb_drawable_t;
      arg3 : xcb_gcontext_t;
      arg4 : stdint_h.uint32_t;
      arg5 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:12529
   pragma Import (C, xcb_poly_rectangle, "xcb_poly_rectangle");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_poly_arc_sizeof (arg1 : System.Address; arg2 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/xproto.h:12536
   pragma Import (C, xcb_poly_arc_sizeof, "xcb_poly_arc_sizeof");

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
  -- ** xcb_void_cookie_t xcb_poly_arc_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    drawable
  -- ** @param xcb_gcontext_t    gc
  -- ** @param uint32_t          arcs_len
  -- ** @param const xcb_arc_t  *arcs
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_poly_arc_checked
     (arg1 : System.Address;
      arg2 : xcb_drawable_t;
      arg3 : xcb_gcontext_t;
      arg4 : stdint_h.uint32_t;
      arg5 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:12565
   pragma Import (C, xcb_poly_arc_checked, "xcb_poly_arc_checked");

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
  -- ** xcb_void_cookie_t xcb_poly_arc
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    drawable
  -- ** @param xcb_gcontext_t    gc
  -- ** @param uint32_t          arcs_len
  -- ** @param const xcb_arc_t  *arcs
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_poly_arc
     (arg1 : System.Address;
      arg2 : xcb_drawable_t;
      arg3 : xcb_gcontext_t;
      arg4 : stdint_h.uint32_t;
      arg5 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:12594
   pragma Import (C, xcb_poly_arc, "xcb_poly_arc");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_fill_poly_sizeof (arg1 : System.Address; arg2 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/xproto.h:12601
   pragma Import (C, xcb_fill_poly_sizeof, "xcb_fill_poly_sizeof");

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
  -- ** xcb_void_cookie_t xcb_fill_poly_checked
  -- ** 
  -- ** @param xcb_connection_t  *c
  -- ** @param xcb_drawable_t     drawable
  -- ** @param xcb_gcontext_t     gc
  -- ** @param uint8_t            shape
  -- ** @param uint8_t            coordinate_mode
  -- ** @param uint32_t           points_len
  -- ** @param const xcb_point_t *points
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_fill_poly_checked
     (arg1 : System.Address;
      arg2 : xcb_drawable_t;
      arg3 : xcb_gcontext_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint8_t;
      arg6 : stdint_h.uint32_t;
      arg7 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:12632
   pragma Import (C, xcb_fill_poly_checked, "xcb_fill_poly_checked");

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
  -- ** xcb_void_cookie_t xcb_fill_poly
  -- ** 
  -- ** @param xcb_connection_t  *c
  -- ** @param xcb_drawable_t     drawable
  -- ** @param xcb_gcontext_t     gc
  -- ** @param uint8_t            shape
  -- ** @param uint8_t            coordinate_mode
  -- ** @param uint32_t           points_len
  -- ** @param const xcb_point_t *points
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_fill_poly
     (arg1 : System.Address;
      arg2 : xcb_drawable_t;
      arg3 : xcb_gcontext_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint8_t;
      arg6 : stdint_h.uint32_t;
      arg7 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:12665
   pragma Import (C, xcb_fill_poly, "xcb_fill_poly");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_poly_fill_rectangle_sizeof (arg1 : System.Address; arg2 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/xproto.h:12674
   pragma Import (C, xcb_poly_fill_rectangle_sizeof, "xcb_poly_fill_rectangle_sizeof");

  --*<  
  --*
  -- * @brief Fills rectangles
  -- *
  -- * @param c The connection
  -- * @param drawable The drawable (Window or Pixmap) to draw on.
  -- * @param gc The graphics context to use.
  -- * \n
  -- * The following graphics context components are used: function, plane-mask,
  -- * fill-style, subwindow-mode, clip-x-origin, clip-y-origin, and clip-mask.
  -- * \n
  -- * The following graphics context mode-dependent components are used:
  -- * foreground, background, tile, stipple, tile-stipple-x-origin, and
  -- * tile-stipple-y-origin.
  -- * @param rectangles_len The number of `xcb_rectangle_t` structures in \a rectangles.
  -- * @param rectangles The rectangles to fill.
  -- * @return A cookie
  -- *
  -- * Fills the specified rectangle(s) in the order listed in the array. For any
  -- * given rectangle, each pixel is not drawn more than once. If rectangles
  -- * intersect, the intersecting pixels are drawn multiple times.
  -- * 
  -- * This form can be used only if the request will not cause
  -- * a reply to be generated. Any returned error will be
  -- * saved for handling by xcb_request_check().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_poly_fill_rectangle_checked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_drawable_t         drawable
  -- ** @param xcb_gcontext_t         gc
  -- ** @param uint32_t               rectangles_len
  -- ** @param const xcb_rectangle_t *rectangles
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_poly_fill_rectangle_checked
     (arg1 : System.Address;
      arg2 : xcb_drawable_t;
      arg3 : xcb_gcontext_t;
      arg4 : stdint_h.uint32_t;
      arg5 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:12717
   pragma Import (C, xcb_poly_fill_rectangle_checked, "xcb_poly_fill_rectangle_checked");

  --*<  
  --*<  
  --*<  
  --*<  
  --*
  -- * @brief Fills rectangles
  -- *
  -- * @param c The connection
  -- * @param drawable The drawable (Window or Pixmap) to draw on.
  -- * @param gc The graphics context to use.
  -- * \n
  -- * The following graphics context components are used: function, plane-mask,
  -- * fill-style, subwindow-mode, clip-x-origin, clip-y-origin, and clip-mask.
  -- * \n
  -- * The following graphics context mode-dependent components are used:
  -- * foreground, background, tile, stipple, tile-stipple-x-origin, and
  -- * tile-stipple-y-origin.
  -- * @param rectangles_len The number of `xcb_rectangle_t` structures in \a rectangles.
  -- * @param rectangles The rectangles to fill.
  -- * @return A cookie
  -- *
  -- * Fills the specified rectangle(s) in the order listed in the array. For any
  -- * given rectangle, each pixel is not drawn more than once. If rectangles
  -- * intersect, the intersecting pixels are drawn multiple times.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_poly_fill_rectangle
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_drawable_t         drawable
  -- ** @param xcb_gcontext_t         gc
  -- ** @param uint32_t               rectangles_len
  -- ** @param const xcb_rectangle_t *rectangles
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_poly_fill_rectangle
     (arg1 : System.Address;
      arg2 : xcb_drawable_t;
      arg3 : xcb_gcontext_t;
      arg4 : stdint_h.uint32_t;
      arg5 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:12760
   pragma Import (C, xcb_poly_fill_rectangle, "xcb_poly_fill_rectangle");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_poly_fill_arc_sizeof (arg1 : System.Address; arg2 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/xproto.h:12767
   pragma Import (C, xcb_poly_fill_arc_sizeof, "xcb_poly_fill_arc_sizeof");

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
  -- ** xcb_void_cookie_t xcb_poly_fill_arc_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    drawable
  -- ** @param xcb_gcontext_t    gc
  -- ** @param uint32_t          arcs_len
  -- ** @param const xcb_arc_t  *arcs
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_poly_fill_arc_checked
     (arg1 : System.Address;
      arg2 : xcb_drawable_t;
      arg3 : xcb_gcontext_t;
      arg4 : stdint_h.uint32_t;
      arg5 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:12796
   pragma Import (C, xcb_poly_fill_arc_checked, "xcb_poly_fill_arc_checked");

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
  -- ** xcb_void_cookie_t xcb_poly_fill_arc
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    drawable
  -- ** @param xcb_gcontext_t    gc
  -- ** @param uint32_t          arcs_len
  -- ** @param const xcb_arc_t  *arcs
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_poly_fill_arc
     (arg1 : System.Address;
      arg2 : xcb_drawable_t;
      arg3 : xcb_gcontext_t;
      arg4 : stdint_h.uint32_t;
      arg5 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:12825
   pragma Import (C, xcb_poly_fill_arc, "xcb_poly_fill_arc");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_put_image_sizeof (arg1 : System.Address; arg2 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/xproto.h:12832
   pragma Import (C, xcb_put_image_sizeof, "xcb_put_image_sizeof");

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
  -- ** xcb_void_cookie_t xcb_put_image_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           format
  -- ** @param xcb_drawable_t    drawable
  -- ** @param xcb_gcontext_t    gc
  -- ** @param uint16_t          width
  -- ** @param uint16_t          height
  -- ** @param int16_t           dst_x
  -- ** @param int16_t           dst_y
  -- ** @param uint8_t           left_pad
  -- ** @param uint8_t           depth
  -- ** @param uint32_t          data_len
  -- ** @param const uint8_t    *data
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_put_image_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_drawable_t;
      arg4 : xcb_gcontext_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint16_t;
      arg7 : sys_types_h.int16_t;
      arg8 : sys_types_h.int16_t;
      arg9 : stdint_h.uint8_t;
      arg10 : stdint_h.uint8_t;
      arg11 : stdint_h.uint32_t;
      arg12 : access stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:12868
   pragma Import (C, xcb_put_image_checked, "xcb_put_image_checked");

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
  -- ** xcb_void_cookie_t xcb_put_image
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           format
  -- ** @param xcb_drawable_t    drawable
  -- ** @param xcb_gcontext_t    gc
  -- ** @param uint16_t          width
  -- ** @param uint16_t          height
  -- ** @param int16_t           dst_x
  -- ** @param int16_t           dst_y
  -- ** @param uint8_t           left_pad
  -- ** @param uint8_t           depth
  -- ** @param uint32_t          data_len
  -- ** @param const uint8_t    *data
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_put_image
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_drawable_t;
      arg4 : xcb_gcontext_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint16_t;
      arg7 : sys_types_h.int16_t;
      arg8 : sys_types_h.int16_t;
      arg9 : stdint_h.uint8_t;
      arg10 : stdint_h.uint8_t;
      arg11 : stdint_h.uint32_t;
      arg12 : access stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:12911
   pragma Import (C, xcb_put_image, "xcb_put_image");

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
   function xcb_get_image_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:12925
   pragma Import (C, xcb_get_image_sizeof, "xcb_get_image_sizeof");

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
  -- ** xcb_get_image_cookie_t xcb_get_image
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           format
  -- ** @param xcb_drawable_t    drawable
  -- ** @param int16_t           x
  -- ** @param int16_t           y
  -- ** @param uint16_t          width
  -- ** @param uint16_t          height
  -- ** @param uint32_t          plane_mask
  -- ** @returns xcb_get_image_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_image
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_drawable_t;
      arg4 : sys_types_h.int16_t;
      arg5 : sys_types_h.int16_t;
      arg6 : stdint_h.uint16_t;
      arg7 : stdint_h.uint16_t;
      arg8 : stdint_h.uint32_t) return xcb_get_image_cookie_t;  -- /usr/include/xcb/xproto.h:12953
   pragma Import (C, xcb_get_image, "xcb_get_image");

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
  -- * This form can be used only if the request will cause
  -- * a reply to be generated. Any returned error will be
  -- * placed in the event queue.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_get_image_cookie_t xcb_get_image_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           format
  -- ** @param xcb_drawable_t    drawable
  -- ** @param int16_t           x
  -- ** @param int16_t           y
  -- ** @param uint16_t          width
  -- ** @param uint16_t          height
  -- ** @param uint32_t          plane_mask
  -- ** @returns xcb_get_image_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_image_unchecked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_drawable_t;
      arg4 : sys_types_h.int16_t;
      arg5 : sys_types_h.int16_t;
      arg6 : stdint_h.uint16_t;
      arg7 : stdint_h.uint16_t;
      arg8 : stdint_h.uint32_t) return xcb_get_image_cookie_t;  -- /usr/include/xcb/xproto.h:12991
   pragma Import (C, xcb_get_image_unchecked, "xcb_get_image_unchecked");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** uint8_t * xcb_get_image_data
  -- ** 
  -- ** @param const xcb_get_image_reply_t *R
  -- ** @returns uint8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_image_data (arg1 : System.Address) return access stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:13011
   pragma Import (C, xcb_get_image_data, "xcb_get_image_data");

  --****************************************************************************
  -- **
  -- ** int xcb_get_image_data_length
  -- ** 
  -- ** @param const xcb_get_image_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_image_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:13024
   pragma Import (C, xcb_get_image_data_length, "xcb_get_image_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_get_image_data_end
  -- ** 
  -- ** @param const xcb_get_image_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_image_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:13037
   pragma Import (C, xcb_get_image_data_end, "xcb_get_image_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_get_image_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_get_image_reply_t * xcb_get_image_reply
  -- ** 
  -- ** @param xcb_connection_t        *c
  -- ** @param xcb_get_image_cookie_t   cookie
  -- ** @param xcb_generic_error_t    **e
  -- ** @returns xcb_get_image_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_image_reply
     (arg1 : System.Address;
      arg2 : xcb_get_image_cookie_t;
      arg3 : System.Address) return access xcb_get_image_reply_t;  -- /usr/include/xcb/xproto.h:13066
   pragma Import (C, xcb_get_image_reply, "xcb_get_image_reply");

  --*<  
  --*<  
  --*<  
   function xcb_poly_text_8_sizeof (arg1 : System.Address; arg2 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/xproto.h:13071
   pragma Import (C, xcb_poly_text_8_sizeof, "xcb_poly_text_8_sizeof");

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
  -- ** xcb_void_cookie_t xcb_poly_text_8_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    drawable
  -- ** @param xcb_gcontext_t    gc
  -- ** @param int16_t           x
  -- ** @param int16_t           y
  -- ** @param uint32_t          items_len
  -- ** @param const uint8_t    *items
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_poly_text_8_checked
     (arg1 : System.Address;
      arg2 : xcb_drawable_t;
      arg3 : xcb_gcontext_t;
      arg4 : sys_types_h.int16_t;
      arg5 : sys_types_h.int16_t;
      arg6 : stdint_h.uint32_t;
      arg7 : access stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:13102
   pragma Import (C, xcb_poly_text_8_checked, "xcb_poly_text_8_checked");

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
  -- ** xcb_void_cookie_t xcb_poly_text_8
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    drawable
  -- ** @param xcb_gcontext_t    gc
  -- ** @param int16_t           x
  -- ** @param int16_t           y
  -- ** @param uint32_t          items_len
  -- ** @param const uint8_t    *items
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_poly_text_8
     (arg1 : System.Address;
      arg2 : xcb_drawable_t;
      arg3 : xcb_gcontext_t;
      arg4 : sys_types_h.int16_t;
      arg5 : sys_types_h.int16_t;
      arg6 : stdint_h.uint32_t;
      arg7 : access stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:13135
   pragma Import (C, xcb_poly_text_8, "xcb_poly_text_8");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_poly_text_16_sizeof (arg1 : System.Address; arg2 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/xproto.h:13144
   pragma Import (C, xcb_poly_text_16_sizeof, "xcb_poly_text_16_sizeof");

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
  -- ** xcb_void_cookie_t xcb_poly_text_16_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    drawable
  -- ** @param xcb_gcontext_t    gc
  -- ** @param int16_t           x
  -- ** @param int16_t           y
  -- ** @param uint32_t          items_len
  -- ** @param const uint8_t    *items
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_poly_text_16_checked
     (arg1 : System.Address;
      arg2 : xcb_drawable_t;
      arg3 : xcb_gcontext_t;
      arg4 : sys_types_h.int16_t;
      arg5 : sys_types_h.int16_t;
      arg6 : stdint_h.uint32_t;
      arg7 : access stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:13175
   pragma Import (C, xcb_poly_text_16_checked, "xcb_poly_text_16_checked");

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
  -- ** xcb_void_cookie_t xcb_poly_text_16
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    drawable
  -- ** @param xcb_gcontext_t    gc
  -- ** @param int16_t           x
  -- ** @param int16_t           y
  -- ** @param uint32_t          items_len
  -- ** @param const uint8_t    *items
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_poly_text_16
     (arg1 : System.Address;
      arg2 : xcb_drawable_t;
      arg3 : xcb_gcontext_t;
      arg4 : sys_types_h.int16_t;
      arg5 : sys_types_h.int16_t;
      arg6 : stdint_h.uint32_t;
      arg7 : access stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:13208
   pragma Import (C, xcb_poly_text_16, "xcb_poly_text_16");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_image_text_8_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:13217
   pragma Import (C, xcb_image_text_8_sizeof, "xcb_image_text_8_sizeof");

  --*
  -- * @brief Draws text
  -- *
  -- * @param c The connection
  -- * @param string_len The length of the \a string. Note that this parameter limited by 255 due to
  -- * using 8 bits!
  -- * @param drawable The drawable (Window or Pixmap) to draw text on.
  -- * @param gc The graphics context to use.
  -- * \n
  -- * The following graphics context components are used: plane-mask, foreground,
  -- * background, font, subwindow-mode, clip-x-origin, clip-y-origin, and clip-mask.
  -- * @param x The x coordinate of the first character, relative to the origin of \a drawable.
  -- * @param y The y coordinate of the first character, relative to the origin of \a drawable.
  -- * @param string The string to draw. Only the first 255 characters are relevant due to the data
  -- * type of \a string_len.
  -- * @return A cookie
  -- *
  -- * Fills the destination rectangle with the background pixel from \a gc, then
  -- * paints the text with the foreground pixel from \a gc. The upper-left corner of
  -- * the filled rectangle is at [x, y - font-ascent]. The width is overall-width,
  -- * the height is font-ascent + font-descent. The overall-width, font-ascent and
  -- * font-descent are as returned by `xcb_query_text_extents` (TODO).
  -- * 
  -- * Note that using X core fonts is deprecated (but still supported) in favor of
  -- * client-side rendering using Xft.
  -- * 
  -- * This form can be used only if the request will not cause
  -- * a reply to be generated. Any returned error will be
  -- * saved for handling by xcb_request_check().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_image_text_8_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           string_len
  -- ** @param xcb_drawable_t    drawable
  -- ** @param xcb_gcontext_t    gc
  -- ** @param int16_t           x
  -- ** @param int16_t           y
  -- ** @param const char       *string
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_image_text_8_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_drawable_t;
      arg4 : xcb_gcontext_t;
      arg5 : sys_types_h.int16_t;
      arg6 : sys_types_h.int16_t;
      arg7 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:13266
   pragma Import (C, xcb_image_text_8_checked, "xcb_image_text_8_checked");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*
  -- * @brief Draws text
  -- *
  -- * @param c The connection
  -- * @param string_len The length of the \a string. Note that this parameter limited by 255 due to
  -- * using 8 bits!
  -- * @param drawable The drawable (Window or Pixmap) to draw text on.
  -- * @param gc The graphics context to use.
  -- * \n
  -- * The following graphics context components are used: plane-mask, foreground,
  -- * background, font, subwindow-mode, clip-x-origin, clip-y-origin, and clip-mask.
  -- * @param x The x coordinate of the first character, relative to the origin of \a drawable.
  -- * @param y The y coordinate of the first character, relative to the origin of \a drawable.
  -- * @param string The string to draw. Only the first 255 characters are relevant due to the data
  -- * type of \a string_len.
  -- * @return A cookie
  -- *
  -- * Fills the destination rectangle with the background pixel from \a gc, then
  -- * paints the text with the foreground pixel from \a gc. The upper-left corner of
  -- * the filled rectangle is at [x, y - font-ascent]. The width is overall-width,
  -- * the height is font-ascent + font-descent. The overall-width, font-ascent and
  -- * font-descent are as returned by `xcb_query_text_extents` (TODO).
  -- * 
  -- * Note that using X core fonts is deprecated (but still supported) in favor of
  -- * client-side rendering using Xft.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_image_text_8
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           string_len
  -- ** @param xcb_drawable_t    drawable
  -- ** @param xcb_gcontext_t    gc
  -- ** @param int16_t           x
  -- ** @param int16_t           y
  -- ** @param const char       *string
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_image_text_8
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_drawable_t;
      arg4 : xcb_gcontext_t;
      arg5 : sys_types_h.int16_t;
      arg6 : sys_types_h.int16_t;
      arg7 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:13318
   pragma Import (C, xcb_image_text_8, "xcb_image_text_8");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_image_text_16_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:13327
   pragma Import (C, xcb_image_text_16_sizeof, "xcb_image_text_16_sizeof");

  --*
  -- * @brief Draws text
  -- *
  -- * @param c The connection
  -- * @param string_len The length of the \a string in characters. Note that this parameter limited by
  -- * 255 due to using 8 bits!
  -- * @param drawable The drawable (Window or Pixmap) to draw text on.
  -- * @param gc The graphics context to use.
  -- * \n
  -- * The following graphics context components are used: plane-mask, foreground,
  -- * background, font, subwindow-mode, clip-x-origin, clip-y-origin, and clip-mask.
  -- * @param x The x coordinate of the first character, relative to the origin of \a drawable.
  -- * @param y The y coordinate of the first character, relative to the origin of \a drawable.
  -- * @param string The string to draw. Only the first 255 characters are relevant due to the data
  -- * type of \a string_len. Every character uses 2 bytes (hence the 16 in this
  -- * request's name).
  -- * @return A cookie
  -- *
  -- * Fills the destination rectangle with the background pixel from \a gc, then
  -- * paints the text with the foreground pixel from \a gc. The upper-left corner of
  -- * the filled rectangle is at [x, y - font-ascent]. The width is overall-width,
  -- * the height is font-ascent + font-descent. The overall-width, font-ascent and
  -- * font-descent are as returned by `xcb_query_text_extents` (TODO).
  -- * 
  -- * Note that using X core fonts is deprecated (but still supported) in favor of
  -- * client-side rendering using Xft.
  -- * 
  -- * This form can be used only if the request will not cause
  -- * a reply to be generated. Any returned error will be
  -- * saved for handling by xcb_request_check().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_image_text_16_checked
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param uint8_t             string_len
  -- ** @param xcb_drawable_t      drawable
  -- ** @param xcb_gcontext_t      gc
  -- ** @param int16_t             x
  -- ** @param int16_t             y
  -- ** @param const xcb_char2b_t *string
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_image_text_16_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_drawable_t;
      arg4 : xcb_gcontext_t;
      arg5 : sys_types_h.int16_t;
      arg6 : sys_types_h.int16_t;
      arg7 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:13377
   pragma Import (C, xcb_image_text_16_checked, "xcb_image_text_16_checked");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*
  -- * @brief Draws text
  -- *
  -- * @param c The connection
  -- * @param string_len The length of the \a string in characters. Note that this parameter limited by
  -- * 255 due to using 8 bits!
  -- * @param drawable The drawable (Window or Pixmap) to draw text on.
  -- * @param gc The graphics context to use.
  -- * \n
  -- * The following graphics context components are used: plane-mask, foreground,
  -- * background, font, subwindow-mode, clip-x-origin, clip-y-origin, and clip-mask.
  -- * @param x The x coordinate of the first character, relative to the origin of \a drawable.
  -- * @param y The y coordinate of the first character, relative to the origin of \a drawable.
  -- * @param string The string to draw. Only the first 255 characters are relevant due to the data
  -- * type of \a string_len. Every character uses 2 bytes (hence the 16 in this
  -- * request's name).
  -- * @return A cookie
  -- *
  -- * Fills the destination rectangle with the background pixel from \a gc, then
  -- * paints the text with the foreground pixel from \a gc. The upper-left corner of
  -- * the filled rectangle is at [x, y - font-ascent]. The width is overall-width,
  -- * the height is font-ascent + font-descent. The overall-width, font-ascent and
  -- * font-descent are as returned by `xcb_query_text_extents` (TODO).
  -- * 
  -- * Note that using X core fonts is deprecated (but still supported) in favor of
  -- * client-side rendering using Xft.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_image_text_16
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param uint8_t             string_len
  -- ** @param xcb_drawable_t      drawable
  -- ** @param xcb_gcontext_t      gc
  -- ** @param int16_t             x
  -- ** @param int16_t             y
  -- ** @param const xcb_char2b_t *string
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_image_text_16
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_drawable_t;
      arg4 : xcb_gcontext_t;
      arg5 : sys_types_h.int16_t;
      arg6 : sys_types_h.int16_t;
      arg7 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:13430
   pragma Import (C, xcb_image_text_16, "xcb_image_text_16");

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
  -- ** xcb_void_cookie_t xcb_create_colormap_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           alloc
  -- ** @param xcb_colormap_t    mid
  -- ** @param xcb_window_t      window
  -- ** @param xcb_visualid_t    visual
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_create_colormap_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_colormap_t;
      arg4 : xcb_window_t;
      arg5 : xcb_visualid_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:13464
   pragma Import (C, xcb_create_colormap_checked, "xcb_create_colormap_checked");

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
  -- ** xcb_void_cookie_t xcb_create_colormap
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           alloc
  -- ** @param xcb_colormap_t    mid
  -- ** @param xcb_window_t      window
  -- ** @param xcb_visualid_t    visual
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_create_colormap
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_colormap_t;
      arg4 : xcb_window_t;
      arg5 : xcb_visualid_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:13493
   pragma Import (C, xcb_create_colormap, "xcb_create_colormap");

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
  -- ** xcb_void_cookie_t xcb_free_colormap_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_colormap_t    cmap
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_free_colormap_checked (arg1 : System.Address; arg2 : xcb_colormap_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:13522
   pragma Import (C, xcb_free_colormap_checked, "xcb_free_colormap_checked");

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
  -- ** xcb_void_cookie_t xcb_free_colormap
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_colormap_t    cmap
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_free_colormap (arg1 : System.Address; arg2 : xcb_colormap_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:13545
   pragma Import (C, xcb_free_colormap, "xcb_free_colormap");

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
  -- ** xcb_void_cookie_t xcb_copy_colormap_and_free_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_colormap_t    mid
  -- ** @param xcb_colormap_t    src_cmap
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_copy_colormap_and_free_checked
     (arg1 : System.Address;
      arg2 : xcb_colormap_t;
      arg3 : xcb_colormap_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:13572
   pragma Import (C, xcb_copy_colormap_and_free_checked, "xcb_copy_colormap_and_free_checked");

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
  -- ** xcb_void_cookie_t xcb_copy_colormap_and_free
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_colormap_t    mid
  -- ** @param xcb_colormap_t    src_cmap
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_copy_colormap_and_free
     (arg1 : System.Address;
      arg2 : xcb_colormap_t;
      arg3 : xcb_colormap_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:13597
   pragma Import (C, xcb_copy_colormap_and_free, "xcb_copy_colormap_and_free");

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
  -- ** xcb_void_cookie_t xcb_install_colormap_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_colormap_t    cmap
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_install_colormap_checked (arg1 : System.Address; arg2 : xcb_colormap_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:13624
   pragma Import (C, xcb_install_colormap_checked, "xcb_install_colormap_checked");

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
  -- ** xcb_void_cookie_t xcb_install_colormap
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_colormap_t    cmap
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_install_colormap (arg1 : System.Address; arg2 : xcb_colormap_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:13647
   pragma Import (C, xcb_install_colormap, "xcb_install_colormap");

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
  -- ** xcb_void_cookie_t xcb_uninstall_colormap_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_colormap_t    cmap
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_uninstall_colormap_checked (arg1 : System.Address; arg2 : xcb_colormap_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:13673
   pragma Import (C, xcb_uninstall_colormap_checked, "xcb_uninstall_colormap_checked");

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
  -- ** xcb_void_cookie_t xcb_uninstall_colormap
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_colormap_t    cmap
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_uninstall_colormap (arg1 : System.Address; arg2 : xcb_colormap_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:13696
   pragma Import (C, xcb_uninstall_colormap, "xcb_uninstall_colormap");

  --*<  
  --*<  
   function xcb_list_installed_colormaps_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:13700
   pragma Import (C, xcb_list_installed_colormaps_sizeof, "xcb_list_installed_colormaps_sizeof");

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
  -- ** xcb_list_installed_colormaps_cookie_t xcb_list_installed_colormaps
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_list_installed_colormaps_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_list_installed_colormaps (arg1 : System.Address; arg2 : xcb_window_t) return xcb_list_installed_colormaps_cookie_t;  -- /usr/include/xcb/xproto.h:13722
   pragma Import (C, xcb_list_installed_colormaps, "xcb_list_installed_colormaps");

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
  -- ** xcb_list_installed_colormaps_cookie_t xcb_list_installed_colormaps_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_list_installed_colormaps_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_list_installed_colormaps_unchecked (arg1 : System.Address; arg2 : xcb_window_t) return xcb_list_installed_colormaps_cookie_t;  -- /usr/include/xcb/xproto.h:13748
   pragma Import (C, xcb_list_installed_colormaps_unchecked, "xcb_list_installed_colormaps_unchecked");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_colormap_t * xcb_list_installed_colormaps_cmaps
  -- ** 
  -- ** @param const xcb_list_installed_colormaps_reply_t *R
  -- ** @returns xcb_colormap_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_list_installed_colormaps_cmaps (arg1 : System.Address) return access xcb_colormap_t;  -- /usr/include/xcb/xproto.h:13762
   pragma Import (C, xcb_list_installed_colormaps_cmaps, "xcb_list_installed_colormaps_cmaps");

  --****************************************************************************
  -- **
  -- ** int xcb_list_installed_colormaps_cmaps_length
  -- ** 
  -- ** @param const xcb_list_installed_colormaps_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_list_installed_colormaps_cmaps_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:13775
   pragma Import (C, xcb_list_installed_colormaps_cmaps_length, "xcb_list_installed_colormaps_cmaps_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_list_installed_colormaps_cmaps_end
  -- ** 
  -- ** @param const xcb_list_installed_colormaps_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_list_installed_colormaps_cmaps_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:13788
   pragma Import (C, xcb_list_installed_colormaps_cmaps_end, "xcb_list_installed_colormaps_cmaps_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_list_installed_colormaps_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_list_installed_colormaps_reply_t * xcb_list_installed_colormaps_reply
  -- ** 
  -- ** @param xcb_connection_t                       *c
  -- ** @param xcb_list_installed_colormaps_cookie_t   cookie
  -- ** @param xcb_generic_error_t                   **e
  -- ** @returns xcb_list_installed_colormaps_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_list_installed_colormaps_reply
     (arg1 : System.Address;
      arg2 : xcb_list_installed_colormaps_cookie_t;
      arg3 : System.Address) return access xcb_list_installed_colormaps_reply_t;  -- /usr/include/xcb/xproto.h:13817
   pragma Import (C, xcb_list_installed_colormaps_reply, "xcb_list_installed_colormaps_reply");

  --*<  
  --*<  
  --*
  -- * @brief Allocate a color
  -- *
  -- * @param c The connection
  -- * @param cmap TODO
  -- * @param red The red value of your color.
  -- * @param green The green value of your color.
  -- * @param blue The blue value of your color.
  -- * @return A cookie
  -- *
  -- * Allocates a read-only colormap entry corresponding to the closest RGB value
  -- * supported by the hardware. If you are using TrueColor, you can take a shortcut
  -- * and directly calculate the color pixel value to avoid the round trip. But, for
  -- * example, on 16-bit color setups (VNC), you can easily get the closest supported
  -- * RGB value to the RGB value you are specifying.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_alloc_color_cookie_t xcb_alloc_color
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_colormap_t    cmap
  -- ** @param uint16_t          red
  -- ** @param uint16_t          green
  -- ** @param uint16_t          blue
  -- ** @returns xcb_alloc_color_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_alloc_color
     (arg1 : System.Address;
      arg2 : xcb_colormap_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint16_t) return xcb_alloc_color_cookie_t;  -- /usr/include/xcb/xproto.h:13853
   pragma Import (C, xcb_alloc_color, "xcb_alloc_color");

  --*<  
  --*<  
  --*<  
  --*<  
  --*
  -- * @brief Allocate a color
  -- *
  -- * @param c The connection
  -- * @param cmap TODO
  -- * @param red The red value of your color.
  -- * @param green The green value of your color.
  -- * @param blue The blue value of your color.
  -- * @return A cookie
  -- *
  -- * Allocates a read-only colormap entry corresponding to the closest RGB value
  -- * supported by the hardware. If you are using TrueColor, you can take a shortcut
  -- * and directly calculate the color pixel value to avoid the round trip. But, for
  -- * example, on 16-bit color setups (VNC), you can easily get the closest supported
  -- * RGB value to the RGB value you are specifying.
  -- * 
  -- * This form can be used only if the request will cause
  -- * a reply to be generated. Any returned error will be
  -- * placed in the event queue.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_alloc_color_cookie_t xcb_alloc_color_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_colormap_t    cmap
  -- ** @param uint16_t          red
  -- ** @param uint16_t          green
  -- ** @param uint16_t          blue
  -- ** @returns xcb_alloc_color_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_alloc_color_unchecked
     (arg1 : System.Address;
      arg2 : xcb_colormap_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint16_t) return xcb_alloc_color_cookie_t;  -- /usr/include/xcb/xproto.h:13894
   pragma Import (C, xcb_alloc_color_unchecked, "xcb_alloc_color_unchecked");

  --*<  
  --*<  
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
  -- * xcb_alloc_color_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_alloc_color_reply_t * xcb_alloc_color_reply
  -- ** 
  -- ** @param xcb_connection_t          *c
  -- ** @param xcb_alloc_color_cookie_t   cookie
  -- ** @param xcb_generic_error_t      **e
  -- ** @returns xcb_alloc_color_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_alloc_color_reply
     (arg1 : System.Address;
      arg2 : xcb_alloc_color_cookie_t;
      arg3 : System.Address) return access xcb_alloc_color_reply_t;  -- /usr/include/xcb/xproto.h:13927
   pragma Import (C, xcb_alloc_color_reply, "xcb_alloc_color_reply");

  --*<  
  --*<  
  --*<  
   function xcb_alloc_named_color_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:13932
   pragma Import (C, xcb_alloc_named_color_sizeof, "xcb_alloc_named_color_sizeof");

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
  -- ** xcb_alloc_named_color_cookie_t xcb_alloc_named_color
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_colormap_t    cmap
  -- ** @param uint16_t          name_len
  -- ** @param const char       *name
  -- ** @returns xcb_alloc_named_color_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_alloc_named_color
     (arg1 : System.Address;
      arg2 : xcb_colormap_t;
      arg3 : stdint_h.uint16_t;
      arg4 : Interfaces.C.Strings.chars_ptr) return xcb_alloc_named_color_cookie_t;  -- /usr/include/xcb/xproto.h:13956
   pragma Import (C, xcb_alloc_named_color, "xcb_alloc_named_color");

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
  -- ** xcb_alloc_named_color_cookie_t xcb_alloc_named_color_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_colormap_t    cmap
  -- ** @param uint16_t          name_len
  -- ** @param const char       *name
  -- ** @returns xcb_alloc_named_color_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_alloc_named_color_unchecked
     (arg1 : System.Address;
      arg2 : xcb_colormap_t;
      arg3 : stdint_h.uint16_t;
      arg4 : Interfaces.C.Strings.chars_ptr) return xcb_alloc_named_color_cookie_t;  -- /usr/include/xcb/xproto.h:13986
   pragma Import (C, xcb_alloc_named_color_unchecked, "xcb_alloc_named_color_unchecked");

  --*<  
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
  -- * xcb_alloc_named_color_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_alloc_named_color_reply_t * xcb_alloc_named_color_reply
  -- ** 
  -- ** @param xcb_connection_t                *c
  -- ** @param xcb_alloc_named_color_cookie_t   cookie
  -- ** @param xcb_generic_error_t            **e
  -- ** @returns xcb_alloc_named_color_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_alloc_named_color_reply
     (arg1 : System.Address;
      arg2 : xcb_alloc_named_color_cookie_t;
      arg3 : System.Address) return access xcb_alloc_named_color_reply_t;  -- /usr/include/xcb/xproto.h:14018
   pragma Import (C, xcb_alloc_named_color_reply, "xcb_alloc_named_color_reply");

  --*<  
  --*<  
  --*<  
   function xcb_alloc_color_cells_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:14023
   pragma Import (C, xcb_alloc_color_cells_sizeof, "xcb_alloc_color_cells_sizeof");

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
  -- ** xcb_alloc_color_cells_cookie_t xcb_alloc_color_cells
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           contiguous
  -- ** @param xcb_colormap_t    cmap
  -- ** @param uint16_t          colors
  -- ** @param uint16_t          planes
  -- ** @returns xcb_alloc_color_cells_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_alloc_color_cells
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_colormap_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint16_t) return xcb_alloc_color_cells_cookie_t;  -- /usr/include/xcb/xproto.h:14048
   pragma Import (C, xcb_alloc_color_cells, "xcb_alloc_color_cells");

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
  -- ** xcb_alloc_color_cells_cookie_t xcb_alloc_color_cells_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           contiguous
  -- ** @param xcb_colormap_t    cmap
  -- ** @param uint16_t          colors
  -- ** @param uint16_t          planes
  -- ** @returns xcb_alloc_color_cells_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_alloc_color_cells_unchecked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_colormap_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint16_t) return xcb_alloc_color_cells_cookie_t;  -- /usr/include/xcb/xproto.h:14080
   pragma Import (C, xcb_alloc_color_cells_unchecked, "xcb_alloc_color_cells_unchecked");

  --*<  
  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** uint32_t * xcb_alloc_color_cells_pixels
  -- ** 
  -- ** @param const xcb_alloc_color_cells_reply_t *R
  -- ** @returns uint32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_alloc_color_cells_pixels (arg1 : System.Address) return access stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:14097
   pragma Import (C, xcb_alloc_color_cells_pixels, "xcb_alloc_color_cells_pixels");

  --****************************************************************************
  -- **
  -- ** int xcb_alloc_color_cells_pixels_length
  -- ** 
  -- ** @param const xcb_alloc_color_cells_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_alloc_color_cells_pixels_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:14110
   pragma Import (C, xcb_alloc_color_cells_pixels_length, "xcb_alloc_color_cells_pixels_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_alloc_color_cells_pixels_end
  -- ** 
  -- ** @param const xcb_alloc_color_cells_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_alloc_color_cells_pixels_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:14123
   pragma Import (C, xcb_alloc_color_cells_pixels_end, "xcb_alloc_color_cells_pixels_end");

  --****************************************************************************
  -- **
  -- ** uint32_t * xcb_alloc_color_cells_masks
  -- ** 
  -- ** @param const xcb_alloc_color_cells_reply_t *R
  -- ** @returns uint32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_alloc_color_cells_masks (arg1 : System.Address) return access stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:14136
   pragma Import (C, xcb_alloc_color_cells_masks, "xcb_alloc_color_cells_masks");

  --****************************************************************************
  -- **
  -- ** int xcb_alloc_color_cells_masks_length
  -- ** 
  -- ** @param const xcb_alloc_color_cells_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_alloc_color_cells_masks_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:14149
   pragma Import (C, xcb_alloc_color_cells_masks_length, "xcb_alloc_color_cells_masks_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_alloc_color_cells_masks_end
  -- ** 
  -- ** @param const xcb_alloc_color_cells_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_alloc_color_cells_masks_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:14162
   pragma Import (C, xcb_alloc_color_cells_masks_end, "xcb_alloc_color_cells_masks_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_alloc_color_cells_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_alloc_color_cells_reply_t * xcb_alloc_color_cells_reply
  -- ** 
  -- ** @param xcb_connection_t                *c
  -- ** @param xcb_alloc_color_cells_cookie_t   cookie
  -- ** @param xcb_generic_error_t            **e
  -- ** @returns xcb_alloc_color_cells_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_alloc_color_cells_reply
     (arg1 : System.Address;
      arg2 : xcb_alloc_color_cells_cookie_t;
      arg3 : System.Address) return access xcb_alloc_color_cells_reply_t;  -- /usr/include/xcb/xproto.h:14191
   pragma Import (C, xcb_alloc_color_cells_reply, "xcb_alloc_color_cells_reply");

  --*<  
  --*<  
  --*<  
   function xcb_alloc_color_planes_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:14196
   pragma Import (C, xcb_alloc_color_planes_sizeof, "xcb_alloc_color_planes_sizeof");

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
  -- ** xcb_alloc_color_planes_cookie_t xcb_alloc_color_planes
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           contiguous
  -- ** @param xcb_colormap_t    cmap
  -- ** @param uint16_t          colors
  -- ** @param uint16_t          reds
  -- ** @param uint16_t          greens
  -- ** @param uint16_t          blues
  -- ** @returns xcb_alloc_color_planes_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_alloc_color_planes
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_colormap_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint16_t;
      arg7 : stdint_h.uint16_t) return xcb_alloc_color_planes_cookie_t;  -- /usr/include/xcb/xproto.h:14223
   pragma Import (C, xcb_alloc_color_planes, "xcb_alloc_color_planes");

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
  -- ** xcb_alloc_color_planes_cookie_t xcb_alloc_color_planes_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           contiguous
  -- ** @param xcb_colormap_t    cmap
  -- ** @param uint16_t          colors
  -- ** @param uint16_t          reds
  -- ** @param uint16_t          greens
  -- ** @param uint16_t          blues
  -- ** @returns xcb_alloc_color_planes_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_alloc_color_planes_unchecked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_colormap_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint16_t;
      arg7 : stdint_h.uint16_t) return xcb_alloc_color_planes_cookie_t;  -- /usr/include/xcb/xproto.h:14259
   pragma Import (C, xcb_alloc_color_planes_unchecked, "xcb_alloc_color_planes_unchecked");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** uint32_t * xcb_alloc_color_planes_pixels
  -- ** 
  -- ** @param const xcb_alloc_color_planes_reply_t *R
  -- ** @returns uint32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_alloc_color_planes_pixels (arg1 : System.Address) return access stdint_h.uint32_t;  -- /usr/include/xcb/xproto.h:14278
   pragma Import (C, xcb_alloc_color_planes_pixels, "xcb_alloc_color_planes_pixels");

  --****************************************************************************
  -- **
  -- ** int xcb_alloc_color_planes_pixels_length
  -- ** 
  -- ** @param const xcb_alloc_color_planes_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_alloc_color_planes_pixels_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:14291
   pragma Import (C, xcb_alloc_color_planes_pixels_length, "xcb_alloc_color_planes_pixels_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_alloc_color_planes_pixels_end
  -- ** 
  -- ** @param const xcb_alloc_color_planes_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_alloc_color_planes_pixels_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:14304
   pragma Import (C, xcb_alloc_color_planes_pixels_end, "xcb_alloc_color_planes_pixels_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_alloc_color_planes_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_alloc_color_planes_reply_t * xcb_alloc_color_planes_reply
  -- ** 
  -- ** @param xcb_connection_t                 *c
  -- ** @param xcb_alloc_color_planes_cookie_t   cookie
  -- ** @param xcb_generic_error_t             **e
  -- ** @returns xcb_alloc_color_planes_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_alloc_color_planes_reply
     (arg1 : System.Address;
      arg2 : xcb_alloc_color_planes_cookie_t;
      arg3 : System.Address) return access xcb_alloc_color_planes_reply_t;  -- /usr/include/xcb/xproto.h:14333
   pragma Import (C, xcb_alloc_color_planes_reply, "xcb_alloc_color_planes_reply");

  --*<  
  --*<  
  --*<  
   function xcb_free_colors_sizeof (arg1 : System.Address; arg2 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/xproto.h:14338
   pragma Import (C, xcb_free_colors_sizeof, "xcb_free_colors_sizeof");

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
  -- ** xcb_void_cookie_t xcb_free_colors_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_colormap_t    cmap
  -- ** @param uint32_t          plane_mask
  -- ** @param uint32_t          pixels_len
  -- ** @param const uint32_t   *pixels
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_free_colors_checked
     (arg1 : System.Address;
      arg2 : xcb_colormap_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t;
      arg5 : access stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:14367
   pragma Import (C, xcb_free_colors_checked, "xcb_free_colors_checked");

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
  -- ** xcb_void_cookie_t xcb_free_colors
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_colormap_t    cmap
  -- ** @param uint32_t          plane_mask
  -- ** @param uint32_t          pixels_len
  -- ** @param const uint32_t   *pixels
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_free_colors
     (arg1 : System.Address;
      arg2 : xcb_colormap_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t;
      arg5 : access stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:14396
   pragma Import (C, xcb_free_colors, "xcb_free_colors");

  --*<  
  --*<  
  --*<  
  --*<  
  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_coloritem_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_coloritem_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_coloritem_next
  -- ** 
  -- ** @param xcb_coloritem_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_coloritem_next (arg1 : access xcb_coloritem_iterator_t);  -- /usr/include/xcb/xproto.h:14421
   pragma Import (C, xcb_coloritem_next, "xcb_coloritem_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_coloritem_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_coloritem_end
  -- ** 
  -- ** @param xcb_coloritem_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_coloritem_end (arg1 : xcb_coloritem_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:14443
   pragma Import (C, xcb_coloritem_end, "xcb_coloritem_end");

  --*<  
   function xcb_store_colors_sizeof (arg1 : System.Address; arg2 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/xproto.h:14446
   pragma Import (C, xcb_store_colors_sizeof, "xcb_store_colors_sizeof");

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
  -- ** xcb_void_cookie_t xcb_store_colors_checked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_colormap_t         cmap
  -- ** @param uint32_t               items_len
  -- ** @param const xcb_coloritem_t *items
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_store_colors_checked
     (arg1 : System.Address;
      arg2 : xcb_colormap_t;
      arg3 : stdint_h.uint32_t;
      arg4 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:14474
   pragma Import (C, xcb_store_colors_checked, "xcb_store_colors_checked");

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
  -- ** xcb_void_cookie_t xcb_store_colors
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_colormap_t         cmap
  -- ** @param uint32_t               items_len
  -- ** @param const xcb_coloritem_t *items
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_store_colors
     (arg1 : System.Address;
      arg2 : xcb_colormap_t;
      arg3 : stdint_h.uint32_t;
      arg4 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:14501
   pragma Import (C, xcb_store_colors, "xcb_store_colors");

  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_store_named_color_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:14507
   pragma Import (C, xcb_store_named_color_sizeof, "xcb_store_named_color_sizeof");

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
  -- ** xcb_void_cookie_t xcb_store_named_color_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           flags
  -- ** @param xcb_colormap_t    cmap
  -- ** @param uint32_t          pixel
  -- ** @param uint16_t          name_len
  -- ** @param const char       *name
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_store_named_color_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_colormap_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint16_t;
      arg6 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:14536
   pragma Import (C, xcb_store_named_color_checked, "xcb_store_named_color_checked");

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
  -- ** xcb_void_cookie_t xcb_store_named_color
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           flags
  -- ** @param xcb_colormap_t    cmap
  -- ** @param uint32_t          pixel
  -- ** @param uint16_t          name_len
  -- ** @param const char       *name
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_store_named_color
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_colormap_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint16_t;
      arg6 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:14567
   pragma Import (C, xcb_store_named_color, "xcb_store_named_color");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_rgb_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_rgb_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_rgb_next
  -- ** 
  -- ** @param xcb_rgb_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_rgb_next (arg1 : access xcb_rgb_iterator_t);  -- /usr/include/xcb/xproto.h:14593
   pragma Import (C, xcb_rgb_next, "xcb_rgb_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_rgb_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_rgb_end
  -- ** 
  -- ** @param xcb_rgb_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_rgb_end (arg1 : xcb_rgb_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:14615
   pragma Import (C, xcb_rgb_end, "xcb_rgb_end");

  --*<  
   function xcb_query_colors_sizeof (arg1 : System.Address; arg2 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/xproto.h:14618
   pragma Import (C, xcb_query_colors_sizeof, "xcb_query_colors_sizeof");

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
  -- ** xcb_query_colors_cookie_t xcb_query_colors
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_colormap_t    cmap
  -- ** @param uint32_t          pixels_len
  -- ** @param const uint32_t   *pixels
  -- ** @returns xcb_query_colors_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_query_colors
     (arg1 : System.Address;
      arg2 : xcb_colormap_t;
      arg3 : stdint_h.uint32_t;
      arg4 : access stdint_h.uint32_t) return xcb_query_colors_cookie_t;  -- /usr/include/xcb/xproto.h:14643
   pragma Import (C, xcb_query_colors, "xcb_query_colors");

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
  -- ** xcb_query_colors_cookie_t xcb_query_colors_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_colormap_t    cmap
  -- ** @param uint32_t          pixels_len
  -- ** @param const uint32_t   *pixels
  -- ** @returns xcb_query_colors_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_query_colors_unchecked
     (arg1 : System.Address;
      arg2 : xcb_colormap_t;
      arg3 : stdint_h.uint32_t;
      arg4 : access stdint_h.uint32_t) return xcb_query_colors_cookie_t;  -- /usr/include/xcb/xproto.h:14673
   pragma Import (C, xcb_query_colors_unchecked, "xcb_query_colors_unchecked");

  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_rgb_t * xcb_query_colors_colors
  -- ** 
  -- ** @param const xcb_query_colors_reply_t *R
  -- ** @returns xcb_rgb_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_query_colors_colors (arg1 : System.Address) return access xcb_rgb_t;  -- /usr/include/xcb/xproto.h:14689
   pragma Import (C, xcb_query_colors_colors, "xcb_query_colors_colors");

  --****************************************************************************
  -- **
  -- ** int xcb_query_colors_colors_length
  -- ** 
  -- ** @param const xcb_query_colors_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_query_colors_colors_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:14702
   pragma Import (C, xcb_query_colors_colors_length, "xcb_query_colors_colors_length");

  --****************************************************************************
  -- **
  -- ** xcb_rgb_iterator_t xcb_query_colors_colors_iterator
  -- ** 
  -- ** @param const xcb_query_colors_reply_t *R
  -- ** @returns xcb_rgb_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_query_colors_colors_iterator (arg1 : System.Address) return xcb_rgb_iterator_t;  -- /usr/include/xcb/xproto.h:14715
   pragma Import (C, xcb_query_colors_colors_iterator, "xcb_query_colors_colors_iterator");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_query_colors_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_query_colors_reply_t * xcb_query_colors_reply
  -- ** 
  -- ** @param xcb_connection_t           *c
  -- ** @param xcb_query_colors_cookie_t   cookie
  -- ** @param xcb_generic_error_t       **e
  -- ** @returns xcb_query_colors_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_query_colors_reply
     (arg1 : System.Address;
      arg2 : xcb_query_colors_cookie_t;
      arg3 : System.Address) return access xcb_query_colors_reply_t;  -- /usr/include/xcb/xproto.h:14744
   pragma Import (C, xcb_query_colors_reply, "xcb_query_colors_reply");

  --*<  
  --*<  
  --*<  
   function xcb_lookup_color_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:14749
   pragma Import (C, xcb_lookup_color_sizeof, "xcb_lookup_color_sizeof");

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
  -- ** xcb_lookup_color_cookie_t xcb_lookup_color
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_colormap_t    cmap
  -- ** @param uint16_t          name_len
  -- ** @param const char       *name
  -- ** @returns xcb_lookup_color_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_lookup_color
     (arg1 : System.Address;
      arg2 : xcb_colormap_t;
      arg3 : stdint_h.uint16_t;
      arg4 : Interfaces.C.Strings.chars_ptr) return xcb_lookup_color_cookie_t;  -- /usr/include/xcb/xproto.h:14773
   pragma Import (C, xcb_lookup_color, "xcb_lookup_color");

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
  -- ** xcb_lookup_color_cookie_t xcb_lookup_color_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_colormap_t    cmap
  -- ** @param uint16_t          name_len
  -- ** @param const char       *name
  -- ** @returns xcb_lookup_color_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_lookup_color_unchecked
     (arg1 : System.Address;
      arg2 : xcb_colormap_t;
      arg3 : stdint_h.uint16_t;
      arg4 : Interfaces.C.Strings.chars_ptr) return xcb_lookup_color_cookie_t;  -- /usr/include/xcb/xproto.h:14803
   pragma Import (C, xcb_lookup_color_unchecked, "xcb_lookup_color_unchecked");

  --*<  
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
  -- * xcb_lookup_color_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_lookup_color_reply_t * xcb_lookup_color_reply
  -- ** 
  -- ** @param xcb_connection_t           *c
  -- ** @param xcb_lookup_color_cookie_t   cookie
  -- ** @param xcb_generic_error_t       **e
  -- ** @returns xcb_lookup_color_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_lookup_color_reply
     (arg1 : System.Address;
      arg2 : xcb_lookup_color_cookie_t;
      arg3 : System.Address) return access xcb_lookup_color_reply_t;  -- /usr/include/xcb/xproto.h:14835
   pragma Import (C, xcb_lookup_color_reply, "xcb_lookup_color_reply");

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
  -- ** xcb_void_cookie_t xcb_create_cursor_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_cursor_t      cid
  -- ** @param xcb_pixmap_t      source
  -- ** @param xcb_pixmap_t      mask
  -- ** @param uint16_t          fore_red
  -- ** @param uint16_t          fore_green
  -- ** @param uint16_t          fore_blue
  -- ** @param uint16_t          back_red
  -- ** @param uint16_t          back_green
  -- ** @param uint16_t          back_blue
  -- ** @param uint16_t          x
  -- ** @param uint16_t          y
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_create_cursor_checked
     (arg1 : System.Address;
      arg2 : xcb_cursor_t;
      arg3 : xcb_pixmap_t;
      arg4 : xcb_pixmap_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint16_t;
      arg7 : stdint_h.uint16_t;
      arg8 : stdint_h.uint16_t;
      arg9 : stdint_h.uint16_t;
      arg10 : stdint_h.uint16_t;
      arg11 : stdint_h.uint16_t;
      arg12 : stdint_h.uint16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:14872
   pragma Import (C, xcb_create_cursor_checked, "xcb_create_cursor_checked");

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
  -- ** xcb_void_cookie_t xcb_create_cursor
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_cursor_t      cid
  -- ** @param xcb_pixmap_t      source
  -- ** @param xcb_pixmap_t      mask
  -- ** @param uint16_t          fore_red
  -- ** @param uint16_t          fore_green
  -- ** @param uint16_t          fore_blue
  -- ** @param uint16_t          back_red
  -- ** @param uint16_t          back_green
  -- ** @param uint16_t          back_blue
  -- ** @param uint16_t          x
  -- ** @param uint16_t          y
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_create_cursor
     (arg1 : System.Address;
      arg2 : xcb_cursor_t;
      arg3 : xcb_pixmap_t;
      arg4 : xcb_pixmap_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint16_t;
      arg7 : stdint_h.uint16_t;
      arg8 : stdint_h.uint16_t;
      arg9 : stdint_h.uint16_t;
      arg10 : stdint_h.uint16_t;
      arg11 : stdint_h.uint16_t;
      arg12 : stdint_h.uint16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:14915
   pragma Import (C, xcb_create_cursor, "xcb_create_cursor");

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
  --*
  -- * @brief create cursor
  -- *
  -- * @param c The connection
  -- * @param cid The ID with which you will refer to the cursor, created by `xcb_generate_id`.
  -- * @param source_font In which font to look for the cursor glyph.
  -- * @param mask_font In which font to look for the mask glyph.
  -- * @param source_char The glyph of \a source_font to use.
  -- * @param mask_char The glyph of \a mask_font to use as a mask: Pixels which are set to 1 define
  -- * which source pixels are displayed. All pixels which are set to 0 are not
  -- * displayed.
  -- * @param fore_red The red value of the foreground color.
  -- * @param fore_green The green value of the foreground color.
  -- * @param fore_blue The blue value of the foreground color.
  -- * @param back_red The red value of the background color.
  -- * @param back_green The green value of the background color.
  -- * @param back_blue The blue value of the background color.
  -- * @return A cookie
  -- *
  -- * Creates a cursor from a font glyph. X provides a set of standard cursor shapes
  -- * in a special font named cursor. Applications are encouraged to use this
  -- * interface for their cursors because the font can be customized for the
  -- * individual display type.
  -- * 
  -- * All pixels which are set to 1 in the source will use the foreground color (as
  -- * specified by \a fore_red, \a fore_green and \a fore_blue). All pixels set to 0
  -- * will use the background color (as specified by \a back_red, \a back_green and
  -- * \a back_blue).
  -- * 
  -- * This form can be used only if the request will not cause
  -- * a reply to be generated. Any returned error will be
  -- * saved for handling by xcb_request_check().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_create_glyph_cursor_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_cursor_t      cid
  -- ** @param xcb_font_t        source_font
  -- ** @param xcb_font_t        mask_font
  -- ** @param uint16_t          source_char
  -- ** @param uint16_t          mask_char
  -- ** @param uint16_t          fore_red
  -- ** @param uint16_t          fore_green
  -- ** @param uint16_t          fore_blue
  -- ** @param uint16_t          back_red
  -- ** @param uint16_t          back_green
  -- ** @param uint16_t          back_blue
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_create_glyph_cursor_checked
     (arg1 : System.Address;
      arg2 : xcb_cursor_t;
      arg3 : xcb_font_t;
      arg4 : xcb_font_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint16_t;
      arg7 : stdint_h.uint16_t;
      arg8 : stdint_h.uint16_t;
      arg9 : stdint_h.uint16_t;
      arg10 : stdint_h.uint16_t;
      arg11 : stdint_h.uint16_t;
      arg12 : stdint_h.uint16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:14983
   pragma Import (C, xcb_create_glyph_cursor_checked, "xcb_create_glyph_cursor_checked");

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
  --*
  -- * @brief create cursor
  -- *
  -- * @param c The connection
  -- * @param cid The ID with which you will refer to the cursor, created by `xcb_generate_id`.
  -- * @param source_font In which font to look for the cursor glyph.
  -- * @param mask_font In which font to look for the mask glyph.
  -- * @param source_char The glyph of \a source_font to use.
  -- * @param mask_char The glyph of \a mask_font to use as a mask: Pixels which are set to 1 define
  -- * which source pixels are displayed. All pixels which are set to 0 are not
  -- * displayed.
  -- * @param fore_red The red value of the foreground color.
  -- * @param fore_green The green value of the foreground color.
  -- * @param fore_blue The blue value of the foreground color.
  -- * @param back_red The red value of the background color.
  -- * @param back_green The green value of the background color.
  -- * @param back_blue The blue value of the background color.
  -- * @return A cookie
  -- *
  -- * Creates a cursor from a font glyph. X provides a set of standard cursor shapes
  -- * in a special font named cursor. Applications are encouraged to use this
  -- * interface for their cursors because the font can be customized for the
  -- * individual display type.
  -- * 
  -- * All pixels which are set to 1 in the source will use the foreground color (as
  -- * specified by \a fore_red, \a fore_green and \a fore_blue). All pixels set to 0
  -- * will use the background color (as specified by \a back_red, \a back_green and
  -- * \a back_blue).
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_create_glyph_cursor
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_cursor_t      cid
  -- ** @param xcb_font_t        source_font
  -- ** @param xcb_font_t        mask_font
  -- ** @param uint16_t          source_char
  -- ** @param uint16_t          mask_char
  -- ** @param uint16_t          fore_red
  -- ** @param uint16_t          fore_green
  -- ** @param uint16_t          fore_blue
  -- ** @param uint16_t          back_red
  -- ** @param uint16_t          back_green
  -- ** @param uint16_t          back_blue
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_create_glyph_cursor
     (arg1 : System.Address;
      arg2 : xcb_cursor_t;
      arg3 : xcb_font_t;
      arg4 : xcb_font_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint16_t;
      arg7 : stdint_h.uint16_t;
      arg8 : stdint_h.uint16_t;
      arg9 : stdint_h.uint16_t;
      arg10 : stdint_h.uint16_t;
      arg11 : stdint_h.uint16_t;
      arg12 : stdint_h.uint16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:15048
   pragma Import (C, xcb_create_glyph_cursor, "xcb_create_glyph_cursor");

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
  --*
  -- * @brief Deletes a cursor
  -- *
  -- * @param c The connection
  -- * @param cursor The cursor to destroy.
  -- * @return A cookie
  -- *
  -- * Deletes the association between the cursor resource ID and the specified
  -- * cursor. The cursor is freed when no other resource references it.
  -- * 
  -- * This form can be used only if the request will not cause
  -- * a reply to be generated. Any returned error will be
  -- * saved for handling by xcb_request_check().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_free_cursor_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_cursor_t      cursor
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_free_cursor_checked (arg1 : System.Address; arg2 : xcb_cursor_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:15087
   pragma Import (C, xcb_free_cursor_checked, "xcb_free_cursor_checked");

  --*<  
  --*
  -- * @brief Deletes a cursor
  -- *
  -- * @param c The connection
  -- * @param cursor The cursor to destroy.
  -- * @return A cookie
  -- *
  -- * Deletes the association between the cursor resource ID and the specified
  -- * cursor. The cursor is freed when no other resource references it.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_free_cursor
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_cursor_t      cursor
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_free_cursor (arg1 : System.Address; arg2 : xcb_cursor_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:15113
   pragma Import (C, xcb_free_cursor, "xcb_free_cursor");

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
  -- ** xcb_void_cookie_t xcb_recolor_cursor_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_cursor_t      cursor
  -- ** @param uint16_t          fore_red
  -- ** @param uint16_t          fore_green
  -- ** @param uint16_t          fore_blue
  -- ** @param uint16_t          back_red
  -- ** @param uint16_t          back_green
  -- ** @param uint16_t          back_blue
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_recolor_cursor_checked
     (arg1 : System.Address;
      arg2 : xcb_cursor_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint16_t;
      arg7 : stdint_h.uint16_t;
      arg8 : stdint_h.uint16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:15145
   pragma Import (C, xcb_recolor_cursor_checked, "xcb_recolor_cursor_checked");

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
  -- ** xcb_void_cookie_t xcb_recolor_cursor
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_cursor_t      cursor
  -- ** @param uint16_t          fore_red
  -- ** @param uint16_t          fore_green
  -- ** @param uint16_t          fore_blue
  -- ** @param uint16_t          back_red
  -- ** @param uint16_t          back_green
  -- ** @param uint16_t          back_blue
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_recolor_cursor
     (arg1 : System.Address;
      arg2 : xcb_cursor_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint16_t;
      arg7 : stdint_h.uint16_t;
      arg8 : stdint_h.uint16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:15180
   pragma Import (C, xcb_recolor_cursor, "xcb_recolor_cursor");

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
  -- ** xcb_query_best_size_cookie_t xcb_query_best_size
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           _class
  -- ** @param xcb_drawable_t    drawable
  -- ** @param uint16_t          width
  -- ** @param uint16_t          height
  -- ** @returns xcb_query_best_size_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_query_best_size
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_drawable_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint16_t) return xcb_query_best_size_cookie_t;  -- /usr/include/xcb/xproto.h:15212
   pragma Import (C, xcb_query_best_size, "xcb_query_best_size");

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
  -- ** xcb_query_best_size_cookie_t xcb_query_best_size_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           _class
  -- ** @param xcb_drawable_t    drawable
  -- ** @param uint16_t          width
  -- ** @param uint16_t          height
  -- ** @returns xcb_query_best_size_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_query_best_size_unchecked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_drawable_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint16_t) return xcb_query_best_size_cookie_t;  -- /usr/include/xcb/xproto.h:15244
   pragma Import (C, xcb_query_best_size_unchecked, "xcb_query_best_size_unchecked");

  --*<  
  --*<  
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
  -- * xcb_query_best_size_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_query_best_size_reply_t * xcb_query_best_size_reply
  -- ** 
  -- ** @param xcb_connection_t              *c
  -- ** @param xcb_query_best_size_cookie_t   cookie
  -- ** @param xcb_generic_error_t          **e
  -- ** @returns xcb_query_best_size_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_query_best_size_reply
     (arg1 : System.Address;
      arg2 : xcb_query_best_size_cookie_t;
      arg3 : System.Address) return access xcb_query_best_size_reply_t;  -- /usr/include/xcb/xproto.h:15277
   pragma Import (C, xcb_query_best_size_reply, "xcb_query_best_size_reply");

  --*<  
  --*<  
  --*<  
   function xcb_query_extension_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:15282
   pragma Import (C, xcb_query_extension_sizeof, "xcb_query_extension_sizeof");

  --*
  -- * @brief check if extension is present
  -- *
  -- * @param c The connection
  -- * @param name_len The length of \a name in bytes.
  -- * @param name The name of the extension to query, for example "RANDR". This is case
  -- * sensitive!
  -- * @return A cookie
  -- *
  -- * Determines if the specified extension is present on this X11 server.
  -- * 
  -- * Every extension has a unique `major_opcode` to identify requests, the minor
  -- * opcodes and request formats are extension-specific. If the extension provides
  -- * events and errors, the `first_event` and `first_error` fields in the reply are
  -- * set accordingly.
  -- * 
  -- * There should rarely be a need to use this request directly, XCB provides the
  -- * `xcb_get_extension_data` function instead.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_query_extension_cookie_t xcb_query_extension
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint16_t          name_len
  -- ** @param const char       *name
  -- ** @returns xcb_query_extension_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_query_extension
     (arg1 : System.Address;
      arg2 : stdint_h.uint16_t;
      arg3 : Interfaces.C.Strings.chars_ptr) return xcb_query_extension_cookie_t;  -- /usr/include/xcb/xproto.h:15317
   pragma Import (C, xcb_query_extension, "xcb_query_extension");

  --*<  
  --*<  
  --*
  -- * @brief check if extension is present
  -- *
  -- * @param c The connection
  -- * @param name_len The length of \a name in bytes.
  -- * @param name The name of the extension to query, for example "RANDR". This is case
  -- * sensitive!
  -- * @return A cookie
  -- *
  -- * Determines if the specified extension is present on this X11 server.
  -- * 
  -- * Every extension has a unique `major_opcode` to identify requests, the minor
  -- * opcodes and request formats are extension-specific. If the extension provides
  -- * events and errors, the `first_event` and `first_error` fields in the reply are
  -- * set accordingly.
  -- * 
  -- * There should rarely be a need to use this request directly, XCB provides the
  -- * `xcb_get_extension_data` function instead.
  -- * 
  -- * This form can be used only if the request will cause
  -- * a reply to be generated. Any returned error will be
  -- * placed in the event queue.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_query_extension_cookie_t xcb_query_extension_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint16_t          name_len
  -- ** @param const char       *name
  -- ** @returns xcb_query_extension_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_query_extension_unchecked
     (arg1 : System.Address;
      arg2 : stdint_h.uint16_t;
      arg3 : Interfaces.C.Strings.chars_ptr) return xcb_query_extension_cookie_t;  -- /usr/include/xcb/xproto.h:15357
   pragma Import (C, xcb_query_extension_unchecked, "xcb_query_extension_unchecked");

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
  -- * xcb_query_extension_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_query_extension_reply_t * xcb_query_extension_reply
  -- ** 
  -- ** @param xcb_connection_t              *c
  -- ** @param xcb_query_extension_cookie_t   cookie
  -- ** @param xcb_generic_error_t          **e
  -- ** @returns xcb_query_extension_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_query_extension_reply
     (arg1 : System.Address;
      arg2 : xcb_query_extension_cookie_t;
      arg3 : System.Address) return access xcb_query_extension_reply_t;  -- /usr/include/xcb/xproto.h:15388
   pragma Import (C, xcb_query_extension_reply, "xcb_query_extension_reply");

  --*<  
  --*<  
  --*<  
   function xcb_list_extensions_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:15393
   pragma Import (C, xcb_list_extensions_sizeof, "xcb_list_extensions_sizeof");

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
  -- ** xcb_list_extensions_cookie_t xcb_list_extensions
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_list_extensions_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_list_extensions (arg1 : System.Address) return xcb_list_extensions_cookie_t;  -- /usr/include/xcb/xproto.h:15414
   pragma Import (C, xcb_list_extensions, "xcb_list_extensions");

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
  -- ** xcb_list_extensions_cookie_t xcb_list_extensions_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_list_extensions_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_list_extensions_unchecked (arg1 : System.Address) return xcb_list_extensions_cookie_t;  -- /usr/include/xcb/xproto.h:15438
   pragma Import (C, xcb_list_extensions_unchecked, "xcb_list_extensions_unchecked");

  --****************************************************************************
  -- **
  -- ** int xcb_list_extensions_names_length
  -- ** 
  -- ** @param const xcb_list_extensions_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_list_extensions_names_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:15451
   pragma Import (C, xcb_list_extensions_names_length, "xcb_list_extensions_names_length");

  --****************************************************************************
  -- **
  -- ** xcb_str_iterator_t xcb_list_extensions_names_iterator
  -- ** 
  -- ** @param const xcb_list_extensions_reply_t *R
  -- ** @returns xcb_str_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_list_extensions_names_iterator (arg1 : System.Address) return xcb_str_iterator_t;  -- /usr/include/xcb/xproto.h:15464
   pragma Import (C, xcb_list_extensions_names_iterator, "xcb_list_extensions_names_iterator");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_list_extensions_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_list_extensions_reply_t * xcb_list_extensions_reply
  -- ** 
  -- ** @param xcb_connection_t              *c
  -- ** @param xcb_list_extensions_cookie_t   cookie
  -- ** @param xcb_generic_error_t          **e
  -- ** @returns xcb_list_extensions_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_list_extensions_reply
     (arg1 : System.Address;
      arg2 : xcb_list_extensions_cookie_t;
      arg3 : System.Address) return access xcb_list_extensions_reply_t;  -- /usr/include/xcb/xproto.h:15493
   pragma Import (C, xcb_list_extensions_reply, "xcb_list_extensions_reply");

  --*<  
  --*<  
  --*<  
   function xcb_change_keyboard_mapping_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:15498
   pragma Import (C, xcb_change_keyboard_mapping_sizeof, "xcb_change_keyboard_mapping_sizeof");

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
  -- ** xcb_void_cookie_t xcb_change_keyboard_mapping_checked
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param uint8_t             keycode_count
  -- ** @param xcb_keycode_t       first_keycode
  -- ** @param uint8_t             keysyms_per_keycode
  -- ** @param const xcb_keysym_t *keysyms
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_change_keyboard_mapping_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_keycode_t;
      arg4 : stdint_h.uint8_t;
      arg5 : access xcb_keysym_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:15526
   pragma Import (C, xcb_change_keyboard_mapping_checked, "xcb_change_keyboard_mapping_checked");

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
  -- ** xcb_void_cookie_t xcb_change_keyboard_mapping
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param uint8_t             keycode_count
  -- ** @param xcb_keycode_t       first_keycode
  -- ** @param uint8_t             keysyms_per_keycode
  -- ** @param const xcb_keysym_t *keysyms
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_change_keyboard_mapping
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_keycode_t;
      arg4 : stdint_h.uint8_t;
      arg5 : access xcb_keysym_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:15555
   pragma Import (C, xcb_change_keyboard_mapping, "xcb_change_keyboard_mapping");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_get_keyboard_mapping_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:15562
   pragma Import (C, xcb_get_keyboard_mapping_sizeof, "xcb_get_keyboard_mapping_sizeof");

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
  -- ** xcb_get_keyboard_mapping_cookie_t xcb_get_keyboard_mapping
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_keycode_t     first_keycode
  -- ** @param uint8_t           count
  -- ** @returns xcb_get_keyboard_mapping_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_keyboard_mapping
     (arg1 : System.Address;
      arg2 : xcb_keycode_t;
      arg3 : stdint_h.uint8_t) return xcb_get_keyboard_mapping_cookie_t;  -- /usr/include/xcb/xproto.h:15585
   pragma Import (C, xcb_get_keyboard_mapping, "xcb_get_keyboard_mapping");

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
  -- ** xcb_get_keyboard_mapping_cookie_t xcb_get_keyboard_mapping_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_keycode_t     first_keycode
  -- ** @param uint8_t           count
  -- ** @returns xcb_get_keyboard_mapping_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_keyboard_mapping_unchecked
     (arg1 : System.Address;
      arg2 : xcb_keycode_t;
      arg3 : stdint_h.uint8_t) return xcb_get_keyboard_mapping_cookie_t;  -- /usr/include/xcb/xproto.h:15613
   pragma Import (C, xcb_get_keyboard_mapping_unchecked, "xcb_get_keyboard_mapping_unchecked");

  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_keysym_t * xcb_get_keyboard_mapping_keysyms
  -- ** 
  -- ** @param const xcb_get_keyboard_mapping_reply_t *R
  -- ** @returns xcb_keysym_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_keyboard_mapping_keysyms (arg1 : System.Address) return access xcb_keysym_t;  -- /usr/include/xcb/xproto.h:15628
   pragma Import (C, xcb_get_keyboard_mapping_keysyms, "xcb_get_keyboard_mapping_keysyms");

  --****************************************************************************
  -- **
  -- ** int xcb_get_keyboard_mapping_keysyms_length
  -- ** 
  -- ** @param const xcb_get_keyboard_mapping_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_keyboard_mapping_keysyms_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:15641
   pragma Import (C, xcb_get_keyboard_mapping_keysyms_length, "xcb_get_keyboard_mapping_keysyms_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_get_keyboard_mapping_keysyms_end
  -- ** 
  -- ** @param const xcb_get_keyboard_mapping_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_keyboard_mapping_keysyms_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:15654
   pragma Import (C, xcb_get_keyboard_mapping_keysyms_end, "xcb_get_keyboard_mapping_keysyms_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_get_keyboard_mapping_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_get_keyboard_mapping_reply_t * xcb_get_keyboard_mapping_reply
  -- ** 
  -- ** @param xcb_connection_t                   *c
  -- ** @param xcb_get_keyboard_mapping_cookie_t   cookie
  -- ** @param xcb_generic_error_t               **e
  -- ** @returns xcb_get_keyboard_mapping_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_keyboard_mapping_reply
     (arg1 : System.Address;
      arg2 : xcb_get_keyboard_mapping_cookie_t;
      arg3 : System.Address) return access xcb_get_keyboard_mapping_reply_t;  -- /usr/include/xcb/xproto.h:15683
   pragma Import (C, xcb_get_keyboard_mapping_reply, "xcb_get_keyboard_mapping_reply");

  --*<  
  --*<  
  --*<  
   function xcb_change_keyboard_control_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:15688
   pragma Import (C, xcb_change_keyboard_control_sizeof, "xcb_change_keyboard_control_sizeof");

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
  -- ** xcb_void_cookie_t xcb_change_keyboard_control_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          value_mask
  -- ** @param const uint32_t   *value_list
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_change_keyboard_control_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : access stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:15714
   pragma Import (C, xcb_change_keyboard_control_checked, "xcb_change_keyboard_control_checked");

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
  -- ** xcb_void_cookie_t xcb_change_keyboard_control
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          value_mask
  -- ** @param const uint32_t   *value_list
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_change_keyboard_control
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : access stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:15739
   pragma Import (C, xcb_change_keyboard_control, "xcb_change_keyboard_control");

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
  -- ** xcb_get_keyboard_control_cookie_t xcb_get_keyboard_control
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_get_keyboard_control_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_keyboard_control (arg1 : System.Address) return xcb_get_keyboard_control_cookie_t;  -- /usr/include/xcb/xproto.h:15762
   pragma Import (C, xcb_get_keyboard_control, "xcb_get_keyboard_control");

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
  -- ** xcb_get_keyboard_control_cookie_t xcb_get_keyboard_control_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_get_keyboard_control_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_keyboard_control_unchecked (arg1 : System.Address) return xcb_get_keyboard_control_cookie_t;  -- /usr/include/xcb/xproto.h:15786
   pragma Import (C, xcb_get_keyboard_control_unchecked, "xcb_get_keyboard_control_unchecked");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_get_keyboard_control_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_get_keyboard_control_reply_t * xcb_get_keyboard_control_reply
  -- ** 
  -- ** @param xcb_connection_t                   *c
  -- ** @param xcb_get_keyboard_control_cookie_t   cookie
  -- ** @param xcb_generic_error_t               **e
  -- ** @returns xcb_get_keyboard_control_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_keyboard_control_reply
     (arg1 : System.Address;
      arg2 : xcb_get_keyboard_control_cookie_t;
      arg3 : System.Address) return access xcb_get_keyboard_control_reply_t;  -- /usr/include/xcb/xproto.h:15815
   pragma Import (C, xcb_get_keyboard_control_reply, "xcb_get_keyboard_control_reply");

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
  -- ** xcb_void_cookie_t xcb_bell_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param int8_t            percent
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_bell_checked (arg1 : System.Address; arg2 : sys_types_h.int8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:15842
   pragma Import (C, xcb_bell_checked, "xcb_bell_checked");

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
  -- ** xcb_void_cookie_t xcb_bell
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param int8_t            percent
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_bell (arg1 : System.Address; arg2 : sys_types_h.int8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:15865
   pragma Import (C, xcb_bell, "xcb_bell");

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
  -- ** xcb_void_cookie_t xcb_change_pointer_control_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param int16_t           acceleration_numerator
  -- ** @param int16_t           acceleration_denominator
  -- ** @param int16_t           threshold
  -- ** @param uint8_t           do_acceleration
  -- ** @param uint8_t           do_threshold
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_change_pointer_control_checked
     (arg1 : System.Address;
      arg2 : sys_types_h.int16_t;
      arg3 : sys_types_h.int16_t;
      arg4 : sys_types_h.int16_t;
      arg5 : stdint_h.uint8_t;
      arg6 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:15895
   pragma Import (C, xcb_change_pointer_control_checked, "xcb_change_pointer_control_checked");

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
  -- ** xcb_void_cookie_t xcb_change_pointer_control
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param int16_t           acceleration_numerator
  -- ** @param int16_t           acceleration_denominator
  -- ** @param int16_t           threshold
  -- ** @param uint8_t           do_acceleration
  -- ** @param uint8_t           do_threshold
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_change_pointer_control
     (arg1 : System.Address;
      arg2 : sys_types_h.int16_t;
      arg3 : sys_types_h.int16_t;
      arg4 : sys_types_h.int16_t;
      arg5 : stdint_h.uint8_t;
      arg6 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:15926
   pragma Import (C, xcb_change_pointer_control, "xcb_change_pointer_control");

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
  -- ** xcb_get_pointer_control_cookie_t xcb_get_pointer_control
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_get_pointer_control_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_pointer_control (arg1 : System.Address) return xcb_get_pointer_control_cookie_t;  -- /usr/include/xcb/xproto.h:15952
   pragma Import (C, xcb_get_pointer_control, "xcb_get_pointer_control");

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
  -- ** xcb_get_pointer_control_cookie_t xcb_get_pointer_control_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_get_pointer_control_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_pointer_control_unchecked (arg1 : System.Address) return xcb_get_pointer_control_cookie_t;  -- /usr/include/xcb/xproto.h:15976
   pragma Import (C, xcb_get_pointer_control_unchecked, "xcb_get_pointer_control_unchecked");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_get_pointer_control_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_get_pointer_control_reply_t * xcb_get_pointer_control_reply
  -- ** 
  -- ** @param xcb_connection_t                  *c
  -- ** @param xcb_get_pointer_control_cookie_t   cookie
  -- ** @param xcb_generic_error_t              **e
  -- ** @returns xcb_get_pointer_control_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_pointer_control_reply
     (arg1 : System.Address;
      arg2 : xcb_get_pointer_control_cookie_t;
      arg3 : System.Address) return access xcb_get_pointer_control_reply_t;  -- /usr/include/xcb/xproto.h:16005
   pragma Import (C, xcb_get_pointer_control_reply, "xcb_get_pointer_control_reply");

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
  -- ** xcb_void_cookie_t xcb_set_screen_saver_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param int16_t           timeout
  -- ** @param int16_t           interval
  -- ** @param uint8_t           prefer_blanking
  -- ** @param uint8_t           allow_exposures
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_set_screen_saver_checked
     (arg1 : System.Address;
      arg2 : sys_types_h.int16_t;
      arg3 : sys_types_h.int16_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:16035
   pragma Import (C, xcb_set_screen_saver_checked, "xcb_set_screen_saver_checked");

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
  -- ** xcb_void_cookie_t xcb_set_screen_saver
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param int16_t           timeout
  -- ** @param int16_t           interval
  -- ** @param uint8_t           prefer_blanking
  -- ** @param uint8_t           allow_exposures
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_set_screen_saver
     (arg1 : System.Address;
      arg2 : sys_types_h.int16_t;
      arg3 : sys_types_h.int16_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:16064
   pragma Import (C, xcb_set_screen_saver, "xcb_set_screen_saver");

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
  -- ** xcb_get_screen_saver_cookie_t xcb_get_screen_saver
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_get_screen_saver_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_screen_saver (arg1 : System.Address) return xcb_get_screen_saver_cookie_t;  -- /usr/include/xcb/xproto.h:16089
   pragma Import (C, xcb_get_screen_saver, "xcb_get_screen_saver");

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
  -- ** xcb_get_screen_saver_cookie_t xcb_get_screen_saver_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_get_screen_saver_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_screen_saver_unchecked (arg1 : System.Address) return xcb_get_screen_saver_cookie_t;  -- /usr/include/xcb/xproto.h:16113
   pragma Import (C, xcb_get_screen_saver_unchecked, "xcb_get_screen_saver_unchecked");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_get_screen_saver_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_get_screen_saver_reply_t * xcb_get_screen_saver_reply
  -- ** 
  -- ** @param xcb_connection_t               *c
  -- ** @param xcb_get_screen_saver_cookie_t   cookie
  -- ** @param xcb_generic_error_t           **e
  -- ** @returns xcb_get_screen_saver_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_screen_saver_reply
     (arg1 : System.Address;
      arg2 : xcb_get_screen_saver_cookie_t;
      arg3 : System.Address) return access xcb_get_screen_saver_reply_t;  -- /usr/include/xcb/xproto.h:16142
   pragma Import (C, xcb_get_screen_saver_reply, "xcb_get_screen_saver_reply");

  --*<  
  --*<  
  --*<  
   function xcb_change_hosts_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:16147
   pragma Import (C, xcb_change_hosts_sizeof, "xcb_change_hosts_sizeof");

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
  -- ** xcb_void_cookie_t xcb_change_hosts_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           mode
  -- ** @param uint8_t           family
  -- ** @param uint16_t          address_len
  -- ** @param const uint8_t    *address
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_change_hosts_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint16_t;
      arg5 : access stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:16175
   pragma Import (C, xcb_change_hosts_checked, "xcb_change_hosts_checked");

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
  -- ** xcb_void_cookie_t xcb_change_hosts
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           mode
  -- ** @param uint8_t           family
  -- ** @param uint16_t          address_len
  -- ** @param const uint8_t    *address
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_change_hosts
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint16_t;
      arg5 : access stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:16204
   pragma Import (C, xcb_change_hosts, "xcb_change_hosts");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_host_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:16211
   pragma Import (C, xcb_host_sizeof, "xcb_host_sizeof");

  --****************************************************************************
  -- **
  -- ** uint8_t * xcb_host_address
  -- ** 
  -- ** @param const xcb_host_t *R
  -- ** @returns uint8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_host_address (arg1 : System.Address) return access stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:16224
   pragma Import (C, xcb_host_address, "xcb_host_address");

  --****************************************************************************
  -- **
  -- ** int xcb_host_address_length
  -- ** 
  -- ** @param const xcb_host_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_host_address_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:16237
   pragma Import (C, xcb_host_address_length, "xcb_host_address_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_host_address_end
  -- ** 
  -- ** @param const xcb_host_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_host_address_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:16250
   pragma Import (C, xcb_host_address_end, "xcb_host_address_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_host_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_host_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_host_next
  -- ** 
  -- ** @param xcb_host_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_host_next (arg1 : access xcb_host_iterator_t);  -- /usr/include/xcb/xproto.h:16271
   pragma Import (C, xcb_host_next, "xcb_host_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_host_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_host_end
  -- ** 
  -- ** @param xcb_host_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_host_end (arg1 : xcb_host_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:16293
   pragma Import (C, xcb_host_end, "xcb_host_end");

  --*<  
   function xcb_list_hosts_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:16296
   pragma Import (C, xcb_list_hosts_sizeof, "xcb_list_hosts_sizeof");

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
  -- ** xcb_list_hosts_cookie_t xcb_list_hosts
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_list_hosts_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_list_hosts (arg1 : System.Address) return xcb_list_hosts_cookie_t;  -- /usr/include/xcb/xproto.h:16317
   pragma Import (C, xcb_list_hosts, "xcb_list_hosts");

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
  -- ** xcb_list_hosts_cookie_t xcb_list_hosts_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_list_hosts_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_list_hosts_unchecked (arg1 : System.Address) return xcb_list_hosts_cookie_t;  -- /usr/include/xcb/xproto.h:16341
   pragma Import (C, xcb_list_hosts_unchecked, "xcb_list_hosts_unchecked");

  --****************************************************************************
  -- **
  -- ** int xcb_list_hosts_hosts_length
  -- ** 
  -- ** @param const xcb_list_hosts_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_list_hosts_hosts_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:16354
   pragma Import (C, xcb_list_hosts_hosts_length, "xcb_list_hosts_hosts_length");

  --****************************************************************************
  -- **
  -- ** xcb_host_iterator_t xcb_list_hosts_hosts_iterator
  -- ** 
  -- ** @param const xcb_list_hosts_reply_t *R
  -- ** @returns xcb_host_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_list_hosts_hosts_iterator (arg1 : System.Address) return xcb_host_iterator_t;  -- /usr/include/xcb/xproto.h:16367
   pragma Import (C, xcb_list_hosts_hosts_iterator, "xcb_list_hosts_hosts_iterator");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_list_hosts_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_list_hosts_reply_t * xcb_list_hosts_reply
  -- ** 
  -- ** @param xcb_connection_t         *c
  -- ** @param xcb_list_hosts_cookie_t   cookie
  -- ** @param xcb_generic_error_t     **e
  -- ** @returns xcb_list_hosts_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_list_hosts_reply
     (arg1 : System.Address;
      arg2 : xcb_list_hosts_cookie_t;
      arg3 : System.Address) return access xcb_list_hosts_reply_t;  -- /usr/include/xcb/xproto.h:16396
   pragma Import (C, xcb_list_hosts_reply, "xcb_list_hosts_reply");

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
  -- ** xcb_void_cookie_t xcb_set_access_control_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           mode
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_set_access_control_checked (arg1 : System.Address; arg2 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:16423
   pragma Import (C, xcb_set_access_control_checked, "xcb_set_access_control_checked");

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
  -- ** xcb_void_cookie_t xcb_set_access_control
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           mode
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_set_access_control (arg1 : System.Address; arg2 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:16446
   pragma Import (C, xcb_set_access_control, "xcb_set_access_control");

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
  -- ** xcb_void_cookie_t xcb_set_close_down_mode_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           mode
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_set_close_down_mode_checked (arg1 : System.Address; arg2 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:16472
   pragma Import (C, xcb_set_close_down_mode_checked, "xcb_set_close_down_mode_checked");

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
  -- ** xcb_void_cookie_t xcb_set_close_down_mode
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           mode
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_set_close_down_mode (arg1 : System.Address; arg2 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:16495
   pragma Import (C, xcb_set_close_down_mode, "xcb_set_close_down_mode");

  --*<  
  --*
  -- * @brief kills a client
  -- *
  -- * @param c The connection
  -- * @param resource Any resource belonging to the client (for example a Window), used to identify
  -- * the client connection.
  -- * \n
  -- * The special value of `XCB_KILL_ALL_TEMPORARY`, the resources of all clients
  -- * that have terminated in `RetainTemporary` (TODO) are destroyed.
  -- * @return A cookie
  -- *
  -- * Forces a close down of the client that created the specified \a resource.
  -- * 
  -- * This form can be used only if the request will not cause
  -- * a reply to be generated. Any returned error will be
  -- * saved for handling by xcb_request_check().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_kill_client_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          resource
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_kill_client_checked (arg1 : System.Address; arg2 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:16527
   pragma Import (C, xcb_kill_client_checked, "xcb_kill_client_checked");

  --*<  
  --*
  -- * @brief kills a client
  -- *
  -- * @param c The connection
  -- * @param resource Any resource belonging to the client (for example a Window), used to identify
  -- * the client connection.
  -- * \n
  -- * The special value of `XCB_KILL_ALL_TEMPORARY`, the resources of all clients
  -- * that have terminated in `RetainTemporary` (TODO) are destroyed.
  -- * @return A cookie
  -- *
  -- * Forces a close down of the client that created the specified \a resource.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_kill_client
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          resource
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_kill_client (arg1 : System.Address; arg2 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:16556
   pragma Import (C, xcb_kill_client, "xcb_kill_client");

  --*<  
  --*<  
   function xcb_rotate_properties_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:16560
   pragma Import (C, xcb_rotate_properties_sizeof, "xcb_rotate_properties_sizeof");

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
  -- ** xcb_void_cookie_t xcb_rotate_properties_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @param uint16_t          atoms_len
  -- ** @param int16_t           delta
  -- ** @param const xcb_atom_t *atoms
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_rotate_properties_checked
     (arg1 : System.Address;
      arg2 : xcb_window_t;
      arg3 : stdint_h.uint16_t;
      arg4 : sys_types_h.int16_t;
      arg5 : access xcb_atom_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:16588
   pragma Import (C, xcb_rotate_properties_checked, "xcb_rotate_properties_checked");

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
  -- ** xcb_void_cookie_t xcb_rotate_properties
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @param uint16_t          atoms_len
  -- ** @param int16_t           delta
  -- ** @param const xcb_atom_t *atoms
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_rotate_properties
     (arg1 : System.Address;
      arg2 : xcb_window_t;
      arg3 : stdint_h.uint16_t;
      arg4 : sys_types_h.int16_t;
      arg5 : access xcb_atom_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:16617
   pragma Import (C, xcb_rotate_properties, "xcb_rotate_properties");

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
  -- ** xcb_void_cookie_t xcb_force_screen_saver_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           mode
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_force_screen_saver_checked (arg1 : System.Address; arg2 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:16646
   pragma Import (C, xcb_force_screen_saver_checked, "xcb_force_screen_saver_checked");

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
  -- ** xcb_void_cookie_t xcb_force_screen_saver
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           mode
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_force_screen_saver (arg1 : System.Address; arg2 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:16669
   pragma Import (C, xcb_force_screen_saver, "xcb_force_screen_saver");

  --*<  
  --*<  
   function xcb_set_pointer_mapping_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:16673
   pragma Import (C, xcb_set_pointer_mapping_sizeof, "xcb_set_pointer_mapping_sizeof");

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
  -- ** xcb_set_pointer_mapping_cookie_t xcb_set_pointer_mapping
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           map_len
  -- ** @param const uint8_t    *map
  -- ** @returns xcb_set_pointer_mapping_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_set_pointer_mapping
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : access stdint_h.uint8_t) return xcb_set_pointer_mapping_cookie_t;  -- /usr/include/xcb/xproto.h:16696
   pragma Import (C, xcb_set_pointer_mapping, "xcb_set_pointer_mapping");

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
  -- ** xcb_set_pointer_mapping_cookie_t xcb_set_pointer_mapping_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           map_len
  -- ** @param const uint8_t    *map
  -- ** @returns xcb_set_pointer_mapping_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_set_pointer_mapping_unchecked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : access stdint_h.uint8_t) return xcb_set_pointer_mapping_cookie_t;  -- /usr/include/xcb/xproto.h:16724
   pragma Import (C, xcb_set_pointer_mapping_unchecked, "xcb_set_pointer_mapping_unchecked");

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
  -- * xcb_set_pointer_mapping_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_set_pointer_mapping_reply_t * xcb_set_pointer_mapping_reply
  -- ** 
  -- ** @param xcb_connection_t                  *c
  -- ** @param xcb_set_pointer_mapping_cookie_t   cookie
  -- ** @param xcb_generic_error_t              **e
  -- ** @returns xcb_set_pointer_mapping_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_set_pointer_mapping_reply
     (arg1 : System.Address;
      arg2 : xcb_set_pointer_mapping_cookie_t;
      arg3 : System.Address) return access xcb_set_pointer_mapping_reply_t;  -- /usr/include/xcb/xproto.h:16755
   pragma Import (C, xcb_set_pointer_mapping_reply, "xcb_set_pointer_mapping_reply");

  --*<  
  --*<  
  --*<  
   function xcb_get_pointer_mapping_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:16760
   pragma Import (C, xcb_get_pointer_mapping_sizeof, "xcb_get_pointer_mapping_sizeof");

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
  -- ** xcb_get_pointer_mapping_cookie_t xcb_get_pointer_mapping
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_get_pointer_mapping_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_pointer_mapping (arg1 : System.Address) return xcb_get_pointer_mapping_cookie_t;  -- /usr/include/xcb/xproto.h:16781
   pragma Import (C, xcb_get_pointer_mapping, "xcb_get_pointer_mapping");

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
  -- ** xcb_get_pointer_mapping_cookie_t xcb_get_pointer_mapping_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_get_pointer_mapping_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_pointer_mapping_unchecked (arg1 : System.Address) return xcb_get_pointer_mapping_cookie_t;  -- /usr/include/xcb/xproto.h:16805
   pragma Import (C, xcb_get_pointer_mapping_unchecked, "xcb_get_pointer_mapping_unchecked");

  --****************************************************************************
  -- **
  -- ** uint8_t * xcb_get_pointer_mapping_map
  -- ** 
  -- ** @param const xcb_get_pointer_mapping_reply_t *R
  -- ** @returns uint8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_pointer_mapping_map (arg1 : System.Address) return access stdint_h.uint8_t;  -- /usr/include/xcb/xproto.h:16818
   pragma Import (C, xcb_get_pointer_mapping_map, "xcb_get_pointer_mapping_map");

  --****************************************************************************
  -- **
  -- ** int xcb_get_pointer_mapping_map_length
  -- ** 
  -- ** @param const xcb_get_pointer_mapping_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_pointer_mapping_map_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:16831
   pragma Import (C, xcb_get_pointer_mapping_map_length, "xcb_get_pointer_mapping_map_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_get_pointer_mapping_map_end
  -- ** 
  -- ** @param const xcb_get_pointer_mapping_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_pointer_mapping_map_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:16844
   pragma Import (C, xcb_get_pointer_mapping_map_end, "xcb_get_pointer_mapping_map_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_get_pointer_mapping_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_get_pointer_mapping_reply_t * xcb_get_pointer_mapping_reply
  -- ** 
  -- ** @param xcb_connection_t                  *c
  -- ** @param xcb_get_pointer_mapping_cookie_t   cookie
  -- ** @param xcb_generic_error_t              **e
  -- ** @returns xcb_get_pointer_mapping_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_pointer_mapping_reply
     (arg1 : System.Address;
      arg2 : xcb_get_pointer_mapping_cookie_t;
      arg3 : System.Address) return access xcb_get_pointer_mapping_reply_t;  -- /usr/include/xcb/xproto.h:16873
   pragma Import (C, xcb_get_pointer_mapping_reply, "xcb_get_pointer_mapping_reply");

  --*<  
  --*<  
  --*<  
   function xcb_set_modifier_mapping_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:16878
   pragma Import (C, xcb_set_modifier_mapping_sizeof, "xcb_set_modifier_mapping_sizeof");

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
  -- ** xcb_set_modifier_mapping_cookie_t xcb_set_modifier_mapping
  -- ** 
  -- ** @param xcb_connection_t    *c
  -- ** @param uint8_t              keycodes_per_modifier
  -- ** @param const xcb_keycode_t *keycodes
  -- ** @returns xcb_set_modifier_mapping_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_set_modifier_mapping
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : access xcb_keycode_t) return xcb_set_modifier_mapping_cookie_t;  -- /usr/include/xcb/xproto.h:16901
   pragma Import (C, xcb_set_modifier_mapping, "xcb_set_modifier_mapping");

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
  -- ** xcb_set_modifier_mapping_cookie_t xcb_set_modifier_mapping_unchecked
  -- ** 
  -- ** @param xcb_connection_t    *c
  -- ** @param uint8_t              keycodes_per_modifier
  -- ** @param const xcb_keycode_t *keycodes
  -- ** @returns xcb_set_modifier_mapping_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_set_modifier_mapping_unchecked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : access xcb_keycode_t) return xcb_set_modifier_mapping_cookie_t;  -- /usr/include/xcb/xproto.h:16929
   pragma Import (C, xcb_set_modifier_mapping_unchecked, "xcb_set_modifier_mapping_unchecked");

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
  -- * xcb_set_modifier_mapping_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_set_modifier_mapping_reply_t * xcb_set_modifier_mapping_reply
  -- ** 
  -- ** @param xcb_connection_t                   *c
  -- ** @param xcb_set_modifier_mapping_cookie_t   cookie
  -- ** @param xcb_generic_error_t               **e
  -- ** @returns xcb_set_modifier_mapping_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_set_modifier_mapping_reply
     (arg1 : System.Address;
      arg2 : xcb_set_modifier_mapping_cookie_t;
      arg3 : System.Address) return access xcb_set_modifier_mapping_reply_t;  -- /usr/include/xcb/xproto.h:16960
   pragma Import (C, xcb_set_modifier_mapping_reply, "xcb_set_modifier_mapping_reply");

  --*<  
  --*<  
  --*<  
   function xcb_get_modifier_mapping_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:16965
   pragma Import (C, xcb_get_modifier_mapping_sizeof, "xcb_get_modifier_mapping_sizeof");

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
  -- ** xcb_get_modifier_mapping_cookie_t xcb_get_modifier_mapping
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_get_modifier_mapping_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_modifier_mapping (arg1 : System.Address) return xcb_get_modifier_mapping_cookie_t;  -- /usr/include/xcb/xproto.h:16986
   pragma Import (C, xcb_get_modifier_mapping, "xcb_get_modifier_mapping");

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
  -- ** xcb_get_modifier_mapping_cookie_t xcb_get_modifier_mapping_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_get_modifier_mapping_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_modifier_mapping_unchecked (arg1 : System.Address) return xcb_get_modifier_mapping_cookie_t;  -- /usr/include/xcb/xproto.h:17010
   pragma Import (C, xcb_get_modifier_mapping_unchecked, "xcb_get_modifier_mapping_unchecked");

  --****************************************************************************
  -- **
  -- ** xcb_keycode_t * xcb_get_modifier_mapping_keycodes
  -- ** 
  -- ** @param const xcb_get_modifier_mapping_reply_t *R
  -- ** @returns xcb_keycode_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_modifier_mapping_keycodes (arg1 : System.Address) return access xcb_keycode_t;  -- /usr/include/xcb/xproto.h:17023
   pragma Import (C, xcb_get_modifier_mapping_keycodes, "xcb_get_modifier_mapping_keycodes");

  --****************************************************************************
  -- **
  -- ** int xcb_get_modifier_mapping_keycodes_length
  -- ** 
  -- ** @param const xcb_get_modifier_mapping_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_modifier_mapping_keycodes_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xproto.h:17036
   pragma Import (C, xcb_get_modifier_mapping_keycodes_length, "xcb_get_modifier_mapping_keycodes_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_get_modifier_mapping_keycodes_end
  -- ** 
  -- ** @param const xcb_get_modifier_mapping_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_modifier_mapping_keycodes_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xproto.h:17049
   pragma Import (C, xcb_get_modifier_mapping_keycodes_end, "xcb_get_modifier_mapping_keycodes_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_get_modifier_mapping_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_get_modifier_mapping_reply_t * xcb_get_modifier_mapping_reply
  -- ** 
  -- ** @param xcb_connection_t                   *c
  -- ** @param xcb_get_modifier_mapping_cookie_t   cookie
  -- ** @param xcb_generic_error_t               **e
  -- ** @returns xcb_get_modifier_mapping_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_get_modifier_mapping_reply
     (arg1 : System.Address;
      arg2 : xcb_get_modifier_mapping_cookie_t;
      arg3 : System.Address) return access xcb_get_modifier_mapping_reply_t;  -- /usr/include/xcb/xproto.h:17078
   pragma Import (C, xcb_get_modifier_mapping_reply, "xcb_get_modifier_mapping_reply");

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
  -- ** xcb_void_cookie_t xcb_no_operation_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_no_operation_checked (arg1 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:17104
   pragma Import (C, xcb_no_operation_checked, "xcb_no_operation_checked");

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
  -- ** xcb_void_cookie_t xcb_no_operation
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_no_operation (arg1 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xproto.h:17125
   pragma Import (C, xcb_no_operation, "xcb_no_operation");

  --*
  -- * @}
  --  

end xcb_xproto_h;
