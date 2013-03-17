with Interfaces.C; use Interfaces.C;
with xcb_xcb_h;
with stdint_h;
with xcb_xproto_h;
with sys_types_h;
with System;

package xcb_xkb_h is

   --  unsupported macro: XCB_XKB_MAJOR_VERSION 1
   --  unsupported macro: XCB_XKB_MINOR_VERSION 0
   --  unsupported macro: XCB_XKB_KEYBOARD 0
   --  unsupported macro: XCB_XKB_USE_EXTENSION 0
   --  unsupported macro: XCB_XKB_SELECT_EVENTS 1
   --  unsupported macro: XCB_XKB_BELL 3
   --  unsupported macro: XCB_XKB_GET_STATE 4
   --  unsupported macro: XCB_XKB_LATCH_LOCK_STATE 5
   --  unsupported macro: XCB_XKB_GET_CONTROLS 6
   --  unsupported macro: XCB_XKB_SET_CONTROLS 7
   --  unsupported macro: XCB_XKB_GET_MAP 8
   --  unsupported macro: XCB_XKB_SET_MAP 9
   --  unsupported macro: XCB_XKB_GET_COMPAT_MAP 10
   --  unsupported macro: XCB_XKB_SET_COMPAT_MAP 11
   --  unsupported macro: XCB_XKB_GET_INDICATOR_STATE 12
   --  unsupported macro: XCB_XKB_GET_INDICATOR_MAP 13
   --  unsupported macro: XCB_XKB_SET_INDICATOR_MAP 14
   --  unsupported macro: XCB_XKB_GET_NAMED_INDICATOR 15
   --  unsupported macro: XCB_XKB_SET_NAMED_INDICATOR 16
   --  unsupported macro: XCB_XKB_GET_NAMES 17
   --  unsupported macro: XCB_XKB_SET_NAMES 18
   --  unsupported macro: XCB_XKB_GET_GEOMETRY 19
   --  unsupported macro: XCB_XKB_SET_GEOMETRY 20
   --  unsupported macro: XCB_XKB_PER_CLIENT_FLAGS 21
   --  unsupported macro: XCB_XKB_LIST_COMPONENTS 22
   --  unsupported macro: XCB_XKB_GET_KBD_BY_NAME 23
   --  unsupported macro: XCB_XKB_GET_DEVICE_INFO 24
   --  unsupported macro: XCB_XKB_SET_DEVICE_INFO 25
   --  unsupported macro: XCB_XKB_SET_DEBUGGING_FLAGS 101
   --  unsupported macro: XCB_XKB_NEW_KEYBOARD_NOTIFY 0
   --  unsupported macro: XCB_XKB_MAP_NOTIFY 1
   --  unsupported macro: XCB_XKB_STATE_NOTIFY 2
   --  unsupported macro: XCB_XKB_CONTROLS_NOTIFY 3
   --  unsupported macro: XCB_XKB_INDICATOR_STATE_NOTIFY 4
   --  unsupported macro: XCB_XKB_INDICATOR_MAP_NOTIFY 5
   --  unsupported macro: XCB_XKB_NAMES_NOTIFY 6
   --  unsupported macro: XCB_XKB_COMPAT_MAP_NOTIFY 7
   --  unsupported macro: XCB_XKB_BELL_NOTIFY 8
   --  unsupported macro: XCB_XKB_ACTION_MESSAGE 9
   --  unsupported macro: XCB_XKB_ACCESS_X_NOTIFY 10
   --  unsupported macro: XCB_XKB_EXTENSION_DEVICE_NOTIFY 11
  -- * This file generated automatically from xkb.xml by c_client.py.
  -- * Edit at your peril.
  --  

  --*
  -- * @defgroup XCB_xkb_API XCB xkb API
  -- * @brief xkb XCB Protocol Implementation.
  -- * @{
  -- * 

   xcb_xkb_id : aliased xcb_xcb_h.xcb_extension_t;  -- /usr/include/xcb/xkb.h:25
   pragma Import (C, xcb_xkb_id, "xcb_xkb_id");

   subtype xcb_xkb_const_t is unsigned;
   XCB_XKB_CONST_MAX_LEGAL_KEY_CODE : constant xcb_xkb_const_t := 255;
   XCB_XKB_CONST_PER_KEY_BIT_ARRAY_SIZE : constant xcb_xkb_const_t := 32;
   XCB_XKB_CONST_KEY_NAME_LENGTH : constant xcb_xkb_const_t := 4;  -- /usr/include/xcb/xkb.h:27

   subtype xcb_xkb_event_type_t is unsigned;
   XCB_XKB_EVENT_TYPE_NEW_KEYBOARD_NOTIFY : constant xcb_xkb_event_type_t := 1;
   XCB_XKB_EVENT_TYPE_MAP_NOTIFY : constant xcb_xkb_event_type_t := 2;
   XCB_XKB_EVENT_TYPE_STATE_NOTIFY : constant xcb_xkb_event_type_t := 4;
   XCB_XKB_EVENT_TYPE_CONTROLS_NOTIFY : constant xcb_xkb_event_type_t := 8;
   XCB_XKB_EVENT_TYPE_INDICATOR_STATE_NOTIFY : constant xcb_xkb_event_type_t := 16;
   XCB_XKB_EVENT_TYPE_INDICATOR_MAP_NOTIFY : constant xcb_xkb_event_type_t := 32;
   XCB_XKB_EVENT_TYPE_NAMES_NOTIFY : constant xcb_xkb_event_type_t := 64;
   XCB_XKB_EVENT_TYPE_COMPAT_MAP_NOTIFY : constant xcb_xkb_event_type_t := 128;
   XCB_XKB_EVENT_TYPE_BELL_NOTIFY : constant xcb_xkb_event_type_t := 256;
   XCB_XKB_EVENT_TYPE_ACTION_MESSAGE : constant xcb_xkb_event_type_t := 512;
   XCB_XKB_EVENT_TYPE_ACCESS_X_NOTIFY : constant xcb_xkb_event_type_t := 1024;
   XCB_XKB_EVENT_TYPE_EXTENSION_DEVICE_NOTIFY : constant xcb_xkb_event_type_t := 2048;  -- /usr/include/xcb/xkb.h:33

   subtype xcb_xkb_nkn_detail_t is unsigned;
   XCB_XKB_NKN_DETAIL_KEYCODES : constant xcb_xkb_nkn_detail_t := 1;
   XCB_XKB_NKN_DETAIL_GEOMETRY : constant xcb_xkb_nkn_detail_t := 2;
   XCB_XKB_NKN_DETAIL_DEVICE_ID : constant xcb_xkb_nkn_detail_t := 4;  -- /usr/include/xcb/xkb.h:48

   subtype xcb_xkb_axn_detail_t is unsigned;
   XCB_XKB_AXN_DETAIL_SK_PRESS : constant xcb_xkb_axn_detail_t := 1;
   XCB_XKB_AXN_DETAIL_SK_ACCEPT : constant xcb_xkb_axn_detail_t := 2;
   XCB_XKB_AXN_DETAIL_SK_REJECT : constant xcb_xkb_axn_detail_t := 4;
   XCB_XKB_AXN_DETAIL_SK_RELEASE : constant xcb_xkb_axn_detail_t := 8;
   XCB_XKB_AXN_DETAIL_BK_ACCEPT : constant xcb_xkb_axn_detail_t := 16;
   XCB_XKB_AXN_DETAIL_BK_REJECT : constant xcb_xkb_axn_detail_t := 32;
   XCB_XKB_AXN_DETAIL_AXK_WARNING : constant xcb_xkb_axn_detail_t := 64;  -- /usr/include/xcb/xkb.h:54

   subtype xcb_xkb_map_part_t is unsigned;
   XCB_XKB_MAP_PART_KEY_TYPES : constant xcb_xkb_map_part_t := 1;
   XCB_XKB_MAP_PART_KEY_SYMS : constant xcb_xkb_map_part_t := 2;
   XCB_XKB_MAP_PART_MODIFIER_MAP : constant xcb_xkb_map_part_t := 4;
   XCB_XKB_MAP_PART_EXPLICIT_COMPONENTS : constant xcb_xkb_map_part_t := 8;
   XCB_XKB_MAP_PART_KEY_ACTIONS : constant xcb_xkb_map_part_t := 16;
   XCB_XKB_MAP_PART_KEY_BEHAVIORS : constant xcb_xkb_map_part_t := 32;
   XCB_XKB_MAP_PART_VIRTUAL_MODS : constant xcb_xkb_map_part_t := 64;
   XCB_XKB_MAP_PART_VIRTUAL_MOD_MAP : constant xcb_xkb_map_part_t := 128;  -- /usr/include/xcb/xkb.h:64

   subtype xcb_xkb_set_map_flags_t is unsigned;
   XCB_XKB_SET_MAP_FLAGS_RESIZE_TYPES : constant xcb_xkb_set_map_flags_t := 1;
   XCB_XKB_SET_MAP_FLAGS_RECOMPUTE_ACTIONS : constant xcb_xkb_set_map_flags_t := 2;  -- /usr/include/xcb/xkb.h:75

   subtype xcb_xkb_state_part_t is unsigned;
   XCB_XKB_STATE_PART_MODIFIER_STATE : constant xcb_xkb_state_part_t := 1;
   XCB_XKB_STATE_PART_MODIFIER_BASE : constant xcb_xkb_state_part_t := 2;
   XCB_XKB_STATE_PART_MODIFIER_LATCH : constant xcb_xkb_state_part_t := 4;
   XCB_XKB_STATE_PART_MODIFIER_LOCK : constant xcb_xkb_state_part_t := 8;
   XCB_XKB_STATE_PART_GROUP_STATE : constant xcb_xkb_state_part_t := 16;
   XCB_XKB_STATE_PART_GROUP_BASE : constant xcb_xkb_state_part_t := 32;
   XCB_XKB_STATE_PART_GROUP_LATCH : constant xcb_xkb_state_part_t := 64;
   XCB_XKB_STATE_PART_GROUP_LOCK : constant xcb_xkb_state_part_t := 128;
   XCB_XKB_STATE_PART_COMPAT_STATE : constant xcb_xkb_state_part_t := 256;
   XCB_XKB_STATE_PART_GRAB_MODS : constant xcb_xkb_state_part_t := 512;
   XCB_XKB_STATE_PART_COMPAT_GRAB_MODS : constant xcb_xkb_state_part_t := 1024;
   XCB_XKB_STATE_PART_LOOKUP_MODS : constant xcb_xkb_state_part_t := 2048;
   XCB_XKB_STATE_PART_COMPAT_LOOKUP_MODS : constant xcb_xkb_state_part_t := 4096;
   XCB_XKB_STATE_PART_POINTER_BUTTONS : constant xcb_xkb_state_part_t := 8192;  -- /usr/include/xcb/xkb.h:80

   subtype xcb_xkb_bool_ctrl_t is unsigned;
   XCB_XKB_BOOL_CTRL_REPEAT_KEYS : constant xcb_xkb_bool_ctrl_t := 1;
   XCB_XKB_BOOL_CTRL_SLOW_KEYS : constant xcb_xkb_bool_ctrl_t := 2;
   XCB_XKB_BOOL_CTRL_BOUNCE_KEYS : constant xcb_xkb_bool_ctrl_t := 4;
   XCB_XKB_BOOL_CTRL_STICKY_KEYS : constant xcb_xkb_bool_ctrl_t := 8;
   XCB_XKB_BOOL_CTRL_MOUSE_KEYS : constant xcb_xkb_bool_ctrl_t := 16;
   XCB_XKB_BOOL_CTRL_MOUSE_KEYS_ACCEL : constant xcb_xkb_bool_ctrl_t := 32;
   XCB_XKB_BOOL_CTRL_ACCESS_X_KEYS : constant xcb_xkb_bool_ctrl_t := 64;
   XCB_XKB_BOOL_CTRL_ACCESS_X_TIMEOUT_MASK : constant xcb_xkb_bool_ctrl_t := 128;
   XCB_XKB_BOOL_CTRL_ACCESS_X_FEEDBACK_MASK : constant xcb_xkb_bool_ctrl_t := 256;
   XCB_XKB_BOOL_CTRL_AUDIBLE_BELL_MASK : constant xcb_xkb_bool_ctrl_t := 512;
   XCB_XKB_BOOL_CTRL_OVERLAY_1_MASK : constant xcb_xkb_bool_ctrl_t := 1024;
   XCB_XKB_BOOL_CTRL_OVERLAY_2_MASK : constant xcb_xkb_bool_ctrl_t := 2048;
   XCB_XKB_BOOL_CTRL_IGNORE_GROUP_LOCK_MASK : constant xcb_xkb_bool_ctrl_t := 4096;  -- /usr/include/xcb/xkb.h:97

   subtype xcb_xkb_control_t is unsigned;
   XCB_XKB_CONTROL_GROUPS_WRAP : constant xcb_xkb_control_t := 134217728;
   XCB_XKB_CONTROL_INTERNAL_MODS : constant xcb_xkb_control_t := 268435456;
   XCB_XKB_CONTROL_IGNORE_LOCK_MODS : constant xcb_xkb_control_t := 536870912;
   XCB_XKB_CONTROL_PER_KEY_REPEAT : constant xcb_xkb_control_t := 1073741824;
   XCB_XKB_CONTROL_CONTROLS_ENABLED : constant xcb_xkb_control_t := 2147483648;  -- /usr/include/xcb/xkb.h:113

   subtype xcb_xkb_axfb_opt_t is unsigned;
   XCB_XKB_AXFB_OPT_SK_PRESS_FB : constant xcb_xkb_axfb_opt_t := 1;
   XCB_XKB_AXFB_OPT_SK_ACCEPT_FB : constant xcb_xkb_axfb_opt_t := 2;
   XCB_XKB_AXFB_OPT_FEATURE_FB : constant xcb_xkb_axfb_opt_t := 4;
   XCB_XKB_AXFB_OPT_SLOW_WARN_FB : constant xcb_xkb_axfb_opt_t := 8;
   XCB_XKB_AXFB_OPT_INDICATOR_FB : constant xcb_xkb_axfb_opt_t := 16;
   XCB_XKB_AXFB_OPT_STICKY_KEYS_FB : constant xcb_xkb_axfb_opt_t := 32;
   XCB_XKB_AXFB_OPT_SK_RELEASE_FB : constant xcb_xkb_axfb_opt_t := 64;
   XCB_XKB_AXFB_OPT_SK_REJECT_FB : constant xcb_xkb_axfb_opt_t := 128;
   XCB_XKB_AXFB_OPT_BK_REJECT_FB : constant xcb_xkb_axfb_opt_t := 256;
   XCB_XKB_AXFB_OPT_DUMB_BELL : constant xcb_xkb_axfb_opt_t := 512;  -- /usr/include/xcb/xkb.h:121

   subtype xcb_xkb_axsk_opt_t is unsigned;
   XCB_XKB_AXSK_OPT_TWO_KEYS : constant xcb_xkb_axsk_opt_t := 64;
   XCB_XKB_AXSK_OPT_LATCH_TO_LOCK : constant xcb_xkb_axsk_opt_t := 128;  -- /usr/include/xcb/xkb.h:134

  --*
  -- * @brief xcb_xkb_ax_option_t
  -- * 

  --*<   
   type xcb_xkb_ax_option_t (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            fbopt : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:143
         when others =>
            skopt : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:144
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_ax_option_t);
   pragma Unchecked_Union (xcb_xkb_ax_option_t);  -- /usr/include/xcb/xkb.h:142

  --*<   
  --*
  -- * @brief xcb_xkb_ax_option_iterator_t
  -- * 

  --*<   
   type xcb_xkb_ax_option_iterator_t is record
      data : access xcb_xkb_ax_option_t;  -- /usr/include/xcb/xkb.h:151
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:152
      index : aliased int;  -- /usr/include/xcb/xkb.h:153
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_ax_option_iterator_t);  -- /usr/include/xcb/xkb.h:150

  --*<   
  --*<   
   subtype xcb_xkb_device_spec_t is stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:156

  --*
  -- * @brief xcb_xkb_device_spec_iterator_t
  -- * 

  --*<   
   type xcb_xkb_device_spec_iterator_t is record
      data : access xcb_xkb_device_spec_t;  -- /usr/include/xcb/xkb.h:162
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:163
      index : aliased int;  -- /usr/include/xcb/xkb.h:164
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_device_spec_iterator_t);  -- /usr/include/xcb/xkb.h:161

  --*<   
  --*<   
   subtype xcb_xkb_led_class_result_t is unsigned;
   XCB_XKB_LED_CLASS_RESULT_KBD_FEEDBACK_CLASS : constant xcb_xkb_led_class_result_t := 0;
   XCB_XKB_LED_CLASS_RESULT_LED_FEEDBACK_CLASS : constant xcb_xkb_led_class_result_t := 4;  -- /usr/include/xcb/xkb.h:167

   subtype xcb_xkb_led_class_t is unsigned;
   XCB_XKB_LED_CLASS_DFLT_XI_CLASS : constant xcb_xkb_led_class_t := 768;
   XCB_XKB_LED_CLASS_ALL_XI_CLASSES : constant xcb_xkb_led_class_t := 1280;  -- /usr/include/xcb/xkb.h:172

   subtype xcb_xkb_led_class_spec_t is stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:177

  --*
  -- * @brief xcb_xkb_led_class_spec_iterator_t
  -- * 

  --*<   
   type xcb_xkb_led_class_spec_iterator_t is record
      data : access xcb_xkb_led_class_spec_t;  -- /usr/include/xcb/xkb.h:183
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:184
      index : aliased int;  -- /usr/include/xcb/xkb.h:185
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_led_class_spec_iterator_t);  -- /usr/include/xcb/xkb.h:182

  --*<   
  --*<   
   subtype xcb_xkb_bell_class_result_t is unsigned;
   XCB_XKB_BELL_CLASS_RESULT_KBD_FEEDBACK_CLASS : constant xcb_xkb_bell_class_result_t := 0;
   XCB_XKB_BELL_CLASS_RESULT_BELL_FEEDBACK_CLASS : constant xcb_xkb_bell_class_result_t := 5;  -- /usr/include/xcb/xkb.h:188

   subtype xcb_xkb_bell_class_t is unsigned;
   XCB_XKB_BELL_CLASS_DFLT_XI_CLASS : constant xcb_xkb_bell_class_t := 768;  -- /usr/include/xcb/xkb.h:193

   subtype xcb_xkb_bell_class_spec_t is stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:197

  --*
  -- * @brief xcb_xkb_bell_class_spec_iterator_t
  -- * 

  --*<   
   type xcb_xkb_bell_class_spec_iterator_t is record
      data : access xcb_xkb_bell_class_spec_t;  -- /usr/include/xcb/xkb.h:203
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:204
      index : aliased int;  -- /usr/include/xcb/xkb.h:205
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_bell_class_spec_iterator_t);  -- /usr/include/xcb/xkb.h:202

  --*<   
  --*<   
   subtype xcb_xkb_id_t is unsigned;
   XCB_XKB_ID_USE_CORE_KBD : constant xcb_xkb_id_t := 256;
   XCB_XKB_ID_USE_CORE_PTR : constant xcb_xkb_id_t := 512;
   XCB_XKB_ID_DFLT_XI_CLASS : constant xcb_xkb_id_t := 768;
   XCB_XKB_ID_DFLT_XI_ID : constant xcb_xkb_id_t := 1024;
   XCB_XKB_ID_ALL_XI_CLASS : constant xcb_xkb_id_t := 1280;
   XCB_XKB_ID_ALL_XI_ID : constant xcb_xkb_id_t := 1536;
   XCB_XKB_ID_XI_NONE : constant xcb_xkb_id_t := 65280;  -- /usr/include/xcb/xkb.h:208

   subtype xcb_xkb_id_spec_t is stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:218

  --*
  -- * @brief xcb_xkb_id_spec_iterator_t
  -- * 

  --*<   
   type xcb_xkb_id_spec_iterator_t is record
      data : access xcb_xkb_id_spec_t;  -- /usr/include/xcb/xkb.h:224
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:225
      index : aliased int;  -- /usr/include/xcb/xkb.h:226
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_id_spec_iterator_t);  -- /usr/include/xcb/xkb.h:223

  --*<   
  --*<   
   type xcb_xkb_group_t is 
     (XCB_XKB_GROUP_1,
      XCB_XKB_GROUP_2,
      XCB_XKB_GROUP_3,
      XCB_XKB_GROUP_4);
   pragma Convention (C, xcb_xkb_group_t);  -- /usr/include/xcb/xkb.h:229

   subtype xcb_xkb_groups_t is unsigned;
   XCB_XKB_GROUPS_ANY : constant xcb_xkb_groups_t := 254;
   XCB_XKB_GROUPS_ALL : constant xcb_xkb_groups_t := 255;  -- /usr/include/xcb/xkb.h:236

   subtype xcb_xkb_set_of_group_t is unsigned;
   XCB_XKB_SET_OF_GROUP_GROUP_1 : constant xcb_xkb_set_of_group_t := 1;
   XCB_XKB_SET_OF_GROUP_GROUP_2 : constant xcb_xkb_set_of_group_t := 2;
   XCB_XKB_SET_OF_GROUP_GROUP_3 : constant xcb_xkb_set_of_group_t := 4;
   XCB_XKB_SET_OF_GROUP_GROUP_4 : constant xcb_xkb_set_of_group_t := 8;  -- /usr/include/xcb/xkb.h:241

   subtype xcb_xkb_set_of_groups_t is unsigned;
   XCB_XKB_SET_OF_GROUPS_ANY : constant xcb_xkb_set_of_groups_t := 128;  -- /usr/include/xcb/xkb.h:248

   subtype xcb_xkb_groups_wrap_t is unsigned;
   XCB_XKB_GROUPS_WRAP_WRAP_INTO_RANGE : constant xcb_xkb_groups_wrap_t := 0;
   XCB_XKB_GROUPS_WRAP_CLAMP_INTO_RANGE : constant xcb_xkb_groups_wrap_t := 64;
   XCB_XKB_GROUPS_WRAP_REDIRECT_INTO_RANGE : constant xcb_xkb_groups_wrap_t := 128;  -- /usr/include/xcb/xkb.h:252

   subtype xcb_xkb_v_mods_high_t is unsigned;
   XCB_XKB_V_MODS_HIGH_15 : constant xcb_xkb_v_mods_high_t := 128;
   XCB_XKB_V_MODS_HIGH_14 : constant xcb_xkb_v_mods_high_t := 64;
   XCB_XKB_V_MODS_HIGH_13 : constant xcb_xkb_v_mods_high_t := 32;
   XCB_XKB_V_MODS_HIGH_12 : constant xcb_xkb_v_mods_high_t := 16;
   XCB_XKB_V_MODS_HIGH_11 : constant xcb_xkb_v_mods_high_t := 8;
   XCB_XKB_V_MODS_HIGH_10 : constant xcb_xkb_v_mods_high_t := 4;
   XCB_XKB_V_MODS_HIGH_9 : constant xcb_xkb_v_mods_high_t := 2;
   XCB_XKB_V_MODS_HIGH_8 : constant xcb_xkb_v_mods_high_t := 1;  -- /usr/include/xcb/xkb.h:258

   subtype xcb_xkb_v_mods_low_t is unsigned;
   XCB_XKB_V_MODS_LOW_7 : constant xcb_xkb_v_mods_low_t := 128;
   XCB_XKB_V_MODS_LOW_6 : constant xcb_xkb_v_mods_low_t := 64;
   XCB_XKB_V_MODS_LOW_5 : constant xcb_xkb_v_mods_low_t := 32;
   XCB_XKB_V_MODS_LOW_4 : constant xcb_xkb_v_mods_low_t := 16;
   XCB_XKB_V_MODS_LOW_3 : constant xcb_xkb_v_mods_low_t := 8;
   XCB_XKB_V_MODS_LOW_2 : constant xcb_xkb_v_mods_low_t := 4;
   XCB_XKB_V_MODS_LOW_1 : constant xcb_xkb_v_mods_low_t := 2;
   XCB_XKB_V_MODS_LOW_0 : constant xcb_xkb_v_mods_low_t := 1;  -- /usr/include/xcb/xkb.h:269

   subtype xcb_xkb_v_mod_t is unsigned;
   XCB_XKB_V_MOD_15 : constant xcb_xkb_v_mod_t := 32768;
   XCB_XKB_V_MOD_14 : constant xcb_xkb_v_mod_t := 16384;
   XCB_XKB_V_MOD_13 : constant xcb_xkb_v_mod_t := 8192;
   XCB_XKB_V_MOD_12 : constant xcb_xkb_v_mod_t := 4096;
   XCB_XKB_V_MOD_11 : constant xcb_xkb_v_mod_t := 2048;
   XCB_XKB_V_MOD_10 : constant xcb_xkb_v_mod_t := 1024;
   XCB_XKB_V_MOD_9 : constant xcb_xkb_v_mod_t := 512;
   XCB_XKB_V_MOD_8 : constant xcb_xkb_v_mod_t := 256;
   XCB_XKB_V_MOD_7 : constant xcb_xkb_v_mod_t := 128;
   XCB_XKB_V_MOD_6 : constant xcb_xkb_v_mod_t := 64;
   XCB_XKB_V_MOD_5 : constant xcb_xkb_v_mod_t := 32;
   XCB_XKB_V_MOD_4 : constant xcb_xkb_v_mod_t := 16;
   XCB_XKB_V_MOD_3 : constant xcb_xkb_v_mod_t := 8;
   XCB_XKB_V_MOD_2 : constant xcb_xkb_v_mod_t := 4;
   XCB_XKB_V_MOD_1 : constant xcb_xkb_v_mod_t := 2;
   XCB_XKB_V_MOD_0 : constant xcb_xkb_v_mod_t := 1;  -- /usr/include/xcb/xkb.h:280

   subtype xcb_xkb_explicit_t is unsigned;
   XCB_XKB_EXPLICIT_V_MOD_MAP : constant xcb_xkb_explicit_t := 128;
   XCB_XKB_EXPLICIT_BEHAVIOR : constant xcb_xkb_explicit_t := 64;
   XCB_XKB_EXPLICIT_AUTO_REPEAT : constant xcb_xkb_explicit_t := 32;
   XCB_XKB_EXPLICIT_INTERPRET : constant xcb_xkb_explicit_t := 16;
   XCB_XKB_EXPLICIT_KEY_TYPE_4 : constant xcb_xkb_explicit_t := 8;
   XCB_XKB_EXPLICIT_KEY_TYPE_3 : constant xcb_xkb_explicit_t := 4;
   XCB_XKB_EXPLICIT_KEY_TYPE_2 : constant xcb_xkb_explicit_t := 2;
   XCB_XKB_EXPLICIT_KEY_TYPE_1 : constant xcb_xkb_explicit_t := 1;  -- /usr/include/xcb/xkb.h:299

   type xcb_xkb_sym_interpret_t is 
     (XCB_XKB_SYM_INTERPRET_NONE_OF,
      XCB_XKB_SYM_INTERPRET_ANY_OF_OR_NONE,
      XCB_XKB_SYM_INTERPRET_ANY_OF,
      XCB_XKB_SYM_INTERPRET_ALL_OF,
      XCB_XKB_SYM_INTERPRET_EXACTLY);
   pragma Convention (C, xcb_xkb_sym_interpret_t);  -- /usr/include/xcb/xkb.h:310

   subtype xcb_xkb_sym_interp_match_t is unsigned;
   XCB_XKB_SYM_INTERP_MATCH_LEVEL_ONE_ONLY : constant xcb_xkb_sym_interp_match_t := 128;
   XCB_XKB_SYM_INTERP_MATCH_OP_MASK : constant xcb_xkb_sym_interp_match_t := 127;  -- /usr/include/xcb/xkb.h:318

   subtype xcb_xkb_im_flag_t is unsigned;
   XCB_XKB_IM_FLAG_NO_EXPLICIT : constant xcb_xkb_im_flag_t := 128;
   XCB_XKB_IM_FLAG_NO_AUTOMATIC : constant xcb_xkb_im_flag_t := 64;
   XCB_XKB_IM_FLAG_LED_DRIVES_KB : constant xcb_xkb_im_flag_t := 32;  -- /usr/include/xcb/xkb.h:323

   subtype xcb_xkb_im_mods_which_t is unsigned;
   XCB_XKB_IM_MODS_WHICH_USE_COMPAT : constant xcb_xkb_im_mods_which_t := 16;
   XCB_XKB_IM_MODS_WHICH_USE_EFFECTIVE : constant xcb_xkb_im_mods_which_t := 8;
   XCB_XKB_IM_MODS_WHICH_USE_LOCKED : constant xcb_xkb_im_mods_which_t := 4;
   XCB_XKB_IM_MODS_WHICH_USE_LATCHED : constant xcb_xkb_im_mods_which_t := 2;
   XCB_XKB_IM_MODS_WHICH_USE_BASE : constant xcb_xkb_im_mods_which_t := 1;  -- /usr/include/xcb/xkb.h:329

   subtype xcb_xkb_im_groups_which_t is unsigned;
   XCB_XKB_IM_GROUPS_WHICH_USE_COMPAT : constant xcb_xkb_im_groups_which_t := 16;
   XCB_XKB_IM_GROUPS_WHICH_USE_EFFECTIVE : constant xcb_xkb_im_groups_which_t := 8;
   XCB_XKB_IM_GROUPS_WHICH_USE_LOCKED : constant xcb_xkb_im_groups_which_t := 4;
   XCB_XKB_IM_GROUPS_WHICH_USE_LATCHED : constant xcb_xkb_im_groups_which_t := 2;
   XCB_XKB_IM_GROUPS_WHICH_USE_BASE : constant xcb_xkb_im_groups_which_t := 1;  -- /usr/include/xcb/xkb.h:337

  --*
  -- * @brief xcb_xkb_indicator_map_t
  -- * 

  --*<   
   type xcb_xkb_indicator_map_t is record
      flags : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:349
      whichGroups : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:350
      groups : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:351
      whichMods : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:352
      mods : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:353
      realMods : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:354
      vmods : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:355
      ctrls : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:356
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_indicator_map_t);  -- /usr/include/xcb/xkb.h:348

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_indicator_map_iterator_t
  -- * 

  --*<   
   type xcb_xkb_indicator_map_iterator_t is record
      data : access xcb_xkb_indicator_map_t;  -- /usr/include/xcb/xkb.h:363
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:364
      index : aliased int;  -- /usr/include/xcb/xkb.h:365
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_indicator_map_iterator_t);  -- /usr/include/xcb/xkb.h:362

  --*<   
  --*<   
   subtype xcb_xkb_cm_detail_t is unsigned;
   XCB_XKB_CM_DETAIL_SYM_INTERP : constant xcb_xkb_cm_detail_t := 1;
   XCB_XKB_CM_DETAIL_GROUP_COMPAT : constant xcb_xkb_cm_detail_t := 2;  -- /usr/include/xcb/xkb.h:368

   subtype xcb_xkb_name_detail_t is unsigned;
   XCB_XKB_NAME_DETAIL_KEYCODES : constant xcb_xkb_name_detail_t := 1;
   XCB_XKB_NAME_DETAIL_GEOMETRY : constant xcb_xkb_name_detail_t := 2;
   XCB_XKB_NAME_DETAIL_SYMBOLS : constant xcb_xkb_name_detail_t := 4;
   XCB_XKB_NAME_DETAIL_PHYS_SYMBOLS : constant xcb_xkb_name_detail_t := 8;
   XCB_XKB_NAME_DETAIL_TYPES : constant xcb_xkb_name_detail_t := 16;
   XCB_XKB_NAME_DETAIL_COMPAT : constant xcb_xkb_name_detail_t := 32;
   XCB_XKB_NAME_DETAIL_KEY_TYPE_NAMES : constant xcb_xkb_name_detail_t := 64;
   XCB_XKB_NAME_DETAIL_KT_LEVEL_NAMES : constant xcb_xkb_name_detail_t := 128;
   XCB_XKB_NAME_DETAIL_INDICATOR_NAMES : constant xcb_xkb_name_detail_t := 256;
   XCB_XKB_NAME_DETAIL_KEY_NAMES : constant xcb_xkb_name_detail_t := 512;
   XCB_XKB_NAME_DETAIL_KEY_ALIASES : constant xcb_xkb_name_detail_t := 1024;
   XCB_XKB_NAME_DETAIL_VIRTUAL_MOD_NAMES : constant xcb_xkb_name_detail_t := 2048;
   XCB_XKB_NAME_DETAIL_GROUP_NAMES : constant xcb_xkb_name_detail_t := 4096;
   XCB_XKB_NAME_DETAIL_RG_NAMES : constant xcb_xkb_name_detail_t := 8192;  -- /usr/include/xcb/xkb.h:373

   subtype xcb_xkb_gbn_detail_t is unsigned;
   XCB_XKB_GBN_DETAIL_TYPES : constant xcb_xkb_gbn_detail_t := 1;
   XCB_XKB_GBN_DETAIL_COMPAT_MAP : constant xcb_xkb_gbn_detail_t := 2;
   XCB_XKB_GBN_DETAIL_CLIENT_SYMBOLS : constant xcb_xkb_gbn_detail_t := 4;
   XCB_XKB_GBN_DETAIL_SERVER_SYMBOLS : constant xcb_xkb_gbn_detail_t := 8;
   XCB_XKB_GBN_DETAIL_INDICATOR_MAPS : constant xcb_xkb_gbn_detail_t := 16;
   XCB_XKB_GBN_DETAIL_KEY_NAMES : constant xcb_xkb_gbn_detail_t := 32;
   XCB_XKB_GBN_DETAIL_GEOMETRY : constant xcb_xkb_gbn_detail_t := 64;
   XCB_XKB_GBN_DETAIL_OTHER_NAMES : constant xcb_xkb_gbn_detail_t := 128;  -- /usr/include/xcb/xkb.h:390

   subtype xcb_xkb_xi_feature_t is unsigned;
   XCB_XKB_XI_FEATURE_KEYBOARDS : constant xcb_xkb_xi_feature_t := 1;
   XCB_XKB_XI_FEATURE_BUTTON_ACTIONS : constant xcb_xkb_xi_feature_t := 2;
   XCB_XKB_XI_FEATURE_INDICATOR_NAMES : constant xcb_xkb_xi_feature_t := 4;
   XCB_XKB_XI_FEATURE_INDICATOR_MAPS : constant xcb_xkb_xi_feature_t := 8;
   XCB_XKB_XI_FEATURE_INDICATOR_STATE : constant xcb_xkb_xi_feature_t := 16;  -- /usr/include/xcb/xkb.h:401

   subtype xcb_xkb_per_client_flag_t is unsigned;
   XCB_XKB_PER_CLIENT_FLAG_DETECTABLE_AUTO_REPEAT : constant xcb_xkb_per_client_flag_t := 1;
   XCB_XKB_PER_CLIENT_FLAG_GRABS_USE_XKB_STATE : constant xcb_xkb_per_client_flag_t := 2;
   XCB_XKB_PER_CLIENT_FLAG_AUTO_RESET_CONTROLS : constant xcb_xkb_per_client_flag_t := 4;
   XCB_XKB_PER_CLIENT_FLAG_LOOKUP_STATE_WHEN_GRABBED : constant xcb_xkb_per_client_flag_t := 8;
   XCB_XKB_PER_CLIENT_FLAG_SEND_EVENT_USES_XKB_STATE : constant xcb_xkb_per_client_flag_t := 16;  -- /usr/include/xcb/xkb.h:409

  --*
  -- * @brief xcb_xkb_mod_def_t
  -- * 

  --*<   
   type xcb_xkb_mod_def_t is record
      mask : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:421
      realMods : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:422
      vmods : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:423
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_mod_def_t);  -- /usr/include/xcb/xkb.h:420

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_mod_def_iterator_t
  -- * 

  --*<   
   type xcb_xkb_mod_def_iterator_t is record
      data : access xcb_xkb_mod_def_t;  -- /usr/include/xcb/xkb.h:430
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:431
      index : aliased int;  -- /usr/include/xcb/xkb.h:432
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_mod_def_iterator_t);  -- /usr/include/xcb/xkb.h:429

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_key_name_t
  -- * 

  --*<   
   type anon4059_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type xcb_xkb_key_name_t is record
      name : aliased anon4059_anon1768_array;  -- /usr/include/xcb/xkb.h:439
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_key_name_t);  -- /usr/include/xcb/xkb.h:438

  --*
  -- * @brief xcb_xkb_key_name_iterator_t
  -- * 

  --*<   
   type xcb_xkb_key_name_iterator_t is record
      data : access xcb_xkb_key_name_t;  -- /usr/include/xcb/xkb.h:446
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:447
      index : aliased int;  -- /usr/include/xcb/xkb.h:448
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_key_name_iterator_t);  -- /usr/include/xcb/xkb.h:445

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_key_alias_t
  -- * 

  --*<   
   type anon4067_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type anon4067_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type xcb_xkb_key_alias_t is record
      real : aliased anon4067_anon1768_array;  -- /usr/include/xcb/xkb.h:455
      alias : aliased anon4067_anon1768_array;  -- /usr/include/xcb/xkb.h:456
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_key_alias_t);  -- /usr/include/xcb/xkb.h:454

  --*<   
  --*
  -- * @brief xcb_xkb_key_alias_iterator_t
  -- * 

  --*<   
   type xcb_xkb_key_alias_iterator_t is record
      data : access xcb_xkb_key_alias_t;  -- /usr/include/xcb/xkb.h:463
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:464
      index : aliased int;  -- /usr/include/xcb/xkb.h:465
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_key_alias_iterator_t);  -- /usr/include/xcb/xkb.h:462

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_counted_string_8_t
  -- * 

  --*<   
   type xcb_xkb_counted_string_8_t is record
      length : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:472
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_counted_string_8_t);  -- /usr/include/xcb/xkb.h:471

  --*
  -- * @brief xcb_xkb_counted_string_8_iterator_t
  -- * 

  --*<   
   type xcb_xkb_counted_string_8_iterator_t is record
      data : access xcb_xkb_counted_string_8_t;  -- /usr/include/xcb/xkb.h:479
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:480
      index : aliased int;  -- /usr/include/xcb/xkb.h:481
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_counted_string_8_iterator_t);  -- /usr/include/xcb/xkb.h:478

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_counted_string_16_t
  -- * 

  --*<   
   type xcb_xkb_counted_string_16_t is record
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:488
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:489
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_counted_string_16_t);  -- /usr/include/xcb/xkb.h:487

  --*<   
  --*
  -- * @brief xcb_xkb_counted_string_16_iterator_t
  -- * 

  --*<   
   type xcb_xkb_counted_string_16_iterator_t is record
      data : access xcb_xkb_counted_string_16_t;  -- /usr/include/xcb/xkb.h:496
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:497
      index : aliased int;  -- /usr/include/xcb/xkb.h:498
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_counted_string_16_iterator_t);  -- /usr/include/xcb/xkb.h:495

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_kt_map_entry_t
  -- * 

  --*<   
   type anon4089_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_xkb_kt_map_entry_t is record
      active : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:505
      level : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:506
      mods_mask : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:507
      mods_mods : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:508
      mods_vmods : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:509
      pad0 : aliased anon4089_anon1795_array;  -- /usr/include/xcb/xkb.h:510
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_kt_map_entry_t);  -- /usr/include/xcb/xkb.h:504

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_kt_map_entry_iterator_t
  -- * 

  --*<   
   type xcb_xkb_kt_map_entry_iterator_t is record
      data : access xcb_xkb_kt_map_entry_t;  -- /usr/include/xcb/xkb.h:517
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:518
      index : aliased int;  -- /usr/include/xcb/xkb.h:519
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_kt_map_entry_iterator_t);  -- /usr/include/xcb/xkb.h:516

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_key_type_t
  -- * 

  --*<   
   type xcb_xkb_key_type_t is record
      mods_mask : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:526
      mods_mods : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:527
      mods_vmods : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:528
      numLevels : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:529
      nMapEntries : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:530
      hasPreserve : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:531
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:532
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_key_type_t);  -- /usr/include/xcb/xkb.h:525

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_key_type_iterator_t
  -- * 

  --*<   
   type xcb_xkb_key_type_iterator_t is record
      data : access xcb_xkb_key_type_t;  -- /usr/include/xcb/xkb.h:539
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:540
      index : aliased int;  -- /usr/include/xcb/xkb.h:541
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_key_type_iterator_t);  -- /usr/include/xcb/xkb.h:538

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_key_sym_map_t
  -- * 

  --*<   
   type anon4103_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type xcb_xkb_key_sym_map_t is record
      kt_index : aliased anon4103_anon1768_array;  -- /usr/include/xcb/xkb.h:548
      groupInfo : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:549
      width : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:550
      nSyms : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:551
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_key_sym_map_t);  -- /usr/include/xcb/xkb.h:547

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_key_sym_map_iterator_t
  -- * 

  --*<   
   type xcb_xkb_key_sym_map_iterator_t is record
      data : access xcb_xkb_key_sym_map_t;  -- /usr/include/xcb/xkb.h:558
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:559
      index : aliased int;  -- /usr/include/xcb/xkb.h:560
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_key_sym_map_iterator_t);  -- /usr/include/xcb/xkb.h:557

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_common_behavior_t
  -- * 

  --*<   
   type xcb_xkb_common_behavior_t is record
      c_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:567
      data : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:568
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_common_behavior_t);  -- /usr/include/xcb/xkb.h:566

  --*<   
  --*
  -- * @brief xcb_xkb_common_behavior_iterator_t
  -- * 

  --*<   
   type xcb_xkb_common_behavior_iterator_t is record
      data : access xcb_xkb_common_behavior_t;  -- /usr/include/xcb/xkb.h:575
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:576
      index : aliased int;  -- /usr/include/xcb/xkb.h:577
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_common_behavior_iterator_t);  -- /usr/include/xcb/xkb.h:574

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_default_behavior_t
  -- * 

  --*<   
   type xcb_xkb_default_behavior_t is record
      c_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:584
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:585
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_default_behavior_t);  -- /usr/include/xcb/xkb.h:583

  --*<   
  --*
  -- * @brief xcb_xkb_default_behavior_iterator_t
  -- * 

  --*<   
   type xcb_xkb_default_behavior_iterator_t is record
      data : access xcb_xkb_default_behavior_t;  -- /usr/include/xcb/xkb.h:592
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:593
      index : aliased int;  -- /usr/include/xcb/xkb.h:594
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_default_behavior_iterator_t);  -- /usr/include/xcb/xkb.h:591

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_lock_behavior_t
  -- * 

  --*<   
   type xcb_xkb_lock_behavior_t is record
      c_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:601
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:602
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_lock_behavior_t);  -- /usr/include/xcb/xkb.h:600

  --*<   
  --*
  -- * @brief xcb_xkb_lock_behavior_iterator_t
  -- * 

  --*<   
   type xcb_xkb_lock_behavior_iterator_t is record
      data : access xcb_xkb_lock_behavior_t;  -- /usr/include/xcb/xkb.h:609
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:610
      index : aliased int;  -- /usr/include/xcb/xkb.h:611
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_lock_behavior_iterator_t);  -- /usr/include/xcb/xkb.h:608

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_radio_group_behavior_t
  -- * 

  --*<   
   type xcb_xkb_radio_group_behavior_t is record
      c_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:618
      group : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:619
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_radio_group_behavior_t);  -- /usr/include/xcb/xkb.h:617

  --*<   
  --*
  -- * @brief xcb_xkb_radio_group_behavior_iterator_t
  -- * 

  --*<   
   type xcb_xkb_radio_group_behavior_iterator_t is record
      data : access xcb_xkb_radio_group_behavior_t;  -- /usr/include/xcb/xkb.h:626
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:627
      index : aliased int;  -- /usr/include/xcb/xkb.h:628
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_radio_group_behavior_iterator_t);  -- /usr/include/xcb/xkb.h:625

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_overlay_1_behavior_t
  -- * 

  --*<   
   type xcb_xkb_overlay_1_behavior_t is record
      c_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:635
      key : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:636
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_overlay_1_behavior_t);  -- /usr/include/xcb/xkb.h:634

  --*<   
  --*
  -- * @brief xcb_xkb_overlay_1_behavior_iterator_t
  -- * 

  --*<   
   type xcb_xkb_overlay_1_behavior_iterator_t is record
      data : access xcb_xkb_overlay_1_behavior_t;  -- /usr/include/xcb/xkb.h:643
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:644
      index : aliased int;  -- /usr/include/xcb/xkb.h:645
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_overlay_1_behavior_iterator_t);  -- /usr/include/xcb/xkb.h:642

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_overlay_2_behavior_t
  -- * 

  --*<   
   type xcb_xkb_overlay_2_behavior_t is record
      c_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:652
      key : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:653
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_overlay_2_behavior_t);  -- /usr/include/xcb/xkb.h:651

  --*<   
  --*
  -- * @brief xcb_xkb_overlay_2_behavior_iterator_t
  -- * 

  --*<   
   type xcb_xkb_overlay_2_behavior_iterator_t is record
      data : access xcb_xkb_overlay_2_behavior_t;  -- /usr/include/xcb/xkb.h:660
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:661
      index : aliased int;  -- /usr/include/xcb/xkb.h:662
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_overlay_2_behavior_iterator_t);  -- /usr/include/xcb/xkb.h:659

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_permament_lock_behavior_t
  -- * 

  --*<   
   type xcb_xkb_permament_lock_behavior_t is record
      c_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:669
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:670
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_permament_lock_behavior_t);  -- /usr/include/xcb/xkb.h:668

  --*<   
  --*
  -- * @brief xcb_xkb_permament_lock_behavior_iterator_t
  -- * 

  --*<   
   type xcb_xkb_permament_lock_behavior_iterator_t is record
      data : access xcb_xkb_permament_lock_behavior_t;  -- /usr/include/xcb/xkb.h:677
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:678
      index : aliased int;  -- /usr/include/xcb/xkb.h:679
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_permament_lock_behavior_iterator_t);  -- /usr/include/xcb/xkb.h:676

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_permament_radio_group_behavior_t
  -- * 

  --*<   
   type xcb_xkb_permament_radio_group_behavior_t is record
      c_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:686
      group : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:687
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_permament_radio_group_behavior_t);  -- /usr/include/xcb/xkb.h:685

  --*<   
  --*
  -- * @brief xcb_xkb_permament_radio_group_behavior_iterator_t
  -- * 

  --*<   
   type xcb_xkb_permament_radio_group_behavior_iterator_t is record
      data : access xcb_xkb_permament_radio_group_behavior_t;  -- /usr/include/xcb/xkb.h:694
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:695
      index : aliased int;  -- /usr/include/xcb/xkb.h:696
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_permament_radio_group_behavior_iterator_t);  -- /usr/include/xcb/xkb.h:693

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_permament_overlay_1_behavior_t
  -- * 

  --*<   
   type xcb_xkb_permament_overlay_1_behavior_t is record
      c_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:703
      key : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:704
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_permament_overlay_1_behavior_t);  -- /usr/include/xcb/xkb.h:702

  --*<   
  --*
  -- * @brief xcb_xkb_permament_overlay_1_behavior_iterator_t
  -- * 

  --*<   
   type xcb_xkb_permament_overlay_1_behavior_iterator_t is record
      data : access xcb_xkb_permament_overlay_1_behavior_t;  -- /usr/include/xcb/xkb.h:711
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:712
      index : aliased int;  -- /usr/include/xcb/xkb.h:713
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_permament_overlay_1_behavior_iterator_t);  -- /usr/include/xcb/xkb.h:710

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_permament_overlay_2_behavior_t
  -- * 

  --*<   
   type xcb_xkb_permament_overlay_2_behavior_t is record
      c_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:720
      key : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:721
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_permament_overlay_2_behavior_t);  -- /usr/include/xcb/xkb.h:719

  --*<   
  --*
  -- * @brief xcb_xkb_permament_overlay_2_behavior_iterator_t
  -- * 

  --*<   
   type xcb_xkb_permament_overlay_2_behavior_iterator_t is record
      data : access xcb_xkb_permament_overlay_2_behavior_t;  -- /usr/include/xcb/xkb.h:728
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:729
      index : aliased int;  -- /usr/include/xcb/xkb.h:730
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_permament_overlay_2_behavior_iterator_t);  -- /usr/include/xcb/xkb.h:727

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_behavior_t
  -- * 

  --*<   
   type xcb_xkb_behavior_t (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            common : aliased xcb_xkb_common_behavior_t;  -- /usr/include/xcb/xkb.h:737
         when 1 =>
            u_default : aliased xcb_xkb_default_behavior_t;  -- /usr/include/xcb/xkb.h:738
         when 2 =>
            lock : aliased xcb_xkb_lock_behavior_t;  -- /usr/include/xcb/xkb.h:739
         when 3 =>
            radioGroup : aliased xcb_xkb_radio_group_behavior_t;  -- /usr/include/xcb/xkb.h:740
         when 4 =>
            overlay1 : aliased xcb_xkb_overlay_1_behavior_t;  -- /usr/include/xcb/xkb.h:741
         when 5 =>
            overlay2 : aliased xcb_xkb_overlay_2_behavior_t;  -- /usr/include/xcb/xkb.h:742
         when 6 =>
            permamentLock : aliased xcb_xkb_permament_lock_behavior_t;  -- /usr/include/xcb/xkb.h:743
         when 7 =>
            permamentRadioGroup : aliased xcb_xkb_permament_radio_group_behavior_t;  -- /usr/include/xcb/xkb.h:744
         when 8 =>
            permamentOverlay1 : aliased xcb_xkb_permament_overlay_1_behavior_t;  -- /usr/include/xcb/xkb.h:745
         when 9 =>
            permamentOverlay2 : aliased xcb_xkb_permament_overlay_2_behavior_t;  -- /usr/include/xcb/xkb.h:746
         when others =>
            c_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:747
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_behavior_t);
   pragma Unchecked_Union (xcb_xkb_behavior_t);  -- /usr/include/xcb/xkb.h:736

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
  -- * @brief xcb_xkb_behavior_iterator_t
  -- * 

  --*<   
   type xcb_xkb_behavior_iterator_t is record
      data : access xcb_xkb_behavior_t;  -- /usr/include/xcb/xkb.h:754
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:755
      index : aliased int;  -- /usr/include/xcb/xkb.h:756
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_behavior_iterator_t);  -- /usr/include/xcb/xkb.h:753

  --*<   
  --*<   
   subtype xcb_xkb_behavior_type_t is unsigned;
   XCB_XKB_BEHAVIOR_TYPE_DEFAULT : constant xcb_xkb_behavior_type_t := 0;
   XCB_XKB_BEHAVIOR_TYPE_LOCK : constant xcb_xkb_behavior_type_t := 1;
   XCB_XKB_BEHAVIOR_TYPE_RADIO_GROUP : constant xcb_xkb_behavior_type_t := 2;
   XCB_XKB_BEHAVIOR_TYPE_OVERLAY_1 : constant xcb_xkb_behavior_type_t := 3;
   XCB_XKB_BEHAVIOR_TYPE_OVERLAY_2 : constant xcb_xkb_behavior_type_t := 4;
   XCB_XKB_BEHAVIOR_TYPE_PERMAMENT_LOCK : constant xcb_xkb_behavior_type_t := 129;
   XCB_XKB_BEHAVIOR_TYPE_PERMAMENT_RADIO_GROUP : constant xcb_xkb_behavior_type_t := 130;
   XCB_XKB_BEHAVIOR_TYPE_PERMAMENT_OVERLAY_1 : constant xcb_xkb_behavior_type_t := 131;
   XCB_XKB_BEHAVIOR_TYPE_PERMAMENT_OVERLAY_2 : constant xcb_xkb_behavior_type_t := 132;  -- /usr/include/xcb/xkb.h:759

  --*
  -- * @brief xcb_xkb_set_behavior_t
  -- * 

  --*<   
   type xcb_xkb_set_behavior_t is record
      keycode : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:775
      behavior : xcb_xkb_behavior_t;  -- /usr/include/xcb/xkb.h:776
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:777
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_set_behavior_t);  -- /usr/include/xcb/xkb.h:774

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_set_behavior_iterator_t
  -- * 

  --*<   
   type xcb_xkb_set_behavior_iterator_t is record
      data : access xcb_xkb_set_behavior_t;  -- /usr/include/xcb/xkb.h:784
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:785
      index : aliased int;  -- /usr/include/xcb/xkb.h:786
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_set_behavior_iterator_t);  -- /usr/include/xcb/xkb.h:783

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_set_explicit_t
  -- * 

  --*<   
   type xcb_xkb_set_explicit_t is record
      keycode : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:793
      explicit : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:794
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_set_explicit_t);  -- /usr/include/xcb/xkb.h:792

  --*<   
  --*
  -- * @brief xcb_xkb_set_explicit_iterator_t
  -- * 

  --*<   
   type xcb_xkb_set_explicit_iterator_t is record
      data : access xcb_xkb_set_explicit_t;  -- /usr/include/xcb/xkb.h:801
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:802
      index : aliased int;  -- /usr/include/xcb/xkb.h:803
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_set_explicit_iterator_t);  -- /usr/include/xcb/xkb.h:800

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_key_mod_map_t
  -- * 

  --*<   
   type xcb_xkb_key_mod_map_t is record
      keycode : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:810
      mods : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:811
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_key_mod_map_t);  -- /usr/include/xcb/xkb.h:809

  --*<   
  --*
  -- * @brief xcb_xkb_key_mod_map_iterator_t
  -- * 

  --*<   
   type xcb_xkb_key_mod_map_iterator_t is record
      data : access xcb_xkb_key_mod_map_t;  -- /usr/include/xcb/xkb.h:818
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:819
      index : aliased int;  -- /usr/include/xcb/xkb.h:820
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_key_mod_map_iterator_t);  -- /usr/include/xcb/xkb.h:817

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_key_v_mod_map_t
  -- * 

  --*<   
   type xcb_xkb_key_v_mod_map_t is record
      keycode : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:827
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:828
      vmods : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:829
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_key_v_mod_map_t);  -- /usr/include/xcb/xkb.h:826

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_key_v_mod_map_iterator_t
  -- * 

  --*<   
   type xcb_xkb_key_v_mod_map_iterator_t is record
      data : access xcb_xkb_key_v_mod_map_t;  -- /usr/include/xcb/xkb.h:836
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:837
      index : aliased int;  -- /usr/include/xcb/xkb.h:838
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_key_v_mod_map_iterator_t);  -- /usr/include/xcb/xkb.h:835

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_kt_set_map_entry_t
  -- * 

  --*<   
   type xcb_xkb_kt_set_map_entry_t is record
      level : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:845
      realMods : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:846
      virtualMods : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:847
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_kt_set_map_entry_t);  -- /usr/include/xcb/xkb.h:844

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_kt_set_map_entry_iterator_t
  -- * 

  --*<   
   type xcb_xkb_kt_set_map_entry_iterator_t is record
      data : access xcb_xkb_kt_set_map_entry_t;  -- /usr/include/xcb/xkb.h:854
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:855
      index : aliased int;  -- /usr/include/xcb/xkb.h:856
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_kt_set_map_entry_iterator_t);  -- /usr/include/xcb/xkb.h:853

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_set_key_type_t
  -- * 

  --*<   
   type xcb_xkb_set_key_type_t is record
      mask : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:863
      realMods : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:864
      virtualMods : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:865
      numLevels : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:866
      nMapEntries : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:867
      preserve : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:868
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:869
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_set_key_type_t);  -- /usr/include/xcb/xkb.h:862

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_set_key_type_iterator_t
  -- * 

  --*<   
   type xcb_xkb_set_key_type_iterator_t is record
      data : access xcb_xkb_set_key_type_t;  -- /usr/include/xcb/xkb.h:876
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:877
      index : aliased int;  -- /usr/include/xcb/xkb.h:878
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_set_key_type_iterator_t);  -- /usr/include/xcb/xkb.h:875

  --*<   
  --*<   
   subtype xcb_xkb_string8_t is char;  -- /usr/include/xcb/xkb.h:881

  --*
  -- * @brief xcb_xkb_string8_iterator_t
  -- * 

  --*<   
   type xcb_xkb_string8_iterator_t is record
      data : access xcb_xkb_string8_t;  -- /usr/include/xcb/xkb.h:887
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:888
      index : aliased int;  -- /usr/include/xcb/xkb.h:889
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_string8_iterator_t);  -- /usr/include/xcb/xkb.h:886

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_property_t
  -- * 

  --*<   
   type xcb_xkb_property_t is record
      nameLength : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:896
      valueLength : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:897
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_property_t);  -- /usr/include/xcb/xkb.h:895

  --*<   
  --*
  -- * @brief xcb_xkb_property_iterator_t
  -- * 

  --*<   
   type xcb_xkb_property_iterator_t is record
      data : access xcb_xkb_property_t;  -- /usr/include/xcb/xkb.h:904
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:905
      index : aliased int;  -- /usr/include/xcb/xkb.h:906
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_property_iterator_t);  -- /usr/include/xcb/xkb.h:903

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_outline_t
  -- * 

  --*<   
   type anon4225_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_xkb_outline_t is record
      nPoints : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:913
      cornerRadius : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:914
      pad0 : aliased anon4225_anon1795_array;  -- /usr/include/xcb/xkb.h:915
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_outline_t);  -- /usr/include/xcb/xkb.h:912

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_outline_iterator_t
  -- * 

  --*<   
   type xcb_xkb_outline_iterator_t is record
      data : access xcb_xkb_outline_t;  -- /usr/include/xcb/xkb.h:922
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:923
      index : aliased int;  -- /usr/include/xcb/xkb.h:924
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_outline_iterator_t);  -- /usr/include/xcb/xkb.h:921

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_shape_t
  -- * 

  --*<   
   type xcb_xkb_shape_t is record
      name : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:931
      nOutlines : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:932
      primaryNdx : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:933
      approxNdx : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:934
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:935
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_shape_t);  -- /usr/include/xcb/xkb.h:930

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_shape_iterator_t
  -- * 

  --*<   
   type xcb_xkb_shape_iterator_t is record
      data : access xcb_xkb_shape_t;  -- /usr/include/xcb/xkb.h:942
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:943
      index : aliased int;  -- /usr/include/xcb/xkb.h:944
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_shape_iterator_t);  -- /usr/include/xcb/xkb.h:941

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_key_t
  -- * 

  --*<   
   type anon4239_anon4241_array is array (0 .. 3) of aliased xcb_xkb_string8_t;
   type xcb_xkb_key_t is record
      name : aliased anon4239_anon4241_array;  -- /usr/include/xcb/xkb.h:951
      gap : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xkb.h:952
      shapeNdx : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:953
      colorNdx : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:954
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_key_t);  -- /usr/include/xcb/xkb.h:950

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_key_iterator_t
  -- * 

  --*<   
   type xcb_xkb_key_iterator_t is record
      data : access xcb_xkb_key_t;  -- /usr/include/xcb/xkb.h:961
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:962
      index : aliased int;  -- /usr/include/xcb/xkb.h:963
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_key_iterator_t);  -- /usr/include/xcb/xkb.h:960

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_overlay_key_t
  -- * 

  --*<   
   type anon4248_anon4241_array is array (0 .. 3) of aliased xcb_xkb_string8_t;
   type anon4248_anon4241_array is array (0 .. 3) of aliased xcb_xkb_string8_t;
   type xcb_xkb_overlay_key_t is record
      over : aliased anon4248_anon4241_array;  -- /usr/include/xcb/xkb.h:970
      under : aliased anon4248_anon4241_array;  -- /usr/include/xcb/xkb.h:971
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_overlay_key_t);  -- /usr/include/xcb/xkb.h:969

  --*<   
  --*
  -- * @brief xcb_xkb_overlay_key_iterator_t
  -- * 

  --*<   
   type xcb_xkb_overlay_key_iterator_t is record
      data : access xcb_xkb_overlay_key_t;  -- /usr/include/xcb/xkb.h:978
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:979
      index : aliased int;  -- /usr/include/xcb/xkb.h:980
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_overlay_key_iterator_t);  -- /usr/include/xcb/xkb.h:977

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_overlay_row_t
  -- * 

  --*<   
   type anon4258_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_xkb_overlay_row_t is record
      rowUnder : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:987
      nKeys : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:988
      pad0 : aliased anon4258_anon1795_array;  -- /usr/include/xcb/xkb.h:989
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_overlay_row_t);  -- /usr/include/xcb/xkb.h:986

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_overlay_row_iterator_t
  -- * 

  --*<   
   type xcb_xkb_overlay_row_iterator_t is record
      data : access xcb_xkb_overlay_row_t;  -- /usr/include/xcb/xkb.h:996
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:997
      index : aliased int;  -- /usr/include/xcb/xkb.h:998
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_overlay_row_iterator_t);  -- /usr/include/xcb/xkb.h:995

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_overlay_t
  -- * 

  --*<   
   type anon4266_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_xkb_overlay_t is record
      name : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:1005
      nRows : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1006
      pad0 : aliased anon4266_anon1853_array;  -- /usr/include/xcb/xkb.h:1007
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_overlay_t);  -- /usr/include/xcb/xkb.h:1004

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_overlay_iterator_t
  -- * 

  --*<   
   type xcb_xkb_overlay_iterator_t is record
      data : access xcb_xkb_overlay_t;  -- /usr/include/xcb/xkb.h:1014
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:1015
      index : aliased int;  -- /usr/include/xcb/xkb.h:1016
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_overlay_iterator_t);  -- /usr/include/xcb/xkb.h:1013

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_row_t
  -- * 

  --*<   
   type anon4274_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_xkb_row_t is record
      top : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xkb.h:1023
      left : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xkb.h:1024
      nKeys : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1025
      vertical : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1026
      pad0 : aliased anon4274_anon1795_array;  -- /usr/include/xcb/xkb.h:1027
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_row_t);  -- /usr/include/xcb/xkb.h:1022

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_row_iterator_t
  -- * 

  --*<   
   type xcb_xkb_row_iterator_t is record
      data : access xcb_xkb_row_t;  -- /usr/include/xcb/xkb.h:1034
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:1035
      index : aliased int;  -- /usr/include/xcb/xkb.h:1036
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_row_iterator_t);  -- /usr/include/xcb/xkb.h:1033

  --*<   
  --*<   
   subtype xcb_xkb_doodad_type_t is unsigned;
   XCB_XKB_DOODAD_TYPE_OUTLINE : constant xcb_xkb_doodad_type_t := 1;
   XCB_XKB_DOODAD_TYPE_SOLID : constant xcb_xkb_doodad_type_t := 2;
   XCB_XKB_DOODAD_TYPE_TEXT : constant xcb_xkb_doodad_type_t := 3;
   XCB_XKB_DOODAD_TYPE_INDICATOR : constant xcb_xkb_doodad_type_t := 4;
   XCB_XKB_DOODAD_TYPE_LOGO : constant xcb_xkb_doodad_type_t := 5;  -- /usr/include/xcb/xkb.h:1039

  --*
  -- * @brief xcb_xkb_common_doodad_t
  -- * 

  --*<   
   type xcb_xkb_common_doodad_t is record
      name : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:1051
      c_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1052
      priority : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1053
      top : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xkb.h:1054
      left : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xkb.h:1055
      angle : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xkb.h:1056
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_common_doodad_t);  -- /usr/include/xcb/xkb.h:1050

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_common_doodad_iterator_t
  -- * 

  --*<   
   type xcb_xkb_common_doodad_iterator_t is record
      data : access xcb_xkb_common_doodad_t;  -- /usr/include/xcb/xkb.h:1063
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:1064
      index : aliased int;  -- /usr/include/xcb/xkb.h:1065
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_common_doodad_iterator_t);  -- /usr/include/xcb/xkb.h:1062

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_shape_doodad_t
  -- * 

  --*<   
   type anon4290_anon4292_array is array (0 .. 5) of aliased stdint_h.uint8_t;
   type xcb_xkb_shape_doodad_t is record
      name : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:1072
      c_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1073
      priority : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1074
      top : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xkb.h:1075
      left : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xkb.h:1076
      angle : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xkb.h:1077
      colorNdx : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1078
      shapeNdx : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1079
      pad0 : aliased anon4290_anon4292_array;  -- /usr/include/xcb/xkb.h:1080
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_shape_doodad_t);  -- /usr/include/xcb/xkb.h:1071

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_shape_doodad_iterator_t
  -- * 

  --*<   
   type xcb_xkb_shape_doodad_iterator_t is record
      data : access xcb_xkb_shape_doodad_t;  -- /usr/include/xcb/xkb.h:1087
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:1088
      index : aliased int;  -- /usr/include/xcb/xkb.h:1089
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_shape_doodad_iterator_t);  -- /usr/include/xcb/xkb.h:1086

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_text_doodad_t
  -- * 

  --*<   
   type anon4299_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_xkb_text_doodad_t is record
      name : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:1096
      c_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1097
      priority : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1098
      top : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xkb.h:1099
      left : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xkb.h:1100
      angle : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xkb.h:1101
      width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:1102
      height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:1103
      colorNdx : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1104
      pad0 : aliased anon4299_anon1853_array;  -- /usr/include/xcb/xkb.h:1105
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_text_doodad_t);  -- /usr/include/xcb/xkb.h:1095

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --****************************************************************************
  -- **
  -- ** xcb_xkb_counted_string_16_t * xcb_xkb_text_doodad_text
  -- ** 
  -- ** @param const xcb_xkb_text_doodad_t *R
  -- ** @returns xcb_xkb_counted_string_16_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_text_doodad_text (arg1 : System.Address) return access xcb_xkb_counted_string_16_t;  -- /usr/include/xcb/xkb.h:1119
   pragma Import (C, xcb_xkb_text_doodad_text, "xcb_xkb_text_doodad_text");

  --****************************************************************************
  -- **
  -- ** xcb_xkb_counted_string_16_t * xcb_xkb_text_doodad_font
  -- ** 
  -- ** @param const xcb_xkb_text_doodad_t *R
  -- ** @returns xcb_xkb_counted_string_16_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_text_doodad_font (arg1 : System.Address) return access xcb_xkb_counted_string_16_t;  -- /usr/include/xcb/xkb.h:1132
   pragma Import (C, xcb_xkb_text_doodad_font, "xcb_xkb_text_doodad_font");

  --*
  -- * @brief xcb_xkb_text_doodad_iterator_t
  -- * 

  --*<   
   type xcb_xkb_text_doodad_iterator_t is record
      data : access xcb_xkb_text_doodad_t;  -- /usr/include/xcb/xkb.h:1138
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:1139
      index : aliased int;  -- /usr/include/xcb/xkb.h:1140
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_text_doodad_iterator_t);  -- /usr/include/xcb/xkb.h:1137

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_indicator_doodad_t
  -- * 

  --*<   
   type anon4315_anon1756_array is array (0 .. 4) of aliased stdint_h.uint8_t;
   type xcb_xkb_indicator_doodad_t is record
      name : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:1147
      c_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1148
      priority : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1149
      top : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xkb.h:1150
      left : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xkb.h:1151
      angle : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xkb.h:1152
      shapeNdx : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1153
      onColorNdx : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1154
      offColorNdx : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1155
      pad0 : aliased anon4315_anon1756_array;  -- /usr/include/xcb/xkb.h:1156
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_indicator_doodad_t);  -- /usr/include/xcb/xkb.h:1146

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
  -- * @brief xcb_xkb_indicator_doodad_iterator_t
  -- * 

  --*<   
   type xcb_xkb_indicator_doodad_iterator_t is record
      data : access xcb_xkb_indicator_doodad_t;  -- /usr/include/xcb/xkb.h:1163
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:1164
      index : aliased int;  -- /usr/include/xcb/xkb.h:1165
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_indicator_doodad_iterator_t);  -- /usr/include/xcb/xkb.h:1162

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_logo_doodad_t
  -- * 

  --*<   
   type anon4323_anon4292_array is array (0 .. 5) of aliased stdint_h.uint8_t;
   type xcb_xkb_logo_doodad_t is record
      name : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:1172
      c_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1173
      priority : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1174
      top : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xkb.h:1175
      left : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xkb.h:1176
      angle : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xkb.h:1177
      colorNdx : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1178
      shapeNdx : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1179
      pad0 : aliased anon4323_anon4292_array;  -- /usr/include/xcb/xkb.h:1180
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_logo_doodad_t);  -- /usr/include/xcb/xkb.h:1171

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --****************************************************************************
  -- **
  -- ** xcb_xkb_counted_string_16_t * xcb_xkb_logo_doodad_logo_name
  -- ** 
  -- ** @param const xcb_xkb_logo_doodad_t *R
  -- ** @returns xcb_xkb_counted_string_16_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_logo_doodad_logo_name (arg1 : System.Address) return access xcb_xkb_counted_string_16_t;  -- /usr/include/xcb/xkb.h:1194
   pragma Import (C, xcb_xkb_logo_doodad_logo_name, "xcb_xkb_logo_doodad_logo_name");

  --*
  -- * @brief xcb_xkb_logo_doodad_iterator_t
  -- * 

  --*<   
   type xcb_xkb_logo_doodad_iterator_t is record
      data : access xcb_xkb_logo_doodad_t;  -- /usr/include/xcb/xkb.h:1200
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:1201
      index : aliased int;  -- /usr/include/xcb/xkb.h:1202
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_logo_doodad_iterator_t);  -- /usr/include/xcb/xkb.h:1199

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_doodad_t
  -- * 

  --*<   
   type xcb_xkb_doodad_t (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            common : aliased xcb_xkb_common_doodad_t;  -- /usr/include/xcb/xkb.h:1209
         when 1 =>
            shape : aliased xcb_xkb_shape_doodad_t;  -- /usr/include/xcb/xkb.h:1210
         when 2 =>
            text : access xcb_xkb_text_doodad_t;  -- /usr/include/xcb/xkb.h:1211
         when 3 =>
            indicator : aliased xcb_xkb_indicator_doodad_t;  -- /usr/include/xcb/xkb.h:1212
         when others =>
            logo : access xcb_xkb_logo_doodad_t;  -- /usr/include/xcb/xkb.h:1213
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_doodad_t);
   pragma Unchecked_Union (xcb_xkb_doodad_t);  -- /usr/include/xcb/xkb.h:1208

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_doodad_iterator_t
  -- * 

  --*<   
   type xcb_xkb_doodad_iterator_t is record
      data : access xcb_xkb_doodad_t;  -- /usr/include/xcb/xkb.h:1220
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:1221
      index : aliased int;  -- /usr/include/xcb/xkb.h:1222
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_doodad_iterator_t);  -- /usr/include/xcb/xkb.h:1219

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_section_t
  -- * 

  --*<   
   type anon4343_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_xkb_section_t is record
      name : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:1229
      top : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xkb.h:1230
      left : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xkb.h:1231
      width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:1232
      height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:1233
      angle : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xkb.h:1234
      priority : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1235
      nRows : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1236
      nDoodads : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1237
      nOverlays : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1238
      pad0 : aliased anon4343_anon1795_array;  -- /usr/include/xcb/xkb.h:1239
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_section_t);  -- /usr/include/xcb/xkb.h:1228

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
  -- * @brief xcb_xkb_section_iterator_t
  -- * 

  --*<   
   type xcb_xkb_section_iterator_t is record
      data : access xcb_xkb_section_t;  -- /usr/include/xcb/xkb.h:1246
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:1247
      index : aliased int;  -- /usr/include/xcb/xkb.h:1248
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_section_iterator_t);  -- /usr/include/xcb/xkb.h:1245

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_listing_t
  -- * 

  --*<   
   type xcb_xkb_listing_t is record
      flags : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:1255
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:1256
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_listing_t);  -- /usr/include/xcb/xkb.h:1254

  --*<   
  --*
  -- * @brief xcb_xkb_listing_iterator_t
  -- * 

  --*<   
   type xcb_xkb_listing_iterator_t is record
      data : access xcb_xkb_listing_t;  -- /usr/include/xcb/xkb.h:1263
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:1264
      index : aliased int;  -- /usr/include/xcb/xkb.h:1265
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_listing_iterator_t);  -- /usr/include/xcb/xkb.h:1262

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_device_led_info_t
  -- * 

  --*<   
   type xcb_xkb_device_led_info_t is record
      ledClass : aliased xcb_xkb_led_class_spec_t;  -- /usr/include/xcb/xkb.h:1272
      ledID : aliased xcb_xkb_id_spec_t;  -- /usr/include/xcb/xkb.h:1273
      namesPresent : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:1274
      mapsPresent : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:1275
      physIndicators : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:1276
      state : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:1277
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_device_led_info_t);  -- /usr/include/xcb/xkb.h:1271

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_device_led_info_iterator_t
  -- * 

  --*<   
   type xcb_xkb_device_led_info_iterator_t is record
      data : access xcb_xkb_device_led_info_t;  -- /usr/include/xcb/xkb.h:1284
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:1285
      index : aliased int;  -- /usr/include/xcb/xkb.h:1286
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_device_led_info_iterator_t);  -- /usr/include/xcb/xkb.h:1283

  --*<   
  --*<   
   subtype xcb_xkb_error_t is unsigned;
   XCB_XKB_ERROR_BAD_DEVICE : constant xcb_xkb_error_t := 255;
   XCB_XKB_ERROR_BAD_CLASS : constant xcb_xkb_error_t := 254;
   XCB_XKB_ERROR_BAD_ID : constant xcb_xkb_error_t := 253;  -- /usr/include/xcb/xkb.h:1289

  --* Opcode for xcb_xkb_keyboard.  
  --*
  -- * @brief xcb_xkb_keyboard_error_t
  -- * 

  --*<   
   type anon4365_anon4367_array is array (0 .. 20) of aliased stdint_h.uint8_t;
   type xcb_xkb_keyboard_error_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1302
      error_code : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1303
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:1304
      value : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:1305
      minorOpcode : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:1306
      majorOpcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1307
      pad0 : aliased anon4365_anon4367_array;  -- /usr/include/xcb/xkb.h:1308
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_keyboard_error_t);  -- /usr/include/xcb/xkb.h:1301

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
   subtype xcb_xkb_sa_t is unsigned;
   XCB_XKB_SA_CLEAR_LOCKS : constant xcb_xkb_sa_t := 1;
   XCB_XKB_SA_LATCH_TO_LOCK : constant xcb_xkb_sa_t := 2;
   XCB_XKB_SA_USE_MOD_MAP_MODS : constant xcb_xkb_sa_t := 4;
   XCB_XKB_SA_GROUP_ABSOLUTE : constant xcb_xkb_sa_t := 4;  -- /usr/include/xcb/xkb.h:1311

   type xcb_xkb_sa_type_t is 
     (XCB_XKB_SA_TYPE_NO_ACTION,
      XCB_XKB_SA_TYPE_SET_MODS,
      XCB_XKB_SA_TYPE_LATCH_MODS,
      XCB_XKB_SA_TYPE_LOCK_MODS,
      XCB_XKB_SA_TYPE_SET_GROUP,
      XCB_XKB_SA_TYPE_LATCH_GROUP,
      XCB_XKB_SA_TYPE_LOCK_GROUP,
      XCB_XKB_SA_TYPE_MOVE_PTR,
      XCB_XKB_SA_TYPE_PTR_BTN,
      XCB_XKB_SA_TYPE_LOCK_PTR_BTN,
      XCB_XKB_SA_TYPE_SET_PTR_DFLT,
      XCB_XKB_SA_TYPE_ISO_LOCK,
      XCB_XKB_SA_TYPE_TERMINATE,
      XCB_XKB_SA_TYPE_SWITCH_SCREEN,
      XCB_XKB_SA_TYPE_SET_CONTROLS,
      XCB_XKB_SA_TYPE_LOCK_CONTROLS,
      XCB_XKB_SA_TYPE_ACTION_MESSAGE,
      XCB_XKB_SA_TYPE_REDIRECT_KEY,
      XCB_XKB_SA_TYPE_DEVICE_BTN,
      XCB_XKB_SA_TYPE_LOCK_DEVICE_BTN,
      XCB_XKB_SA_TYPE_DEVICE_VALUATOR);
   pragma Convention (C, xcb_xkb_sa_type_t);  -- /usr/include/xcb/xkb.h:1318

  --*
  -- * @brief xcb_xkb_sa_no_action_t
  -- * 

  --*<   
   type anon4374_anon4376_array is array (0 .. 6) of aliased stdint_h.uint8_t;
   type xcb_xkb_sa_no_action_t is record
      c_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1346
      pad0 : aliased anon4374_anon4376_array;  -- /usr/include/xcb/xkb.h:1347
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_sa_no_action_t);  -- /usr/include/xcb/xkb.h:1345

  --*<   
  --*
  -- * @brief xcb_xkb_sa_no_action_iterator_t
  -- * 

  --*<   
   type xcb_xkb_sa_no_action_iterator_t is record
      data : access xcb_xkb_sa_no_action_t;  -- /usr/include/xcb/xkb.h:1354
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:1355
      index : aliased int;  -- /usr/include/xcb/xkb.h:1356
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_sa_no_action_iterator_t);  -- /usr/include/xcb/xkb.h:1353

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_sa_set_mods_t
  -- * 

  --*<   
   type anon4383_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_xkb_sa_set_mods_t is record
      c_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1363
      flags : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1364
      mask : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1365
      realMods : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1366
      vmodsHigh : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1367
      vmodsLow : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1368
      pad0 : aliased anon4383_anon1795_array;  -- /usr/include/xcb/xkb.h:1369
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_sa_set_mods_t);  -- /usr/include/xcb/xkb.h:1362

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_sa_set_mods_iterator_t
  -- * 

  --*<   
   type xcb_xkb_sa_set_mods_iterator_t is record
      data : access xcb_xkb_sa_set_mods_t;  -- /usr/include/xcb/xkb.h:1376
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:1377
      index : aliased int;  -- /usr/include/xcb/xkb.h:1378
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_sa_set_mods_iterator_t);  -- /usr/include/xcb/xkb.h:1375

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_sa_latch_mods_t
  -- * 

  --*<   
   type anon4391_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_xkb_sa_latch_mods_t is record
      c_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1385
      flags : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1386
      mask : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1387
      realMods : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1388
      vmodsHigh : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1389
      vmodsLow : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1390
      pad0 : aliased anon4391_anon1795_array;  -- /usr/include/xcb/xkb.h:1391
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_sa_latch_mods_t);  -- /usr/include/xcb/xkb.h:1384

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_sa_latch_mods_iterator_t
  -- * 

  --*<   
   type xcb_xkb_sa_latch_mods_iterator_t is record
      data : access xcb_xkb_sa_latch_mods_t;  -- /usr/include/xcb/xkb.h:1398
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:1399
      index : aliased int;  -- /usr/include/xcb/xkb.h:1400
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_sa_latch_mods_iterator_t);  -- /usr/include/xcb/xkb.h:1397

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_sa_lock_mods_t
  -- * 

  --*<   
   type anon4399_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_xkb_sa_lock_mods_t is record
      c_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1407
      flags : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1408
      mask : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1409
      realMods : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1410
      vmodsHigh : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1411
      vmodsLow : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1412
      pad0 : aliased anon4399_anon1795_array;  -- /usr/include/xcb/xkb.h:1413
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_sa_lock_mods_t);  -- /usr/include/xcb/xkb.h:1406

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_sa_lock_mods_iterator_t
  -- * 

  --*<   
   type xcb_xkb_sa_lock_mods_iterator_t is record
      data : access xcb_xkb_sa_lock_mods_t;  -- /usr/include/xcb/xkb.h:1420
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:1421
      index : aliased int;  -- /usr/include/xcb/xkb.h:1422
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_sa_lock_mods_iterator_t);  -- /usr/include/xcb/xkb.h:1419

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_sa_set_group_t
  -- * 

  --*<   
   type anon4407_anon1756_array is array (0 .. 4) of aliased stdint_h.uint8_t;
   type xcb_xkb_sa_set_group_t is record
      c_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1429
      flags : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1430
      group : aliased sys_types_h.int8_t;  -- /usr/include/xcb/xkb.h:1431
      pad0 : aliased anon4407_anon1756_array;  -- /usr/include/xcb/xkb.h:1432
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_sa_set_group_t);  -- /usr/include/xcb/xkb.h:1428

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_sa_set_group_iterator_t
  -- * 

  --*<   
   type xcb_xkb_sa_set_group_iterator_t is record
      data : access xcb_xkb_sa_set_group_t;  -- /usr/include/xcb/xkb.h:1439
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:1440
      index : aliased int;  -- /usr/include/xcb/xkb.h:1441
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_sa_set_group_iterator_t);  -- /usr/include/xcb/xkb.h:1438

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_sa_latch_group_t
  -- * 

  --*<   
   type anon4415_anon1756_array is array (0 .. 4) of aliased stdint_h.uint8_t;
   type xcb_xkb_sa_latch_group_t is record
      c_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1448
      flags : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1449
      group : aliased sys_types_h.int8_t;  -- /usr/include/xcb/xkb.h:1450
      pad0 : aliased anon4415_anon1756_array;  -- /usr/include/xcb/xkb.h:1451
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_sa_latch_group_t);  -- /usr/include/xcb/xkb.h:1447

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_sa_latch_group_iterator_t
  -- * 

  --*<   
   type xcb_xkb_sa_latch_group_iterator_t is record
      data : access xcb_xkb_sa_latch_group_t;  -- /usr/include/xcb/xkb.h:1458
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:1459
      index : aliased int;  -- /usr/include/xcb/xkb.h:1460
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_sa_latch_group_iterator_t);  -- /usr/include/xcb/xkb.h:1457

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_sa_lock_group_t
  -- * 

  --*<   
   type anon4423_anon1756_array is array (0 .. 4) of aliased stdint_h.uint8_t;
   type xcb_xkb_sa_lock_group_t is record
      c_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1467
      flags : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1468
      group : aliased sys_types_h.int8_t;  -- /usr/include/xcb/xkb.h:1469
      pad0 : aliased anon4423_anon1756_array;  -- /usr/include/xcb/xkb.h:1470
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_sa_lock_group_t);  -- /usr/include/xcb/xkb.h:1466

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_sa_lock_group_iterator_t
  -- * 

  --*<   
   type xcb_xkb_sa_lock_group_iterator_t is record
      data : access xcb_xkb_sa_lock_group_t;  -- /usr/include/xcb/xkb.h:1477
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:1478
      index : aliased int;  -- /usr/include/xcb/xkb.h:1479
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_sa_lock_group_iterator_t);  -- /usr/include/xcb/xkb.h:1476

  --*<   
  --*<   
   subtype xcb_xkb_sa_move_ptr_flag_t is unsigned;
   XCB_XKB_SA_MOVE_PTR_FLAG_NO_ACCELERATION : constant xcb_xkb_sa_move_ptr_flag_t := 1;
   XCB_XKB_SA_MOVE_PTR_FLAG_MOVE_ABSOLUTE_X : constant xcb_xkb_sa_move_ptr_flag_t := 2;
   XCB_XKB_SA_MOVE_PTR_FLAG_MOVE_ABSOLUTE_Y : constant xcb_xkb_sa_move_ptr_flag_t := 4;  -- /usr/include/xcb/xkb.h:1482

  --*
  -- * @brief xcb_xkb_sa_move_ptr_t
  -- * 

  --*<   
   type anon4433_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_xkb_sa_move_ptr_t is record
      c_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1492
      flags : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1493
      xHigh : aliased sys_types_h.int8_t;  -- /usr/include/xcb/xkb.h:1494
      xLow : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1495
      yHigh : aliased sys_types_h.int8_t;  -- /usr/include/xcb/xkb.h:1496
      yLow : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1497
      pad0 : aliased anon4433_anon1795_array;  -- /usr/include/xcb/xkb.h:1498
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_sa_move_ptr_t);  -- /usr/include/xcb/xkb.h:1491

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_sa_move_ptr_iterator_t
  -- * 

  --*<   
   type xcb_xkb_sa_move_ptr_iterator_t is record
      data : access xcb_xkb_sa_move_ptr_t;  -- /usr/include/xcb/xkb.h:1505
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:1506
      index : aliased int;  -- /usr/include/xcb/xkb.h:1507
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_sa_move_ptr_iterator_t);  -- /usr/include/xcb/xkb.h:1504

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_sa_ptr_btn_t
  -- * 

  --*<   
   type anon4441_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type xcb_xkb_sa_ptr_btn_t is record
      c_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1514
      flags : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1515
      count : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1516
      button : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1517
      pad0 : aliased anon4441_anon1768_array;  -- /usr/include/xcb/xkb.h:1518
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_sa_ptr_btn_t);  -- /usr/include/xcb/xkb.h:1513

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_sa_ptr_btn_iterator_t
  -- * 

  --*<   
   type xcb_xkb_sa_ptr_btn_iterator_t is record
      data : access xcb_xkb_sa_ptr_btn_t;  -- /usr/include/xcb/xkb.h:1525
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:1526
      index : aliased int;  -- /usr/include/xcb/xkb.h:1527
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_sa_ptr_btn_iterator_t);  -- /usr/include/xcb/xkb.h:1524

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_sa_lock_ptr_btn_t
  -- * 

  --*<   
   type anon4449_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type xcb_xkb_sa_lock_ptr_btn_t is record
      c_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1534
      flags : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1535
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1536
      button : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1537
      pad1 : aliased anon4449_anon1768_array;  -- /usr/include/xcb/xkb.h:1538
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_sa_lock_ptr_btn_t);  -- /usr/include/xcb/xkb.h:1533

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_sa_lock_ptr_btn_iterator_t
  -- * 

  --*<   
   type xcb_xkb_sa_lock_ptr_btn_iterator_t is record
      data : access xcb_xkb_sa_lock_ptr_btn_t;  -- /usr/include/xcb/xkb.h:1545
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:1546
      index : aliased int;  -- /usr/include/xcb/xkb.h:1547
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_sa_lock_ptr_btn_iterator_t);  -- /usr/include/xcb/xkb.h:1544

  --*<   
  --*<   
   subtype xcb_xkb_sa_set_ptr_dflt_flag_t is unsigned;
   XCB_XKB_SA_SET_PTR_DFLT_FLAG_DFLT_BTN_ABSOLUTE : constant xcb_xkb_sa_set_ptr_dflt_flag_t := 2;
   XCB_XKB_SA_SET_PTR_DFLT_FLAG_AFFECT_DFLT_BUTTON : constant xcb_xkb_sa_set_ptr_dflt_flag_t := 1;  -- /usr/include/xcb/xkb.h:1550

  --*
  -- * @brief xcb_xkb_sa_set_ptr_dflt_t
  -- * 

  --*<   
   type anon4459_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type xcb_xkb_sa_set_ptr_dflt_t is record
      c_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1559
      flags : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1560
      affect : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1561
      value : aliased sys_types_h.int8_t;  -- /usr/include/xcb/xkb.h:1562
      pad0 : aliased anon4459_anon1768_array;  -- /usr/include/xcb/xkb.h:1563
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_sa_set_ptr_dflt_t);  -- /usr/include/xcb/xkb.h:1558

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_sa_set_ptr_dflt_iterator_t
  -- * 

  --*<   
   type xcb_xkb_sa_set_ptr_dflt_iterator_t is record
      data : access xcb_xkb_sa_set_ptr_dflt_t;  -- /usr/include/xcb/xkb.h:1570
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:1571
      index : aliased int;  -- /usr/include/xcb/xkb.h:1572
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_sa_set_ptr_dflt_iterator_t);  -- /usr/include/xcb/xkb.h:1569

  --*<   
  --*<   
   subtype xcb_xkb_sa_iso_lock_flag_t is unsigned;
   XCB_XKB_SA_ISO_LOCK_FLAG_NO_LOCK : constant xcb_xkb_sa_iso_lock_flag_t := 1;
   XCB_XKB_SA_ISO_LOCK_FLAG_NO_UNLOCK : constant xcb_xkb_sa_iso_lock_flag_t := 2;
   XCB_XKB_SA_ISO_LOCK_FLAG_USE_MOD_MAP_MODS : constant xcb_xkb_sa_iso_lock_flag_t := 4;
   XCB_XKB_SA_ISO_LOCK_FLAG_GROUP_ABSOLUTE : constant xcb_xkb_sa_iso_lock_flag_t := 4;
   XCB_XKB_SA_ISO_LOCK_FLAG_ISO_DFLT_IS_GROUP : constant xcb_xkb_sa_iso_lock_flag_t := 8;  -- /usr/include/xcb/xkb.h:1575

   subtype xcb_xkb_sa_iso_lock_no_affect_t is unsigned;
   XCB_XKB_SA_ISO_LOCK_NO_AFFECT_CTRLS : constant xcb_xkb_sa_iso_lock_no_affect_t := 8;
   XCB_XKB_SA_ISO_LOCK_NO_AFFECT_PTR : constant xcb_xkb_sa_iso_lock_no_affect_t := 16;
   XCB_XKB_SA_ISO_LOCK_NO_AFFECT_GROUP : constant xcb_xkb_sa_iso_lock_no_affect_t := 32;
   XCB_XKB_SA_ISO_LOCK_NO_AFFECT_MODS : constant xcb_xkb_sa_iso_lock_no_affect_t := 64;  -- /usr/include/xcb/xkb.h:1583

  --*
  -- * @brief xcb_xkb_sa_iso_lock_t
  -- * 

  --*<   
   type xcb_xkb_sa_iso_lock_t is record
      c_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1594
      flags : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1595
      mask : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1596
      realMods : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1597
      group : aliased sys_types_h.int8_t;  -- /usr/include/xcb/xkb.h:1598
      affect : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1599
      vmodsHigh : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1600
      vmodsLow : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1601
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_sa_iso_lock_t);  -- /usr/include/xcb/xkb.h:1593

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_sa_iso_lock_iterator_t
  -- * 

  --*<   
   type xcb_xkb_sa_iso_lock_iterator_t is record
      data : access xcb_xkb_sa_iso_lock_t;  -- /usr/include/xcb/xkb.h:1608
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:1609
      index : aliased int;  -- /usr/include/xcb/xkb.h:1610
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_sa_iso_lock_iterator_t);  -- /usr/include/xcb/xkb.h:1607

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_sa_terminate_t
  -- * 

  --*<   
   type anon4477_anon4376_array is array (0 .. 6) of aliased stdint_h.uint8_t;
   type xcb_xkb_sa_terminate_t is record
      c_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1617
      pad0 : aliased anon4477_anon4376_array;  -- /usr/include/xcb/xkb.h:1618
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_sa_terminate_t);  -- /usr/include/xcb/xkb.h:1616

  --*<   
  --*
  -- * @brief xcb_xkb_sa_terminate_iterator_t
  -- * 

  --*<   
   type xcb_xkb_sa_terminate_iterator_t is record
      data : access xcb_xkb_sa_terminate_t;  -- /usr/include/xcb/xkb.h:1625
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:1626
      index : aliased int;  -- /usr/include/xcb/xkb.h:1627
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_sa_terminate_iterator_t);  -- /usr/include/xcb/xkb.h:1624

  --*<   
  --*<   
   subtype xcb_xkb_switch_screen_flag_t is unsigned;
   XCB_XKB_SWITCH_SCREEN_FLAG_APPLICATION : constant xcb_xkb_switch_screen_flag_t := 1;
   XCB_XKB_SWITCH_SCREEN_FLAG_ABSOLUTE : constant xcb_xkb_switch_screen_flag_t := 4;  -- /usr/include/xcb/xkb.h:1630

  --*
  -- * @brief xcb_xkb_sa_switch_screen_t
  -- * 

  --*<   
   type anon4487_anon1756_array is array (0 .. 4) of aliased stdint_h.uint8_t;
   type xcb_xkb_sa_switch_screen_t is record
      c_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1639
      flags : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1640
      newScreen : aliased sys_types_h.int8_t;  -- /usr/include/xcb/xkb.h:1641
      pad0 : aliased anon4487_anon1756_array;  -- /usr/include/xcb/xkb.h:1642
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_sa_switch_screen_t);  -- /usr/include/xcb/xkb.h:1638

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_sa_switch_screen_iterator_t
  -- * 

  --*<   
   type xcb_xkb_sa_switch_screen_iterator_t is record
      data : access xcb_xkb_sa_switch_screen_t;  -- /usr/include/xcb/xkb.h:1649
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:1650
      index : aliased int;  -- /usr/include/xcb/xkb.h:1651
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_sa_switch_screen_iterator_t);  -- /usr/include/xcb/xkb.h:1648

  --*<   
  --*<   
   subtype xcb_xkb_bool_ctrls_high_t is unsigned;
   XCB_XKB_BOOL_CTRLS_HIGH_ACCESS_X_FEEDBACK : constant xcb_xkb_bool_ctrls_high_t := 1;
   XCB_XKB_BOOL_CTRLS_HIGH_AUDIBLE_BELL : constant xcb_xkb_bool_ctrls_high_t := 2;
   XCB_XKB_BOOL_CTRLS_HIGH_OVERLAY_1 : constant xcb_xkb_bool_ctrls_high_t := 4;
   XCB_XKB_BOOL_CTRLS_HIGH_OVERLAY_2 : constant xcb_xkb_bool_ctrls_high_t := 8;
   XCB_XKB_BOOL_CTRLS_HIGH_IGNORE_GROUP_LOCK : constant xcb_xkb_bool_ctrls_high_t := 16;  -- /usr/include/xcb/xkb.h:1654

   subtype xcb_xkb_bool_ctrls_low_t is unsigned;
   XCB_XKB_BOOL_CTRLS_LOW_REPEAT_KEYS : constant xcb_xkb_bool_ctrls_low_t := 1;
   XCB_XKB_BOOL_CTRLS_LOW_SLOW_KEYS : constant xcb_xkb_bool_ctrls_low_t := 2;
   XCB_XKB_BOOL_CTRLS_LOW_BOUNCE_KEYS : constant xcb_xkb_bool_ctrls_low_t := 4;
   XCB_XKB_BOOL_CTRLS_LOW_STICKY_KEYS : constant xcb_xkb_bool_ctrls_low_t := 8;
   XCB_XKB_BOOL_CTRLS_LOW_MOUSE_KEYS : constant xcb_xkb_bool_ctrls_low_t := 16;
   XCB_XKB_BOOL_CTRLS_LOW_MOUSE_KEYS_ACCEL : constant xcb_xkb_bool_ctrls_low_t := 32;
   XCB_XKB_BOOL_CTRLS_LOW_ACCESS_X_KEYS : constant xcb_xkb_bool_ctrls_low_t := 64;
   XCB_XKB_BOOL_CTRLS_LOW_ACCESS_X_TIMEOUT : constant xcb_xkb_bool_ctrls_low_t := 128;  -- /usr/include/xcb/xkb.h:1662

  --*
  -- * @brief xcb_xkb_sa_set_controls_t
  -- * 

  --*<   
   type anon4499_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type anon4499_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_xkb_sa_set_controls_t is record
      c_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1677
      pad0 : aliased anon4499_anon1853_array;  -- /usr/include/xcb/xkb.h:1678
      boolCtrlsHigh : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1679
      boolCtrlsLow : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1680
      pad1 : aliased anon4499_anon1795_array;  -- /usr/include/xcb/xkb.h:1681
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_sa_set_controls_t);  -- /usr/include/xcb/xkb.h:1676

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_sa_set_controls_iterator_t
  -- * 

  --*<   
   type xcb_xkb_sa_set_controls_iterator_t is record
      data : access xcb_xkb_sa_set_controls_t;  -- /usr/include/xcb/xkb.h:1688
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:1689
      index : aliased int;  -- /usr/include/xcb/xkb.h:1690
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_sa_set_controls_iterator_t);  -- /usr/include/xcb/xkb.h:1687

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_sa_lock_controls_t
  -- * 

  --*<   
   type anon4509_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type anon4509_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_xkb_sa_lock_controls_t is record
      c_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1697
      pad0 : aliased anon4509_anon1853_array;  -- /usr/include/xcb/xkb.h:1698
      boolCtrlsHigh : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1699
      boolCtrlsLow : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1700
      pad1 : aliased anon4509_anon1795_array;  -- /usr/include/xcb/xkb.h:1701
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_sa_lock_controls_t);  -- /usr/include/xcb/xkb.h:1696

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_sa_lock_controls_iterator_t
  -- * 

  --*<   
   type xcb_xkb_sa_lock_controls_iterator_t is record
      data : access xcb_xkb_sa_lock_controls_t;  -- /usr/include/xcb/xkb.h:1708
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:1709
      index : aliased int;  -- /usr/include/xcb/xkb.h:1710
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_sa_lock_controls_iterator_t);  -- /usr/include/xcb/xkb.h:1707

  --*<   
  --*<   
   subtype xcb_xkb_action_message_flag_t is unsigned;
   XCB_XKB_ACTION_MESSAGE_FLAG_ON_PRESS : constant xcb_xkb_action_message_flag_t := 1;
   XCB_XKB_ACTION_MESSAGE_FLAG_ON_RELEASE : constant xcb_xkb_action_message_flag_t := 2;
   XCB_XKB_ACTION_MESSAGE_FLAG_GEN_KEY_EVENT : constant xcb_xkb_action_message_flag_t := 4;  -- /usr/include/xcb/xkb.h:1713

  --*
  -- * @brief xcb_xkb_sa_action_message_t
  -- * 

  --*<   
   type anon4521_anon4292_array is array (0 .. 5) of aliased stdint_h.uint8_t;
   type xcb_xkb_sa_action_message_t is record
      c_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1723
      flags : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1724
      message : aliased anon4521_anon4292_array;  -- /usr/include/xcb/xkb.h:1725
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_sa_action_message_t);  -- /usr/include/xcb/xkb.h:1722

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_sa_action_message_iterator_t
  -- * 

  --*<   
   type xcb_xkb_sa_action_message_iterator_t is record
      data : access xcb_xkb_sa_action_message_t;  -- /usr/include/xcb/xkb.h:1732
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:1733
      index : aliased int;  -- /usr/include/xcb/xkb.h:1734
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_sa_action_message_iterator_t);  -- /usr/include/xcb/xkb.h:1731

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_sa_redirect_key_t
  -- * 

  --*<   
   type xcb_xkb_sa_redirect_key_t is record
      c_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1741
      newkey : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:1742
      mask : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1743
      realModifiers : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1744
      vmodsMaskHigh : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1745
      vmodsMaskLow : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1746
      vmodsHigh : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1747
      vmodsLow : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1748
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_sa_redirect_key_t);  -- /usr/include/xcb/xkb.h:1740

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_sa_redirect_key_iterator_t
  -- * 

  --*<   
   type xcb_xkb_sa_redirect_key_iterator_t is record
      data : access xcb_xkb_sa_redirect_key_t;  -- /usr/include/xcb/xkb.h:1755
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:1756
      index : aliased int;  -- /usr/include/xcb/xkb.h:1757
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_sa_redirect_key_iterator_t);  -- /usr/include/xcb/xkb.h:1754

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_sa_device_btn_t
  -- * 

  --*<   
   type anon4535_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_xkb_sa_device_btn_t is record
      c_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1764
      flags : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1765
      count : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1766
      button : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1767
      device : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1768
      pad0 : aliased anon4535_anon1853_array;  -- /usr/include/xcb/xkb.h:1769
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_sa_device_btn_t);  -- /usr/include/xcb/xkb.h:1763

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_sa_device_btn_iterator_t
  -- * 

  --*<   
   type xcb_xkb_sa_device_btn_iterator_t is record
      data : access xcb_xkb_sa_device_btn_t;  -- /usr/include/xcb/xkb.h:1776
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:1777
      index : aliased int;  -- /usr/include/xcb/xkb.h:1778
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_sa_device_btn_iterator_t);  -- /usr/include/xcb/xkb.h:1775

  --*<   
  --*<   
   subtype xcb_xkb_lock_device_flags_t is unsigned;
   XCB_XKB_LOCK_DEVICE_FLAGS_NO_LOCK : constant xcb_xkb_lock_device_flags_t := 1;
   XCB_XKB_LOCK_DEVICE_FLAGS_NO_UNLOCK : constant xcb_xkb_lock_device_flags_t := 2;  -- /usr/include/xcb/xkb.h:1781

  --*
  -- * @brief xcb_xkb_sa_lock_device_btn_t
  -- * 

  --*<   
   type xcb_xkb_sa_lock_device_btn_t is record
      c_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1790
      flags : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1791
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1792
      button : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1793
      device : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1794
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_sa_lock_device_btn_t);  -- /usr/include/xcb/xkb.h:1789

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_sa_lock_device_btn_iterator_t
  -- * 

  --*<   
   type xcb_xkb_sa_lock_device_btn_iterator_t is record
      data : access xcb_xkb_sa_lock_device_btn_t;  -- /usr/include/xcb/xkb.h:1801
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:1802
      index : aliased int;  -- /usr/include/xcb/xkb.h:1803
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_sa_lock_device_btn_iterator_t);  -- /usr/include/xcb/xkb.h:1800

  --*<   
  --*<   
   type xcb_xkb_sa_val_what_t is 
     (XCB_XKB_SA_VAL_WHAT_IGNORE_VAL,
      XCB_XKB_SA_VAL_WHAT_SET_VAL_MIN,
      XCB_XKB_SA_VAL_WHAT_SET_VAL_CENTER,
      XCB_XKB_SA_VAL_WHAT_SET_VAL_MAX,
      XCB_XKB_SA_VAL_WHAT_SET_VAL_RELATIVE,
      XCB_XKB_SA_VAL_WHAT_SET_VAL_ABSOLUTE);
   pragma Convention (C, xcb_xkb_sa_val_what_t);  -- /usr/include/xcb/xkb.h:1806

  --*
  -- * @brief xcb_xkb_sa_device_valuator_t
  -- * 

  --*<   
   type xcb_xkb_sa_device_valuator_t is record
      c_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1819
      device : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1820
      val1what : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1821
      val1index : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1822
      val1value : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1823
      val2what : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1824
      val2index : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1825
      val2value : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1826
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_sa_device_valuator_t);  -- /usr/include/xcb/xkb.h:1818

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_sa_device_valuator_iterator_t
  -- * 

  --*<   
   type xcb_xkb_sa_device_valuator_iterator_t is record
      data : access xcb_xkb_sa_device_valuator_t;  -- /usr/include/xcb/xkb.h:1833
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:1834
      index : aliased int;  -- /usr/include/xcb/xkb.h:1835
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_sa_device_valuator_iterator_t);  -- /usr/include/xcb/xkb.h:1832

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_action_t
  -- * 

  --*<   
   type xcb_xkb_action_t (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            noaction : aliased xcb_xkb_sa_no_action_t;  -- /usr/include/xcb/xkb.h:1842
         when 1 =>
            setmods : aliased xcb_xkb_sa_set_mods_t;  -- /usr/include/xcb/xkb.h:1843
         when 2 =>
            latchmods : aliased xcb_xkb_sa_latch_mods_t;  -- /usr/include/xcb/xkb.h:1844
         when 3 =>
            lockmods : aliased xcb_xkb_sa_lock_mods_t;  -- /usr/include/xcb/xkb.h:1845
         when 4 =>
            setgroup : aliased xcb_xkb_sa_set_group_t;  -- /usr/include/xcb/xkb.h:1846
         when 5 =>
            latchgroup : aliased xcb_xkb_sa_latch_group_t;  -- /usr/include/xcb/xkb.h:1847
         when 6 =>
            lockgroup : aliased xcb_xkb_sa_lock_group_t;  -- /usr/include/xcb/xkb.h:1848
         when 7 =>
            moveptr : aliased xcb_xkb_sa_move_ptr_t;  -- /usr/include/xcb/xkb.h:1849
         when 8 =>
            ptrbtn : aliased xcb_xkb_sa_ptr_btn_t;  -- /usr/include/xcb/xkb.h:1850
         when 9 =>
            lockptrbtn : aliased xcb_xkb_sa_lock_ptr_btn_t;  -- /usr/include/xcb/xkb.h:1851
         when 10 =>
            setptrdflt : aliased xcb_xkb_sa_set_ptr_dflt_t;  -- /usr/include/xcb/xkb.h:1852
         when 11 =>
            isolock : aliased xcb_xkb_sa_iso_lock_t;  -- /usr/include/xcb/xkb.h:1853
         when 12 =>
            c_terminate : aliased xcb_xkb_sa_terminate_t;  -- /usr/include/xcb/xkb.h:1854
         when 13 =>
            switchscreen : aliased xcb_xkb_sa_switch_screen_t;  -- /usr/include/xcb/xkb.h:1855
         when 14 =>
            setcontrols : aliased xcb_xkb_sa_set_controls_t;  -- /usr/include/xcb/xkb.h:1856
         when 15 =>
            lockcontrols : aliased xcb_xkb_sa_lock_controls_t;  -- /usr/include/xcb/xkb.h:1857
         when 16 =>
            message : aliased xcb_xkb_sa_action_message_t;  -- /usr/include/xcb/xkb.h:1858
         when 17 =>
            redirect : aliased xcb_xkb_sa_redirect_key_t;  -- /usr/include/xcb/xkb.h:1859
         when 18 =>
            devbtn : aliased xcb_xkb_sa_device_btn_t;  -- /usr/include/xcb/xkb.h:1860
         when 19 =>
            lockdevbtn : aliased xcb_xkb_sa_lock_device_btn_t;  -- /usr/include/xcb/xkb.h:1861
         when 20 =>
            devval : aliased xcb_xkb_sa_device_valuator_t;  -- /usr/include/xcb/xkb.h:1862
         when others =>
            c_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1863
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_action_t);
   pragma Unchecked_Union (xcb_xkb_action_t);  -- /usr/include/xcb/xkb.h:1841

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
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_action_iterator_t
  -- * 

  --*<   
   type xcb_xkb_action_iterator_t is record
      data : access xcb_xkb_action_t;  -- /usr/include/xcb/xkb.h:1870
      c_rem : aliased int;  -- /usr/include/xcb/xkb.h:1871
      index : aliased int;  -- /usr/include/xcb/xkb.h:1872
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_action_iterator_t);  -- /usr/include/xcb/xkb.h:1869

  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_use_extension_cookie_t
  -- * 

  --*<   
   type xcb_xkb_use_extension_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xkb.h:1879
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_use_extension_cookie_t);  -- /usr/include/xcb/xkb.h:1878

  --* Opcode for xcb_xkb_use_extension.  
  --*
  -- * @brief xcb_xkb_use_extension_request_t
  -- * 

  --*<   
   type xcb_xkb_use_extension_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1889
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1890
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:1891
      wantedMajor : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:1892
      wantedMinor : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:1893
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_use_extension_request_t);  -- /usr/include/xcb/xkb.h:1888

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_use_extension_reply_t
  -- * 

  --*<   
   type anon4569_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_xkb_use_extension_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1900
      supported : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1901
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:1902
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:1903
      serverMajor : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:1904
      serverMinor : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:1905
      pad0 : aliased anon4569_anon1939_array;  -- /usr/include/xcb/xkb.h:1906
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_use_extension_reply_t);  -- /usr/include/xcb/xkb.h:1899

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_select_events_details_t
  -- * 

  --*<   
   type xcb_xkb_select_events_details_t is record
      affectNewKeyboard : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:1913
      newKeyboardDetails : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:1914
      affectState : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:1915
      stateDetails : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:1916
      affectCtrls : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:1917
      ctrlDetails : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:1918
      affectIndicatorState : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:1919
      indicatorStateDetails : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:1920
      affectIndicatorMap : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:1921
      indicatorMapDetails : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:1922
      affectNames : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:1923
      namesDetails : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:1924
      affectCompat : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1925
      compatDetails : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1926
      affectBell : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1927
      bellDetails : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1928
      affectMsgDetails : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1929
      msgDetails : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1930
      affectAccessX : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:1931
      accessXDetails : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:1932
      affectExtDev : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:1933
      extdevDetails : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:1934
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_select_events_details_t);  -- /usr/include/xcb/xkb.h:1912

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
  --*<   
  --*<   
  --* Opcode for xcb_xkb_select_events.  
  --*
  -- * @brief xcb_xkb_select_events_request_t
  -- * 

  --*<   
   type xcb_xkb_select_events_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1944
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1945
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:1946
      deviceSpec : aliased xcb_xkb_device_spec_t;  -- /usr/include/xcb/xkb.h:1947
      affectWhich : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:1948
      clear : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:1949
      selectAll : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:1950
      affectMap : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:1951
      map : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:1952
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_select_events_request_t);  -- /usr/include/xcb/xkb.h:1943

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xkb_bell.  
  --*
  -- * @brief xcb_xkb_bell_request_t
  -- * 

  --*<   
   type anon4577_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_xkb_bell_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1962
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1963
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:1964
      deviceSpec : aliased xcb_xkb_device_spec_t;  -- /usr/include/xcb/xkb.h:1965
      bellClass : aliased xcb_xkb_bell_class_spec_t;  -- /usr/include/xcb/xkb.h:1966
      bellID : aliased xcb_xkb_id_spec_t;  -- /usr/include/xcb/xkb.h:1967
      percent : aliased sys_types_h.int8_t;  -- /usr/include/xcb/xkb.h:1968
      forceSound : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1969
      eventOnly : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1970
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1971
      pitch : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xkb.h:1972
      duration : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xkb.h:1973
      pad1 : aliased anon4577_anon1795_array;  -- /usr/include/xcb/xkb.h:1974
      name : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:1975
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xkb.h:1976
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_bell_request_t);  -- /usr/include/xcb/xkb.h:1961

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
  -- * @brief xcb_xkb_get_state_cookie_t
  -- * 

  --*<   
   type xcb_xkb_get_state_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xkb.h:1983
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_get_state_cookie_t);  -- /usr/include/xcb/xkb.h:1982

  --* Opcode for xcb_xkb_get_state.  
  --*
  -- * @brief xcb_xkb_get_state_request_t
  -- * 

  --*<   
   type anon4583_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_xkb_get_state_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1993
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:1994
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:1995
      deviceSpec : aliased xcb_xkb_device_spec_t;  -- /usr/include/xcb/xkb.h:1996
      pad0 : aliased anon4583_anon1795_array;  -- /usr/include/xcb/xkb.h:1997
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_get_state_request_t);  -- /usr/include/xcb/xkb.h:1992

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_get_state_reply_t
  -- * 

  --*<   
   type anon4587_anon4292_array is array (0 .. 5) of aliased stdint_h.uint8_t;
   type xcb_xkb_get_state_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2004
      deviceID : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2005
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2006
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:2007
      mods : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2008
      baseMods : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2009
      latchedMods : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2010
      lockedMods : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2011
      group : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2012
      lockedGroup : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2013
      baseGroup : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xkb.h:2014
      latchedGroup : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xkb.h:2015
      compatState : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2016
      grabMods : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2017
      compatGrabMods : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2018
      lookupMods : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2019
      compatLookupMods : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2020
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2021
      ptrBtnState : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2022
      pad1 : aliased anon4587_anon4292_array;  -- /usr/include/xcb/xkb.h:2023
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_get_state_reply_t);  -- /usr/include/xcb/xkb.h:2003

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
  --* Opcode for xcb_xkb_latch_lock_state.  
  --*
  -- * @brief xcb_xkb_latch_lock_state_request_t
  -- * 

  --*<   
   type xcb_xkb_latch_lock_state_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2033
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2034
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2035
      deviceSpec : aliased xcb_xkb_device_spec_t;  -- /usr/include/xcb/xkb.h:2036
      affectModLocks : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2037
      modLocks : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2038
      lockGroup : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2039
      groupLock : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2040
      affectModLatches : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2041
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2042
      latchGroup : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2043
      groupLatch : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2044
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_latch_lock_state_request_t);  -- /usr/include/xcb/xkb.h:2032

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
  -- * @brief xcb_xkb_get_controls_cookie_t
  -- * 

  --*<   
   type xcb_xkb_get_controls_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xkb.h:2051
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_get_controls_cookie_t);  -- /usr/include/xcb/xkb.h:2050

  --* Opcode for xcb_xkb_get_controls.  
  --*
  -- * @brief xcb_xkb_get_controls_request_t
  -- * 

  --*<   
   type anon4595_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_xkb_get_controls_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2061
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2062
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2063
      deviceSpec : aliased xcb_xkb_device_spec_t;  -- /usr/include/xcb/xkb.h:2064
      pad0 : aliased anon4595_anon1795_array;  -- /usr/include/xcb/xkb.h:2065
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_get_controls_request_t);  -- /usr/include/xcb/xkb.h:2060

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_get_controls_reply_t
  -- * 

  --*<   
   type anon4599_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type anon4599_anon2206_array is array (0 .. 31) of aliased stdint_h.uint8_t;
   type xcb_xkb_get_controls_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2072
      deviceID : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2073
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2074
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:2075
      mouseKeysDfltBtn : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2076
      numGroups : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2077
      groupsWrap : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2078
      internalModsMask : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2079
      ignoreLockModsMask : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2080
      internalModsRealMods : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2081
      ignoreLockModsRealMods : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2082
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2083
      internalModsVmods : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2084
      ignoreLockModsVmods : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2085
      repeatDelay : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2086
      repeatInterval : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2087
      slowKeysDelay : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2088
      debounceDelay : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2089
      mouseKeysDelay : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2090
      mouseKeysInterval : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2091
      mouseKeysTimeToMax : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2092
      mouseKeysMaxSpeed : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2093
      mouseKeysCurve : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xkb.h:2094
      accessXOption : xcb_xkb_ax_option_t;  -- /usr/include/xcb/xkb.h:2095
      accessXTimeout : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2096
      accessXTimeoutOptionsMask : xcb_xkb_ax_option_t;  -- /usr/include/xcb/xkb.h:2097
      accessXTimeoutOptionsValues : xcb_xkb_ax_option_t;  -- /usr/include/xcb/xkb.h:2098
      pad1 : aliased anon4599_anon1795_array;  -- /usr/include/xcb/xkb.h:2099
      accessXTimeoutMask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:2100
      accessXTimeoutValues : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:2101
      enabledControls : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:2102
      perKeyRepeat : aliased anon4599_anon2206_array;  -- /usr/include/xcb/xkb.h:2103
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_get_controls_reply_t);  -- /usr/include/xcb/xkb.h:2071

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
  --* Opcode for xcb_xkb_set_controls.  
  --*
  -- * @brief xcb_xkb_set_controls_request_t
  -- * 

  --*<   
   type anon4605_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type anon4605_anon2206_array is array (0 .. 31) of aliased stdint_h.uint8_t;
   type xcb_xkb_set_controls_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2113
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2114
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2115
      deviceSpec : aliased xcb_xkb_device_spec_t;  -- /usr/include/xcb/xkb.h:2116
      affectInternalRealMods : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2117
      internalRealMods : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2118
      affectIgnoreLockRealMods : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2119
      ignoreLockRealMods : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2120
      affectInternalVirtualMods : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2121
      internalVirtualMods : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2122
      affectIgnoreLockVirtualMods : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2123
      ignoreLockVirtualMods : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2124
      mouseKeysDfltBtn : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2125
      groupsWrap : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2126
      accessXOptions : xcb_xkb_ax_option_t;  -- /usr/include/xcb/xkb.h:2127
      pad0 : aliased anon4605_anon1795_array;  -- /usr/include/xcb/xkb.h:2128
      affectEnabledControls : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:2129
      enabledControls : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:2130
      changeControls : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:2131
      repeatDelay : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2132
      repeatInterval : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2133
      slowKeysDelay : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2134
      debounceDelay : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2135
      mouseKeysDelay : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2136
      mouseKeysInterval : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2137
      mouseKeysTimeToMax : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2138
      mouseKeysMaxSpeed : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2139
      mouseKeysCurve : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xkb.h:2140
      accessXTimeout : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2141
      accessXTimeoutMask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:2142
      accessXTimeoutValues : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:2143
      accessXTimeoutOptionsMask : xcb_xkb_ax_option_t;  -- /usr/include/xcb/xkb.h:2144
      accessXTimeoutOptionsValues : xcb_xkb_ax_option_t;  -- /usr/include/xcb/xkb.h:2145
      perKeyRepeat : aliased anon4605_anon2206_array;  -- /usr/include/xcb/xkb.h:2146
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_set_controls_request_t);  -- /usr/include/xcb/xkb.h:2112

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
  -- * @brief xcb_xkb_get_map_cookie_t
  -- * 

  --*<   
   type xcb_xkb_get_map_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xkb.h:2153
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_get_map_cookie_t);  -- /usr/include/xcb/xkb.h:2152

  --* Opcode for xcb_xkb_get_map.  
  --*
  -- * @brief xcb_xkb_get_map_request_t
  -- * 

  --*<   
   type anon4613_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_xkb_get_map_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2163
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2164
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2165
      deviceSpec : aliased xcb_xkb_device_spec_t;  -- /usr/include/xcb/xkb.h:2166
      full : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2167
      partial : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2168
      firstType : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2169
      nTypes : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2170
      firstKeySym : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2171
      nKeySyms : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2172
      firstKeyAction : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2173
      nKeyActions : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2174
      firstKeyBehavior : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2175
      nKeyBehaviors : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2176
      virtualMods : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2177
      firstKeyExplicit : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2178
      nKeyExplicit : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2179
      firstModMapKey : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2180
      nModMapKeys : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2181
      firstVModMapKey : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2182
      nVModMapKeys : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2183
      pad0 : aliased anon4613_anon1795_array;  -- /usr/include/xcb/xkb.h:2184
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_get_map_request_t);  -- /usr/include/xcb/xkb.h:2162

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
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_get_map_map_t
  -- * 

  --*<   
   type xcb_xkb_get_map_map_t is record
      types_rtrn : access xcb_xkb_key_type_t;  -- /usr/include/xcb/xkb.h:2191
      syms_rtrn : access xcb_xkb_key_sym_map_t;  -- /usr/include/xcb/xkb.h:2192
      acts_rtrn_count : access stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2193
      acts_rtrn_acts : access xcb_xkb_action_t;  -- /usr/include/xcb/xkb.h:2194
      behaviors_rtrn : access xcb_xkb_set_behavior_t;  -- /usr/include/xcb/xkb.h:2195
      vmods_rtrn : access stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2196
      explicit_rtrn : access xcb_xkb_set_explicit_t;  -- /usr/include/xcb/xkb.h:2197
      modmap_rtrn : access xcb_xkb_key_mod_map_t;  -- /usr/include/xcb/xkb.h:2198
      vmodmap_rtrn : access xcb_xkb_key_v_mod_map_t;  -- /usr/include/xcb/xkb.h:2199
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_get_map_map_t);  -- /usr/include/xcb/xkb.h:2190

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_get_map_reply_t
  -- * 

  --*<   
   type anon4619_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_xkb_get_map_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2206
      deviceID : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2207
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2208
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:2209
      pad0 : aliased anon4619_anon1795_array;  -- /usr/include/xcb/xkb.h:2210
      minKeyCode : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2211
      maxKeyCode : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2212
      present : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2213
      firstType : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2214
      nTypes : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2215
      totalTypes : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2216
      firstKeySym : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2217
      totalSyms : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2218
      nKeySyms : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2219
      firstKeyAction : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2220
      totalActions : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2221
      nKeyActions : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2222
      firstKeyBehavior : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2223
      nKeyBehaviors : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2224
      totalKeyBehaviors : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2225
      firstKeyExplicit : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2226
      nKeyExplicit : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2227
      totalKeyExplicit : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2228
      firstModMapKey : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2229
      nModMapKeys : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2230
      totalModMapKeys : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2231
      firstVModMapKey : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2232
      nVModMapKeys : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2233
      totalVModMapKeys : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2234
      pad1 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2235
      virtualMods : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2236
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_get_map_reply_t);  -- /usr/include/xcb/xkb.h:2205

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
  -- * @brief xcb_xkb_set_map_values_t
  -- * 

  --*<   
   type xcb_xkb_set_map_values_t is record
      types : access xcb_xkb_set_key_type_t;  -- /usr/include/xcb/xkb.h:2243
      syms : access xcb_xkb_key_sym_map_t;  -- /usr/include/xcb/xkb.h:2244
      actionsCount : access stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2245
      actions : access xcb_xkb_action_t;  -- /usr/include/xcb/xkb.h:2246
      behaviors : access xcb_xkb_set_behavior_t;  -- /usr/include/xcb/xkb.h:2247
      vmods : access stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2248
      explicit : access xcb_xkb_set_explicit_t;  -- /usr/include/xcb/xkb.h:2249
      modmap : access xcb_xkb_key_mod_map_t;  -- /usr/include/xcb/xkb.h:2250
      vmodmap : access xcb_xkb_key_v_mod_map_t;  -- /usr/include/xcb/xkb.h:2251
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_set_map_values_t);  -- /usr/include/xcb/xkb.h:2242

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xkb_set_map.  
  --*
  -- * @brief xcb_xkb_set_map_request_t
  -- * 

  --*<   
   type xcb_xkb_set_map_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2261
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2262
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2263
      deviceSpec : aliased xcb_xkb_device_spec_t;  -- /usr/include/xcb/xkb.h:2264
      present : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2265
      flags : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2266
      minKeyCode : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2267
      maxKeyCode : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2268
      firstType : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2269
      nTypes : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2270
      firstKeySym : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2271
      nKeySyms : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2272
      totalSyms : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2273
      firstKeyAction : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2274
      nKeyActions : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2275
      totalActions : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2276
      firstKeyBehavior : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2277
      nKeyBehaviors : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2278
      totalKeyBehaviors : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2279
      firstKeyExplicit : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2280
      nKeyExplicit : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2281
      totalKeyExplicit : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2282
      firstModMapKey : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2283
      nModMapKeys : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2284
      totalModMapKeys : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2285
      firstVModMapKey : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2286
      nVModMapKeys : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2287
      totalVModMapKeys : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2288
      virtualMods : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2289
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_set_map_request_t);  -- /usr/include/xcb/xkb.h:2260

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
  -- * @brief xcb_xkb_get_compat_map_cookie_t
  -- * 

  --*<   
   type xcb_xkb_get_compat_map_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xkb.h:2296
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_get_compat_map_cookie_t);  -- /usr/include/xcb/xkb.h:2295

  --* Opcode for xcb_xkb_get_compat_map.  
  --*
  -- * @brief xcb_xkb_get_compat_map_request_t
  -- * 

  --*<   
   type xcb_xkb_get_compat_map_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2306
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2307
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2308
      deviceSpec : aliased xcb_xkb_device_spec_t;  -- /usr/include/xcb/xkb.h:2309
      groups : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2310
      getAllSI : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2311
      firstSI : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2312
      nSI : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2313
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_get_compat_map_request_t);  -- /usr/include/xcb/xkb.h:2305

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_get_compat_map_reply_t
  -- * 

  --*<   
   type anon4631_anon4633_array is array (0 .. 15) of aliased stdint_h.uint8_t;
   type xcb_xkb_get_compat_map_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2320
      deviceID : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2321
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2322
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:2323
      groupsRtrn : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2324
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2325
      firstSIRtrn : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2326
      nSIRtrn : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2327
      nTotalSI : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2328
      pad1 : aliased anon4631_anon4633_array;  -- /usr/include/xcb/xkb.h:2329
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_get_compat_map_reply_t);  -- /usr/include/xcb/xkb.h:2319

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xkb_set_compat_map.  
  --*
  -- * @brief xcb_xkb_set_compat_map_request_t
  -- * 

  --*<   
   type anon4636_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_xkb_set_compat_map_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2339
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2340
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2341
      deviceSpec : aliased xcb_xkb_device_spec_t;  -- /usr/include/xcb/xkb.h:2342
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2343
      recomputeActions : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2344
      truncateSI : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2345
      groups : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2346
      firstSI : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2347
      nSI : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2348
      pad1 : aliased anon4636_anon1795_array;  -- /usr/include/xcb/xkb.h:2349
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_set_compat_map_request_t);  -- /usr/include/xcb/xkb.h:2338

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
  -- * @brief xcb_xkb_get_indicator_state_cookie_t
  -- * 

  --*<   
   type xcb_xkb_get_indicator_state_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xkb.h:2356
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_get_indicator_state_cookie_t);  -- /usr/include/xcb/xkb.h:2355

  --* Opcode for xcb_xkb_get_indicator_state.  
  --*
  -- * @brief xcb_xkb_get_indicator_state_request_t
  -- * 

  --*<   
   type anon4642_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_xkb_get_indicator_state_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2366
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2367
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2368
      deviceSpec : aliased xcb_xkb_device_spec_t;  -- /usr/include/xcb/xkb.h:2369
      pad0 : aliased anon4642_anon1795_array;  -- /usr/include/xcb/xkb.h:2370
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_get_indicator_state_request_t);  -- /usr/include/xcb/xkb.h:2365

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_get_indicator_state_reply_t
  -- * 

  --*<   
   type anon4646_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_xkb_get_indicator_state_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2377
      deviceID : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2378
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2379
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:2380
      state : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:2381
      pad0 : aliased anon4646_anon1939_array;  -- /usr/include/xcb/xkb.h:2382
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_get_indicator_state_reply_t);  -- /usr/include/xcb/xkb.h:2376

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_get_indicator_map_cookie_t
  -- * 

  --*<   
   type xcb_xkb_get_indicator_map_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xkb.h:2389
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_get_indicator_map_cookie_t);  -- /usr/include/xcb/xkb.h:2388

  --* Opcode for xcb_xkb_get_indicator_map.  
  --*
  -- * @brief xcb_xkb_get_indicator_map_request_t
  -- * 

  --*<   
   type anon4652_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_xkb_get_indicator_map_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2399
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2400
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2401
      deviceSpec : aliased xcb_xkb_device_spec_t;  -- /usr/include/xcb/xkb.h:2402
      pad0 : aliased anon4652_anon1795_array;  -- /usr/include/xcb/xkb.h:2403
      which : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:2404
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_get_indicator_map_request_t);  -- /usr/include/xcb/xkb.h:2398

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_get_indicator_map_reply_t
  -- * 

  --*<   
   type anon4656_anon4658_array is array (0 .. 14) of aliased stdint_h.uint8_t;
   type xcb_xkb_get_indicator_map_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2411
      deviceID : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2412
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2413
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:2414
      which : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:2415
      realIndicators : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:2416
      nIndicators : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2417
      pad0 : aliased anon4656_anon4658_array;  -- /usr/include/xcb/xkb.h:2418
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_get_indicator_map_reply_t);  -- /usr/include/xcb/xkb.h:2410

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xkb_set_indicator_map.  
  --*
  -- * @brief xcb_xkb_set_indicator_map_request_t
  -- * 

  --*<   
   type anon4661_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_xkb_set_indicator_map_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2428
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2429
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2430
      deviceSpec : aliased xcb_xkb_device_spec_t;  -- /usr/include/xcb/xkb.h:2431
      pad0 : aliased anon4661_anon1795_array;  -- /usr/include/xcb/xkb.h:2432
      which : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:2433
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_set_indicator_map_request_t);  -- /usr/include/xcb/xkb.h:2427

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_get_named_indicator_cookie_t
  -- * 

  --*<   
   type xcb_xkb_get_named_indicator_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xkb.h:2440
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_get_named_indicator_cookie_t);  -- /usr/include/xcb/xkb.h:2439

  --* Opcode for xcb_xkb_get_named_indicator.  
  --*
  -- * @brief xcb_xkb_get_named_indicator_request_t
  -- * 

  --*<   
   type anon4667_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_xkb_get_named_indicator_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2450
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2451
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2452
      deviceSpec : aliased xcb_xkb_device_spec_t;  -- /usr/include/xcb/xkb.h:2453
      ledClass : aliased xcb_xkb_led_class_spec_t;  -- /usr/include/xcb/xkb.h:2454
      ledID : aliased xcb_xkb_id_spec_t;  -- /usr/include/xcb/xkb.h:2455
      pad0 : aliased anon4667_anon1795_array;  -- /usr/include/xcb/xkb.h:2456
      indicator : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2457
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_get_named_indicator_request_t);  -- /usr/include/xcb/xkb.h:2449

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_get_named_indicator_reply_t
  -- * 

  --*<   
   type anon4671_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_xkb_get_named_indicator_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2464
      deviceID : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2465
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2466
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:2467
      indicator : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2468
      found : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2469
      on : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2470
      realIndicator : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2471
      ndx : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2472
      map_flags : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2473
      map_whichGroups : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2474
      map_groups : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2475
      map_whichMods : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2476
      map_mods : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2477
      map_realMods : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2478
      map_vmod : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2479
      map_ctrls : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:2480
      pad0 : aliased anon4671_anon1853_array;  -- /usr/include/xcb/xkb.h:2481
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_get_named_indicator_reply_t);  -- /usr/include/xcb/xkb.h:2463

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
  --* Opcode for xcb_xkb_set_named_indicator.  
  --*
  -- * @brief xcb_xkb_set_named_indicator_request_t
  -- * 

  --*<   
   type anon4675_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_xkb_set_named_indicator_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2491
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2492
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2493
      deviceSpec : aliased xcb_xkb_device_spec_t;  -- /usr/include/xcb/xkb.h:2494
      ledClass : aliased xcb_xkb_led_class_spec_t;  -- /usr/include/xcb/xkb.h:2495
      ledID : aliased xcb_xkb_id_spec_t;  -- /usr/include/xcb/xkb.h:2496
      pad0 : aliased anon4675_anon1795_array;  -- /usr/include/xcb/xkb.h:2497
      indicator : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2498
      setState : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2499
      on : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2500
      setMap : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2501
      createMap : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2502
      pad1 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2503
      map_flags : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2504
      map_whichGroups : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2505
      map_groups : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2506
      map_whichMods : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2507
      map_realMods : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2508
      map_vmods : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2509
      map_ctrls : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:2510
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_set_named_indicator_request_t);  -- /usr/include/xcb/xkb.h:2490

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
  -- * @brief xcb_xkb_get_names_cookie_t
  -- * 

  --*<   
   type xcb_xkb_get_names_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xkb.h:2517
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_get_names_cookie_t);  -- /usr/include/xcb/xkb.h:2516

  --* Opcode for xcb_xkb_get_names.  
  --*
  -- * @brief xcb_xkb_get_names_request_t
  -- * 

  --*<   
   type anon4681_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_xkb_get_names_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2527
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2528
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2529
      deviceSpec : aliased xcb_xkb_device_spec_t;  -- /usr/include/xcb/xkb.h:2530
      pad0 : aliased anon4681_anon1795_array;  -- /usr/include/xcb/xkb.h:2531
      which : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:2532
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_get_names_request_t);  -- /usr/include/xcb/xkb.h:2526

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_get_names_value_list_t
  -- * 

  --*<   
   type xcb_xkb_get_names_value_list_t is record
      keycodesName : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2539
      geometryName : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2540
      symbolsName : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2541
      physSymbolsName : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2542
      typesName : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2543
      compatName : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2544
      typeNames : access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2545
      nLevelsPerType : access stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2546
      ktLevelNames : access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2547
      indicatorNames : access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2548
      virtualModNames : access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2549
      groups : access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2550
      keyNames : access xcb_xkb_key_name_t;  -- /usr/include/xcb/xkb.h:2551
      keyAliases : access xcb_xkb_key_alias_t;  -- /usr/include/xcb/xkb.h:2552
      radioGroupNames : access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2553
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_get_names_value_list_t);  -- /usr/include/xcb/xkb.h:2538

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
  -- * @brief xcb_xkb_get_names_reply_t
  -- * 

  --*<   
   type anon4687_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type xcb_xkb_get_names_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2560
      deviceID : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2561
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2562
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:2563
      which : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:2564
      minKeyCode : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2565
      maxKeyCode : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2566
      nTypes : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2567
      groupNames : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2568
      virtualMods : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2569
      firstKey : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2570
      nKeys : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2571
      indicators : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:2572
      nRadioGroups : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2573
      nKeyAliases : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2574
      nKTLevels : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2575
      pad0 : aliased anon4687_anon1768_array;  -- /usr/include/xcb/xkb.h:2576
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_get_names_reply_t);  -- /usr/include/xcb/xkb.h:2559

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
  -- * @brief xcb_xkb_set_names_values_t
  -- * 

  --*<   
   type xcb_xkb_set_names_values_t is record
      keycodesName : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2583
      geometryName : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2584
      symbolsName : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2585
      physSymbolsName : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2586
      typesName : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2587
      compatName : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2588
      typeNames : access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2589
      nLevelsPerType : access stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2590
      ktLevelNames : access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2591
      indicatorNames : access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2592
      virtualModNames : access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2593
      groups : access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2594
      keyNames : access xcb_xkb_key_name_t;  -- /usr/include/xcb/xkb.h:2595
      keyAliases : access xcb_xkb_key_alias_t;  -- /usr/include/xcb/xkb.h:2596
      radioGroupNames : access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2597
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_set_names_values_t);  -- /usr/include/xcb/xkb.h:2582

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
  --* Opcode for xcb_xkb_set_names.  
  --*
  -- * @brief xcb_xkb_set_names_request_t
  -- * 

  --*<   
   type xcb_xkb_set_names_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2607
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2608
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2609
      deviceSpec : aliased xcb_xkb_device_spec_t;  -- /usr/include/xcb/xkb.h:2610
      virtualMods : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2611
      which : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:2612
      firstType : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2613
      nTypes : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2614
      firstKTLevelt : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2615
      nKTLevels : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2616
      indicators : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:2617
      groupNames : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2618
      nRadioGroups : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2619
      firstKey : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2620
      nKeys : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2621
      nKeyAliases : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2622
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2623
      totalKTLevelNames : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2624
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_set_names_request_t);  -- /usr/include/xcb/xkb.h:2606

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
  -- * @brief xcb_xkb_get_geometry_cookie_t
  -- * 

  --*<   
   type xcb_xkb_get_geometry_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xkb.h:2631
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_get_geometry_cookie_t);  -- /usr/include/xcb/xkb.h:2630

  --* Opcode for xcb_xkb_get_geometry.  
  --*
  -- * @brief xcb_xkb_get_geometry_request_t
  -- * 

  --*<   
   type anon4697_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_xkb_get_geometry_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2641
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2642
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2643
      deviceSpec : aliased xcb_xkb_device_spec_t;  -- /usr/include/xcb/xkb.h:2644
      pad0 : aliased anon4697_anon1795_array;  -- /usr/include/xcb/xkb.h:2645
      name : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2646
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_get_geometry_request_t);  -- /usr/include/xcb/xkb.h:2640

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_get_geometry_reply_t
  -- * 

  --*<   
   type xcb_xkb_get_geometry_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2653
      deviceID : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2654
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2655
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:2656
      name : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2657
      found : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2658
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2659
      widthMM : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2660
      heightMM : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2661
      nProperties : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2662
      nColors : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2663
      nShapes : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2664
      nSections : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2665
      nDoodads : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2666
      nKeyAliases : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2667
      baseColorNdx : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2668
      labelColorNdx : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2669
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_get_geometry_reply_t);  -- /usr/include/xcb/xkb.h:2652

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
  --* Opcode for xcb_xkb_set_geometry.  
  --*
  -- * @brief xcb_xkb_set_geometry_request_t
  -- * 

  --*<   
   type anon4703_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_xkb_set_geometry_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2679
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2680
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2681
      deviceSpec : aliased xcb_xkb_device_spec_t;  -- /usr/include/xcb/xkb.h:2682
      nShapes : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2683
      nSections : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2684
      name : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2685
      widthMM : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2686
      heightMM : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2687
      nProperties : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2688
      nColors : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2689
      nDoodads : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2690
      nKeyAliases : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2691
      baseColorNdx : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2692
      labelColorNdx : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2693
      pad0 : aliased anon4703_anon1795_array;  -- /usr/include/xcb/xkb.h:2694
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_set_geometry_request_t);  -- /usr/include/xcb/xkb.h:2678

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
  -- * @brief xcb_xkb_per_client_flags_cookie_t
  -- * 

  --*<   
   type xcb_xkb_per_client_flags_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xkb.h:2701
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_per_client_flags_cookie_t);  -- /usr/include/xcb/xkb.h:2700

  --* Opcode for xcb_xkb_per_client_flags.  
  --*
  -- * @brief xcb_xkb_per_client_flags_request_t
  -- * 

  --*<   
   type anon4709_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_xkb_per_client_flags_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2711
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2712
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2713
      deviceSpec : aliased xcb_xkb_device_spec_t;  -- /usr/include/xcb/xkb.h:2714
      pad0 : aliased anon4709_anon1795_array;  -- /usr/include/xcb/xkb.h:2715
      change : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:2716
      value : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:2717
      ctrlsToChange : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:2718
      autoCtrls : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:2719
      autoCtrlsValues : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:2720
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_per_client_flags_request_t);  -- /usr/include/xcb/xkb.h:2710

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
  -- * @brief xcb_xkb_per_client_flags_reply_t
  -- * 

  --*<   
   type anon4713_anon2427_array is array (0 .. 7) of aliased stdint_h.uint8_t;
   type xcb_xkb_per_client_flags_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2727
      deviceID : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2728
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2729
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:2730
      supported : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:2731
      value : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:2732
      autoCtrls : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:2733
      autoCtrlsValues : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:2734
      pad0 : aliased anon4713_anon2427_array;  -- /usr/include/xcb/xkb.h:2735
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_per_client_flags_reply_t);  -- /usr/include/xcb/xkb.h:2726

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_list_components_cookie_t
  -- * 

  --*<   
   type xcb_xkb_list_components_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xkb.h:2742
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_list_components_cookie_t);  -- /usr/include/xcb/xkb.h:2741

  --* Opcode for xcb_xkb_list_components.  
  --*
  -- * @brief xcb_xkb_list_components_request_t
  -- * 

  --*<   
   type xcb_xkb_list_components_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2752
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2753
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2754
      deviceSpec : aliased xcb_xkb_device_spec_t;  -- /usr/include/xcb/xkb.h:2755
      maxNames : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2756
      keymapsSpecLen : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2757
      keycodesSpecLen : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2758
      typesSpecLen : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2759
      compatMapSpecLen : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2760
      symbolsSpecLen : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2761
      geometrySpecLen : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2762
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_list_components_request_t);  -- /usr/include/xcb/xkb.h:2751

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
  -- * @brief xcb_xkb_list_components_reply_t
  -- * 

  --*<   
   type anon4721_anon4723_array is array (0 .. 9) of aliased stdint_h.uint8_t;
   type xcb_xkb_list_components_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2769
      deviceID : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2770
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2771
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:2772
      nKeymaps : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2773
      nKeycodes : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2774
      nTypes : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2775
      nCompatMaps : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2776
      nSymbols : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2777
      nGeometries : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2778
      extra : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2779
      pad0 : aliased anon4721_anon4723_array;  -- /usr/include/xcb/xkb.h:2780
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_list_components_reply_t);  -- /usr/include/xcb/xkb.h:2768

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
  -- * @brief xcb_xkb_get_kbd_by_name_cookie_t
  -- * 

  --*<   
   type xcb_xkb_get_kbd_by_name_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xkb.h:2787
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_get_kbd_by_name_cookie_t);  -- /usr/include/xcb/xkb.h:2786

  --* Opcode for xcb_xkb_get_kbd_by_name.  
  --*
  -- * @brief xcb_xkb_get_kbd_by_name_request_t
  -- * 

  --*<   
   type xcb_xkb_get_kbd_by_name_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2797
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2798
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2799
      deviceSpec : aliased xcb_xkb_device_spec_t;  -- /usr/include/xcb/xkb.h:2800
      need : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2801
      want : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2802
      load : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2803
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2804
      keymapsSpecLen : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2805
      keycodesSpecLen : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2806
      typesSpecLen : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2807
      compatMapSpecLen : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2808
      symbolsSpecLen : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2809
      geometrySpecLen : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2810
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_get_kbd_by_name_request_t);  -- /usr/include/xcb/xkb.h:2796

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
  -- * @brief xcb_xkb_get_kbd_by_name_replies_types_map_t
  -- * 

  --*<   
   type xcb_xkb_get_kbd_by_name_replies_types_map_t is record
      types_rtrn : access xcb_xkb_key_type_t;  -- /usr/include/xcb/xkb.h:2817
      syms_rtrn : access xcb_xkb_key_sym_map_t;  -- /usr/include/xcb/xkb.h:2818
      acts_rtrn_count : access stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2819
      acts_rtrn_acts : access xcb_xkb_action_t;  -- /usr/include/xcb/xkb.h:2820
      behaviors_rtrn : access xcb_xkb_set_behavior_t;  -- /usr/include/xcb/xkb.h:2821
      vmods_rtrn : access stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2822
      explicit_rtrn : access xcb_xkb_set_explicit_t;  -- /usr/include/xcb/xkb.h:2823
      modmap_rtrn : access xcb_xkb_key_mod_map_t;  -- /usr/include/xcb/xkb.h:2824
      vmodmap_rtrn : access xcb_xkb_key_v_mod_map_t;  -- /usr/include/xcb/xkb.h:2825
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_get_kbd_by_name_replies_types_map_t);  -- /usr/include/xcb/xkb.h:2816

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t
  -- * 

  --*<   
   type xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t is record
      types_rtrn : access xcb_xkb_key_type_t;  -- /usr/include/xcb/xkb.h:2832
      syms_rtrn : access xcb_xkb_key_sym_map_t;  -- /usr/include/xcb/xkb.h:2833
      acts_rtrn_count : access stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2834
      acts_rtrn_acts : access xcb_xkb_action_t;  -- /usr/include/xcb/xkb.h:2835
      behaviors_rtrn : access xcb_xkb_set_behavior_t;  -- /usr/include/xcb/xkb.h:2836
      vmods_rtrn : access stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2837
      explicit_rtrn : access xcb_xkb_set_explicit_t;  -- /usr/include/xcb/xkb.h:2838
      modmap_rtrn : access xcb_xkb_key_mod_map_t;  -- /usr/include/xcb/xkb.h:2839
      vmodmap_rtrn : access xcb_xkb_key_v_mod_map_t;  -- /usr/include/xcb/xkb.h:2840
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t);  -- /usr/include/xcb/xkb.h:2831

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t
  -- * 

  --*<   
   type xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t is record
      types_rtrn : access xcb_xkb_key_type_t;  -- /usr/include/xcb/xkb.h:2847
      syms_rtrn : access xcb_xkb_key_sym_map_t;  -- /usr/include/xcb/xkb.h:2848
      acts_rtrn_count : access stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2849
      acts_rtrn_acts : access xcb_xkb_action_t;  -- /usr/include/xcb/xkb.h:2850
      behaviors_rtrn : access xcb_xkb_set_behavior_t;  -- /usr/include/xcb/xkb.h:2851
      vmods_rtrn : access stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2852
      explicit_rtrn : access xcb_xkb_set_explicit_t;  -- /usr/include/xcb/xkb.h:2853
      modmap_rtrn : access xcb_xkb_key_mod_map_t;  -- /usr/include/xcb/xkb.h:2854
      vmodmap_rtrn : access xcb_xkb_key_v_mod_map_t;  -- /usr/include/xcb/xkb.h:2855
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t);  -- /usr/include/xcb/xkb.h:2846

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t
  -- * 

  --*<   
   type xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t is record
      keycodesName : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2862
      geometryName : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2863
      symbolsName : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2864
      physSymbolsName : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2865
      typesName : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2866
      compatName : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2867
      typeNames : access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2868
      nLevelsPerType : access stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2869
      ktLevelNames : access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2870
      indicatorNames : access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2871
      virtualModNames : access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2872
      groups : access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2873
      keyNames : access xcb_xkb_key_name_t;  -- /usr/include/xcb/xkb.h:2874
      keyAliases : access xcb_xkb_key_alias_t;  -- /usr/include/xcb/xkb.h:2875
      radioGroupNames : access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2876
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t);  -- /usr/include/xcb/xkb.h:2861

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
  -- * @brief xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t
  -- * 

  --*<   
   type xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t is record
      keycodesName : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2883
      geometryName : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2884
      symbolsName : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2885
      physSymbolsName : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2886
      typesName : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2887
      compatName : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2888
      typeNames : access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2889
      nLevelsPerType : access stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2890
      ktLevelNames : access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2891
      indicatorNames : access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2892
      virtualModNames : access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2893
      groups : access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2894
      keyNames : access xcb_xkb_key_name_t;  -- /usr/include/xcb/xkb.h:2895
      keyAliases : access xcb_xkb_key_alias_t;  -- /usr/include/xcb/xkb.h:2896
      radioGroupNames : access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:2897
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t);  -- /usr/include/xcb/xkb.h:2882

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
  -- * @brief xcb_xkb_get_kbd_by_name_replies_t
  -- * 

  --*<   
   type anon4741_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type u_types is record
      getmap_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2905
      typeDeviceID : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2906
      getmap_sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2907
      getmap_length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:2908
      pad0 : aliased anon4741_anon1795_array;  -- /usr/include/xcb/xkb.h:2909
      typeMinKeyCode : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2910
      typeMaxKeyCode : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2911
      present : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2912
      firstType : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2913
      nTypes : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2914
      totalTypes : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2915
      firstKeySym : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2916
      totalSyms : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2917
      nKeySyms : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2918
      firstKeyAction : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2919
      totalActions : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2920
      nKeyActions : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2921
      firstKeyBehavior : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2922
      nKeyBehaviors : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2923
      totalKeyBehaviors : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2924
      firstKeyExplicit : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2925
      nKeyExplicit : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2926
      totalKeyExplicit : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2927
      firstModMapKey : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2928
      nModMapKeys : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2929
      totalModMapKeys : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2930
      firstVModMapKey : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2931
      nVModMapKeys : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2932
      totalVModMapKeys : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2933
      pad1 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2934
      virtualMods : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2935
      map : aliased xcb_xkb_get_kbd_by_name_replies_types_map_t;  -- /usr/include/xcb/xkb.h:2936
   end record;
   pragma Convention (C_Pass_By_Copy, u_types);  -- /usr/include/xcb/xkb.h:2904

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
   type anon4744_anon4633_array is array (0 .. 15) of aliased stdint_h.uint8_t;
   type u_compat_map is record
      compatDeviceID : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2939
      groupsRtrn : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2940
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2941
      firstSIRtrn : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2942
      nSIRtrn : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2943
      nTotalSI : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2944
      pad1 : aliased anon4744_anon4633_array;  -- /usr/include/xcb/xkb.h:2945
      si_rtrn : access stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2946
      group_rtrn : access xcb_xkb_mod_def_t;  -- /usr/include/xcb/xkb.h:2947
   end record;
   pragma Convention (C_Pass_By_Copy, u_compat_map);  -- /usr/include/xcb/xkb.h:2938

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
   type anon4747_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type u_client_symbols is record
      clientDeviceID : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2950
      pad0 : aliased anon4747_anon1795_array;  -- /usr/include/xcb/xkb.h:2951
      clientMinKeyCode : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2952
      clientMaxKeyCode : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2953
      present : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2954
      firstType : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2955
      nTypes : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2956
      totalTypes : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2957
      firstKeySym : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2958
      totalSyms : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2959
      nKeySyms : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2960
      firstKeyAction : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2961
      totalActions : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2962
      nKeyActions : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2963
      firstKeyBehavior : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2964
      nKeyBehaviors : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2965
      totalKeyBehaviors : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2966
      firstKeyExplicit : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2967
      nKeyExplicit : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2968
      totalKeyExplicit : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2969
      firstModMapKey : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2970
      nModMapKeys : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2971
      totalModMapKeys : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2972
      firstVModMapKey : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2973
      nVModMapKeys : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2974
      totalVModMapKeys : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2975
      pad1 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2976
      virtualMods : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2977
      map : aliased xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t;  -- /usr/include/xcb/xkb.h:2978
   end record;
   pragma Convention (C_Pass_By_Copy, u_client_symbols);  -- /usr/include/xcb/xkb.h:2949

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
   type anon4750_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type u_server_symbols is record
      serverDeviceID : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2981
      pad0 : aliased anon4750_anon1795_array;  -- /usr/include/xcb/xkb.h:2982
      serverMinKeyCode : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2983
      serverMaxKeyCode : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2984
      present : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2985
      firstType : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2986
      nTypes : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2987
      totalTypes : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2988
      firstKeySym : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2989
      totalSyms : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2990
      nKeySyms : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2991
      firstKeyAction : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2992
      totalActions : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:2993
      nKeyActions : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2994
      firstKeyBehavior : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2995
      nKeyBehaviors : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2996
      totalKeyBehaviors : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2997
      firstKeyExplicit : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:2998
      nKeyExplicit : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:2999
      totalKeyExplicit : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3000
      firstModMapKey : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:3001
      nModMapKeys : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3002
      totalModMapKeys : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3003
      firstVModMapKey : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:3004
      nVModMapKeys : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3005
      totalVModMapKeys : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3006
      pad1 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3007
      virtualMods : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3008
      map : aliased xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t;  -- /usr/include/xcb/xkb.h:3009
   end record;
   pragma Convention (C_Pass_By_Copy, u_server_symbols);  -- /usr/include/xcb/xkb.h:2980

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
   type anon4753_anon4658_array is array (0 .. 14) of aliased stdint_h.uint8_t;
   type u_indicator_maps is record
      indicatorDeviceID : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3012
      which : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:3013
      realIndicators : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:3014
      nIndicators : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3015
      pad0 : aliased anon4753_anon4658_array;  -- /usr/include/xcb/xkb.h:3016
      maps : access xcb_xkb_indicator_map_t;  -- /usr/include/xcb/xkb.h:3017
   end record;
   pragma Convention (C_Pass_By_Copy, u_indicator_maps);  -- /usr/include/xcb/xkb.h:3011

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
   type anon4756_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type u_key_names is record
      keyDeviceID : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3020
      which : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:3021
      keyMinKeyCode : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:3022
      keyMaxKeyCode : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:3023
      nTypes : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3024
      groupNames : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3025
      virtualMods : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3026
      firstKey : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:3027
      nKeys : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3028
      indicators : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:3029
      nRadioGroups : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3030
      nKeyAliases : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3031
      nKTLevels : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3032
      pad0 : aliased anon4756_anon1768_array;  -- /usr/include/xcb/xkb.h:3033
      valueList : aliased xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t;  -- /usr/include/xcb/xkb.h:3034
   end record;
   pragma Convention (C_Pass_By_Copy, u_key_names);  -- /usr/include/xcb/xkb.h:3019

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
   type anon4759_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type u_other_names is record
      otherDeviceID : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3037
      which : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:3038
      otherMinKeyCode : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:3039
      otherMaxKeyCode : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:3040
      nTypes : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3041
      groupNames : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3042
      virtualMods : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3043
      firstKey : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:3044
      nKeys : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3045
      indicators : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:3046
      nRadioGroups : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3047
      nKeyAliases : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3048
      nKTLevels : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3049
      pad0 : aliased anon4759_anon1768_array;  -- /usr/include/xcb/xkb.h:3050
      valueList : aliased xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t;  -- /usr/include/xcb/xkb.h:3051
   end record;
   pragma Convention (C_Pass_By_Copy, u_other_names);  -- /usr/include/xcb/xkb.h:3036

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
   type u_geometry is record
      geometryDeviceID : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3054
      name : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:3055
      geometryFound : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3056
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3057
      widthMM : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3058
      heightMM : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3059
      nProperties : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3060
      nColors : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3061
      nShapes : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3062
      nSections : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3063
      nDoodads : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3064
      nKeyAliases : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3065
      baseColorNdx : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3066
      labelColorNdx : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3067
      labelFont : access xcb_xkb_counted_string_16_t;  -- /usr/include/xcb/xkb.h:3068
      properties : access xcb_xkb_property_t;  -- /usr/include/xcb/xkb.h:3069
      colors : access xcb_xkb_counted_string_16_t;  -- /usr/include/xcb/xkb.h:3070
      shapes : access xcb_xkb_shape_t;  -- /usr/include/xcb/xkb.h:3071
      sections : access xcb_xkb_section_t;  -- /usr/include/xcb/xkb.h:3072
      doodads : access xcb_xkb_doodad_t;  -- /usr/include/xcb/xkb.h:3073
      keyAliases : access xcb_xkb_key_alias_t;  -- /usr/include/xcb/xkb.h:3074
   end record;
   pragma Convention (C_Pass_By_Copy, u_geometry);  -- /usr/include/xcb/xkb.h:3053

   type xcb_xkb_get_kbd_by_name_replies_t is record
      types : aliased u_types;  -- /usr/include/xcb/xkb.h:2937
      compat_map : aliased u_compat_map;  -- /usr/include/xcb/xkb.h:2948
      client_symbols : aliased u_client_symbols;  -- /usr/include/xcb/xkb.h:2979
      server_symbols : aliased u_server_symbols;  -- /usr/include/xcb/xkb.h:3010
      indicator_maps : aliased u_indicator_maps;  -- /usr/include/xcb/xkb.h:3018
      key_names : aliased u_key_names;  -- /usr/include/xcb/xkb.h:3035
      other_names : aliased u_other_names;  -- /usr/include/xcb/xkb.h:3052
      geometry : aliased u_geometry;  -- /usr/include/xcb/xkb.h:3075
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_get_kbd_by_name_replies_t);  -- /usr/include/xcb/xkb.h:2903

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
  --*<   
  --****************************************************************************
  -- **
  -- ** xcb_xkb_get_kbd_by_name_replies_types_map_t * xcb_xkb_get_kbd_by_name_replies_types_map
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
  -- ** @returns xcb_xkb_get_kbd_by_name_replies_types_map_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_types_map (arg1 : System.Address) return access xcb_xkb_get_kbd_by_name_replies_types_map_t;  -- /usr/include/xcb/xkb.h:3089
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_types_map, "xcb_xkb_get_kbd_by_name_replies_types_map");

  --*
  -- * @brief xcb_xkb_get_kbd_by_name_reply_t
  -- * 

  --*<   
   type anon4772_anon4633_array is array (0 .. 15) of aliased stdint_h.uint8_t;
   type xcb_xkb_get_kbd_by_name_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3095
      deviceID : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3096
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3097
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:3098
      minKeyCode : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:3099
      maxKeyCode : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:3100
      loaded : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3101
      newKeyboard : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3102
      found : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3103
      reported : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3104
      pad0 : aliased anon4772_anon4633_array;  -- /usr/include/xcb/xkb.h:3105
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_get_kbd_by_name_reply_t);  -- /usr/include/xcb/xkb.h:3094

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
  -- * @brief xcb_xkb_get_device_info_cookie_t
  -- * 

  --*<   
   type xcb_xkb_get_device_info_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xkb.h:3112
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_get_device_info_cookie_t);  -- /usr/include/xcb/xkb.h:3111

  --* Opcode for xcb_xkb_get_device_info.  
  --*
  -- * @brief xcb_xkb_get_device_info_request_t
  -- * 

  --*<   
   type xcb_xkb_get_device_info_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3122
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3123
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3124
      deviceSpec : aliased xcb_xkb_device_spec_t;  -- /usr/include/xcb/xkb.h:3125
      wanted : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3126
      allButtons : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3127
      firstButton : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3128
      nButtons : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3129
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3130
      ledClass : aliased xcb_xkb_led_class_spec_t;  -- /usr/include/xcb/xkb.h:3131
      ledID : aliased xcb_xkb_id_spec_t;  -- /usr/include/xcb/xkb.h:3132
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_get_device_info_request_t);  -- /usr/include/xcb/xkb.h:3121

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
  -- * @brief xcb_xkb_get_device_info_reply_t
  -- * 

  --*<   
   type anon4780_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_xkb_get_device_info_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3139
      deviceID : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3140
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3141
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:3142
      present : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3143
      supported : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3144
      unsupported : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3145
      nDeviceLedFBs : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3146
      firstBtnWanted : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3147
      nBtnsWanted : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3148
      firstBtnRtrn : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3149
      nBtnsRtrn : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3150
      totalBtns : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3151
      hasOwnState : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3152
      dfltKbdFB : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3153
      dfltLedFB : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3154
      pad0 : aliased anon4780_anon1795_array;  -- /usr/include/xcb/xkb.h:3155
      devType : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:3156
      nameLen : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3157
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_get_device_info_reply_t);  -- /usr/include/xcb/xkb.h:3138

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
  --* Opcode for xcb_xkb_set_device_info.  
  --*
  -- * @brief xcb_xkb_set_device_info_request_t
  -- * 

  --*<   
   type xcb_xkb_set_device_info_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3167
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3168
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3169
      deviceSpec : aliased xcb_xkb_device_spec_t;  -- /usr/include/xcb/xkb.h:3170
      firstBtn : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3171
      nBtns : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3172
      change : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3173
      nDeviceLedFBs : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3174
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_set_device_info_request_t);  -- /usr/include/xcb/xkb.h:3166

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_set_debugging_flags_cookie_t
  -- * 

  --*<   
   type xcb_xkb_set_debugging_flags_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xkb.h:3181
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_set_debugging_flags_cookie_t);  -- /usr/include/xcb/xkb.h:3180

  --* Opcode for xcb_xkb_set_debugging_flags.  
  --*
  -- * @brief xcb_xkb_set_debugging_flags_request_t
  -- * 

  --*<   
   type anon4788_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_xkb_set_debugging_flags_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3191
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3192
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3193
      msgLength : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3194
      pad0 : aliased anon4788_anon1795_array;  -- /usr/include/xcb/xkb.h:3195
      affectFlags : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:3196
      flags : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:3197
      affectCtrls : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:3198
      ctrls : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:3199
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_set_debugging_flags_request_t);  -- /usr/include/xcb/xkb.h:3190

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_xkb_set_debugging_flags_reply_t
  -- * 

  --*<   
   type anon4792_anon2427_array is array (0 .. 7) of aliased stdint_h.uint8_t;
   type xcb_xkb_set_debugging_flags_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3206
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3207
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3208
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:3209
      currentFlags : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:3210
      currentCtrls : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:3211
      supportedFlags : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:3212
      supportedCtrls : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:3213
      pad1 : aliased anon4792_anon2427_array;  -- /usr/include/xcb/xkb.h:3214
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_set_debugging_flags_reply_t);  -- /usr/include/xcb/xkb.h:3205

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xkb_new_keyboard_notify.  
  --*
  -- * @brief xcb_xkb_new_keyboard_notify_event_t
  -- * 

  --*<   
   type anon4796_anon2043_array is array (0 .. 13) of aliased stdint_h.uint8_t;
   type xcb_xkb_new_keyboard_notify_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3224
      xkbType : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3225
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3226
      time : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/xkb.h:3227
      deviceID : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3228
      oldDeviceID : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3229
      minKeyCode : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:3230
      maxKeyCode : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:3231
      oldMinKeyCode : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:3232
      oldMaxKeyCode : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:3233
      requestMajor : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3234
      requestMinor : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3235
      changed : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3236
      pad0 : aliased anon4796_anon2043_array;  -- /usr/include/xcb/xkb.h:3237
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_new_keyboard_notify_event_t);  -- /usr/include/xcb/xkb.h:3223

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
  --* Opcode for xcb_xkb_map_notify.  
  --*
  -- * @brief xcb_xkb_map_notify_event_t
  -- * 

  --*<   
   type anon4800_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_xkb_map_notify_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3247
      xkbType : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3248
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3249
      time : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/xkb.h:3250
      deviceID : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3251
      ptrBtnActions : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3252
      changed : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3253
      minKeyCode : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:3254
      maxKeyCode : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:3255
      firstType : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3256
      nTypes : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3257
      firstKeySym : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:3258
      nKeySyms : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3259
      firstKeyAct : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:3260
      nKeyActs : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3261
      firstKeyBehavior : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:3262
      nKeyBehavior : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3263
      firstKeyExplicit : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:3264
      nKeyExplicit : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3265
      firstModMapKey : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:3266
      nModMapKeys : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3267
      firstVModMapKey : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:3268
      nVModMapKeys : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3269
      virtualMods : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3270
      pad0 : aliased anon4800_anon1795_array;  -- /usr/include/xcb/xkb.h:3271
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_map_notify_event_t);  -- /usr/include/xcb/xkb.h:3246

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
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xkb_state_notify.  
  --*
  -- * @brief xcb_xkb_state_notify_event_t
  -- * 

  --*<   
   type xcb_xkb_state_notify_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3281
      xkbType : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3282
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3283
      time : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/xkb.h:3284
      deviceID : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3285
      mods : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3286
      baseMods : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3287
      latchedMods : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3288
      lockedMods : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3289
      group : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3290
      baseGroup : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xkb.h:3291
      latchedGroup : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xkb.h:3292
      lockedGroup : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3293
      compatState : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3294
      grabMods : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3295
      compatGrabMods : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3296
      lookupMods : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3297
      compatLoockupMods : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3298
      ptrBtnState : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3299
      changed : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3300
      keycode : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:3301
      eventType : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3302
      requestMajor : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3303
      requestMinor : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3304
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_state_notify_event_t);  -- /usr/include/xcb/xkb.h:3280

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
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xkb_controls_notify.  
  --*
  -- * @brief xcb_xkb_controls_notify_event_t
  -- * 

  --*<   
   type anon4806_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type anon4806_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type xcb_xkb_controls_notify_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3314
      xkbType : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3315
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3316
      time : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/xkb.h:3317
      deviceID : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3318
      numGroups : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3319
      pad0 : aliased anon4806_anon1795_array;  -- /usr/include/xcb/xkb.h:3320
      changedControls : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:3321
      enabledControls : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:3322
      enabledControlChanges : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:3323
      keycode : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:3324
      eventType : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3325
      requestMajor : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3326
      requestMinor : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3327
      pad1 : aliased anon4806_anon1768_array;  -- /usr/include/xcb/xkb.h:3328
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_controls_notify_event_t);  -- /usr/include/xcb/xkb.h:3313

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
  --* Opcode for xcb_xkb_indicator_state_notify.  
  --*
  -- * @brief xcb_xkb_indicator_state_notify_event_t
  -- * 

  --*<   
   type anon4812_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type anon4812_anon2079_array is array (0 .. 11) of aliased stdint_h.uint8_t;
   type xcb_xkb_indicator_state_notify_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3338
      xkbType : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3339
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3340
      time : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/xkb.h:3341
      deviceID : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3342
      pad0 : aliased anon4812_anon1853_array;  -- /usr/include/xcb/xkb.h:3343
      state : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:3344
      stateChanged : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:3345
      pad1 : aliased anon4812_anon2079_array;  -- /usr/include/xcb/xkb.h:3346
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_indicator_state_notify_event_t);  -- /usr/include/xcb/xkb.h:3337

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xkb_indicator_map_notify.  
  --*
  -- * @brief xcb_xkb_indicator_map_notify_event_t
  -- * 

  --*<   
   type anon4818_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type anon4818_anon2079_array is array (0 .. 11) of aliased stdint_h.uint8_t;
   type xcb_xkb_indicator_map_notify_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3356
      xkbType : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3357
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3358
      time : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/xkb.h:3359
      deviceID : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3360
      pad0 : aliased anon4818_anon1853_array;  -- /usr/include/xcb/xkb.h:3361
      state : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:3362
      mapChanged : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:3363
      pad1 : aliased anon4818_anon2079_array;  -- /usr/include/xcb/xkb.h:3364
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_indicator_map_notify_event_t);  -- /usr/include/xcb/xkb.h:3355

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xkb_names_notify.  
  --*
  -- * @brief xcb_xkb_names_notify_event_t
  -- * 

  --*<   
   type anon4824_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type xcb_xkb_names_notify_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3374
      xkbType : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3375
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3376
      time : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/xkb.h:3377
      deviceID : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3378
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3379
      changed : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3380
      firstType : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3381
      nTypes : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3382
      firstLevelName : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3383
      nLevelNames : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3384
      pad1 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3385
      nRadioGroups : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3386
      nKeyAliases : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3387
      changedGroupNames : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3388
      changedVirtualMods : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3389
      firstKey : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:3390
      nKeys : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3391
      changedIndicators : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:3392
      pad2 : aliased anon4824_anon1768_array;  -- /usr/include/xcb/xkb.h:3393
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_names_notify_event_t);  -- /usr/include/xcb/xkb.h:3373

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
  --* Opcode for xcb_xkb_compat_map_notify.  
  --*
  -- * @brief xcb_xkb_compat_map_notify_event_t
  -- * 

  --*<   
   type anon4828_anon4633_array is array (0 .. 15) of aliased stdint_h.uint8_t;
   type xcb_xkb_compat_map_notify_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3403
      xkbType : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3404
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3405
      time : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/xkb.h:3406
      deviceID : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3407
      changedGroups : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3408
      firstSI : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3409
      nSI : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3410
      nTotalSI : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3411
      pad0 : aliased anon4828_anon4633_array;  -- /usr/include/xcb/xkb.h:3412
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_compat_map_notify_event_t);  -- /usr/include/xcb/xkb.h:3402

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xkb_bell_notify.  
  --*
  -- * @brief xcb_xkb_bell_notify_event_t
  -- * 

  --*<   
   type anon4832_anon4376_array is array (0 .. 6) of aliased stdint_h.uint8_t;
   type xcb_xkb_bell_notify_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3422
      xkbType : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3423
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3424
      time : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/xkb.h:3425
      deviceID : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3426
      bellClass : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3427
      bellID : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3428
      percent : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3429
      pitch : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3430
      duration : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3431
      name : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:3432
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xkb.h:3433
      eventOnly : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3434
      pad0 : aliased anon4832_anon4376_array;  -- /usr/include/xcb/xkb.h:3435
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_bell_notify_event_t);  -- /usr/include/xcb/xkb.h:3421

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
  --* Opcode for xcb_xkb_action_message.  
  --*
  -- * @brief xcb_xkb_action_message_event_t
  -- * 

  --*<   
   type anon4836_anon4838_array is array (0 .. 7) of aliased xcb_xkb_string8_t;
   type anon4836_anon4723_array is array (0 .. 9) of aliased stdint_h.uint8_t;
   type xcb_xkb_action_message_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3445
      xkbType : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3446
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3447
      time : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/xkb.h:3448
      deviceID : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3449
      keycode : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:3450
      press : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3451
      keyEventFollows : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3452
      mods : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3453
      group : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3454
      message : aliased anon4836_anon4838_array;  -- /usr/include/xcb/xkb.h:3455
      pad0 : aliased anon4836_anon4723_array;  -- /usr/include/xcb/xkb.h:3456
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_action_message_event_t);  -- /usr/include/xcb/xkb.h:3444

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
  --* Opcode for xcb_xkb_access_x_notify.  
  --*
  -- * @brief xcb_xkb_access_x_notify_event_t
  -- * 

  --*<   
   type anon4843_anon4633_array is array (0 .. 15) of aliased stdint_h.uint8_t;
   type xcb_xkb_access_x_notify_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3466
      xkbType : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3467
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3468
      time : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/xkb.h:3469
      deviceID : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3470
      keycode : aliased xcb_xproto_h.xcb_keycode_t;  -- /usr/include/xcb/xkb.h:3471
      detailt : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3472
      slowKeysDelay : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3473
      debounceDelay : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3474
      pad0 : aliased anon4843_anon4633_array;  -- /usr/include/xcb/xkb.h:3475
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_access_x_notify_event_t);  -- /usr/include/xcb/xkb.h:3465

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_xkb_extension_device_notify.  
  --*
  -- * @brief xcb_xkb_extension_device_notify_event_t
  -- * 

  --*<   
   type anon4847_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_xkb_extension_device_notify_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3485
      xkbType : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3486
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3487
      time : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/xkb.h:3488
      deviceID : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3489
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3490
      reason : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3491
      ledClass : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3492
      ledID : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3493
      ledsDefined : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:3494
      ledState : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xkb.h:3495
      firstButton : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3496
      nButtons : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3497
      supported : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3498
      unsupported : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xkb.h:3499
      pad1 : aliased anon4847_anon1795_array;  -- /usr/include/xcb/xkb.h:3500
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_xkb_extension_device_notify_event_t);  -- /usr/include/xcb/xkb.h:3484

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
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_ax_option_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_ax_option_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_ax_option_next
  -- ** 
  -- ** @param xcb_xkb_ax_option_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_ax_option_next (arg1 : access xcb_xkb_ax_option_iterator_t);  -- /usr/include/xcb/xkb.h:3522
   pragma Import (C, xcb_xkb_ax_option_next, "xcb_xkb_ax_option_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_ax_option_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_ax_option_end
  -- ** 
  -- ** @param xcb_xkb_ax_option_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_ax_option_end (arg1 : xcb_xkb_ax_option_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:3544
   pragma Import (C, xcb_xkb_ax_option_end, "xcb_xkb_ax_option_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_device_spec_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_device_spec_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_device_spec_next
  -- ** 
  -- ** @param xcb_xkb_device_spec_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_device_spec_next (arg1 : access xcb_xkb_device_spec_iterator_t);  -- /usr/include/xcb/xkb.h:3565
   pragma Import (C, xcb_xkb_device_spec_next, "xcb_xkb_device_spec_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_device_spec_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_device_spec_end
  -- ** 
  -- ** @param xcb_xkb_device_spec_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_device_spec_end (arg1 : xcb_xkb_device_spec_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:3587
   pragma Import (C, xcb_xkb_device_spec_end, "xcb_xkb_device_spec_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_led_class_spec_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_led_class_spec_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_led_class_spec_next
  -- ** 
  -- ** @param xcb_xkb_led_class_spec_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_led_class_spec_next (arg1 : access xcb_xkb_led_class_spec_iterator_t);  -- /usr/include/xcb/xkb.h:3608
   pragma Import (C, xcb_xkb_led_class_spec_next, "xcb_xkb_led_class_spec_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_led_class_spec_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_led_class_spec_end
  -- ** 
  -- ** @param xcb_xkb_led_class_spec_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_led_class_spec_end (arg1 : xcb_xkb_led_class_spec_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:3630
   pragma Import (C, xcb_xkb_led_class_spec_end, "xcb_xkb_led_class_spec_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_bell_class_spec_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_bell_class_spec_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_bell_class_spec_next
  -- ** 
  -- ** @param xcb_xkb_bell_class_spec_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_bell_class_spec_next (arg1 : access xcb_xkb_bell_class_spec_iterator_t);  -- /usr/include/xcb/xkb.h:3651
   pragma Import (C, xcb_xkb_bell_class_spec_next, "xcb_xkb_bell_class_spec_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_bell_class_spec_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_bell_class_spec_end
  -- ** 
  -- ** @param xcb_xkb_bell_class_spec_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_bell_class_spec_end (arg1 : xcb_xkb_bell_class_spec_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:3673
   pragma Import (C, xcb_xkb_bell_class_spec_end, "xcb_xkb_bell_class_spec_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_id_spec_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_id_spec_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_id_spec_next
  -- ** 
  -- ** @param xcb_xkb_id_spec_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_id_spec_next (arg1 : access xcb_xkb_id_spec_iterator_t);  -- /usr/include/xcb/xkb.h:3694
   pragma Import (C, xcb_xkb_id_spec_next, "xcb_xkb_id_spec_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_id_spec_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_id_spec_end
  -- ** 
  -- ** @param xcb_xkb_id_spec_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_id_spec_end (arg1 : xcb_xkb_id_spec_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:3716
   pragma Import (C, xcb_xkb_id_spec_end, "xcb_xkb_id_spec_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_indicator_map_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_indicator_map_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_indicator_map_next
  -- ** 
  -- ** @param xcb_xkb_indicator_map_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_indicator_map_next (arg1 : access xcb_xkb_indicator_map_iterator_t);  -- /usr/include/xcb/xkb.h:3737
   pragma Import (C, xcb_xkb_indicator_map_next, "xcb_xkb_indicator_map_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_indicator_map_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_indicator_map_end
  -- ** 
  -- ** @param xcb_xkb_indicator_map_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_indicator_map_end (arg1 : xcb_xkb_indicator_map_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:3759
   pragma Import (C, xcb_xkb_indicator_map_end, "xcb_xkb_indicator_map_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_mod_def_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_mod_def_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_mod_def_next
  -- ** 
  -- ** @param xcb_xkb_mod_def_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_mod_def_next (arg1 : access xcb_xkb_mod_def_iterator_t);  -- /usr/include/xcb/xkb.h:3780
   pragma Import (C, xcb_xkb_mod_def_next, "xcb_xkb_mod_def_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_mod_def_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_mod_def_end
  -- ** 
  -- ** @param xcb_xkb_mod_def_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_mod_def_end (arg1 : xcb_xkb_mod_def_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:3802
   pragma Import (C, xcb_xkb_mod_def_end, "xcb_xkb_mod_def_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_key_name_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_key_name_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_key_name_next
  -- ** 
  -- ** @param xcb_xkb_key_name_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_key_name_next (arg1 : access xcb_xkb_key_name_iterator_t);  -- /usr/include/xcb/xkb.h:3823
   pragma Import (C, xcb_xkb_key_name_next, "xcb_xkb_key_name_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_key_name_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_key_name_end
  -- ** 
  -- ** @param xcb_xkb_key_name_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_key_name_end (arg1 : xcb_xkb_key_name_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:3845
   pragma Import (C, xcb_xkb_key_name_end, "xcb_xkb_key_name_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_key_alias_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_key_alias_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_key_alias_next
  -- ** 
  -- ** @param xcb_xkb_key_alias_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_key_alias_next (arg1 : access xcb_xkb_key_alias_iterator_t);  -- /usr/include/xcb/xkb.h:3866
   pragma Import (C, xcb_xkb_key_alias_next, "xcb_xkb_key_alias_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_key_alias_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_key_alias_end
  -- ** 
  -- ** @param xcb_xkb_key_alias_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_key_alias_end (arg1 : xcb_xkb_key_alias_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:3888
   pragma Import (C, xcb_xkb_key_alias_end, "xcb_xkb_key_alias_end");

  --*<  
   function xcb_xkb_counted_string_8_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:3891
   pragma Import (C, xcb_xkb_counted_string_8_sizeof, "xcb_xkb_counted_string_8_sizeof");

  --****************************************************************************
  -- **
  -- ** uint8_t * xcb_xkb_counted_string_8_string
  -- ** 
  -- ** @param const xcb_xkb_counted_string_8_t *R
  -- ** @returns uint8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_counted_string_8_string (arg1 : System.Address) return access stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3904
   pragma Import (C, xcb_xkb_counted_string_8_string, "xcb_xkb_counted_string_8_string");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_counted_string_8_string_length
  -- ** 
  -- ** @param const xcb_xkb_counted_string_8_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_counted_string_8_string_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:3917
   pragma Import (C, xcb_xkb_counted_string_8_string_length, "xcb_xkb_counted_string_8_string_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_counted_string_8_string_end
  -- ** 
  -- ** @param const xcb_xkb_counted_string_8_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_counted_string_8_string_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:3930
   pragma Import (C, xcb_xkb_counted_string_8_string_end, "xcb_xkb_counted_string_8_string_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_counted_string_8_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_counted_string_8_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_counted_string_8_next
  -- ** 
  -- ** @param xcb_xkb_counted_string_8_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_counted_string_8_next (arg1 : access xcb_xkb_counted_string_8_iterator_t);  -- /usr/include/xcb/xkb.h:3951
   pragma Import (C, xcb_xkb_counted_string_8_next, "xcb_xkb_counted_string_8_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_counted_string_8_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_counted_string_8_end
  -- ** 
  -- ** @param xcb_xkb_counted_string_8_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_counted_string_8_end (arg1 : xcb_xkb_counted_string_8_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:3973
   pragma Import (C, xcb_xkb_counted_string_8_end, "xcb_xkb_counted_string_8_end");

  --*<  
   function xcb_xkb_counted_string_16_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:3976
   pragma Import (C, xcb_xkb_counted_string_16_sizeof, "xcb_xkb_counted_string_16_sizeof");

  --****************************************************************************
  -- **
  -- ** uint8_t * xcb_xkb_counted_string_16_string
  -- ** 
  -- ** @param const xcb_xkb_counted_string_16_t *R
  -- ** @returns uint8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_counted_string_16_string (arg1 : System.Address) return access stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:3989
   pragma Import (C, xcb_xkb_counted_string_16_string, "xcb_xkb_counted_string_16_string");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_counted_string_16_string_length
  -- ** 
  -- ** @param const xcb_xkb_counted_string_16_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_counted_string_16_string_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:4002
   pragma Import (C, xcb_xkb_counted_string_16_string_length, "xcb_xkb_counted_string_16_string_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_counted_string_16_string_end
  -- ** 
  -- ** @param const xcb_xkb_counted_string_16_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_counted_string_16_string_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:4015
   pragma Import (C, xcb_xkb_counted_string_16_string_end, "xcb_xkb_counted_string_16_string_end");

  --****************************************************************************
  -- **
  -- ** uint8_t * xcb_xkb_counted_string_16_pad_0
  -- ** 
  -- ** @param const xcb_xkb_counted_string_16_t *R
  -- ** @returns uint8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_counted_string_16_pad_0 (arg1 : System.Address) return access stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:4028
   pragma Import (C, xcb_xkb_counted_string_16_pad_0, "xcb_xkb_counted_string_16_pad_0");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_counted_string_16_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_counted_string_16_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_counted_string_16_next
  -- ** 
  -- ** @param xcb_xkb_counted_string_16_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_counted_string_16_next (arg1 : access xcb_xkb_counted_string_16_iterator_t);  -- /usr/include/xcb/xkb.h:4049
   pragma Import (C, xcb_xkb_counted_string_16_next, "xcb_xkb_counted_string_16_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_counted_string_16_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_counted_string_16_end
  -- ** 
  -- ** @param xcb_xkb_counted_string_16_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_counted_string_16_end (arg1 : xcb_xkb_counted_string_16_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:4071
   pragma Import (C, xcb_xkb_counted_string_16_end, "xcb_xkb_counted_string_16_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_kt_map_entry_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_kt_map_entry_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_kt_map_entry_next
  -- ** 
  -- ** @param xcb_xkb_kt_map_entry_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_kt_map_entry_next (arg1 : access xcb_xkb_kt_map_entry_iterator_t);  -- /usr/include/xcb/xkb.h:4092
   pragma Import (C, xcb_xkb_kt_map_entry_next, "xcb_xkb_kt_map_entry_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_kt_map_entry_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_kt_map_entry_end
  -- ** 
  -- ** @param xcb_xkb_kt_map_entry_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_kt_map_entry_end (arg1 : xcb_xkb_kt_map_entry_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:4114
   pragma Import (C, xcb_xkb_kt_map_entry_end, "xcb_xkb_kt_map_entry_end");

  --*<  
   function xcb_xkb_key_type_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:4117
   pragma Import (C, xcb_xkb_key_type_sizeof, "xcb_xkb_key_type_sizeof");

  --****************************************************************************
  -- **
  -- ** xcb_xkb_kt_map_entry_t * xcb_xkb_key_type_map
  -- ** 
  -- ** @param const xcb_xkb_key_type_t *R
  -- ** @returns xcb_xkb_kt_map_entry_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_key_type_map (arg1 : System.Address) return access xcb_xkb_kt_map_entry_t;  -- /usr/include/xcb/xkb.h:4130
   pragma Import (C, xcb_xkb_key_type_map, "xcb_xkb_key_type_map");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_key_type_map_length
  -- ** 
  -- ** @param const xcb_xkb_key_type_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_key_type_map_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:4143
   pragma Import (C, xcb_xkb_key_type_map_length, "xcb_xkb_key_type_map_length");

  --****************************************************************************
  -- **
  -- ** xcb_xkb_kt_map_entry_iterator_t xcb_xkb_key_type_map_iterator
  -- ** 
  -- ** @param const xcb_xkb_key_type_t *R
  -- ** @returns xcb_xkb_kt_map_entry_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_key_type_map_iterator (arg1 : System.Address) return xcb_xkb_kt_map_entry_iterator_t;  -- /usr/include/xcb/xkb.h:4156
   pragma Import (C, xcb_xkb_key_type_map_iterator, "xcb_xkb_key_type_map_iterator");

  --****************************************************************************
  -- **
  -- ** xcb_xkb_mod_def_t * xcb_xkb_key_type_preserve
  -- ** 
  -- ** @param const xcb_xkb_key_type_t *R
  -- ** @returns xcb_xkb_mod_def_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_key_type_preserve (arg1 : System.Address) return access xcb_xkb_mod_def_t;  -- /usr/include/xcb/xkb.h:4169
   pragma Import (C, xcb_xkb_key_type_preserve, "xcb_xkb_key_type_preserve");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_key_type_preserve_length
  -- ** 
  -- ** @param const xcb_xkb_key_type_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_key_type_preserve_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:4182
   pragma Import (C, xcb_xkb_key_type_preserve_length, "xcb_xkb_key_type_preserve_length");

  --****************************************************************************
  -- **
  -- ** xcb_xkb_mod_def_iterator_t xcb_xkb_key_type_preserve_iterator
  -- ** 
  -- ** @param const xcb_xkb_key_type_t *R
  -- ** @returns xcb_xkb_mod_def_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_key_type_preserve_iterator (arg1 : System.Address) return xcb_xkb_mod_def_iterator_t;  -- /usr/include/xcb/xkb.h:4195
   pragma Import (C, xcb_xkb_key_type_preserve_iterator, "xcb_xkb_key_type_preserve_iterator");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_key_type_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_key_type_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_key_type_next
  -- ** 
  -- ** @param xcb_xkb_key_type_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_key_type_next (arg1 : access xcb_xkb_key_type_iterator_t);  -- /usr/include/xcb/xkb.h:4216
   pragma Import (C, xcb_xkb_key_type_next, "xcb_xkb_key_type_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_key_type_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_key_type_end
  -- ** 
  -- ** @param xcb_xkb_key_type_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_key_type_end (arg1 : xcb_xkb_key_type_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:4238
   pragma Import (C, xcb_xkb_key_type_end, "xcb_xkb_key_type_end");

  --*<  
   function xcb_xkb_key_sym_map_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:4241
   pragma Import (C, xcb_xkb_key_sym_map_sizeof, "xcb_xkb_key_sym_map_sizeof");

  --****************************************************************************
  -- **
  -- ** xcb_keysym_t * xcb_xkb_key_sym_map_syms
  -- ** 
  -- ** @param const xcb_xkb_key_sym_map_t *R
  -- ** @returns xcb_keysym_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_key_sym_map_syms (arg1 : System.Address) return access xcb_xproto_h.xcb_keysym_t;  -- /usr/include/xcb/xkb.h:4254
   pragma Import (C, xcb_xkb_key_sym_map_syms, "xcb_xkb_key_sym_map_syms");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_key_sym_map_syms_length
  -- ** 
  -- ** @param const xcb_xkb_key_sym_map_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_key_sym_map_syms_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:4267
   pragma Import (C, xcb_xkb_key_sym_map_syms_length, "xcb_xkb_key_sym_map_syms_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_key_sym_map_syms_end
  -- ** 
  -- ** @param const xcb_xkb_key_sym_map_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_key_sym_map_syms_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:4280
   pragma Import (C, xcb_xkb_key_sym_map_syms_end, "xcb_xkb_key_sym_map_syms_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_key_sym_map_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_key_sym_map_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_key_sym_map_next
  -- ** 
  -- ** @param xcb_xkb_key_sym_map_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_key_sym_map_next (arg1 : access xcb_xkb_key_sym_map_iterator_t);  -- /usr/include/xcb/xkb.h:4301
   pragma Import (C, xcb_xkb_key_sym_map_next, "xcb_xkb_key_sym_map_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_key_sym_map_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_key_sym_map_end
  -- ** 
  -- ** @param xcb_xkb_key_sym_map_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_key_sym_map_end (arg1 : xcb_xkb_key_sym_map_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:4323
   pragma Import (C, xcb_xkb_key_sym_map_end, "xcb_xkb_key_sym_map_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_common_behavior_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_common_behavior_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_common_behavior_next
  -- ** 
  -- ** @param xcb_xkb_common_behavior_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_common_behavior_next (arg1 : access xcb_xkb_common_behavior_iterator_t);  -- /usr/include/xcb/xkb.h:4344
   pragma Import (C, xcb_xkb_common_behavior_next, "xcb_xkb_common_behavior_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_common_behavior_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_common_behavior_end
  -- ** 
  -- ** @param xcb_xkb_common_behavior_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_common_behavior_end (arg1 : xcb_xkb_common_behavior_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:4366
   pragma Import (C, xcb_xkb_common_behavior_end, "xcb_xkb_common_behavior_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_default_behavior_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_default_behavior_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_default_behavior_next
  -- ** 
  -- ** @param xcb_xkb_default_behavior_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_default_behavior_next (arg1 : access xcb_xkb_default_behavior_iterator_t);  -- /usr/include/xcb/xkb.h:4387
   pragma Import (C, xcb_xkb_default_behavior_next, "xcb_xkb_default_behavior_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_default_behavior_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_default_behavior_end
  -- ** 
  -- ** @param xcb_xkb_default_behavior_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_default_behavior_end (arg1 : xcb_xkb_default_behavior_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:4409
   pragma Import (C, xcb_xkb_default_behavior_end, "xcb_xkb_default_behavior_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_lock_behavior_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_lock_behavior_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_lock_behavior_next
  -- ** 
  -- ** @param xcb_xkb_lock_behavior_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_lock_behavior_next (arg1 : access xcb_xkb_lock_behavior_iterator_t);  -- /usr/include/xcb/xkb.h:4430
   pragma Import (C, xcb_xkb_lock_behavior_next, "xcb_xkb_lock_behavior_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_lock_behavior_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_lock_behavior_end
  -- ** 
  -- ** @param xcb_xkb_lock_behavior_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_lock_behavior_end (arg1 : xcb_xkb_lock_behavior_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:4452
   pragma Import (C, xcb_xkb_lock_behavior_end, "xcb_xkb_lock_behavior_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_radio_group_behavior_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_radio_group_behavior_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_radio_group_behavior_next
  -- ** 
  -- ** @param xcb_xkb_radio_group_behavior_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_radio_group_behavior_next (arg1 : access xcb_xkb_radio_group_behavior_iterator_t);  -- /usr/include/xcb/xkb.h:4473
   pragma Import (C, xcb_xkb_radio_group_behavior_next, "xcb_xkb_radio_group_behavior_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_radio_group_behavior_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_radio_group_behavior_end
  -- ** 
  -- ** @param xcb_xkb_radio_group_behavior_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_radio_group_behavior_end (arg1 : xcb_xkb_radio_group_behavior_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:4495
   pragma Import (C, xcb_xkb_radio_group_behavior_end, "xcb_xkb_radio_group_behavior_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_overlay_1_behavior_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_overlay_1_behavior_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_overlay_1_behavior_next
  -- ** 
  -- ** @param xcb_xkb_overlay_1_behavior_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_overlay_1_behavior_next (arg1 : access xcb_xkb_overlay_1_behavior_iterator_t);  -- /usr/include/xcb/xkb.h:4516
   pragma Import (C, xcb_xkb_overlay_1_behavior_next, "xcb_xkb_overlay_1_behavior_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_overlay_1_behavior_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_overlay_1_behavior_end
  -- ** 
  -- ** @param xcb_xkb_overlay_1_behavior_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_overlay_1_behavior_end (arg1 : xcb_xkb_overlay_1_behavior_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:4538
   pragma Import (C, xcb_xkb_overlay_1_behavior_end, "xcb_xkb_overlay_1_behavior_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_overlay_2_behavior_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_overlay_2_behavior_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_overlay_2_behavior_next
  -- ** 
  -- ** @param xcb_xkb_overlay_2_behavior_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_overlay_2_behavior_next (arg1 : access xcb_xkb_overlay_2_behavior_iterator_t);  -- /usr/include/xcb/xkb.h:4559
   pragma Import (C, xcb_xkb_overlay_2_behavior_next, "xcb_xkb_overlay_2_behavior_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_overlay_2_behavior_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_overlay_2_behavior_end
  -- ** 
  -- ** @param xcb_xkb_overlay_2_behavior_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_overlay_2_behavior_end (arg1 : xcb_xkb_overlay_2_behavior_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:4581
   pragma Import (C, xcb_xkb_overlay_2_behavior_end, "xcb_xkb_overlay_2_behavior_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_permament_lock_behavior_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_permament_lock_behavior_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_permament_lock_behavior_next
  -- ** 
  -- ** @param xcb_xkb_permament_lock_behavior_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_permament_lock_behavior_next (arg1 : access xcb_xkb_permament_lock_behavior_iterator_t);  -- /usr/include/xcb/xkb.h:4602
   pragma Import (C, xcb_xkb_permament_lock_behavior_next, "xcb_xkb_permament_lock_behavior_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_permament_lock_behavior_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_permament_lock_behavior_end
  -- ** 
  -- ** @param xcb_xkb_permament_lock_behavior_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_permament_lock_behavior_end (arg1 : xcb_xkb_permament_lock_behavior_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:4624
   pragma Import (C, xcb_xkb_permament_lock_behavior_end, "xcb_xkb_permament_lock_behavior_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_permament_radio_group_behavior_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_permament_radio_group_behavior_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_permament_radio_group_behavior_next
  -- ** 
  -- ** @param xcb_xkb_permament_radio_group_behavior_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_permament_radio_group_behavior_next (arg1 : access xcb_xkb_permament_radio_group_behavior_iterator_t);  -- /usr/include/xcb/xkb.h:4645
   pragma Import (C, xcb_xkb_permament_radio_group_behavior_next, "xcb_xkb_permament_radio_group_behavior_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_permament_radio_group_behavior_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_permament_radio_group_behavior_end
  -- ** 
  -- ** @param xcb_xkb_permament_radio_group_behavior_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_permament_radio_group_behavior_end (arg1 : xcb_xkb_permament_radio_group_behavior_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:4667
   pragma Import (C, xcb_xkb_permament_radio_group_behavior_end, "xcb_xkb_permament_radio_group_behavior_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_permament_overlay_1_behavior_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_permament_overlay_1_behavior_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_permament_overlay_1_behavior_next
  -- ** 
  -- ** @param xcb_xkb_permament_overlay_1_behavior_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_permament_overlay_1_behavior_next (arg1 : access xcb_xkb_permament_overlay_1_behavior_iterator_t);  -- /usr/include/xcb/xkb.h:4688
   pragma Import (C, xcb_xkb_permament_overlay_1_behavior_next, "xcb_xkb_permament_overlay_1_behavior_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_permament_overlay_1_behavior_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_permament_overlay_1_behavior_end
  -- ** 
  -- ** @param xcb_xkb_permament_overlay_1_behavior_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_permament_overlay_1_behavior_end (arg1 : xcb_xkb_permament_overlay_1_behavior_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:4710
   pragma Import (C, xcb_xkb_permament_overlay_1_behavior_end, "xcb_xkb_permament_overlay_1_behavior_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_permament_overlay_2_behavior_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_permament_overlay_2_behavior_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_permament_overlay_2_behavior_next
  -- ** 
  -- ** @param xcb_xkb_permament_overlay_2_behavior_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_permament_overlay_2_behavior_next (arg1 : access xcb_xkb_permament_overlay_2_behavior_iterator_t);  -- /usr/include/xcb/xkb.h:4731
   pragma Import (C, xcb_xkb_permament_overlay_2_behavior_next, "xcb_xkb_permament_overlay_2_behavior_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_permament_overlay_2_behavior_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_permament_overlay_2_behavior_end
  -- ** 
  -- ** @param xcb_xkb_permament_overlay_2_behavior_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_permament_overlay_2_behavior_end (arg1 : xcb_xkb_permament_overlay_2_behavior_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:4753
   pragma Import (C, xcb_xkb_permament_overlay_2_behavior_end, "xcb_xkb_permament_overlay_2_behavior_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_behavior_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_behavior_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_behavior_next
  -- ** 
  -- ** @param xcb_xkb_behavior_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_behavior_next (arg1 : access xcb_xkb_behavior_iterator_t);  -- /usr/include/xcb/xkb.h:4774
   pragma Import (C, xcb_xkb_behavior_next, "xcb_xkb_behavior_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_behavior_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_behavior_end
  -- ** 
  -- ** @param xcb_xkb_behavior_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_behavior_end (arg1 : xcb_xkb_behavior_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:4796
   pragma Import (C, xcb_xkb_behavior_end, "xcb_xkb_behavior_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_set_behavior_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_set_behavior_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_set_behavior_next
  -- ** 
  -- ** @param xcb_xkb_set_behavior_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_set_behavior_next (arg1 : access xcb_xkb_set_behavior_iterator_t);  -- /usr/include/xcb/xkb.h:4817
   pragma Import (C, xcb_xkb_set_behavior_next, "xcb_xkb_set_behavior_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_set_behavior_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_set_behavior_end
  -- ** 
  -- ** @param xcb_xkb_set_behavior_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_behavior_end (arg1 : xcb_xkb_set_behavior_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:4839
   pragma Import (C, xcb_xkb_set_behavior_end, "xcb_xkb_set_behavior_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_set_explicit_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_set_explicit_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_set_explicit_next
  -- ** 
  -- ** @param xcb_xkb_set_explicit_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_set_explicit_next (arg1 : access xcb_xkb_set_explicit_iterator_t);  -- /usr/include/xcb/xkb.h:4860
   pragma Import (C, xcb_xkb_set_explicit_next, "xcb_xkb_set_explicit_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_set_explicit_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_set_explicit_end
  -- ** 
  -- ** @param xcb_xkb_set_explicit_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_explicit_end (arg1 : xcb_xkb_set_explicit_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:4882
   pragma Import (C, xcb_xkb_set_explicit_end, "xcb_xkb_set_explicit_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_key_mod_map_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_key_mod_map_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_key_mod_map_next
  -- ** 
  -- ** @param xcb_xkb_key_mod_map_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_key_mod_map_next (arg1 : access xcb_xkb_key_mod_map_iterator_t);  -- /usr/include/xcb/xkb.h:4903
   pragma Import (C, xcb_xkb_key_mod_map_next, "xcb_xkb_key_mod_map_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_key_mod_map_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_key_mod_map_end
  -- ** 
  -- ** @param xcb_xkb_key_mod_map_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_key_mod_map_end (arg1 : xcb_xkb_key_mod_map_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:4925
   pragma Import (C, xcb_xkb_key_mod_map_end, "xcb_xkb_key_mod_map_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_key_v_mod_map_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_key_v_mod_map_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_key_v_mod_map_next
  -- ** 
  -- ** @param xcb_xkb_key_v_mod_map_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_key_v_mod_map_next (arg1 : access xcb_xkb_key_v_mod_map_iterator_t);  -- /usr/include/xcb/xkb.h:4946
   pragma Import (C, xcb_xkb_key_v_mod_map_next, "xcb_xkb_key_v_mod_map_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_key_v_mod_map_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_key_v_mod_map_end
  -- ** 
  -- ** @param xcb_xkb_key_v_mod_map_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_key_v_mod_map_end (arg1 : xcb_xkb_key_v_mod_map_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:4968
   pragma Import (C, xcb_xkb_key_v_mod_map_end, "xcb_xkb_key_v_mod_map_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_kt_set_map_entry_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_kt_set_map_entry_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_kt_set_map_entry_next
  -- ** 
  -- ** @param xcb_xkb_kt_set_map_entry_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_kt_set_map_entry_next (arg1 : access xcb_xkb_kt_set_map_entry_iterator_t);  -- /usr/include/xcb/xkb.h:4989
   pragma Import (C, xcb_xkb_kt_set_map_entry_next, "xcb_xkb_kt_set_map_entry_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_kt_set_map_entry_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_kt_set_map_entry_end
  -- ** 
  -- ** @param xcb_xkb_kt_set_map_entry_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_kt_set_map_entry_end (arg1 : xcb_xkb_kt_set_map_entry_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:5011
   pragma Import (C, xcb_xkb_kt_set_map_entry_end, "xcb_xkb_kt_set_map_entry_end");

  --*<  
   function xcb_xkb_set_key_type_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:5014
   pragma Import (C, xcb_xkb_set_key_type_sizeof, "xcb_xkb_set_key_type_sizeof");

  --****************************************************************************
  -- **
  -- ** xcb_xkb_kt_set_map_entry_t * xcb_xkb_set_key_type_entries
  -- ** 
  -- ** @param const xcb_xkb_set_key_type_t *R
  -- ** @returns xcb_xkb_kt_set_map_entry_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_key_type_entries (arg1 : System.Address) return access xcb_xkb_kt_set_map_entry_t;  -- /usr/include/xcb/xkb.h:5027
   pragma Import (C, xcb_xkb_set_key_type_entries, "xcb_xkb_set_key_type_entries");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_set_key_type_entries_length
  -- ** 
  -- ** @param const xcb_xkb_set_key_type_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_key_type_entries_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:5040
   pragma Import (C, xcb_xkb_set_key_type_entries_length, "xcb_xkb_set_key_type_entries_length");

  --****************************************************************************
  -- **
  -- ** xcb_xkb_kt_set_map_entry_iterator_t xcb_xkb_set_key_type_entries_iterator
  -- ** 
  -- ** @param const xcb_xkb_set_key_type_t *R
  -- ** @returns xcb_xkb_kt_set_map_entry_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_key_type_entries_iterator (arg1 : System.Address) return xcb_xkb_kt_set_map_entry_iterator_t;  -- /usr/include/xcb/xkb.h:5053
   pragma Import (C, xcb_xkb_set_key_type_entries_iterator, "xcb_xkb_set_key_type_entries_iterator");

  --****************************************************************************
  -- **
  -- ** xcb_xkb_kt_set_map_entry_t * xcb_xkb_set_key_type_preserve_entries
  -- ** 
  -- ** @param const xcb_xkb_set_key_type_t *R
  -- ** @returns xcb_xkb_kt_set_map_entry_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_key_type_preserve_entries (arg1 : System.Address) return access xcb_xkb_kt_set_map_entry_t;  -- /usr/include/xcb/xkb.h:5066
   pragma Import (C, xcb_xkb_set_key_type_preserve_entries, "xcb_xkb_set_key_type_preserve_entries");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_set_key_type_preserve_entries_length
  -- ** 
  -- ** @param const xcb_xkb_set_key_type_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_key_type_preserve_entries_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:5079
   pragma Import (C, xcb_xkb_set_key_type_preserve_entries_length, "xcb_xkb_set_key_type_preserve_entries_length");

  --****************************************************************************
  -- **
  -- ** xcb_xkb_kt_set_map_entry_iterator_t xcb_xkb_set_key_type_preserve_entries_iterator
  -- ** 
  -- ** @param const xcb_xkb_set_key_type_t *R
  -- ** @returns xcb_xkb_kt_set_map_entry_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_key_type_preserve_entries_iterator (arg1 : System.Address) return xcb_xkb_kt_set_map_entry_iterator_t;  -- /usr/include/xcb/xkb.h:5092
   pragma Import (C, xcb_xkb_set_key_type_preserve_entries_iterator, "xcb_xkb_set_key_type_preserve_entries_iterator");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_set_key_type_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_set_key_type_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_set_key_type_next
  -- ** 
  -- ** @param xcb_xkb_set_key_type_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_set_key_type_next (arg1 : access xcb_xkb_set_key_type_iterator_t);  -- /usr/include/xcb/xkb.h:5113
   pragma Import (C, xcb_xkb_set_key_type_next, "xcb_xkb_set_key_type_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_set_key_type_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_set_key_type_end
  -- ** 
  -- ** @param xcb_xkb_set_key_type_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_key_type_end (arg1 : xcb_xkb_set_key_type_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:5135
   pragma Import (C, xcb_xkb_set_key_type_end, "xcb_xkb_set_key_type_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_string8_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_string8_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_string8_next
  -- ** 
  -- ** @param xcb_xkb_string8_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_string8_next (arg1 : access xcb_xkb_string8_iterator_t);  -- /usr/include/xcb/xkb.h:5156
   pragma Import (C, xcb_xkb_string8_next, "xcb_xkb_string8_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_string8_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_string8_end
  -- ** 
  -- ** @param xcb_xkb_string8_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_string8_end (arg1 : xcb_xkb_string8_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:5178
   pragma Import (C, xcb_xkb_string8_end, "xcb_xkb_string8_end");

  --*<  
   function xcb_xkb_property_serialize
     (arg1 : System.Address;
      arg2 : System.Address;
      arg3 : access xcb_xkb_string8_t;
      arg4 : access xcb_xkb_string8_t) return int;  -- /usr/include/xcb/xkb.h:5181
   pragma Import (C, xcb_xkb_property_serialize, "xcb_xkb_property_serialize");

  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_xkb_property_unserialize (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:5187
   pragma Import (C, xcb_xkb_property_unserialize, "xcb_xkb_property_unserialize");

  --*<  
  --*<  
   function xcb_xkb_property_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:5191
   pragma Import (C, xcb_xkb_property_sizeof, "xcb_xkb_property_sizeof");

  --****************************************************************************
  -- **
  -- ** xcb_xkb_string8_t * xcb_xkb_property_name
  -- ** 
  -- ** @param const xcb_xkb_property_t *R
  -- ** @returns xcb_xkb_string8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_property_name (arg1 : System.Address) return access xcb_xkb_string8_t;  -- /usr/include/xcb/xkb.h:5204
   pragma Import (C, xcb_xkb_property_name, "xcb_xkb_property_name");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_property_name_length
  -- ** 
  -- ** @param const xcb_xkb_property_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_property_name_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:5217
   pragma Import (C, xcb_xkb_property_name_length, "xcb_xkb_property_name_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_property_name_end
  -- ** 
  -- ** @param const xcb_xkb_property_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_property_name_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:5230
   pragma Import (C, xcb_xkb_property_name_end, "xcb_xkb_property_name_end");

  --****************************************************************************
  -- **
  -- ** xcb_xkb_string8_t * xcb_xkb_property_value
  -- ** 
  -- ** @param const xcb_xkb_property_t *R
  -- ** @returns xcb_xkb_string8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_property_value (arg1 : System.Address) return access xcb_xkb_string8_t;  -- /usr/include/xcb/xkb.h:5243
   pragma Import (C, xcb_xkb_property_value, "xcb_xkb_property_value");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_property_value_length
  -- ** 
  -- ** @param const xcb_xkb_property_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_property_value_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:5256
   pragma Import (C, xcb_xkb_property_value_length, "xcb_xkb_property_value_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_property_value_end
  -- ** 
  -- ** @param const xcb_xkb_property_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_property_value_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:5269
   pragma Import (C, xcb_xkb_property_value_end, "xcb_xkb_property_value_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_property_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_property_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_property_next
  -- ** 
  -- ** @param xcb_xkb_property_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_property_next (arg1 : access xcb_xkb_property_iterator_t);  -- /usr/include/xcb/xkb.h:5290
   pragma Import (C, xcb_xkb_property_next, "xcb_xkb_property_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_property_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_property_end
  -- ** 
  -- ** @param xcb_xkb_property_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_property_end (arg1 : xcb_xkb_property_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:5312
   pragma Import (C, xcb_xkb_property_end, "xcb_xkb_property_end");

  --*<  
   function xcb_xkb_outline_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:5315
   pragma Import (C, xcb_xkb_outline_sizeof, "xcb_xkb_outline_sizeof");

  --****************************************************************************
  -- **
  -- ** xcb_point_t * xcb_xkb_outline_points
  -- ** 
  -- ** @param const xcb_xkb_outline_t *R
  -- ** @returns xcb_point_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_outline_points (arg1 : System.Address) return access xcb_xproto_h.xcb_point_t;  -- /usr/include/xcb/xkb.h:5328
   pragma Import (C, xcb_xkb_outline_points, "xcb_xkb_outline_points");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_outline_points_length
  -- ** 
  -- ** @param const xcb_xkb_outline_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_outline_points_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:5341
   pragma Import (C, xcb_xkb_outline_points_length, "xcb_xkb_outline_points_length");

  --****************************************************************************
  -- **
  -- ** xcb_point_iterator_t xcb_xkb_outline_points_iterator
  -- ** 
  -- ** @param const xcb_xkb_outline_t *R
  -- ** @returns xcb_point_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_outline_points_iterator (arg1 : System.Address) return xcb_xproto_h.xcb_point_iterator_t;  -- /usr/include/xcb/xkb.h:5354
   pragma Import (C, xcb_xkb_outline_points_iterator, "xcb_xkb_outline_points_iterator");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_outline_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_outline_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_outline_next
  -- ** 
  -- ** @param xcb_xkb_outline_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_outline_next (arg1 : access xcb_xkb_outline_iterator_t);  -- /usr/include/xcb/xkb.h:5375
   pragma Import (C, xcb_xkb_outline_next, "xcb_xkb_outline_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_outline_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_outline_end
  -- ** 
  -- ** @param xcb_xkb_outline_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_outline_end (arg1 : xcb_xkb_outline_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:5397
   pragma Import (C, xcb_xkb_outline_end, "xcb_xkb_outline_end");

  --*<  
   function xcb_xkb_shape_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:5400
   pragma Import (C, xcb_xkb_shape_sizeof, "xcb_xkb_shape_sizeof");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_shape_outlines_length
  -- ** 
  -- ** @param const xcb_xkb_shape_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_shape_outlines_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:5413
   pragma Import (C, xcb_xkb_shape_outlines_length, "xcb_xkb_shape_outlines_length");

  --****************************************************************************
  -- **
  -- ** xcb_xkb_outline_iterator_t xcb_xkb_shape_outlines_iterator
  -- ** 
  -- ** @param const xcb_xkb_shape_t *R
  -- ** @returns xcb_xkb_outline_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_shape_outlines_iterator (arg1 : System.Address) return xcb_xkb_outline_iterator_t;  -- /usr/include/xcb/xkb.h:5426
   pragma Import (C, xcb_xkb_shape_outlines_iterator, "xcb_xkb_shape_outlines_iterator");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_shape_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_shape_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_shape_next
  -- ** 
  -- ** @param xcb_xkb_shape_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_shape_next (arg1 : access xcb_xkb_shape_iterator_t);  -- /usr/include/xcb/xkb.h:5447
   pragma Import (C, xcb_xkb_shape_next, "xcb_xkb_shape_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_shape_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_shape_end
  -- ** 
  -- ** @param xcb_xkb_shape_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_shape_end (arg1 : xcb_xkb_shape_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:5469
   pragma Import (C, xcb_xkb_shape_end, "xcb_xkb_shape_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_key_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_key_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_key_next
  -- ** 
  -- ** @param xcb_xkb_key_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_key_next (arg1 : access xcb_xkb_key_iterator_t);  -- /usr/include/xcb/xkb.h:5490
   pragma Import (C, xcb_xkb_key_next, "xcb_xkb_key_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_key_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_key_end
  -- ** 
  -- ** @param xcb_xkb_key_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_key_end (arg1 : xcb_xkb_key_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:5512
   pragma Import (C, xcb_xkb_key_end, "xcb_xkb_key_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_overlay_key_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_overlay_key_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_overlay_key_next
  -- ** 
  -- ** @param xcb_xkb_overlay_key_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_overlay_key_next (arg1 : access xcb_xkb_overlay_key_iterator_t);  -- /usr/include/xcb/xkb.h:5533
   pragma Import (C, xcb_xkb_overlay_key_next, "xcb_xkb_overlay_key_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_overlay_key_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_overlay_key_end
  -- ** 
  -- ** @param xcb_xkb_overlay_key_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_overlay_key_end (arg1 : xcb_xkb_overlay_key_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:5555
   pragma Import (C, xcb_xkb_overlay_key_end, "xcb_xkb_overlay_key_end");

  --*<  
   function xcb_xkb_overlay_row_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:5558
   pragma Import (C, xcb_xkb_overlay_row_sizeof, "xcb_xkb_overlay_row_sizeof");

  --****************************************************************************
  -- **
  -- ** xcb_xkb_overlay_key_t * xcb_xkb_overlay_row_keys
  -- ** 
  -- ** @param const xcb_xkb_overlay_row_t *R
  -- ** @returns xcb_xkb_overlay_key_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_overlay_row_keys (arg1 : System.Address) return access xcb_xkb_overlay_key_t;  -- /usr/include/xcb/xkb.h:5571
   pragma Import (C, xcb_xkb_overlay_row_keys, "xcb_xkb_overlay_row_keys");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_overlay_row_keys_length
  -- ** 
  -- ** @param const xcb_xkb_overlay_row_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_overlay_row_keys_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:5584
   pragma Import (C, xcb_xkb_overlay_row_keys_length, "xcb_xkb_overlay_row_keys_length");

  --****************************************************************************
  -- **
  -- ** xcb_xkb_overlay_key_iterator_t xcb_xkb_overlay_row_keys_iterator
  -- ** 
  -- ** @param const xcb_xkb_overlay_row_t *R
  -- ** @returns xcb_xkb_overlay_key_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_overlay_row_keys_iterator (arg1 : System.Address) return xcb_xkb_overlay_key_iterator_t;  -- /usr/include/xcb/xkb.h:5597
   pragma Import (C, xcb_xkb_overlay_row_keys_iterator, "xcb_xkb_overlay_row_keys_iterator");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_overlay_row_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_overlay_row_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_overlay_row_next
  -- ** 
  -- ** @param xcb_xkb_overlay_row_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_overlay_row_next (arg1 : access xcb_xkb_overlay_row_iterator_t);  -- /usr/include/xcb/xkb.h:5618
   pragma Import (C, xcb_xkb_overlay_row_next, "xcb_xkb_overlay_row_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_overlay_row_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_overlay_row_end
  -- ** 
  -- ** @param xcb_xkb_overlay_row_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_overlay_row_end (arg1 : xcb_xkb_overlay_row_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:5640
   pragma Import (C, xcb_xkb_overlay_row_end, "xcb_xkb_overlay_row_end");

  --*<  
   function xcb_xkb_overlay_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:5643
   pragma Import (C, xcb_xkb_overlay_sizeof, "xcb_xkb_overlay_sizeof");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_overlay_rows_length
  -- ** 
  -- ** @param const xcb_xkb_overlay_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_overlay_rows_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:5656
   pragma Import (C, xcb_xkb_overlay_rows_length, "xcb_xkb_overlay_rows_length");

  --****************************************************************************
  -- **
  -- ** xcb_xkb_overlay_row_iterator_t xcb_xkb_overlay_rows_iterator
  -- ** 
  -- ** @param const xcb_xkb_overlay_t *R
  -- ** @returns xcb_xkb_overlay_row_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_overlay_rows_iterator (arg1 : System.Address) return xcb_xkb_overlay_row_iterator_t;  -- /usr/include/xcb/xkb.h:5669
   pragma Import (C, xcb_xkb_overlay_rows_iterator, "xcb_xkb_overlay_rows_iterator");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_overlay_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_overlay_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_overlay_next
  -- ** 
  -- ** @param xcb_xkb_overlay_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_overlay_next (arg1 : access xcb_xkb_overlay_iterator_t);  -- /usr/include/xcb/xkb.h:5690
   pragma Import (C, xcb_xkb_overlay_next, "xcb_xkb_overlay_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_overlay_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_overlay_end
  -- ** 
  -- ** @param xcb_xkb_overlay_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_overlay_end (arg1 : xcb_xkb_overlay_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:5712
   pragma Import (C, xcb_xkb_overlay_end, "xcb_xkb_overlay_end");

  --*<  
   function xcb_xkb_row_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:5715
   pragma Import (C, xcb_xkb_row_sizeof, "xcb_xkb_row_sizeof");

  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_t * xcb_xkb_row_keys
  -- ** 
  -- ** @param const xcb_xkb_row_t *R
  -- ** @returns xcb_xkb_key_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_row_keys (arg1 : System.Address) return access xcb_xkb_key_t;  -- /usr/include/xcb/xkb.h:5728
   pragma Import (C, xcb_xkb_row_keys, "xcb_xkb_row_keys");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_row_keys_length
  -- ** 
  -- ** @param const xcb_xkb_row_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_row_keys_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:5741
   pragma Import (C, xcb_xkb_row_keys_length, "xcb_xkb_row_keys_length");

  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_iterator_t xcb_xkb_row_keys_iterator
  -- ** 
  -- ** @param const xcb_xkb_row_t *R
  -- ** @returns xcb_xkb_key_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_row_keys_iterator (arg1 : System.Address) return xcb_xkb_key_iterator_t;  -- /usr/include/xcb/xkb.h:5754
   pragma Import (C, xcb_xkb_row_keys_iterator, "xcb_xkb_row_keys_iterator");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_row_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_row_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_row_next
  -- ** 
  -- ** @param xcb_xkb_row_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_row_next (arg1 : access xcb_xkb_row_iterator_t);  -- /usr/include/xcb/xkb.h:5775
   pragma Import (C, xcb_xkb_row_next, "xcb_xkb_row_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_row_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_row_end
  -- ** 
  -- ** @param xcb_xkb_row_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_row_end (arg1 : xcb_xkb_row_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:5797
   pragma Import (C, xcb_xkb_row_end, "xcb_xkb_row_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_common_doodad_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_common_doodad_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_common_doodad_next
  -- ** 
  -- ** @param xcb_xkb_common_doodad_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_common_doodad_next (arg1 : access xcb_xkb_common_doodad_iterator_t);  -- /usr/include/xcb/xkb.h:5818
   pragma Import (C, xcb_xkb_common_doodad_next, "xcb_xkb_common_doodad_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_common_doodad_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_common_doodad_end
  -- ** 
  -- ** @param xcb_xkb_common_doodad_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_common_doodad_end (arg1 : xcb_xkb_common_doodad_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:5840
   pragma Import (C, xcb_xkb_common_doodad_end, "xcb_xkb_common_doodad_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_shape_doodad_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_shape_doodad_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_shape_doodad_next
  -- ** 
  -- ** @param xcb_xkb_shape_doodad_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_shape_doodad_next (arg1 : access xcb_xkb_shape_doodad_iterator_t);  -- /usr/include/xcb/xkb.h:5861
   pragma Import (C, xcb_xkb_shape_doodad_next, "xcb_xkb_shape_doodad_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_shape_doodad_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_shape_doodad_end
  -- ** 
  -- ** @param xcb_xkb_shape_doodad_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_shape_doodad_end (arg1 : xcb_xkb_shape_doodad_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:5883
   pragma Import (C, xcb_xkb_shape_doodad_end, "xcb_xkb_shape_doodad_end");

  --*<  
   function xcb_xkb_text_doodad_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:5886
   pragma Import (C, xcb_xkb_text_doodad_sizeof, "xcb_xkb_text_doodad_sizeof");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_text_doodad_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_text_doodad_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_text_doodad_next
  -- ** 
  -- ** @param xcb_xkb_text_doodad_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_text_doodad_next (arg1 : access xcb_xkb_text_doodad_iterator_t);  -- /usr/include/xcb/xkb.h:5907
   pragma Import (C, xcb_xkb_text_doodad_next, "xcb_xkb_text_doodad_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_text_doodad_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_text_doodad_end
  -- ** 
  -- ** @param xcb_xkb_text_doodad_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_text_doodad_end (arg1 : xcb_xkb_text_doodad_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:5929
   pragma Import (C, xcb_xkb_text_doodad_end, "xcb_xkb_text_doodad_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_indicator_doodad_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_indicator_doodad_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_indicator_doodad_next
  -- ** 
  -- ** @param xcb_xkb_indicator_doodad_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_indicator_doodad_next (arg1 : access xcb_xkb_indicator_doodad_iterator_t);  -- /usr/include/xcb/xkb.h:5950
   pragma Import (C, xcb_xkb_indicator_doodad_next, "xcb_xkb_indicator_doodad_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_indicator_doodad_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_indicator_doodad_end
  -- ** 
  -- ** @param xcb_xkb_indicator_doodad_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_indicator_doodad_end (arg1 : xcb_xkb_indicator_doodad_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:5972
   pragma Import (C, xcb_xkb_indicator_doodad_end, "xcb_xkb_indicator_doodad_end");

  --*<  
   function xcb_xkb_logo_doodad_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:5975
   pragma Import (C, xcb_xkb_logo_doodad_sizeof, "xcb_xkb_logo_doodad_sizeof");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_logo_doodad_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_logo_doodad_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_logo_doodad_next
  -- ** 
  -- ** @param xcb_xkb_logo_doodad_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_logo_doodad_next (arg1 : access xcb_xkb_logo_doodad_iterator_t);  -- /usr/include/xcb/xkb.h:5996
   pragma Import (C, xcb_xkb_logo_doodad_next, "xcb_xkb_logo_doodad_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_logo_doodad_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_logo_doodad_end
  -- ** 
  -- ** @param xcb_xkb_logo_doodad_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_logo_doodad_end (arg1 : xcb_xkb_logo_doodad_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:6018
   pragma Import (C, xcb_xkb_logo_doodad_end, "xcb_xkb_logo_doodad_end");

  --*<  
   function xcb_xkb_doodad_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:6021
   pragma Import (C, xcb_xkb_doodad_sizeof, "xcb_xkb_doodad_sizeof");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_doodad_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_doodad_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_doodad_next
  -- ** 
  -- ** @param xcb_xkb_doodad_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_doodad_next (arg1 : access xcb_xkb_doodad_iterator_t);  -- /usr/include/xcb/xkb.h:6042
   pragma Import (C, xcb_xkb_doodad_next, "xcb_xkb_doodad_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_doodad_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_doodad_end
  -- ** 
  -- ** @param xcb_xkb_doodad_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_doodad_end (arg1 : xcb_xkb_doodad_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:6064
   pragma Import (C, xcb_xkb_doodad_end, "xcb_xkb_doodad_end");

  --*<  
   function xcb_xkb_section_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:6067
   pragma Import (C, xcb_xkb_section_sizeof, "xcb_xkb_section_sizeof");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_section_rows_length
  -- ** 
  -- ** @param const xcb_xkb_section_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_section_rows_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:6080
   pragma Import (C, xcb_xkb_section_rows_length, "xcb_xkb_section_rows_length");

  --****************************************************************************
  -- **
  -- ** xcb_xkb_row_iterator_t xcb_xkb_section_rows_iterator
  -- ** 
  -- ** @param const xcb_xkb_section_t *R
  -- ** @returns xcb_xkb_row_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_section_rows_iterator (arg1 : System.Address) return xcb_xkb_row_iterator_t;  -- /usr/include/xcb/xkb.h:6093
   pragma Import (C, xcb_xkb_section_rows_iterator, "xcb_xkb_section_rows_iterator");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_section_doodads_length
  -- ** 
  -- ** @param const xcb_xkb_section_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_section_doodads_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:6106
   pragma Import (C, xcb_xkb_section_doodads_length, "xcb_xkb_section_doodads_length");

  --****************************************************************************
  -- **
  -- ** xcb_xkb_doodad_iterator_t xcb_xkb_section_doodads_iterator
  -- ** 
  -- ** @param const xcb_xkb_section_t *R
  -- ** @returns xcb_xkb_doodad_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_section_doodads_iterator (arg1 : System.Address) return xcb_xkb_doodad_iterator_t;  -- /usr/include/xcb/xkb.h:6119
   pragma Import (C, xcb_xkb_section_doodads_iterator, "xcb_xkb_section_doodads_iterator");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_section_overlays_length
  -- ** 
  -- ** @param const xcb_xkb_section_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_section_overlays_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:6132
   pragma Import (C, xcb_xkb_section_overlays_length, "xcb_xkb_section_overlays_length");

  --****************************************************************************
  -- **
  -- ** xcb_xkb_overlay_iterator_t xcb_xkb_section_overlays_iterator
  -- ** 
  -- ** @param const xcb_xkb_section_t *R
  -- ** @returns xcb_xkb_overlay_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_section_overlays_iterator (arg1 : System.Address) return xcb_xkb_overlay_iterator_t;  -- /usr/include/xcb/xkb.h:6145
   pragma Import (C, xcb_xkb_section_overlays_iterator, "xcb_xkb_section_overlays_iterator");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_section_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_section_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_section_next
  -- ** 
  -- ** @param xcb_xkb_section_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_section_next (arg1 : access xcb_xkb_section_iterator_t);  -- /usr/include/xcb/xkb.h:6166
   pragma Import (C, xcb_xkb_section_next, "xcb_xkb_section_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_section_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_section_end
  -- ** 
  -- ** @param xcb_xkb_section_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_section_end (arg1 : xcb_xkb_section_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:6188
   pragma Import (C, xcb_xkb_section_end, "xcb_xkb_section_end");

  --*<  
   function xcb_xkb_listing_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:6191
   pragma Import (C, xcb_xkb_listing_sizeof, "xcb_xkb_listing_sizeof");

  --****************************************************************************
  -- **
  -- ** xcb_xkb_string8_t * xcb_xkb_listing_string
  -- ** 
  -- ** @param const xcb_xkb_listing_t *R
  -- ** @returns xcb_xkb_string8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_listing_string (arg1 : System.Address) return access xcb_xkb_string8_t;  -- /usr/include/xcb/xkb.h:6204
   pragma Import (C, xcb_xkb_listing_string, "xcb_xkb_listing_string");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_listing_string_length
  -- ** 
  -- ** @param const xcb_xkb_listing_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_listing_string_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:6217
   pragma Import (C, xcb_xkb_listing_string_length, "xcb_xkb_listing_string_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_listing_string_end
  -- ** 
  -- ** @param const xcb_xkb_listing_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_listing_string_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:6230
   pragma Import (C, xcb_xkb_listing_string_end, "xcb_xkb_listing_string_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_listing_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_listing_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_listing_next
  -- ** 
  -- ** @param xcb_xkb_listing_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_listing_next (arg1 : access xcb_xkb_listing_iterator_t);  -- /usr/include/xcb/xkb.h:6251
   pragma Import (C, xcb_xkb_listing_next, "xcb_xkb_listing_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_listing_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_listing_end
  -- ** 
  -- ** @param xcb_xkb_listing_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_listing_end (arg1 : xcb_xkb_listing_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:6273
   pragma Import (C, xcb_xkb_listing_end, "xcb_xkb_listing_end");

  --*<  
   function xcb_xkb_device_led_info_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:6276
   pragma Import (C, xcb_xkb_device_led_info_sizeof, "xcb_xkb_device_led_info_sizeof");

  --****************************************************************************
  -- **
  -- ** xcb_atom_t * xcb_xkb_device_led_info_names
  -- ** 
  -- ** @param const xcb_xkb_device_led_info_t *R
  -- ** @returns xcb_atom_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_device_led_info_names (arg1 : System.Address) return access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:6289
   pragma Import (C, xcb_xkb_device_led_info_names, "xcb_xkb_device_led_info_names");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_device_led_info_names_length
  -- ** 
  -- ** @param const xcb_xkb_device_led_info_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_device_led_info_names_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:6302
   pragma Import (C, xcb_xkb_device_led_info_names_length, "xcb_xkb_device_led_info_names_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_device_led_info_names_end
  -- ** 
  -- ** @param const xcb_xkb_device_led_info_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_device_led_info_names_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:6315
   pragma Import (C, xcb_xkb_device_led_info_names_end, "xcb_xkb_device_led_info_names_end");

  --****************************************************************************
  -- **
  -- ** xcb_xkb_indicator_map_t * xcb_xkb_device_led_info_maps
  -- ** 
  -- ** @param const xcb_xkb_device_led_info_t *R
  -- ** @returns xcb_xkb_indicator_map_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_device_led_info_maps (arg1 : System.Address) return access xcb_xkb_indicator_map_t;  -- /usr/include/xcb/xkb.h:6328
   pragma Import (C, xcb_xkb_device_led_info_maps, "xcb_xkb_device_led_info_maps");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_device_led_info_maps_length
  -- ** 
  -- ** @param const xcb_xkb_device_led_info_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_device_led_info_maps_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:6341
   pragma Import (C, xcb_xkb_device_led_info_maps_length, "xcb_xkb_device_led_info_maps_length");

  --****************************************************************************
  -- **
  -- ** xcb_xkb_indicator_map_iterator_t xcb_xkb_device_led_info_maps_iterator
  -- ** 
  -- ** @param const xcb_xkb_device_led_info_t *R
  -- ** @returns xcb_xkb_indicator_map_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_device_led_info_maps_iterator (arg1 : System.Address) return xcb_xkb_indicator_map_iterator_t;  -- /usr/include/xcb/xkb.h:6354
   pragma Import (C, xcb_xkb_device_led_info_maps_iterator, "xcb_xkb_device_led_info_maps_iterator");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_device_led_info_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_device_led_info_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_device_led_info_next
  -- ** 
  -- ** @param xcb_xkb_device_led_info_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_device_led_info_next (arg1 : access xcb_xkb_device_led_info_iterator_t);  -- /usr/include/xcb/xkb.h:6375
   pragma Import (C, xcb_xkb_device_led_info_next, "xcb_xkb_device_led_info_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_device_led_info_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_device_led_info_end
  -- ** 
  -- ** @param xcb_xkb_device_led_info_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_device_led_info_end (arg1 : xcb_xkb_device_led_info_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:6397
   pragma Import (C, xcb_xkb_device_led_info_end, "xcb_xkb_device_led_info_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_sa_no_action_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_sa_no_action_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_sa_no_action_next
  -- ** 
  -- ** @param xcb_xkb_sa_no_action_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_sa_no_action_next (arg1 : access xcb_xkb_sa_no_action_iterator_t);  -- /usr/include/xcb/xkb.h:6418
   pragma Import (C, xcb_xkb_sa_no_action_next, "xcb_xkb_sa_no_action_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_sa_no_action_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_sa_no_action_end
  -- ** 
  -- ** @param xcb_xkb_sa_no_action_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_sa_no_action_end (arg1 : xcb_xkb_sa_no_action_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:6440
   pragma Import (C, xcb_xkb_sa_no_action_end, "xcb_xkb_sa_no_action_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_sa_set_mods_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_sa_set_mods_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_sa_set_mods_next
  -- ** 
  -- ** @param xcb_xkb_sa_set_mods_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_sa_set_mods_next (arg1 : access xcb_xkb_sa_set_mods_iterator_t);  -- /usr/include/xcb/xkb.h:6461
   pragma Import (C, xcb_xkb_sa_set_mods_next, "xcb_xkb_sa_set_mods_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_sa_set_mods_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_sa_set_mods_end
  -- ** 
  -- ** @param xcb_xkb_sa_set_mods_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_sa_set_mods_end (arg1 : xcb_xkb_sa_set_mods_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:6483
   pragma Import (C, xcb_xkb_sa_set_mods_end, "xcb_xkb_sa_set_mods_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_sa_latch_mods_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_sa_latch_mods_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_sa_latch_mods_next
  -- ** 
  -- ** @param xcb_xkb_sa_latch_mods_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_sa_latch_mods_next (arg1 : access xcb_xkb_sa_latch_mods_iterator_t);  -- /usr/include/xcb/xkb.h:6504
   pragma Import (C, xcb_xkb_sa_latch_mods_next, "xcb_xkb_sa_latch_mods_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_sa_latch_mods_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_sa_latch_mods_end
  -- ** 
  -- ** @param xcb_xkb_sa_latch_mods_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_sa_latch_mods_end (arg1 : xcb_xkb_sa_latch_mods_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:6526
   pragma Import (C, xcb_xkb_sa_latch_mods_end, "xcb_xkb_sa_latch_mods_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_sa_lock_mods_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_sa_lock_mods_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_sa_lock_mods_next
  -- ** 
  -- ** @param xcb_xkb_sa_lock_mods_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_sa_lock_mods_next (arg1 : access xcb_xkb_sa_lock_mods_iterator_t);  -- /usr/include/xcb/xkb.h:6547
   pragma Import (C, xcb_xkb_sa_lock_mods_next, "xcb_xkb_sa_lock_mods_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_sa_lock_mods_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_sa_lock_mods_end
  -- ** 
  -- ** @param xcb_xkb_sa_lock_mods_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_sa_lock_mods_end (arg1 : xcb_xkb_sa_lock_mods_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:6569
   pragma Import (C, xcb_xkb_sa_lock_mods_end, "xcb_xkb_sa_lock_mods_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_sa_set_group_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_sa_set_group_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_sa_set_group_next
  -- ** 
  -- ** @param xcb_xkb_sa_set_group_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_sa_set_group_next (arg1 : access xcb_xkb_sa_set_group_iterator_t);  -- /usr/include/xcb/xkb.h:6590
   pragma Import (C, xcb_xkb_sa_set_group_next, "xcb_xkb_sa_set_group_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_sa_set_group_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_sa_set_group_end
  -- ** 
  -- ** @param xcb_xkb_sa_set_group_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_sa_set_group_end (arg1 : xcb_xkb_sa_set_group_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:6612
   pragma Import (C, xcb_xkb_sa_set_group_end, "xcb_xkb_sa_set_group_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_sa_latch_group_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_sa_latch_group_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_sa_latch_group_next
  -- ** 
  -- ** @param xcb_xkb_sa_latch_group_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_sa_latch_group_next (arg1 : access xcb_xkb_sa_latch_group_iterator_t);  -- /usr/include/xcb/xkb.h:6633
   pragma Import (C, xcb_xkb_sa_latch_group_next, "xcb_xkb_sa_latch_group_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_sa_latch_group_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_sa_latch_group_end
  -- ** 
  -- ** @param xcb_xkb_sa_latch_group_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_sa_latch_group_end (arg1 : xcb_xkb_sa_latch_group_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:6655
   pragma Import (C, xcb_xkb_sa_latch_group_end, "xcb_xkb_sa_latch_group_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_sa_lock_group_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_sa_lock_group_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_sa_lock_group_next
  -- ** 
  -- ** @param xcb_xkb_sa_lock_group_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_sa_lock_group_next (arg1 : access xcb_xkb_sa_lock_group_iterator_t);  -- /usr/include/xcb/xkb.h:6676
   pragma Import (C, xcb_xkb_sa_lock_group_next, "xcb_xkb_sa_lock_group_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_sa_lock_group_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_sa_lock_group_end
  -- ** 
  -- ** @param xcb_xkb_sa_lock_group_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_sa_lock_group_end (arg1 : xcb_xkb_sa_lock_group_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:6698
   pragma Import (C, xcb_xkb_sa_lock_group_end, "xcb_xkb_sa_lock_group_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_sa_move_ptr_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_sa_move_ptr_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_sa_move_ptr_next
  -- ** 
  -- ** @param xcb_xkb_sa_move_ptr_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_sa_move_ptr_next (arg1 : access xcb_xkb_sa_move_ptr_iterator_t);  -- /usr/include/xcb/xkb.h:6719
   pragma Import (C, xcb_xkb_sa_move_ptr_next, "xcb_xkb_sa_move_ptr_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_sa_move_ptr_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_sa_move_ptr_end
  -- ** 
  -- ** @param xcb_xkb_sa_move_ptr_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_sa_move_ptr_end (arg1 : xcb_xkb_sa_move_ptr_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:6741
   pragma Import (C, xcb_xkb_sa_move_ptr_end, "xcb_xkb_sa_move_ptr_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_sa_ptr_btn_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_sa_ptr_btn_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_sa_ptr_btn_next
  -- ** 
  -- ** @param xcb_xkb_sa_ptr_btn_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_sa_ptr_btn_next (arg1 : access xcb_xkb_sa_ptr_btn_iterator_t);  -- /usr/include/xcb/xkb.h:6762
   pragma Import (C, xcb_xkb_sa_ptr_btn_next, "xcb_xkb_sa_ptr_btn_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_sa_ptr_btn_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_sa_ptr_btn_end
  -- ** 
  -- ** @param xcb_xkb_sa_ptr_btn_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_sa_ptr_btn_end (arg1 : xcb_xkb_sa_ptr_btn_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:6784
   pragma Import (C, xcb_xkb_sa_ptr_btn_end, "xcb_xkb_sa_ptr_btn_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_sa_lock_ptr_btn_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_sa_lock_ptr_btn_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_sa_lock_ptr_btn_next
  -- ** 
  -- ** @param xcb_xkb_sa_lock_ptr_btn_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_sa_lock_ptr_btn_next (arg1 : access xcb_xkb_sa_lock_ptr_btn_iterator_t);  -- /usr/include/xcb/xkb.h:6805
   pragma Import (C, xcb_xkb_sa_lock_ptr_btn_next, "xcb_xkb_sa_lock_ptr_btn_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_sa_lock_ptr_btn_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_sa_lock_ptr_btn_end
  -- ** 
  -- ** @param xcb_xkb_sa_lock_ptr_btn_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_sa_lock_ptr_btn_end (arg1 : xcb_xkb_sa_lock_ptr_btn_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:6827
   pragma Import (C, xcb_xkb_sa_lock_ptr_btn_end, "xcb_xkb_sa_lock_ptr_btn_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_sa_set_ptr_dflt_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_sa_set_ptr_dflt_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_sa_set_ptr_dflt_next
  -- ** 
  -- ** @param xcb_xkb_sa_set_ptr_dflt_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_sa_set_ptr_dflt_next (arg1 : access xcb_xkb_sa_set_ptr_dflt_iterator_t);  -- /usr/include/xcb/xkb.h:6848
   pragma Import (C, xcb_xkb_sa_set_ptr_dflt_next, "xcb_xkb_sa_set_ptr_dflt_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_sa_set_ptr_dflt_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_sa_set_ptr_dflt_end
  -- ** 
  -- ** @param xcb_xkb_sa_set_ptr_dflt_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_sa_set_ptr_dflt_end (arg1 : xcb_xkb_sa_set_ptr_dflt_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:6870
   pragma Import (C, xcb_xkb_sa_set_ptr_dflt_end, "xcb_xkb_sa_set_ptr_dflt_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_sa_iso_lock_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_sa_iso_lock_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_sa_iso_lock_next
  -- ** 
  -- ** @param xcb_xkb_sa_iso_lock_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_sa_iso_lock_next (arg1 : access xcb_xkb_sa_iso_lock_iterator_t);  -- /usr/include/xcb/xkb.h:6891
   pragma Import (C, xcb_xkb_sa_iso_lock_next, "xcb_xkb_sa_iso_lock_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_sa_iso_lock_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_sa_iso_lock_end
  -- ** 
  -- ** @param xcb_xkb_sa_iso_lock_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_sa_iso_lock_end (arg1 : xcb_xkb_sa_iso_lock_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:6913
   pragma Import (C, xcb_xkb_sa_iso_lock_end, "xcb_xkb_sa_iso_lock_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_sa_terminate_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_sa_terminate_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_sa_terminate_next
  -- ** 
  -- ** @param xcb_xkb_sa_terminate_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_sa_terminate_next (arg1 : access xcb_xkb_sa_terminate_iterator_t);  -- /usr/include/xcb/xkb.h:6934
   pragma Import (C, xcb_xkb_sa_terminate_next, "xcb_xkb_sa_terminate_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_sa_terminate_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_sa_terminate_end
  -- ** 
  -- ** @param xcb_xkb_sa_terminate_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_sa_terminate_end (arg1 : xcb_xkb_sa_terminate_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:6956
   pragma Import (C, xcb_xkb_sa_terminate_end, "xcb_xkb_sa_terminate_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_sa_switch_screen_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_sa_switch_screen_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_sa_switch_screen_next
  -- ** 
  -- ** @param xcb_xkb_sa_switch_screen_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_sa_switch_screen_next (arg1 : access xcb_xkb_sa_switch_screen_iterator_t);  -- /usr/include/xcb/xkb.h:6977
   pragma Import (C, xcb_xkb_sa_switch_screen_next, "xcb_xkb_sa_switch_screen_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_sa_switch_screen_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_sa_switch_screen_end
  -- ** 
  -- ** @param xcb_xkb_sa_switch_screen_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_sa_switch_screen_end (arg1 : xcb_xkb_sa_switch_screen_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:6999
   pragma Import (C, xcb_xkb_sa_switch_screen_end, "xcb_xkb_sa_switch_screen_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_sa_set_controls_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_sa_set_controls_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_sa_set_controls_next
  -- ** 
  -- ** @param xcb_xkb_sa_set_controls_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_sa_set_controls_next (arg1 : access xcb_xkb_sa_set_controls_iterator_t);  -- /usr/include/xcb/xkb.h:7020
   pragma Import (C, xcb_xkb_sa_set_controls_next, "xcb_xkb_sa_set_controls_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_sa_set_controls_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_sa_set_controls_end
  -- ** 
  -- ** @param xcb_xkb_sa_set_controls_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_sa_set_controls_end (arg1 : xcb_xkb_sa_set_controls_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:7042
   pragma Import (C, xcb_xkb_sa_set_controls_end, "xcb_xkb_sa_set_controls_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_sa_lock_controls_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_sa_lock_controls_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_sa_lock_controls_next
  -- ** 
  -- ** @param xcb_xkb_sa_lock_controls_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_sa_lock_controls_next (arg1 : access xcb_xkb_sa_lock_controls_iterator_t);  -- /usr/include/xcb/xkb.h:7063
   pragma Import (C, xcb_xkb_sa_lock_controls_next, "xcb_xkb_sa_lock_controls_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_sa_lock_controls_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_sa_lock_controls_end
  -- ** 
  -- ** @param xcb_xkb_sa_lock_controls_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_sa_lock_controls_end (arg1 : xcb_xkb_sa_lock_controls_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:7085
   pragma Import (C, xcb_xkb_sa_lock_controls_end, "xcb_xkb_sa_lock_controls_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_sa_action_message_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_sa_action_message_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_sa_action_message_next
  -- ** 
  -- ** @param xcb_xkb_sa_action_message_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_sa_action_message_next (arg1 : access xcb_xkb_sa_action_message_iterator_t);  -- /usr/include/xcb/xkb.h:7106
   pragma Import (C, xcb_xkb_sa_action_message_next, "xcb_xkb_sa_action_message_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_sa_action_message_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_sa_action_message_end
  -- ** 
  -- ** @param xcb_xkb_sa_action_message_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_sa_action_message_end (arg1 : xcb_xkb_sa_action_message_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:7128
   pragma Import (C, xcb_xkb_sa_action_message_end, "xcb_xkb_sa_action_message_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_sa_redirect_key_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_sa_redirect_key_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_sa_redirect_key_next
  -- ** 
  -- ** @param xcb_xkb_sa_redirect_key_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_sa_redirect_key_next (arg1 : access xcb_xkb_sa_redirect_key_iterator_t);  -- /usr/include/xcb/xkb.h:7149
   pragma Import (C, xcb_xkb_sa_redirect_key_next, "xcb_xkb_sa_redirect_key_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_sa_redirect_key_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_sa_redirect_key_end
  -- ** 
  -- ** @param xcb_xkb_sa_redirect_key_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_sa_redirect_key_end (arg1 : xcb_xkb_sa_redirect_key_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:7171
   pragma Import (C, xcb_xkb_sa_redirect_key_end, "xcb_xkb_sa_redirect_key_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_sa_device_btn_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_sa_device_btn_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_sa_device_btn_next
  -- ** 
  -- ** @param xcb_xkb_sa_device_btn_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_sa_device_btn_next (arg1 : access xcb_xkb_sa_device_btn_iterator_t);  -- /usr/include/xcb/xkb.h:7192
   pragma Import (C, xcb_xkb_sa_device_btn_next, "xcb_xkb_sa_device_btn_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_sa_device_btn_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_sa_device_btn_end
  -- ** 
  -- ** @param xcb_xkb_sa_device_btn_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_sa_device_btn_end (arg1 : xcb_xkb_sa_device_btn_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:7214
   pragma Import (C, xcb_xkb_sa_device_btn_end, "xcb_xkb_sa_device_btn_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_sa_lock_device_btn_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_sa_lock_device_btn_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_sa_lock_device_btn_next
  -- ** 
  -- ** @param xcb_xkb_sa_lock_device_btn_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_sa_lock_device_btn_next (arg1 : access xcb_xkb_sa_lock_device_btn_iterator_t);  -- /usr/include/xcb/xkb.h:7235
   pragma Import (C, xcb_xkb_sa_lock_device_btn_next, "xcb_xkb_sa_lock_device_btn_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_sa_lock_device_btn_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_sa_lock_device_btn_end
  -- ** 
  -- ** @param xcb_xkb_sa_lock_device_btn_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_sa_lock_device_btn_end (arg1 : xcb_xkb_sa_lock_device_btn_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:7257
   pragma Import (C, xcb_xkb_sa_lock_device_btn_end, "xcb_xkb_sa_lock_device_btn_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_sa_device_valuator_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_sa_device_valuator_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_sa_device_valuator_next
  -- ** 
  -- ** @param xcb_xkb_sa_device_valuator_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_sa_device_valuator_next (arg1 : access xcb_xkb_sa_device_valuator_iterator_t);  -- /usr/include/xcb/xkb.h:7278
   pragma Import (C, xcb_xkb_sa_device_valuator_next, "xcb_xkb_sa_device_valuator_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_sa_device_valuator_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_sa_device_valuator_end
  -- ** 
  -- ** @param xcb_xkb_sa_device_valuator_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_sa_device_valuator_end (arg1 : xcb_xkb_sa_device_valuator_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:7300
   pragma Import (C, xcb_xkb_sa_device_valuator_end, "xcb_xkb_sa_device_valuator_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_xkb_action_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_xkb_action_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_xkb_action_next
  -- ** 
  -- ** @param xcb_xkb_action_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_xkb_action_next (arg1 : access xcb_xkb_action_iterator_t);  -- /usr/include/xcb/xkb.h:7321
   pragma Import (C, xcb_xkb_action_next, "xcb_xkb_action_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_xkb_action_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_action_end
  -- ** 
  -- ** @param xcb_xkb_action_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_action_end (arg1 : xcb_xkb_action_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:7343
   pragma Import (C, xcb_xkb_action_end, "xcb_xkb_action_end");

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
  -- ** xcb_xkb_use_extension_cookie_t xcb_xkb_use_extension
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint16_t          wantedMajor
  -- ** @param uint16_t          wantedMinor
  -- ** @returns xcb_xkb_use_extension_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_use_extension
     (arg1 : System.Address;
      arg2 : stdint_h.uint16_t;
      arg3 : stdint_h.uint16_t) return xcb_xkb_use_extension_cookie_t;  -- /usr/include/xcb/xkb.h:7366
   pragma Import (C, xcb_xkb_use_extension, "xcb_xkb_use_extension");

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
  -- ** xcb_xkb_use_extension_cookie_t xcb_xkb_use_extension_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint16_t          wantedMajor
  -- ** @param uint16_t          wantedMinor
  -- ** @returns xcb_xkb_use_extension_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_use_extension_unchecked
     (arg1 : System.Address;
      arg2 : stdint_h.uint16_t;
      arg3 : stdint_h.uint16_t) return xcb_xkb_use_extension_cookie_t;  -- /usr/include/xcb/xkb.h:7394
   pragma Import (C, xcb_xkb_use_extension_unchecked, "xcb_xkb_use_extension_unchecked");

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
  -- * xcb_xkb_use_extension_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xkb_use_extension_reply_t * xcb_xkb_use_extension_reply
  -- ** 
  -- ** @param xcb_connection_t                *c
  -- ** @param xcb_xkb_use_extension_cookie_t   cookie
  -- ** @param xcb_generic_error_t            **e
  -- ** @returns xcb_xkb_use_extension_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_use_extension_reply
     (arg1 : System.Address;
      arg2 : xcb_xkb_use_extension_cookie_t;
      arg3 : System.Address) return access xcb_xkb_use_extension_reply_t;  -- /usr/include/xcb/xkb.h:7425
   pragma Import (C, xcb_xkb_use_extension_reply, "xcb_xkb_use_extension_reply");

  --*<  
  --*<  
  --*<  
   function xcb_xkb_select_events_details_serialize
     (arg1 : System.Address;
      arg2 : stdint_h.uint16_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint16_t;
      arg5 : System.Address) return int;  -- /usr/include/xcb/xkb.h:7430
   pragma Import (C, xcb_xkb_select_events_details_serialize, "xcb_xkb_select_events_details_serialize");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_xkb_select_events_details_unpack
     (arg1 : System.Address;
      arg2 : stdint_h.uint16_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint16_t;
      arg5 : access xcb_xkb_select_events_details_t) return int;  -- /usr/include/xcb/xkb.h:7437
   pragma Import (C, xcb_xkb_select_events_details_unpack, "xcb_xkb_select_events_details_unpack");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_xkb_select_events_details_sizeof
     (arg1 : System.Address;
      arg2 : stdint_h.uint16_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint16_t) return int;  -- /usr/include/xcb/xkb.h:7444
   pragma Import (C, xcb_xkb_select_events_details_sizeof, "xcb_xkb_select_events_details_sizeof");

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
  -- ** xcb_void_cookie_t xcb_xkb_select_events_checked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_xkb_device_spec_t  deviceSpec
  -- ** @param uint16_t               affectWhich
  -- ** @param uint16_t               clear
  -- ** @param uint16_t               selectAll
  -- ** @param uint16_t               affectMap
  -- ** @param uint16_t               map
  -- ** @param const void            *details
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_select_events_checked
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint16_t;
      arg7 : stdint_h.uint16_t;
      arg8 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xkb.h:7478
   pragma Import (C, xcb_xkb_select_events_checked, "xcb_xkb_select_events_checked");

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
  -- ** xcb_void_cookie_t xcb_xkb_select_events
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_xkb_device_spec_t  deviceSpec
  -- ** @param uint16_t               affectWhich
  -- ** @param uint16_t               clear
  -- ** @param uint16_t               selectAll
  -- ** @param uint16_t               affectMap
  -- ** @param uint16_t               map
  -- ** @param const void            *details
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_select_events
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint16_t;
      arg7 : stdint_h.uint16_t;
      arg8 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xkb.h:7513
   pragma Import (C, xcb_xkb_select_events, "xcb_xkb_select_events");

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
  -- ** xcb_void_cookie_t xcb_xkb_select_events_aux_checked
  -- ** 
  -- ** @param xcb_connection_t                      *c
  -- ** @param xcb_xkb_device_spec_t                  deviceSpec
  -- ** @param uint16_t                               affectWhich
  -- ** @param uint16_t                               clear
  -- ** @param uint16_t                               selectAll
  -- ** @param uint16_t                               affectMap
  -- ** @param uint16_t                               map
  -- ** @param const xcb_xkb_select_events_details_t *details
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_select_events_aux_checked
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint16_t;
      arg7 : stdint_h.uint16_t;
      arg8 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xkb.h:7551
   pragma Import (C, xcb_xkb_select_events_aux_checked, "xcb_xkb_select_events_aux_checked");

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
  -- ** xcb_void_cookie_t xcb_xkb_select_events_aux
  -- ** 
  -- ** @param xcb_connection_t                      *c
  -- ** @param xcb_xkb_device_spec_t                  deviceSpec
  -- ** @param uint16_t                               affectWhich
  -- ** @param uint16_t                               clear
  -- ** @param uint16_t                               selectAll
  -- ** @param uint16_t                               affectMap
  -- ** @param uint16_t                               map
  -- ** @param const xcb_xkb_select_events_details_t *details
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_select_events_aux
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint16_t;
      arg7 : stdint_h.uint16_t;
      arg8 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xkb.h:7586
   pragma Import (C, xcb_xkb_select_events_aux, "xcb_xkb_select_events_aux");

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
  -- ** xcb_void_cookie_t xcb_xkb_bell_checked
  -- ** 
  -- ** @param xcb_connection_t          *c
  -- ** @param xcb_xkb_device_spec_t      deviceSpec
  -- ** @param xcb_xkb_bell_class_spec_t  bellClass
  -- ** @param xcb_xkb_id_spec_t          bellID
  -- ** @param int8_t                     percent
  -- ** @param uint8_t                    forceSound
  -- ** @param uint8_t                    eventOnly
  -- ** @param int16_t                    pitch
  -- ** @param int16_t                    duration
  -- ** @param xcb_atom_t                 name
  -- ** @param xcb_window_t               window
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_bell_checked
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : xcb_xkb_bell_class_spec_t;
      arg4 : xcb_xkb_id_spec_t;
      arg5 : sys_types_h.int8_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t;
      arg8 : sys_types_h.int16_t;
      arg9 : sys_types_h.int16_t;
      arg10 : xcb_xproto_h.xcb_atom_t;
      arg11 : xcb_xproto_h.xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xkb.h:7627
   pragma Import (C, xcb_xkb_bell_checked, "xcb_xkb_bell_checked");

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
  -- ** xcb_void_cookie_t xcb_xkb_bell
  -- ** 
  -- ** @param xcb_connection_t          *c
  -- ** @param xcb_xkb_device_spec_t      deviceSpec
  -- ** @param xcb_xkb_bell_class_spec_t  bellClass
  -- ** @param xcb_xkb_id_spec_t          bellID
  -- ** @param int8_t                     percent
  -- ** @param uint8_t                    forceSound
  -- ** @param uint8_t                    eventOnly
  -- ** @param int16_t                    pitch
  -- ** @param int16_t                    duration
  -- ** @param xcb_atom_t                 name
  -- ** @param xcb_window_t               window
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_bell
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : xcb_xkb_bell_class_spec_t;
      arg4 : xcb_xkb_id_spec_t;
      arg5 : sys_types_h.int8_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t;
      arg8 : sys_types_h.int16_t;
      arg9 : sys_types_h.int16_t;
      arg10 : xcb_xproto_h.xcb_atom_t;
      arg11 : xcb_xproto_h.xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xkb.h:7668
   pragma Import (C, xcb_xkb_bell, "xcb_xkb_bell");

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
  -- ** xcb_xkb_get_state_cookie_t xcb_xkb_get_state
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_xkb_device_spec_t  deviceSpec
  -- ** @returns xcb_xkb_get_state_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_state (arg1 : System.Address; arg2 : xcb_xkb_device_spec_t) return xcb_xkb_get_state_cookie_t;  -- /usr/include/xcb/xkb.h:7700
   pragma Import (C, xcb_xkb_get_state, "xcb_xkb_get_state");

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
  -- ** xcb_xkb_get_state_cookie_t xcb_xkb_get_state_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_xkb_device_spec_t  deviceSpec
  -- ** @returns xcb_xkb_get_state_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_state_unchecked (arg1 : System.Address; arg2 : xcb_xkb_device_spec_t) return xcb_xkb_get_state_cookie_t;  -- /usr/include/xcb/xkb.h:7726
   pragma Import (C, xcb_xkb_get_state_unchecked, "xcb_xkb_get_state_unchecked");

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
  -- * xcb_xkb_get_state_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xkb_get_state_reply_t * xcb_xkb_get_state_reply
  -- ** 
  -- ** @param xcb_connection_t            *c
  -- ** @param xcb_xkb_get_state_cookie_t   cookie
  -- ** @param xcb_generic_error_t        **e
  -- ** @returns xcb_xkb_get_state_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_state_reply
     (arg1 : System.Address;
      arg2 : xcb_xkb_get_state_cookie_t;
      arg3 : System.Address) return access xcb_xkb_get_state_reply_t;  -- /usr/include/xcb/xkb.h:7756
   pragma Import (C, xcb_xkb_get_state_reply, "xcb_xkb_get_state_reply");

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
  -- ** xcb_void_cookie_t xcb_xkb_latch_lock_state_checked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_xkb_device_spec_t  deviceSpec
  -- ** @param uint8_t                affectModLocks
  -- ** @param uint8_t                modLocks
  -- ** @param uint8_t                lockGroup
  -- ** @param uint8_t                groupLock
  -- ** @param uint8_t                affectModLatches
  -- ** @param uint8_t                latchGroup
  -- ** @param uint16_t               groupLatch
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_latch_lock_state_checked
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint8_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : stdint_h.uint16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xkb.h:7790
   pragma Import (C, xcb_xkb_latch_lock_state_checked, "xcb_xkb_latch_lock_state_checked");

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
  -- ** xcb_void_cookie_t xcb_xkb_latch_lock_state
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_xkb_device_spec_t  deviceSpec
  -- ** @param uint8_t                affectModLocks
  -- ** @param uint8_t                modLocks
  -- ** @param uint8_t                lockGroup
  -- ** @param uint8_t                groupLock
  -- ** @param uint8_t                affectModLatches
  -- ** @param uint8_t                latchGroup
  -- ** @param uint16_t               groupLatch
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_latch_lock_state
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint8_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : stdint_h.uint16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xkb.h:7827
   pragma Import (C, xcb_xkb_latch_lock_state, "xcb_xkb_latch_lock_state");

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
  -- ** xcb_xkb_get_controls_cookie_t xcb_xkb_get_controls
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_xkb_device_spec_t  deviceSpec
  -- ** @returns xcb_xkb_get_controls_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_controls (arg1 : System.Address; arg2 : xcb_xkb_device_spec_t) return xcb_xkb_get_controls_cookie_t;  -- /usr/include/xcb/xkb.h:7857
   pragma Import (C, xcb_xkb_get_controls, "xcb_xkb_get_controls");

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
  -- ** xcb_xkb_get_controls_cookie_t xcb_xkb_get_controls_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_xkb_device_spec_t  deviceSpec
  -- ** @returns xcb_xkb_get_controls_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_controls_unchecked (arg1 : System.Address; arg2 : xcb_xkb_device_spec_t) return xcb_xkb_get_controls_cookie_t;  -- /usr/include/xcb/xkb.h:7883
   pragma Import (C, xcb_xkb_get_controls_unchecked, "xcb_xkb_get_controls_unchecked");

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
  -- * xcb_xkb_get_controls_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xkb_get_controls_reply_t * xcb_xkb_get_controls_reply
  -- ** 
  -- ** @param xcb_connection_t               *c
  -- ** @param xcb_xkb_get_controls_cookie_t   cookie
  -- ** @param xcb_generic_error_t           **e
  -- ** @returns xcb_xkb_get_controls_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_controls_reply
     (arg1 : System.Address;
      arg2 : xcb_xkb_get_controls_cookie_t;
      arg3 : System.Address) return access xcb_xkb_get_controls_reply_t;  -- /usr/include/xcb/xkb.h:7913
   pragma Import (C, xcb_xkb_get_controls_reply, "xcb_xkb_get_controls_reply");

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
  -- ** xcb_void_cookie_t xcb_xkb_set_controls_checked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_xkb_device_spec_t  deviceSpec
  -- ** @param uint8_t                affectInternalRealMods
  -- ** @param uint8_t                internalRealMods
  -- ** @param uint8_t                affectIgnoreLockRealMods
  -- ** @param uint8_t                ignoreLockRealMods
  -- ** @param uint16_t               affectInternalVirtualMods
  -- ** @param uint16_t               internalVirtualMods
  -- ** @param uint16_t               affectIgnoreLockVirtualMods
  -- ** @param uint16_t               ignoreLockVirtualMods
  -- ** @param uint8_t                mouseKeysDfltBtn
  -- ** @param uint8_t                groupsWrap
  -- ** @param xcb_xkb_ax_option_t    accessXOptions
  -- ** @param uint32_t               affectEnabledControls
  -- ** @param uint32_t               enabledControls
  -- ** @param uint32_t               changeControls
  -- ** @param uint16_t               repeatDelay
  -- ** @param uint16_t               repeatInterval
  -- ** @param uint16_t               slowKeysDelay
  -- ** @param uint16_t               debounceDelay
  -- ** @param uint16_t               mouseKeysDelay
  -- ** @param uint16_t               mouseKeysInterval
  -- ** @param uint16_t               mouseKeysTimeToMax
  -- ** @param uint16_t               mouseKeysMaxSpeed
  -- ** @param int16_t                mouseKeysCurve
  -- ** @param uint16_t               accessXTimeout
  -- ** @param uint32_t               accessXTimeoutMask
  -- ** @param uint32_t               accessXTimeoutValues
  -- ** @param xcb_xkb_ax_option_t    accessXTimeoutOptionsMask
  -- ** @param xcb_xkb_ax_option_t    accessXTimeoutOptionsValues
  -- ** @param const uint8_t         *perKeyRepeat
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_controls_checked
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint8_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint16_t;
      arg8 : stdint_h.uint16_t;
      arg9 : stdint_h.uint16_t;
      arg10 : stdint_h.uint16_t;
      arg11 : stdint_h.uint8_t;
      arg12 : stdint_h.uint8_t;
      arg13 : xcb_xkb_ax_option_t;
      arg14 : stdint_h.uint32_t;
      arg15 : stdint_h.uint32_t;
      arg16 : stdint_h.uint32_t;
      arg17 : stdint_h.uint16_t;
      arg18 : stdint_h.uint16_t;
      arg19 : stdint_h.uint16_t;
      arg20 : stdint_h.uint16_t;
      arg21 : stdint_h.uint16_t;
      arg22 : stdint_h.uint16_t;
      arg23 : stdint_h.uint16_t;
      arg24 : stdint_h.uint16_t;
      arg25 : sys_types_h.int16_t;
      arg26 : stdint_h.uint16_t;
      arg27 : stdint_h.uint32_t;
      arg28 : stdint_h.uint32_t;
      arg29 : xcb_xkb_ax_option_t;
      arg30 : xcb_xkb_ax_option_t;
      arg31 : access stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xkb.h:7969
   pragma Import (C, xcb_xkb_set_controls_checked, "xcb_xkb_set_controls_checked");

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
  -- ** xcb_void_cookie_t xcb_xkb_set_controls
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_xkb_device_spec_t  deviceSpec
  -- ** @param uint8_t                affectInternalRealMods
  -- ** @param uint8_t                internalRealMods
  -- ** @param uint8_t                affectIgnoreLockRealMods
  -- ** @param uint8_t                ignoreLockRealMods
  -- ** @param uint16_t               affectInternalVirtualMods
  -- ** @param uint16_t               internalVirtualMods
  -- ** @param uint16_t               affectIgnoreLockVirtualMods
  -- ** @param uint16_t               ignoreLockVirtualMods
  -- ** @param uint8_t                mouseKeysDfltBtn
  -- ** @param uint8_t                groupsWrap
  -- ** @param xcb_xkb_ax_option_t    accessXOptions
  -- ** @param uint32_t               affectEnabledControls
  -- ** @param uint32_t               enabledControls
  -- ** @param uint32_t               changeControls
  -- ** @param uint16_t               repeatDelay
  -- ** @param uint16_t               repeatInterval
  -- ** @param uint16_t               slowKeysDelay
  -- ** @param uint16_t               debounceDelay
  -- ** @param uint16_t               mouseKeysDelay
  -- ** @param uint16_t               mouseKeysInterval
  -- ** @param uint16_t               mouseKeysTimeToMax
  -- ** @param uint16_t               mouseKeysMaxSpeed
  -- ** @param int16_t                mouseKeysCurve
  -- ** @param uint16_t               accessXTimeout
  -- ** @param uint32_t               accessXTimeoutMask
  -- ** @param uint32_t               accessXTimeoutValues
  -- ** @param xcb_xkb_ax_option_t    accessXTimeoutOptionsMask
  -- ** @param xcb_xkb_ax_option_t    accessXTimeoutOptionsValues
  -- ** @param const uint8_t         *perKeyRepeat
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_controls
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint8_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint16_t;
      arg8 : stdint_h.uint16_t;
      arg9 : stdint_h.uint16_t;
      arg10 : stdint_h.uint16_t;
      arg11 : stdint_h.uint8_t;
      arg12 : stdint_h.uint8_t;
      arg13 : xcb_xkb_ax_option_t;
      arg14 : stdint_h.uint32_t;
      arg15 : stdint_h.uint32_t;
      arg16 : stdint_h.uint32_t;
      arg17 : stdint_h.uint16_t;
      arg18 : stdint_h.uint16_t;
      arg19 : stdint_h.uint16_t;
      arg20 : stdint_h.uint16_t;
      arg21 : stdint_h.uint16_t;
      arg22 : stdint_h.uint16_t;
      arg23 : stdint_h.uint16_t;
      arg24 : stdint_h.uint16_t;
      arg25 : sys_types_h.int16_t;
      arg26 : stdint_h.uint16_t;
      arg27 : stdint_h.uint32_t;
      arg28 : stdint_h.uint32_t;
      arg29 : xcb_xkb_ax_option_t;
      arg30 : xcb_xkb_ax_option_t;
      arg31 : access stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xkb.h:8050
   pragma Import (C, xcb_xkb_set_controls, "xcb_xkb_set_controls");

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
  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_map_map_types_rtrn_length
  -- ** 
  -- ** @param const xcb_xkb_get_map_map_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_map_map_types_rtrn_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:8093
   pragma Import (C, xcb_xkb_get_map_map_types_rtrn_length, "xcb_xkb_get_map_map_types_rtrn_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_type_iterator_t xcb_xkb_get_map_map_types_rtrn_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_map_map_t *R
  -- ** @returns xcb_xkb_key_type_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_map_map_types_rtrn_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_key_type_iterator_t;  -- /usr/include/xcb/xkb.h:8107
   pragma Import (C, xcb_xkb_get_map_map_types_rtrn_iterator, "xcb_xkb_get_map_map_types_rtrn_iterator");

  --*<  
  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_map_map_syms_rtrn_length
  -- ** 
  -- ** @param const xcb_xkb_get_map_map_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_map_map_syms_rtrn_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:8121
   pragma Import (C, xcb_xkb_get_map_map_syms_rtrn_length, "xcb_xkb_get_map_map_syms_rtrn_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_sym_map_iterator_t xcb_xkb_get_map_map_syms_rtrn_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_map_map_t *R
  -- ** @returns xcb_xkb_key_sym_map_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_map_map_syms_rtrn_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_key_sym_map_iterator_t;  -- /usr/include/xcb/xkb.h:8135
   pragma Import (C, xcb_xkb_get_map_map_syms_rtrn_iterator, "xcb_xkb_get_map_map_syms_rtrn_iterator");

  --*<  
  --****************************************************************************
  -- **
  -- ** uint8_t * xcb_xkb_get_map_map_acts_rtrn_count
  -- ** 
  -- ** @param const xcb_xkb_get_map_map_t *S
  -- ** @returns uint8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_map_map_acts_rtrn_count (arg1 : System.Address) return access stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:8149
   pragma Import (C, xcb_xkb_get_map_map_acts_rtrn_count, "xcb_xkb_get_map_map_acts_rtrn_count");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_map_map_acts_rtrn_count_length
  -- ** 
  -- ** @param const xcb_xkb_get_map_map_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_map_map_acts_rtrn_count_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:8162
   pragma Import (C, xcb_xkb_get_map_map_acts_rtrn_count_length, "xcb_xkb_get_map_map_acts_rtrn_count_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_get_map_map_acts_rtrn_count_end
  -- ** 
  -- ** @param const xcb_xkb_get_map_map_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_map_map_acts_rtrn_count_end (arg1 : System.Address; arg2 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:8176
   pragma Import (C, xcb_xkb_get_map_map_acts_rtrn_count_end, "xcb_xkb_get_map_map_acts_rtrn_count_end");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_action_t * xcb_xkb_get_map_map_acts_rtrn_acts
  -- ** 
  -- ** @param const xcb_xkb_get_map_map_t *S
  -- ** @returns xcb_xkb_action_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_map_map_acts_rtrn_acts (arg1 : System.Address) return access xcb_xkb_action_t;  -- /usr/include/xcb/xkb.h:8190
   pragma Import (C, xcb_xkb_get_map_map_acts_rtrn_acts, "xcb_xkb_get_map_map_acts_rtrn_acts");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_map_map_acts_rtrn_acts_length
  -- ** 
  -- ** @param const xcb_xkb_get_map_map_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_map_map_acts_rtrn_acts_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:8203
   pragma Import (C, xcb_xkb_get_map_map_acts_rtrn_acts_length, "xcb_xkb_get_map_map_acts_rtrn_acts_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_action_iterator_t xcb_xkb_get_map_map_acts_rtrn_acts_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_map_map_t *R
  -- ** @returns xcb_xkb_action_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_map_map_acts_rtrn_acts_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_action_iterator_t;  -- /usr/include/xcb/xkb.h:8217
   pragma Import (C, xcb_xkb_get_map_map_acts_rtrn_acts_iterator, "xcb_xkb_get_map_map_acts_rtrn_acts_iterator");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_set_behavior_t * xcb_xkb_get_map_map_behaviors_rtrn
  -- ** 
  -- ** @param const xcb_xkb_get_map_map_t *S
  -- ** @returns xcb_xkb_set_behavior_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_map_map_behaviors_rtrn (arg1 : System.Address) return access xcb_xkb_set_behavior_t;  -- /usr/include/xcb/xkb.h:8231
   pragma Import (C, xcb_xkb_get_map_map_behaviors_rtrn, "xcb_xkb_get_map_map_behaviors_rtrn");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_map_map_behaviors_rtrn_length
  -- ** 
  -- ** @param const xcb_xkb_get_map_map_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_map_map_behaviors_rtrn_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:8244
   pragma Import (C, xcb_xkb_get_map_map_behaviors_rtrn_length, "xcb_xkb_get_map_map_behaviors_rtrn_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_set_behavior_iterator_t xcb_xkb_get_map_map_behaviors_rtrn_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_map_map_t *R
  -- ** @returns xcb_xkb_set_behavior_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_map_map_behaviors_rtrn_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_set_behavior_iterator_t;  -- /usr/include/xcb/xkb.h:8258
   pragma Import (C, xcb_xkb_get_map_map_behaviors_rtrn_iterator, "xcb_xkb_get_map_map_behaviors_rtrn_iterator");

  --*<  
  --****************************************************************************
  -- **
  -- ** uint8_t * xcb_xkb_get_map_map_vmods_rtrn
  -- ** 
  -- ** @param const xcb_xkb_get_map_map_t *S
  -- ** @returns uint8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_map_map_vmods_rtrn (arg1 : System.Address) return access stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:8272
   pragma Import (C, xcb_xkb_get_map_map_vmods_rtrn, "xcb_xkb_get_map_map_vmods_rtrn");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_map_map_vmods_rtrn_length
  -- ** 
  -- ** @param const xcb_xkb_get_map_map_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_map_map_vmods_rtrn_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:8285
   pragma Import (C, xcb_xkb_get_map_map_vmods_rtrn_length, "xcb_xkb_get_map_map_vmods_rtrn_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_get_map_map_vmods_rtrn_end
  -- ** 
  -- ** @param const xcb_xkb_get_map_map_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_map_map_vmods_rtrn_end (arg1 : System.Address; arg2 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:8299
   pragma Import (C, xcb_xkb_get_map_map_vmods_rtrn_end, "xcb_xkb_get_map_map_vmods_rtrn_end");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_set_explicit_t * xcb_xkb_get_map_map_explicit_rtrn
  -- ** 
  -- ** @param const xcb_xkb_get_map_map_t *S
  -- ** @returns xcb_xkb_set_explicit_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_map_map_explicit_rtrn (arg1 : System.Address) return access xcb_xkb_set_explicit_t;  -- /usr/include/xcb/xkb.h:8313
   pragma Import (C, xcb_xkb_get_map_map_explicit_rtrn, "xcb_xkb_get_map_map_explicit_rtrn");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_map_map_explicit_rtrn_length
  -- ** 
  -- ** @param const xcb_xkb_get_map_map_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_map_map_explicit_rtrn_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:8326
   pragma Import (C, xcb_xkb_get_map_map_explicit_rtrn_length, "xcb_xkb_get_map_map_explicit_rtrn_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_set_explicit_iterator_t xcb_xkb_get_map_map_explicit_rtrn_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_map_map_t *R
  -- ** @returns xcb_xkb_set_explicit_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_map_map_explicit_rtrn_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_set_explicit_iterator_t;  -- /usr/include/xcb/xkb.h:8340
   pragma Import (C, xcb_xkb_get_map_map_explicit_rtrn_iterator, "xcb_xkb_get_map_map_explicit_rtrn_iterator");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_mod_map_t * xcb_xkb_get_map_map_modmap_rtrn
  -- ** 
  -- ** @param const xcb_xkb_get_map_map_t *S
  -- ** @returns xcb_xkb_key_mod_map_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_map_map_modmap_rtrn (arg1 : System.Address) return access xcb_xkb_key_mod_map_t;  -- /usr/include/xcb/xkb.h:8354
   pragma Import (C, xcb_xkb_get_map_map_modmap_rtrn, "xcb_xkb_get_map_map_modmap_rtrn");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_map_map_modmap_rtrn_length
  -- ** 
  -- ** @param const xcb_xkb_get_map_map_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_map_map_modmap_rtrn_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:8367
   pragma Import (C, xcb_xkb_get_map_map_modmap_rtrn_length, "xcb_xkb_get_map_map_modmap_rtrn_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_mod_map_iterator_t xcb_xkb_get_map_map_modmap_rtrn_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_map_map_t *R
  -- ** @returns xcb_xkb_key_mod_map_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_map_map_modmap_rtrn_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_key_mod_map_iterator_t;  -- /usr/include/xcb/xkb.h:8381
   pragma Import (C, xcb_xkb_get_map_map_modmap_rtrn_iterator, "xcb_xkb_get_map_map_modmap_rtrn_iterator");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_v_mod_map_t * xcb_xkb_get_map_map_vmodmap_rtrn
  -- ** 
  -- ** @param const xcb_xkb_get_map_map_t *S
  -- ** @returns xcb_xkb_key_v_mod_map_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_map_map_vmodmap_rtrn (arg1 : System.Address) return access xcb_xkb_key_v_mod_map_t;  -- /usr/include/xcb/xkb.h:8395
   pragma Import (C, xcb_xkb_get_map_map_vmodmap_rtrn, "xcb_xkb_get_map_map_vmodmap_rtrn");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_map_map_vmodmap_rtrn_length
  -- ** 
  -- ** @param const xcb_xkb_get_map_map_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_map_map_vmodmap_rtrn_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:8408
   pragma Import (C, xcb_xkb_get_map_map_vmodmap_rtrn_length, "xcb_xkb_get_map_map_vmodmap_rtrn_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_v_mod_map_iterator_t xcb_xkb_get_map_map_vmodmap_rtrn_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_map_map_t *R
  -- ** @returns xcb_xkb_key_v_mod_map_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_map_map_vmodmap_rtrn_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_key_v_mod_map_iterator_t;  -- /usr/include/xcb/xkb.h:8422
   pragma Import (C, xcb_xkb_get_map_map_vmodmap_rtrn_iterator, "xcb_xkb_get_map_map_vmodmap_rtrn_iterator");

  --*<  
  --*<  
   function xcb_xkb_get_map_map_serialize
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : stdint_h.uint8_t;
      arg10 : stdint_h.uint8_t;
      arg11 : stdint_h.uint16_t;
      arg12 : System.Address) return int;  -- /usr/include/xcb/xkb.h:8426
   pragma Import (C, xcb_xkb_get_map_map_serialize, "xcb_xkb_get_map_map_serialize");

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
   function xcb_xkb_get_map_map_unpack
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : stdint_h.uint8_t;
      arg10 : stdint_h.uint8_t;
      arg11 : stdint_h.uint16_t;
      arg12 : access xcb_xkb_get_map_map_t) return int;  -- /usr/include/xcb/xkb.h:8440
   pragma Import (C, xcb_xkb_get_map_map_unpack, "xcb_xkb_get_map_map_unpack");

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
   function xcb_xkb_get_map_map_sizeof
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : stdint_h.uint8_t;
      arg10 : stdint_h.uint8_t;
      arg11 : stdint_h.uint16_t) return int;  -- /usr/include/xcb/xkb.h:8454
   pragma Import (C, xcb_xkb_get_map_map_sizeof, "xcb_xkb_get_map_map_sizeof");

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
  -- ** xcb_xkb_get_map_cookie_t xcb_xkb_get_map
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_xkb_device_spec_t  deviceSpec
  -- ** @param uint16_t               full
  -- ** @param uint16_t               partial
  -- ** @param uint8_t                firstType
  -- ** @param uint8_t                nTypes
  -- ** @param xcb_keycode_t          firstKeySym
  -- ** @param uint8_t                nKeySyms
  -- ** @param xcb_keycode_t          firstKeyAction
  -- ** @param uint8_t                nKeyActions
  -- ** @param xcb_keycode_t          firstKeyBehavior
  -- ** @param uint8_t                nKeyBehaviors
  -- ** @param uint16_t               virtualMods
  -- ** @param xcb_keycode_t          firstKeyExplicit
  -- ** @param uint8_t                nKeyExplicit
  -- ** @param xcb_keycode_t          firstModMapKey
  -- ** @param uint8_t                nModMapKeys
  -- ** @param xcb_keycode_t          firstVModMapKey
  -- ** @param uint8_t                nVModMapKeys
  -- ** @returns xcb_xkb_get_map_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_map
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint8_t;
      arg6 : stdint_h.uint8_t;
      arg7 : xcb_xproto_h.xcb_keycode_t;
      arg8 : stdint_h.uint8_t;
      arg9 : xcb_xproto_h.xcb_keycode_t;
      arg10 : stdint_h.uint8_t;
      arg11 : xcb_xproto_h.xcb_keycode_t;
      arg12 : stdint_h.uint8_t;
      arg13 : stdint_h.uint16_t;
      arg14 : xcb_xproto_h.xcb_keycode_t;
      arg15 : stdint_h.uint8_t;
      arg16 : xcb_xproto_h.xcb_keycode_t;
      arg17 : stdint_h.uint8_t;
      arg18 : xcb_xproto_h.xcb_keycode_t;
      arg19 : stdint_h.uint8_t) return xcb_xkb_get_map_cookie_t;  -- /usr/include/xcb/xkb.h:8503
   pragma Import (C, xcb_xkb_get_map, "xcb_xkb_get_map");

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
  -- ** xcb_xkb_get_map_cookie_t xcb_xkb_get_map_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_xkb_device_spec_t  deviceSpec
  -- ** @param uint16_t               full
  -- ** @param uint16_t               partial
  -- ** @param uint8_t                firstType
  -- ** @param uint8_t                nTypes
  -- ** @param xcb_keycode_t          firstKeySym
  -- ** @param uint8_t                nKeySyms
  -- ** @param xcb_keycode_t          firstKeyAction
  -- ** @param uint8_t                nKeyActions
  -- ** @param xcb_keycode_t          firstKeyBehavior
  -- ** @param uint8_t                nKeyBehaviors
  -- ** @param uint16_t               virtualMods
  -- ** @param xcb_keycode_t          firstKeyExplicit
  -- ** @param uint8_t                nKeyExplicit
  -- ** @param xcb_keycode_t          firstModMapKey
  -- ** @param uint8_t                nModMapKeys
  -- ** @param xcb_keycode_t          firstVModMapKey
  -- ** @param uint8_t                nVModMapKeys
  -- ** @returns xcb_xkb_get_map_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_map_unchecked
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint8_t;
      arg6 : stdint_h.uint8_t;
      arg7 : xcb_xproto_h.xcb_keycode_t;
      arg8 : stdint_h.uint8_t;
      arg9 : xcb_xproto_h.xcb_keycode_t;
      arg10 : stdint_h.uint8_t;
      arg11 : xcb_xproto_h.xcb_keycode_t;
      arg12 : stdint_h.uint8_t;
      arg13 : stdint_h.uint16_t;
      arg14 : xcb_xproto_h.xcb_keycode_t;
      arg15 : stdint_h.uint8_t;
      arg16 : xcb_xproto_h.xcb_keycode_t;
      arg17 : stdint_h.uint8_t;
      arg18 : xcb_xproto_h.xcb_keycode_t;
      arg19 : stdint_h.uint8_t) return xcb_xkb_get_map_cookie_t;  -- /usr/include/xcb/xkb.h:8563
   pragma Import (C, xcb_xkb_get_map_unchecked, "xcb_xkb_get_map_unchecked");

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
  --****************************************************************************
  -- **
  -- ** xcb_xkb_get_map_map_t * xcb_xkb_get_map_map
  -- ** 
  -- ** @param const xcb_xkb_get_map_reply_t *R
  -- ** @returns xcb_xkb_get_map_map_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_map_map (arg1 : System.Address) return System.Address;  -- /usr/include/xcb/xkb.h:8594
   pragma Import (C, xcb_xkb_get_map_map, "xcb_xkb_get_map_map");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_xkb_get_map_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xkb_get_map_reply_t * xcb_xkb_get_map_reply
  -- ** 
  -- ** @param xcb_connection_t          *c
  -- ** @param xcb_xkb_get_map_cookie_t   cookie
  -- ** @param xcb_generic_error_t      **e
  -- ** @returns xcb_xkb_get_map_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_map_reply
     (arg1 : System.Address;
      arg2 : xcb_xkb_get_map_cookie_t;
      arg3 : System.Address) return access xcb_xkb_get_map_reply_t;  -- /usr/include/xcb/xkb.h:8623
   pragma Import (C, xcb_xkb_get_map_reply, "xcb_xkb_get_map_reply");

  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** int xcb_xkb_set_map_values_types_length
  -- ** 
  -- ** @param const xcb_xkb_set_map_values_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_map_values_types_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:8638
   pragma Import (C, xcb_xkb_set_map_values_types_length, "xcb_xkb_set_map_values_types_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_set_key_type_iterator_t xcb_xkb_set_map_values_types_iterator
  -- ** 
  -- ** @param const xcb_xkb_set_map_values_t *R
  -- ** @returns xcb_xkb_set_key_type_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_map_values_types_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_set_key_type_iterator_t;  -- /usr/include/xcb/xkb.h:8652
   pragma Import (C, xcb_xkb_set_map_values_types_iterator, "xcb_xkb_set_map_values_types_iterator");

  --*<  
  --****************************************************************************
  -- **
  -- ** int xcb_xkb_set_map_values_syms_length
  -- ** 
  -- ** @param const xcb_xkb_set_map_values_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_map_values_syms_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:8666
   pragma Import (C, xcb_xkb_set_map_values_syms_length, "xcb_xkb_set_map_values_syms_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_sym_map_iterator_t xcb_xkb_set_map_values_syms_iterator
  -- ** 
  -- ** @param const xcb_xkb_set_map_values_t *R
  -- ** @returns xcb_xkb_key_sym_map_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_map_values_syms_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_key_sym_map_iterator_t;  -- /usr/include/xcb/xkb.h:8680
   pragma Import (C, xcb_xkb_set_map_values_syms_iterator, "xcb_xkb_set_map_values_syms_iterator");

  --*<  
  --****************************************************************************
  -- **
  -- ** uint8_t * xcb_xkb_set_map_values_actions_count
  -- ** 
  -- ** @param const xcb_xkb_set_map_values_t *S
  -- ** @returns uint8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_map_values_actions_count (arg1 : System.Address) return access stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:8694
   pragma Import (C, xcb_xkb_set_map_values_actions_count, "xcb_xkb_set_map_values_actions_count");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_set_map_values_actions_count_length
  -- ** 
  -- ** @param const xcb_xkb_set_map_values_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_map_values_actions_count_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:8707
   pragma Import (C, xcb_xkb_set_map_values_actions_count_length, "xcb_xkb_set_map_values_actions_count_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_set_map_values_actions_count_end
  -- ** 
  -- ** @param const xcb_xkb_set_map_values_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_map_values_actions_count_end (arg1 : System.Address; arg2 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:8721
   pragma Import (C, xcb_xkb_set_map_values_actions_count_end, "xcb_xkb_set_map_values_actions_count_end");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_action_t * xcb_xkb_set_map_values_actions
  -- ** 
  -- ** @param const xcb_xkb_set_map_values_t *S
  -- ** @returns xcb_xkb_action_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_map_values_actions (arg1 : System.Address) return access xcb_xkb_action_t;  -- /usr/include/xcb/xkb.h:8735
   pragma Import (C, xcb_xkb_set_map_values_actions, "xcb_xkb_set_map_values_actions");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_set_map_values_actions_length
  -- ** 
  -- ** @param const xcb_xkb_set_map_values_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_map_values_actions_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:8748
   pragma Import (C, xcb_xkb_set_map_values_actions_length, "xcb_xkb_set_map_values_actions_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_action_iterator_t xcb_xkb_set_map_values_actions_iterator
  -- ** 
  -- ** @param const xcb_xkb_set_map_values_t *R
  -- ** @returns xcb_xkb_action_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_map_values_actions_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_action_iterator_t;  -- /usr/include/xcb/xkb.h:8762
   pragma Import (C, xcb_xkb_set_map_values_actions_iterator, "xcb_xkb_set_map_values_actions_iterator");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_set_behavior_t * xcb_xkb_set_map_values_behaviors
  -- ** 
  -- ** @param const xcb_xkb_set_map_values_t *S
  -- ** @returns xcb_xkb_set_behavior_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_map_values_behaviors (arg1 : System.Address) return access xcb_xkb_set_behavior_t;  -- /usr/include/xcb/xkb.h:8776
   pragma Import (C, xcb_xkb_set_map_values_behaviors, "xcb_xkb_set_map_values_behaviors");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_set_map_values_behaviors_length
  -- ** 
  -- ** @param const xcb_xkb_set_map_values_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_map_values_behaviors_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:8789
   pragma Import (C, xcb_xkb_set_map_values_behaviors_length, "xcb_xkb_set_map_values_behaviors_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_set_behavior_iterator_t xcb_xkb_set_map_values_behaviors_iterator
  -- ** 
  -- ** @param const xcb_xkb_set_map_values_t *R
  -- ** @returns xcb_xkb_set_behavior_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_map_values_behaviors_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_set_behavior_iterator_t;  -- /usr/include/xcb/xkb.h:8803
   pragma Import (C, xcb_xkb_set_map_values_behaviors_iterator, "xcb_xkb_set_map_values_behaviors_iterator");

  --*<  
  --****************************************************************************
  -- **
  -- ** uint8_t * xcb_xkb_set_map_values_vmods
  -- ** 
  -- ** @param const xcb_xkb_set_map_values_t *S
  -- ** @returns uint8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_map_values_vmods (arg1 : System.Address) return access stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:8817
   pragma Import (C, xcb_xkb_set_map_values_vmods, "xcb_xkb_set_map_values_vmods");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_set_map_values_vmods_length
  -- ** 
  -- ** @param const xcb_xkb_set_map_values_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_map_values_vmods_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:8830
   pragma Import (C, xcb_xkb_set_map_values_vmods_length, "xcb_xkb_set_map_values_vmods_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_set_map_values_vmods_end
  -- ** 
  -- ** @param const xcb_xkb_set_map_values_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_map_values_vmods_end (arg1 : System.Address; arg2 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:8844
   pragma Import (C, xcb_xkb_set_map_values_vmods_end, "xcb_xkb_set_map_values_vmods_end");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_set_explicit_t * xcb_xkb_set_map_values_explicit
  -- ** 
  -- ** @param const xcb_xkb_set_map_values_t *S
  -- ** @returns xcb_xkb_set_explicit_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_map_values_explicit (arg1 : System.Address) return access xcb_xkb_set_explicit_t;  -- /usr/include/xcb/xkb.h:8858
   pragma Import (C, xcb_xkb_set_map_values_explicit, "xcb_xkb_set_map_values_explicit");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_set_map_values_explicit_length
  -- ** 
  -- ** @param const xcb_xkb_set_map_values_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_map_values_explicit_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:8871
   pragma Import (C, xcb_xkb_set_map_values_explicit_length, "xcb_xkb_set_map_values_explicit_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_set_explicit_iterator_t xcb_xkb_set_map_values_explicit_iterator
  -- ** 
  -- ** @param const xcb_xkb_set_map_values_t *R
  -- ** @returns xcb_xkb_set_explicit_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_map_values_explicit_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_set_explicit_iterator_t;  -- /usr/include/xcb/xkb.h:8885
   pragma Import (C, xcb_xkb_set_map_values_explicit_iterator, "xcb_xkb_set_map_values_explicit_iterator");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_mod_map_t * xcb_xkb_set_map_values_modmap
  -- ** 
  -- ** @param const xcb_xkb_set_map_values_t *S
  -- ** @returns xcb_xkb_key_mod_map_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_map_values_modmap (arg1 : System.Address) return access xcb_xkb_key_mod_map_t;  -- /usr/include/xcb/xkb.h:8899
   pragma Import (C, xcb_xkb_set_map_values_modmap, "xcb_xkb_set_map_values_modmap");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_set_map_values_modmap_length
  -- ** 
  -- ** @param const xcb_xkb_set_map_values_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_map_values_modmap_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:8912
   pragma Import (C, xcb_xkb_set_map_values_modmap_length, "xcb_xkb_set_map_values_modmap_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_mod_map_iterator_t xcb_xkb_set_map_values_modmap_iterator
  -- ** 
  -- ** @param const xcb_xkb_set_map_values_t *R
  -- ** @returns xcb_xkb_key_mod_map_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_map_values_modmap_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_key_mod_map_iterator_t;  -- /usr/include/xcb/xkb.h:8926
   pragma Import (C, xcb_xkb_set_map_values_modmap_iterator, "xcb_xkb_set_map_values_modmap_iterator");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_v_mod_map_t * xcb_xkb_set_map_values_vmodmap
  -- ** 
  -- ** @param const xcb_xkb_set_map_values_t *S
  -- ** @returns xcb_xkb_key_v_mod_map_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_map_values_vmodmap (arg1 : System.Address) return access xcb_xkb_key_v_mod_map_t;  -- /usr/include/xcb/xkb.h:8940
   pragma Import (C, xcb_xkb_set_map_values_vmodmap, "xcb_xkb_set_map_values_vmodmap");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_set_map_values_vmodmap_length
  -- ** 
  -- ** @param const xcb_xkb_set_map_values_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_map_values_vmodmap_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:8953
   pragma Import (C, xcb_xkb_set_map_values_vmodmap_length, "xcb_xkb_set_map_values_vmodmap_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_v_mod_map_iterator_t xcb_xkb_set_map_values_vmodmap_iterator
  -- ** 
  -- ** @param const xcb_xkb_set_map_values_t *R
  -- ** @returns xcb_xkb_key_v_mod_map_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_map_values_vmodmap_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_key_v_mod_map_iterator_t;  -- /usr/include/xcb/xkb.h:8967
   pragma Import (C, xcb_xkb_set_map_values_vmodmap_iterator, "xcb_xkb_set_map_values_vmodmap_iterator");

  --*<  
  --*<  
   function xcb_xkb_set_map_values_serialize
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : stdint_h.uint8_t;
      arg10 : stdint_h.uint8_t;
      arg11 : stdint_h.uint16_t;
      arg12 : System.Address) return int;  -- /usr/include/xcb/xkb.h:8971
   pragma Import (C, xcb_xkb_set_map_values_serialize, "xcb_xkb_set_map_values_serialize");

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
   function xcb_xkb_set_map_values_unpack
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : stdint_h.uint8_t;
      arg10 : stdint_h.uint8_t;
      arg11 : stdint_h.uint16_t;
      arg12 : access xcb_xkb_set_map_values_t) return int;  -- /usr/include/xcb/xkb.h:8985
   pragma Import (C, xcb_xkb_set_map_values_unpack, "xcb_xkb_set_map_values_unpack");

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
   function xcb_xkb_set_map_values_sizeof
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : stdint_h.uint8_t;
      arg10 : stdint_h.uint8_t;
      arg11 : stdint_h.uint16_t) return int;  -- /usr/include/xcb/xkb.h:8999
   pragma Import (C, xcb_xkb_set_map_values_sizeof, "xcb_xkb_set_map_values_sizeof");

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
  -- * This form can be used only if the request will not cause
  -- * a reply to be generated. Any returned error will be
  -- * saved for handling by xcb_request_check().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_xkb_set_map_checked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_xkb_device_spec_t  deviceSpec
  -- ** @param uint16_t               present
  -- ** @param uint16_t               flags
  -- ** @param xcb_keycode_t          minKeyCode
  -- ** @param xcb_keycode_t          maxKeyCode
  -- ** @param uint8_t                firstType
  -- ** @param uint8_t                nTypes
  -- ** @param xcb_keycode_t          firstKeySym
  -- ** @param uint8_t                nKeySyms
  -- ** @param uint16_t               totalSyms
  -- ** @param xcb_keycode_t          firstKeyAction
  -- ** @param uint8_t                nKeyActions
  -- ** @param uint16_t               totalActions
  -- ** @param xcb_keycode_t          firstKeyBehavior
  -- ** @param uint8_t                nKeyBehaviors
  -- ** @param uint8_t                totalKeyBehaviors
  -- ** @param xcb_keycode_t          firstKeyExplicit
  -- ** @param uint8_t                nKeyExplicit
  -- ** @param uint8_t                totalKeyExplicit
  -- ** @param xcb_keycode_t          firstModMapKey
  -- ** @param uint8_t                nModMapKeys
  -- ** @param uint8_t                totalModMapKeys
  -- ** @param xcb_keycode_t          firstVModMapKey
  -- ** @param uint8_t                nVModMapKeys
  -- ** @param uint8_t                totalVModMapKeys
  -- ** @param uint16_t               virtualMods
  -- ** @param const void            *values
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_map_checked
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint16_t;
      arg5 : xcb_xproto_h.xcb_keycode_t;
      arg6 : xcb_xproto_h.xcb_keycode_t;
      arg7 : stdint_h.uint8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : xcb_xproto_h.xcb_keycode_t;
      arg10 : stdint_h.uint8_t;
      arg11 : stdint_h.uint16_t;
      arg12 : xcb_xproto_h.xcb_keycode_t;
      arg13 : stdint_h.uint8_t;
      arg14 : stdint_h.uint16_t;
      arg15 : xcb_xproto_h.xcb_keycode_t;
      arg16 : stdint_h.uint8_t;
      arg17 : stdint_h.uint8_t;
      arg18 : xcb_xproto_h.xcb_keycode_t;
      arg19 : stdint_h.uint8_t;
      arg20 : stdint_h.uint8_t;
      arg21 : xcb_xproto_h.xcb_keycode_t;
      arg22 : stdint_h.uint8_t;
      arg23 : stdint_h.uint8_t;
      arg24 : xcb_xproto_h.xcb_keycode_t;
      arg25 : stdint_h.uint8_t;
      arg26 : stdint_h.uint8_t;
      arg27 : stdint_h.uint16_t;
      arg28 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xkb.h:9060
   pragma Import (C, xcb_xkb_set_map_checked, "xcb_xkb_set_map_checked");

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
  -- ** xcb_void_cookie_t xcb_xkb_set_map
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_xkb_device_spec_t  deviceSpec
  -- ** @param uint16_t               present
  -- ** @param uint16_t               flags
  -- ** @param xcb_keycode_t          minKeyCode
  -- ** @param xcb_keycode_t          maxKeyCode
  -- ** @param uint8_t                firstType
  -- ** @param uint8_t                nTypes
  -- ** @param xcb_keycode_t          firstKeySym
  -- ** @param uint8_t                nKeySyms
  -- ** @param uint16_t               totalSyms
  -- ** @param xcb_keycode_t          firstKeyAction
  -- ** @param uint8_t                nKeyActions
  -- ** @param uint16_t               totalActions
  -- ** @param xcb_keycode_t          firstKeyBehavior
  -- ** @param uint8_t                nKeyBehaviors
  -- ** @param uint8_t                totalKeyBehaviors
  -- ** @param xcb_keycode_t          firstKeyExplicit
  -- ** @param uint8_t                nKeyExplicit
  -- ** @param uint8_t                totalKeyExplicit
  -- ** @param xcb_keycode_t          firstModMapKey
  -- ** @param uint8_t                nModMapKeys
  -- ** @param uint8_t                totalModMapKeys
  -- ** @param xcb_keycode_t          firstVModMapKey
  -- ** @param uint8_t                nVModMapKeys
  -- ** @param uint8_t                totalVModMapKeys
  -- ** @param uint16_t               virtualMods
  -- ** @param const void            *values
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_map
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint16_t;
      arg5 : xcb_xproto_h.xcb_keycode_t;
      arg6 : xcb_xproto_h.xcb_keycode_t;
      arg7 : stdint_h.uint8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : xcb_xproto_h.xcb_keycode_t;
      arg10 : stdint_h.uint8_t;
      arg11 : stdint_h.uint16_t;
      arg12 : xcb_xproto_h.xcb_keycode_t;
      arg13 : stdint_h.uint8_t;
      arg14 : stdint_h.uint16_t;
      arg15 : xcb_xproto_h.xcb_keycode_t;
      arg16 : stdint_h.uint8_t;
      arg17 : stdint_h.uint8_t;
      arg18 : xcb_xproto_h.xcb_keycode_t;
      arg19 : stdint_h.uint8_t;
      arg20 : stdint_h.uint8_t;
      arg21 : xcb_xproto_h.xcb_keycode_t;
      arg22 : stdint_h.uint8_t;
      arg23 : stdint_h.uint8_t;
      arg24 : xcb_xproto_h.xcb_keycode_t;
      arg25 : stdint_h.uint8_t;
      arg26 : stdint_h.uint8_t;
      arg27 : stdint_h.uint16_t;
      arg28 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xkb.h:9135
   pragma Import (C, xcb_xkb_set_map, "xcb_xkb_set_map");

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
  -- ** xcb_void_cookie_t xcb_xkb_set_map_aux_checked
  -- ** 
  -- ** @param xcb_connection_t               *c
  -- ** @param xcb_xkb_device_spec_t           deviceSpec
  -- ** @param uint16_t                        present
  -- ** @param uint16_t                        flags
  -- ** @param xcb_keycode_t                   minKeyCode
  -- ** @param xcb_keycode_t                   maxKeyCode
  -- ** @param uint8_t                         firstType
  -- ** @param uint8_t                         nTypes
  -- ** @param xcb_keycode_t                   firstKeySym
  -- ** @param uint8_t                         nKeySyms
  -- ** @param uint16_t                        totalSyms
  -- ** @param xcb_keycode_t                   firstKeyAction
  -- ** @param uint8_t                         nKeyActions
  -- ** @param uint16_t                        totalActions
  -- ** @param xcb_keycode_t                   firstKeyBehavior
  -- ** @param uint8_t                         nKeyBehaviors
  -- ** @param uint8_t                         totalKeyBehaviors
  -- ** @param xcb_keycode_t                   firstKeyExplicit
  -- ** @param uint8_t                         nKeyExplicit
  -- ** @param uint8_t                         totalKeyExplicit
  -- ** @param xcb_keycode_t                   firstModMapKey
  -- ** @param uint8_t                         nModMapKeys
  -- ** @param uint8_t                         totalModMapKeys
  -- ** @param xcb_keycode_t                   firstVModMapKey
  -- ** @param uint8_t                         nVModMapKeys
  -- ** @param uint8_t                         totalVModMapKeys
  -- ** @param uint16_t                        virtualMods
  -- ** @param const xcb_xkb_set_map_values_t *values
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_map_aux_checked
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint16_t;
      arg5 : xcb_xproto_h.xcb_keycode_t;
      arg6 : xcb_xproto_h.xcb_keycode_t;
      arg7 : stdint_h.uint8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : xcb_xproto_h.xcb_keycode_t;
      arg10 : stdint_h.uint8_t;
      arg11 : stdint_h.uint16_t;
      arg12 : xcb_xproto_h.xcb_keycode_t;
      arg13 : stdint_h.uint8_t;
      arg14 : stdint_h.uint16_t;
      arg15 : xcb_xproto_h.xcb_keycode_t;
      arg16 : stdint_h.uint8_t;
      arg17 : stdint_h.uint8_t;
      arg18 : xcb_xproto_h.xcb_keycode_t;
      arg19 : stdint_h.uint8_t;
      arg20 : stdint_h.uint8_t;
      arg21 : xcb_xproto_h.xcb_keycode_t;
      arg22 : stdint_h.uint8_t;
      arg23 : stdint_h.uint8_t;
      arg24 : xcb_xproto_h.xcb_keycode_t;
      arg25 : stdint_h.uint8_t;
      arg26 : stdint_h.uint8_t;
      arg27 : stdint_h.uint16_t;
      arg28 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xkb.h:9213
   pragma Import (C, xcb_xkb_set_map_aux_checked, "xcb_xkb_set_map_aux_checked");

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
  -- ** xcb_void_cookie_t xcb_xkb_set_map_aux
  -- ** 
  -- ** @param xcb_connection_t               *c
  -- ** @param xcb_xkb_device_spec_t           deviceSpec
  -- ** @param uint16_t                        present
  -- ** @param uint16_t                        flags
  -- ** @param xcb_keycode_t                   minKeyCode
  -- ** @param xcb_keycode_t                   maxKeyCode
  -- ** @param uint8_t                         firstType
  -- ** @param uint8_t                         nTypes
  -- ** @param xcb_keycode_t                   firstKeySym
  -- ** @param uint8_t                         nKeySyms
  -- ** @param uint16_t                        totalSyms
  -- ** @param xcb_keycode_t                   firstKeyAction
  -- ** @param uint8_t                         nKeyActions
  -- ** @param uint16_t                        totalActions
  -- ** @param xcb_keycode_t                   firstKeyBehavior
  -- ** @param uint8_t                         nKeyBehaviors
  -- ** @param uint8_t                         totalKeyBehaviors
  -- ** @param xcb_keycode_t                   firstKeyExplicit
  -- ** @param uint8_t                         nKeyExplicit
  -- ** @param uint8_t                         totalKeyExplicit
  -- ** @param xcb_keycode_t                   firstModMapKey
  -- ** @param uint8_t                         nModMapKeys
  -- ** @param uint8_t                         totalModMapKeys
  -- ** @param xcb_keycode_t                   firstVModMapKey
  -- ** @param uint8_t                         nVModMapKeys
  -- ** @param uint8_t                         totalVModMapKeys
  -- ** @param uint16_t                        virtualMods
  -- ** @param const xcb_xkb_set_map_values_t *values
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_map_aux
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint16_t;
      arg5 : xcb_xproto_h.xcb_keycode_t;
      arg6 : xcb_xproto_h.xcb_keycode_t;
      arg7 : stdint_h.uint8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : xcb_xproto_h.xcb_keycode_t;
      arg10 : stdint_h.uint8_t;
      arg11 : stdint_h.uint16_t;
      arg12 : xcb_xproto_h.xcb_keycode_t;
      arg13 : stdint_h.uint8_t;
      arg14 : stdint_h.uint16_t;
      arg15 : xcb_xproto_h.xcb_keycode_t;
      arg16 : stdint_h.uint8_t;
      arg17 : stdint_h.uint8_t;
      arg18 : xcb_xproto_h.xcb_keycode_t;
      arg19 : stdint_h.uint8_t;
      arg20 : stdint_h.uint8_t;
      arg21 : xcb_xproto_h.xcb_keycode_t;
      arg22 : stdint_h.uint8_t;
      arg23 : stdint_h.uint8_t;
      arg24 : xcb_xproto_h.xcb_keycode_t;
      arg25 : stdint_h.uint8_t;
      arg26 : stdint_h.uint8_t;
      arg27 : stdint_h.uint16_t;
      arg28 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xkb.h:9288
   pragma Import (C, xcb_xkb_set_map_aux, "xcb_xkb_set_map_aux");

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
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_xkb_get_compat_map_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:9318
   pragma Import (C, xcb_xkb_get_compat_map_sizeof, "xcb_xkb_get_compat_map_sizeof");

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
  -- ** xcb_xkb_get_compat_map_cookie_t xcb_xkb_get_compat_map
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_xkb_device_spec_t  deviceSpec
  -- ** @param uint8_t                groups
  -- ** @param uint8_t                getAllSI
  -- ** @param uint16_t               firstSI
  -- ** @param uint16_t               nSI
  -- ** @returns xcb_xkb_get_compat_map_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_compat_map
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint16_t) return xcb_xkb_get_compat_map_cookie_t;  -- /usr/include/xcb/xkb.h:9344
   pragma Import (C, xcb_xkb_get_compat_map, "xcb_xkb_get_compat_map");

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
  -- ** xcb_xkb_get_compat_map_cookie_t xcb_xkb_get_compat_map_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_xkb_device_spec_t  deviceSpec
  -- ** @param uint8_t                groups
  -- ** @param uint8_t                getAllSI
  -- ** @param uint16_t               firstSI
  -- ** @param uint16_t               nSI
  -- ** @returns xcb_xkb_get_compat_map_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_compat_map_unchecked
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint16_t) return xcb_xkb_get_compat_map_cookie_t;  -- /usr/include/xcb/xkb.h:9378
   pragma Import (C, xcb_xkb_get_compat_map_unchecked, "xcb_xkb_get_compat_map_unchecked");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** uint8_t * xcb_xkb_get_compat_map_si_rtrn
  -- ** 
  -- ** @param const xcb_xkb_get_compat_map_reply_t *R
  -- ** @returns uint8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_compat_map_si_rtrn (arg1 : System.Address) return access stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:9396
   pragma Import (C, xcb_xkb_get_compat_map_si_rtrn, "xcb_xkb_get_compat_map_si_rtrn");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_compat_map_si_rtrn_length
  -- ** 
  -- ** @param const xcb_xkb_get_compat_map_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_compat_map_si_rtrn_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:9409
   pragma Import (C, xcb_xkb_get_compat_map_si_rtrn_length, "xcb_xkb_get_compat_map_si_rtrn_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_get_compat_map_si_rtrn_end
  -- ** 
  -- ** @param const xcb_xkb_get_compat_map_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_compat_map_si_rtrn_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:9422
   pragma Import (C, xcb_xkb_get_compat_map_si_rtrn_end, "xcb_xkb_get_compat_map_si_rtrn_end");

  --****************************************************************************
  -- **
  -- ** xcb_xkb_mod_def_t * xcb_xkb_get_compat_map_group_rtrn
  -- ** 
  -- ** @param const xcb_xkb_get_compat_map_reply_t *R
  -- ** @returns xcb_xkb_mod_def_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_compat_map_group_rtrn (arg1 : System.Address) return access xcb_xkb_mod_def_t;  -- /usr/include/xcb/xkb.h:9435
   pragma Import (C, xcb_xkb_get_compat_map_group_rtrn, "xcb_xkb_get_compat_map_group_rtrn");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_compat_map_group_rtrn_length
  -- ** 
  -- ** @param const xcb_xkb_get_compat_map_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_compat_map_group_rtrn_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:9448
   pragma Import (C, xcb_xkb_get_compat_map_group_rtrn_length, "xcb_xkb_get_compat_map_group_rtrn_length");

  --****************************************************************************
  -- **
  -- ** xcb_xkb_mod_def_iterator_t xcb_xkb_get_compat_map_group_rtrn_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_compat_map_reply_t *R
  -- ** @returns xcb_xkb_mod_def_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_compat_map_group_rtrn_iterator (arg1 : System.Address) return xcb_xkb_mod_def_iterator_t;  -- /usr/include/xcb/xkb.h:9461
   pragma Import (C, xcb_xkb_get_compat_map_group_rtrn_iterator, "xcb_xkb_get_compat_map_group_rtrn_iterator");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_xkb_get_compat_map_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xkb_get_compat_map_reply_t * xcb_xkb_get_compat_map_reply
  -- ** 
  -- ** @param xcb_connection_t                 *c
  -- ** @param xcb_xkb_get_compat_map_cookie_t   cookie
  -- ** @param xcb_generic_error_t             **e
  -- ** @returns xcb_xkb_get_compat_map_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_compat_map_reply
     (arg1 : System.Address;
      arg2 : xcb_xkb_get_compat_map_cookie_t;
      arg3 : System.Address) return access xcb_xkb_get_compat_map_reply_t;  -- /usr/include/xcb/xkb.h:9490
   pragma Import (C, xcb_xkb_get_compat_map_reply, "xcb_xkb_get_compat_map_reply");

  --*<  
  --*<  
  --*<  
   function xcb_xkb_set_compat_map_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:9495
   pragma Import (C, xcb_xkb_set_compat_map_sizeof, "xcb_xkb_set_compat_map_sizeof");

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
  -- ** xcb_void_cookie_t xcb_xkb_set_compat_map_checked
  -- ** 
  -- ** @param xcb_connection_t        *c
  -- ** @param xcb_xkb_device_spec_t    deviceSpec
  -- ** @param uint8_t                  recomputeActions
  -- ** @param uint8_t                  truncateSI
  -- ** @param uint8_t                  groups
  -- ** @param uint16_t                 firstSI
  -- ** @param uint16_t                 nSI
  -- ** @param const uint8_t           *si
  -- ** @param const xcb_xkb_mod_def_t *groupMaps
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_compat_map_checked
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint8_t;
      arg6 : stdint_h.uint16_t;
      arg7 : stdint_h.uint16_t;
      arg8 : access stdint_h.uint8_t;
      arg9 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xkb.h:9527
   pragma Import (C, xcb_xkb_set_compat_map_checked, "xcb_xkb_set_compat_map_checked");

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
  -- ** xcb_void_cookie_t xcb_xkb_set_compat_map
  -- ** 
  -- ** @param xcb_connection_t        *c
  -- ** @param xcb_xkb_device_spec_t    deviceSpec
  -- ** @param uint8_t                  recomputeActions
  -- ** @param uint8_t                  truncateSI
  -- ** @param uint8_t                  groups
  -- ** @param uint16_t                 firstSI
  -- ** @param uint16_t                 nSI
  -- ** @param const uint8_t           *si
  -- ** @param const xcb_xkb_mod_def_t *groupMaps
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_compat_map
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint8_t;
      arg6 : stdint_h.uint16_t;
      arg7 : stdint_h.uint16_t;
      arg8 : access stdint_h.uint8_t;
      arg9 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xkb.h:9564
   pragma Import (C, xcb_xkb_set_compat_map, "xcb_xkb_set_compat_map");

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
  -- ** xcb_xkb_get_indicator_state_cookie_t xcb_xkb_get_indicator_state
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_xkb_device_spec_t  deviceSpec
  -- ** @returns xcb_xkb_get_indicator_state_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_indicator_state (arg1 : System.Address; arg2 : xcb_xkb_device_spec_t) return xcb_xkb_get_indicator_state_cookie_t;  -- /usr/include/xcb/xkb.h:9594
   pragma Import (C, xcb_xkb_get_indicator_state, "xcb_xkb_get_indicator_state");

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
  -- ** xcb_xkb_get_indicator_state_cookie_t xcb_xkb_get_indicator_state_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_xkb_device_spec_t  deviceSpec
  -- ** @returns xcb_xkb_get_indicator_state_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_indicator_state_unchecked (arg1 : System.Address; arg2 : xcb_xkb_device_spec_t) return xcb_xkb_get_indicator_state_cookie_t;  -- /usr/include/xcb/xkb.h:9620
   pragma Import (C, xcb_xkb_get_indicator_state_unchecked, "xcb_xkb_get_indicator_state_unchecked");

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
  -- * xcb_xkb_get_indicator_state_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xkb_get_indicator_state_reply_t * xcb_xkb_get_indicator_state_reply
  -- ** 
  -- ** @param xcb_connection_t                      *c
  -- ** @param xcb_xkb_get_indicator_state_cookie_t   cookie
  -- ** @param xcb_generic_error_t                  **e
  -- ** @returns xcb_xkb_get_indicator_state_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_indicator_state_reply
     (arg1 : System.Address;
      arg2 : xcb_xkb_get_indicator_state_cookie_t;
      arg3 : System.Address) return access xcb_xkb_get_indicator_state_reply_t;  -- /usr/include/xcb/xkb.h:9650
   pragma Import (C, xcb_xkb_get_indicator_state_reply, "xcb_xkb_get_indicator_state_reply");

  --*<  
  --*<  
  --*<  
   function xcb_xkb_get_indicator_map_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:9655
   pragma Import (C, xcb_xkb_get_indicator_map_sizeof, "xcb_xkb_get_indicator_map_sizeof");

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
  -- ** xcb_xkb_get_indicator_map_cookie_t xcb_xkb_get_indicator_map
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_xkb_device_spec_t  deviceSpec
  -- ** @param uint32_t               which
  -- ** @returns xcb_xkb_get_indicator_map_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_indicator_map
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : stdint_h.uint32_t) return xcb_xkb_get_indicator_map_cookie_t;  -- /usr/include/xcb/xkb.h:9678
   pragma Import (C, xcb_xkb_get_indicator_map, "xcb_xkb_get_indicator_map");

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
  -- ** xcb_xkb_get_indicator_map_cookie_t xcb_xkb_get_indicator_map_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_xkb_device_spec_t  deviceSpec
  -- ** @param uint32_t               which
  -- ** @returns xcb_xkb_get_indicator_map_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_indicator_map_unchecked
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : stdint_h.uint32_t) return xcb_xkb_get_indicator_map_cookie_t;  -- /usr/include/xcb/xkb.h:9706
   pragma Import (C, xcb_xkb_get_indicator_map_unchecked, "xcb_xkb_get_indicator_map_unchecked");

  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_indicator_map_t * xcb_xkb_get_indicator_map_maps
  -- ** 
  -- ** @param const xcb_xkb_get_indicator_map_reply_t *R
  -- ** @returns xcb_xkb_indicator_map_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_indicator_map_maps (arg1 : System.Address) return access xcb_xkb_indicator_map_t;  -- /usr/include/xcb/xkb.h:9721
   pragma Import (C, xcb_xkb_get_indicator_map_maps, "xcb_xkb_get_indicator_map_maps");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_indicator_map_maps_length
  -- ** 
  -- ** @param const xcb_xkb_get_indicator_map_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_indicator_map_maps_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:9734
   pragma Import (C, xcb_xkb_get_indicator_map_maps_length, "xcb_xkb_get_indicator_map_maps_length");

  --****************************************************************************
  -- **
  -- ** xcb_xkb_indicator_map_iterator_t xcb_xkb_get_indicator_map_maps_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_indicator_map_reply_t *R
  -- ** @returns xcb_xkb_indicator_map_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_indicator_map_maps_iterator (arg1 : System.Address) return xcb_xkb_indicator_map_iterator_t;  -- /usr/include/xcb/xkb.h:9747
   pragma Import (C, xcb_xkb_get_indicator_map_maps_iterator, "xcb_xkb_get_indicator_map_maps_iterator");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_xkb_get_indicator_map_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xkb_get_indicator_map_reply_t * xcb_xkb_get_indicator_map_reply
  -- ** 
  -- ** @param xcb_connection_t                    *c
  -- ** @param xcb_xkb_get_indicator_map_cookie_t   cookie
  -- ** @param xcb_generic_error_t                **e
  -- ** @returns xcb_xkb_get_indicator_map_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_indicator_map_reply
     (arg1 : System.Address;
      arg2 : xcb_xkb_get_indicator_map_cookie_t;
      arg3 : System.Address) return access xcb_xkb_get_indicator_map_reply_t;  -- /usr/include/xcb/xkb.h:9776
   pragma Import (C, xcb_xkb_get_indicator_map_reply, "xcb_xkb_get_indicator_map_reply");

  --*<  
  --*<  
  --*<  
   function xcb_xkb_set_indicator_map_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:9781
   pragma Import (C, xcb_xkb_set_indicator_map_sizeof, "xcb_xkb_set_indicator_map_sizeof");

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
  -- ** xcb_void_cookie_t xcb_xkb_set_indicator_map_checked
  -- ** 
  -- ** @param xcb_connection_t              *c
  -- ** @param xcb_xkb_device_spec_t          deviceSpec
  -- ** @param uint32_t                       which
  -- ** @param const xcb_xkb_indicator_map_t *maps
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_indicator_map_checked
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : stdint_h.uint32_t;
      arg4 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xkb.h:9808
   pragma Import (C, xcb_xkb_set_indicator_map_checked, "xcb_xkb_set_indicator_map_checked");

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
  -- ** xcb_void_cookie_t xcb_xkb_set_indicator_map
  -- ** 
  -- ** @param xcb_connection_t              *c
  -- ** @param xcb_xkb_device_spec_t          deviceSpec
  -- ** @param uint32_t                       which
  -- ** @param const xcb_xkb_indicator_map_t *maps
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_indicator_map
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : stdint_h.uint32_t;
      arg4 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xkb.h:9835
   pragma Import (C, xcb_xkb_set_indicator_map, "xcb_xkb_set_indicator_map");

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
  -- ** xcb_xkb_get_named_indicator_cookie_t xcb_xkb_get_named_indicator
  -- ** 
  -- ** @param xcb_connection_t         *c
  -- ** @param xcb_xkb_device_spec_t     deviceSpec
  -- ** @param xcb_xkb_led_class_spec_t  ledClass
  -- ** @param xcb_xkb_id_spec_t         ledID
  -- ** @param xcb_atom_t                indicator
  -- ** @returns xcb_xkb_get_named_indicator_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_named_indicator
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : xcb_xkb_led_class_spec_t;
      arg4 : xcb_xkb_id_spec_t;
      arg5 : xcb_xproto_h.xcb_atom_t) return xcb_xkb_get_named_indicator_cookie_t;  -- /usr/include/xcb/xkb.h:9863
   pragma Import (C, xcb_xkb_get_named_indicator, "xcb_xkb_get_named_indicator");

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
  -- ** xcb_xkb_get_named_indicator_cookie_t xcb_xkb_get_named_indicator_unchecked
  -- ** 
  -- ** @param xcb_connection_t         *c
  -- ** @param xcb_xkb_device_spec_t     deviceSpec
  -- ** @param xcb_xkb_led_class_spec_t  ledClass
  -- ** @param xcb_xkb_id_spec_t         ledID
  -- ** @param xcb_atom_t                indicator
  -- ** @returns xcb_xkb_get_named_indicator_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_named_indicator_unchecked
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : xcb_xkb_led_class_spec_t;
      arg4 : xcb_xkb_id_spec_t;
      arg5 : xcb_xproto_h.xcb_atom_t) return xcb_xkb_get_named_indicator_cookie_t;  -- /usr/include/xcb/xkb.h:9895
   pragma Import (C, xcb_xkb_get_named_indicator_unchecked, "xcb_xkb_get_named_indicator_unchecked");

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
  -- * xcb_xkb_get_named_indicator_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xkb_get_named_indicator_reply_t * xcb_xkb_get_named_indicator_reply
  -- ** 
  -- ** @param xcb_connection_t                      *c
  -- ** @param xcb_xkb_get_named_indicator_cookie_t   cookie
  -- ** @param xcb_generic_error_t                  **e
  -- ** @returns xcb_xkb_get_named_indicator_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_named_indicator_reply
     (arg1 : System.Address;
      arg2 : xcb_xkb_get_named_indicator_cookie_t;
      arg3 : System.Address) return access xcb_xkb_get_named_indicator_reply_t;  -- /usr/include/xcb/xkb.h:9928
   pragma Import (C, xcb_xkb_get_named_indicator_reply, "xcb_xkb_get_named_indicator_reply");

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
  -- ** xcb_void_cookie_t xcb_xkb_set_named_indicator_checked
  -- ** 
  -- ** @param xcb_connection_t         *c
  -- ** @param xcb_xkb_device_spec_t     deviceSpec
  -- ** @param xcb_xkb_led_class_spec_t  ledClass
  -- ** @param xcb_xkb_id_spec_t         ledID
  -- ** @param xcb_atom_t                indicator
  -- ** @param uint8_t                   setState
  -- ** @param uint8_t                   on
  -- ** @param uint8_t                   setMap
  -- ** @param uint8_t                   createMap
  -- ** @param uint8_t                   map_flags
  -- ** @param uint8_t                   map_whichGroups
  -- ** @param uint8_t                   map_groups
  -- ** @param uint8_t                   map_whichMods
  -- ** @param uint8_t                   map_realMods
  -- ** @param uint16_t                  map_vmods
  -- ** @param uint32_t                  map_ctrls
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_named_indicator_checked
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : xcb_xkb_led_class_spec_t;
      arg4 : xcb_xkb_id_spec_t;
      arg5 : xcb_xproto_h.xcb_atom_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : stdint_h.uint8_t;
      arg10 : stdint_h.uint8_t;
      arg11 : stdint_h.uint8_t;
      arg12 : stdint_h.uint8_t;
      arg13 : stdint_h.uint8_t;
      arg14 : stdint_h.uint8_t;
      arg15 : stdint_h.uint16_t;
      arg16 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xkb.h:9969
   pragma Import (C, xcb_xkb_set_named_indicator_checked, "xcb_xkb_set_named_indicator_checked");

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
  -- *
  -- * @param c The connection
  -- * @return A cookie
  -- *
  -- * Delivers a request to the X server.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_xkb_set_named_indicator
  -- ** 
  -- ** @param xcb_connection_t         *c
  -- ** @param xcb_xkb_device_spec_t     deviceSpec
  -- ** @param xcb_xkb_led_class_spec_t  ledClass
  -- ** @param xcb_xkb_id_spec_t         ledID
  -- ** @param xcb_atom_t                indicator
  -- ** @param uint8_t                   setState
  -- ** @param uint8_t                   on
  -- ** @param uint8_t                   setMap
  -- ** @param uint8_t                   createMap
  -- ** @param uint8_t                   map_flags
  -- ** @param uint8_t                   map_whichGroups
  -- ** @param uint8_t                   map_groups
  -- ** @param uint8_t                   map_whichMods
  -- ** @param uint8_t                   map_realMods
  -- ** @param uint16_t                  map_vmods
  -- ** @param uint32_t                  map_ctrls
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_named_indicator
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : xcb_xkb_led_class_spec_t;
      arg4 : xcb_xkb_id_spec_t;
      arg5 : xcb_xproto_h.xcb_atom_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : stdint_h.uint8_t;
      arg10 : stdint_h.uint8_t;
      arg11 : stdint_h.uint8_t;
      arg12 : stdint_h.uint8_t;
      arg13 : stdint_h.uint8_t;
      arg14 : stdint_h.uint8_t;
      arg15 : stdint_h.uint16_t;
      arg16 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xkb.h:10020
   pragma Import (C, xcb_xkb_set_named_indicator, "xcb_xkb_set_named_indicator");

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
  --****************************************************************************
  -- **
  -- ** xcb_atom_t * xcb_xkb_get_names_value_list_type_names
  -- ** 
  -- ** @param const xcb_xkb_get_names_value_list_t *S
  -- ** @returns xcb_atom_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_names_value_list_type_names (arg1 : System.Address) return access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:10048
   pragma Import (C, xcb_xkb_get_names_value_list_type_names, "xcb_xkb_get_names_value_list_type_names");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_names_value_list_type_names_length
  -- ** 
  -- ** @param const xcb_xkb_get_names_value_list_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_names_value_list_type_names_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:10061
   pragma Import (C, xcb_xkb_get_names_value_list_type_names_length, "xcb_xkb_get_names_value_list_type_names_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_get_names_value_list_type_names_end
  -- ** 
  -- ** @param const xcb_xkb_get_names_value_list_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_names_value_list_type_names_end (arg1 : System.Address; arg2 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:10075
   pragma Import (C, xcb_xkb_get_names_value_list_type_names_end, "xcb_xkb_get_names_value_list_type_names_end");

  --*<  
  --****************************************************************************
  -- **
  -- ** uint8_t * xcb_xkb_get_names_value_list_n_levels_per_type
  -- ** 
  -- ** @param const xcb_xkb_get_names_value_list_t *S
  -- ** @returns uint8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_names_value_list_n_levels_per_type (arg1 : System.Address) return access stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:10089
   pragma Import (C, xcb_xkb_get_names_value_list_n_levels_per_type, "xcb_xkb_get_names_value_list_n_levels_per_type");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_names_value_list_n_levels_per_type_length
  -- ** 
  -- ** @param const xcb_xkb_get_names_value_list_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_names_value_list_n_levels_per_type_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:10102
   pragma Import (C, xcb_xkb_get_names_value_list_n_levels_per_type_length, "xcb_xkb_get_names_value_list_n_levels_per_type_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_get_names_value_list_n_levels_per_type_end
  -- ** 
  -- ** @param const xcb_xkb_get_names_value_list_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_names_value_list_n_levels_per_type_end (arg1 : System.Address; arg2 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:10116
   pragma Import (C, xcb_xkb_get_names_value_list_n_levels_per_type_end, "xcb_xkb_get_names_value_list_n_levels_per_type_end");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_atom_t * xcb_xkb_get_names_value_list_kt_level_names
  -- ** 
  -- ** @param const xcb_xkb_get_names_value_list_t *S
  -- ** @returns xcb_atom_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_names_value_list_kt_level_names (arg1 : System.Address) return access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:10130
   pragma Import (C, xcb_xkb_get_names_value_list_kt_level_names, "xcb_xkb_get_names_value_list_kt_level_names");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_names_value_list_kt_level_names_length
  -- ** 
  -- ** @param const xcb_xkb_get_names_value_list_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_names_value_list_kt_level_names_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:10143
   pragma Import (C, xcb_xkb_get_names_value_list_kt_level_names_length, "xcb_xkb_get_names_value_list_kt_level_names_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_get_names_value_list_kt_level_names_end
  -- ** 
  -- ** @param const xcb_xkb_get_names_value_list_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_names_value_list_kt_level_names_end (arg1 : System.Address; arg2 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:10157
   pragma Import (C, xcb_xkb_get_names_value_list_kt_level_names_end, "xcb_xkb_get_names_value_list_kt_level_names_end");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_atom_t * xcb_xkb_get_names_value_list_indicator_names
  -- ** 
  -- ** @param const xcb_xkb_get_names_value_list_t *S
  -- ** @returns xcb_atom_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_names_value_list_indicator_names (arg1 : System.Address) return access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:10171
   pragma Import (C, xcb_xkb_get_names_value_list_indicator_names, "xcb_xkb_get_names_value_list_indicator_names");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_names_value_list_indicator_names_length
  -- ** 
  -- ** @param const xcb_xkb_get_names_value_list_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_names_value_list_indicator_names_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:10184
   pragma Import (C, xcb_xkb_get_names_value_list_indicator_names_length, "xcb_xkb_get_names_value_list_indicator_names_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_get_names_value_list_indicator_names_end
  -- ** 
  -- ** @param const xcb_xkb_get_names_value_list_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_names_value_list_indicator_names_end (arg1 : System.Address; arg2 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:10198
   pragma Import (C, xcb_xkb_get_names_value_list_indicator_names_end, "xcb_xkb_get_names_value_list_indicator_names_end");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_atom_t * xcb_xkb_get_names_value_list_virtual_mod_names
  -- ** 
  -- ** @param const xcb_xkb_get_names_value_list_t *S
  -- ** @returns xcb_atom_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_names_value_list_virtual_mod_names (arg1 : System.Address) return access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:10212
   pragma Import (C, xcb_xkb_get_names_value_list_virtual_mod_names, "xcb_xkb_get_names_value_list_virtual_mod_names");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_names_value_list_virtual_mod_names_length
  -- ** 
  -- ** @param const xcb_xkb_get_names_value_list_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_names_value_list_virtual_mod_names_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:10225
   pragma Import (C, xcb_xkb_get_names_value_list_virtual_mod_names_length, "xcb_xkb_get_names_value_list_virtual_mod_names_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_get_names_value_list_virtual_mod_names_end
  -- ** 
  -- ** @param const xcb_xkb_get_names_value_list_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_names_value_list_virtual_mod_names_end (arg1 : System.Address; arg2 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:10239
   pragma Import (C, xcb_xkb_get_names_value_list_virtual_mod_names_end, "xcb_xkb_get_names_value_list_virtual_mod_names_end");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_atom_t * xcb_xkb_get_names_value_list_groups
  -- ** 
  -- ** @param const xcb_xkb_get_names_value_list_t *S
  -- ** @returns xcb_atom_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_names_value_list_groups (arg1 : System.Address) return access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:10253
   pragma Import (C, xcb_xkb_get_names_value_list_groups, "xcb_xkb_get_names_value_list_groups");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_names_value_list_groups_length
  -- ** 
  -- ** @param const xcb_xkb_get_names_value_list_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_names_value_list_groups_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:10266
   pragma Import (C, xcb_xkb_get_names_value_list_groups_length, "xcb_xkb_get_names_value_list_groups_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_get_names_value_list_groups_end
  -- ** 
  -- ** @param const xcb_xkb_get_names_value_list_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_names_value_list_groups_end (arg1 : System.Address; arg2 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:10280
   pragma Import (C, xcb_xkb_get_names_value_list_groups_end, "xcb_xkb_get_names_value_list_groups_end");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_name_t * xcb_xkb_get_names_value_list_key_names
  -- ** 
  -- ** @param const xcb_xkb_get_names_value_list_t *S
  -- ** @returns xcb_xkb_key_name_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_names_value_list_key_names (arg1 : System.Address) return access xcb_xkb_key_name_t;  -- /usr/include/xcb/xkb.h:10294
   pragma Import (C, xcb_xkb_get_names_value_list_key_names, "xcb_xkb_get_names_value_list_key_names");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_names_value_list_key_names_length
  -- ** 
  -- ** @param const xcb_xkb_get_names_value_list_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_names_value_list_key_names_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:10307
   pragma Import (C, xcb_xkb_get_names_value_list_key_names_length, "xcb_xkb_get_names_value_list_key_names_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_name_iterator_t xcb_xkb_get_names_value_list_key_names_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_names_value_list_t *R
  -- ** @returns xcb_xkb_key_name_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_names_value_list_key_names_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_key_name_iterator_t;  -- /usr/include/xcb/xkb.h:10321
   pragma Import (C, xcb_xkb_get_names_value_list_key_names_iterator, "xcb_xkb_get_names_value_list_key_names_iterator");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_alias_t * xcb_xkb_get_names_value_list_key_aliases
  -- ** 
  -- ** @param const xcb_xkb_get_names_value_list_t *S
  -- ** @returns xcb_xkb_key_alias_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_names_value_list_key_aliases (arg1 : System.Address) return access xcb_xkb_key_alias_t;  -- /usr/include/xcb/xkb.h:10335
   pragma Import (C, xcb_xkb_get_names_value_list_key_aliases, "xcb_xkb_get_names_value_list_key_aliases");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_names_value_list_key_aliases_length
  -- ** 
  -- ** @param const xcb_xkb_get_names_value_list_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_names_value_list_key_aliases_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:10348
   pragma Import (C, xcb_xkb_get_names_value_list_key_aliases_length, "xcb_xkb_get_names_value_list_key_aliases_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_alias_iterator_t xcb_xkb_get_names_value_list_key_aliases_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_names_value_list_t *R
  -- ** @returns xcb_xkb_key_alias_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_names_value_list_key_aliases_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_key_alias_iterator_t;  -- /usr/include/xcb/xkb.h:10362
   pragma Import (C, xcb_xkb_get_names_value_list_key_aliases_iterator, "xcb_xkb_get_names_value_list_key_aliases_iterator");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_atom_t * xcb_xkb_get_names_value_list_radio_group_names
  -- ** 
  -- ** @param const xcb_xkb_get_names_value_list_t *S
  -- ** @returns xcb_atom_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_names_value_list_radio_group_names (arg1 : System.Address) return access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:10376
   pragma Import (C, xcb_xkb_get_names_value_list_radio_group_names, "xcb_xkb_get_names_value_list_radio_group_names");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_names_value_list_radio_group_names_length
  -- ** 
  -- ** @param const xcb_xkb_get_names_value_list_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_names_value_list_radio_group_names_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:10389
   pragma Import (C, xcb_xkb_get_names_value_list_radio_group_names_length, "xcb_xkb_get_names_value_list_radio_group_names_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_get_names_value_list_radio_group_names_end
  -- ** 
  -- ** @param const xcb_xkb_get_names_value_list_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_names_value_list_radio_group_names_end (arg1 : System.Address; arg2 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:10403
   pragma Import (C, xcb_xkb_get_names_value_list_radio_group_names_end, "xcb_xkb_get_names_value_list_radio_group_names_end");

  --*<  
  --*<  
   function xcb_xkb_get_names_value_list_serialize
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint8_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : stdint_h.uint32_t;
      arg10 : System.Address) return int;  -- /usr/include/xcb/xkb.h:10407
   pragma Import (C, xcb_xkb_get_names_value_list_serialize, "xcb_xkb_get_names_value_list_serialize");

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
   function xcb_xkb_get_names_value_list_unpack
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint8_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : stdint_h.uint32_t;
      arg10 : access xcb_xkb_get_names_value_list_t) return int;  -- /usr/include/xcb/xkb.h:10419
   pragma Import (C, xcb_xkb_get_names_value_list_unpack, "xcb_xkb_get_names_value_list_unpack");

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
   function xcb_xkb_get_names_value_list_sizeof
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint8_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/xkb.h:10431
   pragma Import (C, xcb_xkb_get_names_value_list_sizeof, "xcb_xkb_get_names_value_list_sizeof");

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
  -- ** xcb_xkb_get_names_cookie_t xcb_xkb_get_names
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_xkb_device_spec_t  deviceSpec
  -- ** @param uint32_t               which
  -- ** @returns xcb_xkb_get_names_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_names
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : stdint_h.uint32_t) return xcb_xkb_get_names_cookie_t;  -- /usr/include/xcb/xkb.h:10462
   pragma Import (C, xcb_xkb_get_names, "xcb_xkb_get_names");

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
  -- ** xcb_xkb_get_names_cookie_t xcb_xkb_get_names_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_xkb_device_spec_t  deviceSpec
  -- ** @param uint32_t               which
  -- ** @returns xcb_xkb_get_names_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_names_unchecked
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : stdint_h.uint32_t) return xcb_xkb_get_names_cookie_t;  -- /usr/include/xcb/xkb.h:10490
   pragma Import (C, xcb_xkb_get_names_unchecked, "xcb_xkb_get_names_unchecked");

  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_get_names_value_list_t * xcb_xkb_get_names_value_list
  -- ** 
  -- ** @param const xcb_xkb_get_names_reply_t *R
  -- ** @returns xcb_xkb_get_names_value_list_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_names_value_list (arg1 : System.Address) return System.Address;  -- /usr/include/xcb/xkb.h:10505
   pragma Import (C, xcb_xkb_get_names_value_list, "xcb_xkb_get_names_value_list");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_xkb_get_names_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xkb_get_names_reply_t * xcb_xkb_get_names_reply
  -- ** 
  -- ** @param xcb_connection_t            *c
  -- ** @param xcb_xkb_get_names_cookie_t   cookie
  -- ** @param xcb_generic_error_t        **e
  -- ** @returns xcb_xkb_get_names_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_names_reply
     (arg1 : System.Address;
      arg2 : xcb_xkb_get_names_cookie_t;
      arg3 : System.Address) return access xcb_xkb_get_names_reply_t;  -- /usr/include/xcb/xkb.h:10534
   pragma Import (C, xcb_xkb_get_names_reply, "xcb_xkb_get_names_reply");

  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_atom_t * xcb_xkb_set_names_values_type_names
  -- ** 
  -- ** @param const xcb_xkb_set_names_values_t *S
  -- ** @returns xcb_atom_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_names_values_type_names (arg1 : System.Address) return access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:10549
   pragma Import (C, xcb_xkb_set_names_values_type_names, "xcb_xkb_set_names_values_type_names");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_set_names_values_type_names_length
  -- ** 
  -- ** @param const xcb_xkb_set_names_values_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_names_values_type_names_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:10562
   pragma Import (C, xcb_xkb_set_names_values_type_names_length, "xcb_xkb_set_names_values_type_names_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_set_names_values_type_names_end
  -- ** 
  -- ** @param const xcb_xkb_set_names_values_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_names_values_type_names_end (arg1 : System.Address; arg2 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:10576
   pragma Import (C, xcb_xkb_set_names_values_type_names_end, "xcb_xkb_set_names_values_type_names_end");

  --*<  
  --****************************************************************************
  -- **
  -- ** uint8_t * xcb_xkb_set_names_values_n_levels_per_type
  -- ** 
  -- ** @param const xcb_xkb_set_names_values_t *S
  -- ** @returns uint8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_names_values_n_levels_per_type (arg1 : System.Address) return access stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:10590
   pragma Import (C, xcb_xkb_set_names_values_n_levels_per_type, "xcb_xkb_set_names_values_n_levels_per_type");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_set_names_values_n_levels_per_type_length
  -- ** 
  -- ** @param const xcb_xkb_set_names_values_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_names_values_n_levels_per_type_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:10603
   pragma Import (C, xcb_xkb_set_names_values_n_levels_per_type_length, "xcb_xkb_set_names_values_n_levels_per_type_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_set_names_values_n_levels_per_type_end
  -- ** 
  -- ** @param const xcb_xkb_set_names_values_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_names_values_n_levels_per_type_end (arg1 : System.Address; arg2 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:10617
   pragma Import (C, xcb_xkb_set_names_values_n_levels_per_type_end, "xcb_xkb_set_names_values_n_levels_per_type_end");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_atom_t * xcb_xkb_set_names_values_kt_level_names
  -- ** 
  -- ** @param const xcb_xkb_set_names_values_t *S
  -- ** @returns xcb_atom_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_names_values_kt_level_names (arg1 : System.Address) return access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:10631
   pragma Import (C, xcb_xkb_set_names_values_kt_level_names, "xcb_xkb_set_names_values_kt_level_names");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_set_names_values_kt_level_names_length
  -- ** 
  -- ** @param const xcb_xkb_set_names_values_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_names_values_kt_level_names_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:10644
   pragma Import (C, xcb_xkb_set_names_values_kt_level_names_length, "xcb_xkb_set_names_values_kt_level_names_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_set_names_values_kt_level_names_end
  -- ** 
  -- ** @param const xcb_xkb_set_names_values_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_names_values_kt_level_names_end (arg1 : System.Address; arg2 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:10658
   pragma Import (C, xcb_xkb_set_names_values_kt_level_names_end, "xcb_xkb_set_names_values_kt_level_names_end");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_atom_t * xcb_xkb_set_names_values_indicator_names
  -- ** 
  -- ** @param const xcb_xkb_set_names_values_t *S
  -- ** @returns xcb_atom_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_names_values_indicator_names (arg1 : System.Address) return access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:10672
   pragma Import (C, xcb_xkb_set_names_values_indicator_names, "xcb_xkb_set_names_values_indicator_names");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_set_names_values_indicator_names_length
  -- ** 
  -- ** @param const xcb_xkb_set_names_values_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_names_values_indicator_names_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:10685
   pragma Import (C, xcb_xkb_set_names_values_indicator_names_length, "xcb_xkb_set_names_values_indicator_names_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_set_names_values_indicator_names_end
  -- ** 
  -- ** @param const xcb_xkb_set_names_values_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_names_values_indicator_names_end (arg1 : System.Address; arg2 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:10699
   pragma Import (C, xcb_xkb_set_names_values_indicator_names_end, "xcb_xkb_set_names_values_indicator_names_end");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_atom_t * xcb_xkb_set_names_values_virtual_mod_names
  -- ** 
  -- ** @param const xcb_xkb_set_names_values_t *S
  -- ** @returns xcb_atom_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_names_values_virtual_mod_names (arg1 : System.Address) return access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:10713
   pragma Import (C, xcb_xkb_set_names_values_virtual_mod_names, "xcb_xkb_set_names_values_virtual_mod_names");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_set_names_values_virtual_mod_names_length
  -- ** 
  -- ** @param const xcb_xkb_set_names_values_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_names_values_virtual_mod_names_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:10726
   pragma Import (C, xcb_xkb_set_names_values_virtual_mod_names_length, "xcb_xkb_set_names_values_virtual_mod_names_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_set_names_values_virtual_mod_names_end
  -- ** 
  -- ** @param const xcb_xkb_set_names_values_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_names_values_virtual_mod_names_end (arg1 : System.Address; arg2 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:10740
   pragma Import (C, xcb_xkb_set_names_values_virtual_mod_names_end, "xcb_xkb_set_names_values_virtual_mod_names_end");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_atom_t * xcb_xkb_set_names_values_groups
  -- ** 
  -- ** @param const xcb_xkb_set_names_values_t *S
  -- ** @returns xcb_atom_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_names_values_groups (arg1 : System.Address) return access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:10754
   pragma Import (C, xcb_xkb_set_names_values_groups, "xcb_xkb_set_names_values_groups");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_set_names_values_groups_length
  -- ** 
  -- ** @param const xcb_xkb_set_names_values_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_names_values_groups_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:10767
   pragma Import (C, xcb_xkb_set_names_values_groups_length, "xcb_xkb_set_names_values_groups_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_set_names_values_groups_end
  -- ** 
  -- ** @param const xcb_xkb_set_names_values_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_names_values_groups_end (arg1 : System.Address; arg2 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:10781
   pragma Import (C, xcb_xkb_set_names_values_groups_end, "xcb_xkb_set_names_values_groups_end");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_name_t * xcb_xkb_set_names_values_key_names
  -- ** 
  -- ** @param const xcb_xkb_set_names_values_t *S
  -- ** @returns xcb_xkb_key_name_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_names_values_key_names (arg1 : System.Address) return access xcb_xkb_key_name_t;  -- /usr/include/xcb/xkb.h:10795
   pragma Import (C, xcb_xkb_set_names_values_key_names, "xcb_xkb_set_names_values_key_names");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_set_names_values_key_names_length
  -- ** 
  -- ** @param const xcb_xkb_set_names_values_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_names_values_key_names_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:10808
   pragma Import (C, xcb_xkb_set_names_values_key_names_length, "xcb_xkb_set_names_values_key_names_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_name_iterator_t xcb_xkb_set_names_values_key_names_iterator
  -- ** 
  -- ** @param const xcb_xkb_set_names_values_t *R
  -- ** @returns xcb_xkb_key_name_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_names_values_key_names_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_key_name_iterator_t;  -- /usr/include/xcb/xkb.h:10822
   pragma Import (C, xcb_xkb_set_names_values_key_names_iterator, "xcb_xkb_set_names_values_key_names_iterator");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_alias_t * xcb_xkb_set_names_values_key_aliases
  -- ** 
  -- ** @param const xcb_xkb_set_names_values_t *S
  -- ** @returns xcb_xkb_key_alias_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_names_values_key_aliases (arg1 : System.Address) return access xcb_xkb_key_alias_t;  -- /usr/include/xcb/xkb.h:10836
   pragma Import (C, xcb_xkb_set_names_values_key_aliases, "xcb_xkb_set_names_values_key_aliases");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_set_names_values_key_aliases_length
  -- ** 
  -- ** @param const xcb_xkb_set_names_values_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_names_values_key_aliases_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:10849
   pragma Import (C, xcb_xkb_set_names_values_key_aliases_length, "xcb_xkb_set_names_values_key_aliases_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_alias_iterator_t xcb_xkb_set_names_values_key_aliases_iterator
  -- ** 
  -- ** @param const xcb_xkb_set_names_values_t *R
  -- ** @returns xcb_xkb_key_alias_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_names_values_key_aliases_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_key_alias_iterator_t;  -- /usr/include/xcb/xkb.h:10863
   pragma Import (C, xcb_xkb_set_names_values_key_aliases_iterator, "xcb_xkb_set_names_values_key_aliases_iterator");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_atom_t * xcb_xkb_set_names_values_radio_group_names
  -- ** 
  -- ** @param const xcb_xkb_set_names_values_t *S
  -- ** @returns xcb_atom_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_names_values_radio_group_names (arg1 : System.Address) return access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:10877
   pragma Import (C, xcb_xkb_set_names_values_radio_group_names, "xcb_xkb_set_names_values_radio_group_names");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_set_names_values_radio_group_names_length
  -- ** 
  -- ** @param const xcb_xkb_set_names_values_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_names_values_radio_group_names_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:10890
   pragma Import (C, xcb_xkb_set_names_values_radio_group_names_length, "xcb_xkb_set_names_values_radio_group_names_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_set_names_values_radio_group_names_end
  -- ** 
  -- ** @param const xcb_xkb_set_names_values_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_names_values_radio_group_names_end (arg1 : System.Address; arg2 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:10904
   pragma Import (C, xcb_xkb_set_names_values_radio_group_names_end, "xcb_xkb_set_names_values_radio_group_names_end");

  --*<  
  --*<  
   function xcb_xkb_set_names_values_serialize
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : stdint_h.uint8_t;
      arg10 : stdint_h.uint32_t;
      arg11 : System.Address) return int;  -- /usr/include/xcb/xkb.h:10908
   pragma Import (C, xcb_xkb_set_names_values_serialize, "xcb_xkb_set_names_values_serialize");

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
   function xcb_xkb_set_names_values_unpack
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : stdint_h.uint8_t;
      arg10 : stdint_h.uint32_t;
      arg11 : access xcb_xkb_set_names_values_t) return int;  -- /usr/include/xcb/xkb.h:10921
   pragma Import (C, xcb_xkb_set_names_values_unpack, "xcb_xkb_set_names_values_unpack");

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
   function xcb_xkb_set_names_values_sizeof
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : stdint_h.uint8_t;
      arg10 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/xkb.h:10934
   pragma Import (C, xcb_xkb_set_names_values_sizeof, "xcb_xkb_set_names_values_sizeof");

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
  -- ** xcb_void_cookie_t xcb_xkb_set_names_checked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_xkb_device_spec_t  deviceSpec
  -- ** @param uint16_t               virtualMods
  -- ** @param uint32_t               which
  -- ** @param uint8_t                firstType
  -- ** @param uint8_t                nTypes
  -- ** @param uint8_t                firstKTLevelt
  -- ** @param uint8_t                nKTLevels
  -- ** @param uint32_t               indicators
  -- ** @param uint8_t                groupNames
  -- ** @param uint8_t                nRadioGroups
  -- ** @param xcb_keycode_t          firstKey
  -- ** @param uint8_t                nKeys
  -- ** @param uint8_t                nKeyAliases
  -- ** @param uint16_t               totalKTLevelNames
  -- ** @param const void            *values
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_names_checked
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint8_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : stdint_h.uint32_t;
      arg10 : stdint_h.uint8_t;
      arg11 : stdint_h.uint8_t;
      arg12 : xcb_xproto_h.xcb_keycode_t;
      arg13 : stdint_h.uint8_t;
      arg14 : stdint_h.uint8_t;
      arg15 : stdint_h.uint16_t;
      arg16 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xkb.h:10982
   pragma Import (C, xcb_xkb_set_names_checked, "xcb_xkb_set_names_checked");

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
  -- *
  -- * @param c The connection
  -- * @return A cookie
  -- *
  -- * Delivers a request to the X server.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_xkb_set_names
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_xkb_device_spec_t  deviceSpec
  -- ** @param uint16_t               virtualMods
  -- ** @param uint32_t               which
  -- ** @param uint8_t                firstType
  -- ** @param uint8_t                nTypes
  -- ** @param uint8_t                firstKTLevelt
  -- ** @param uint8_t                nKTLevels
  -- ** @param uint32_t               indicators
  -- ** @param uint8_t                groupNames
  -- ** @param uint8_t                nRadioGroups
  -- ** @param xcb_keycode_t          firstKey
  -- ** @param uint8_t                nKeys
  -- ** @param uint8_t                nKeyAliases
  -- ** @param uint16_t               totalKTLevelNames
  -- ** @param const void            *values
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_names
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint8_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : stdint_h.uint32_t;
      arg10 : stdint_h.uint8_t;
      arg11 : stdint_h.uint8_t;
      arg12 : xcb_xproto_h.xcb_keycode_t;
      arg13 : stdint_h.uint8_t;
      arg14 : stdint_h.uint8_t;
      arg15 : stdint_h.uint16_t;
      arg16 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xkb.h:11033
   pragma Import (C, xcb_xkb_set_names, "xcb_xkb_set_names");

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
  -- ** xcb_void_cookie_t xcb_xkb_set_names_aux_checked
  -- ** 
  -- ** @param xcb_connection_t                 *c
  -- ** @param xcb_xkb_device_spec_t             deviceSpec
  -- ** @param uint16_t                          virtualMods
  -- ** @param uint32_t                          which
  -- ** @param uint8_t                           firstType
  -- ** @param uint8_t                           nTypes
  -- ** @param uint8_t                           firstKTLevelt
  -- ** @param uint8_t                           nKTLevels
  -- ** @param uint32_t                          indicators
  -- ** @param uint8_t                           groupNames
  -- ** @param uint8_t                           nRadioGroups
  -- ** @param xcb_keycode_t                     firstKey
  -- ** @param uint8_t                           nKeys
  -- ** @param uint8_t                           nKeyAliases
  -- ** @param uint16_t                          totalKTLevelNames
  -- ** @param const xcb_xkb_set_names_values_t *values
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_names_aux_checked
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint8_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : stdint_h.uint32_t;
      arg10 : stdint_h.uint8_t;
      arg11 : stdint_h.uint8_t;
      arg12 : xcb_xproto_h.xcb_keycode_t;
      arg13 : stdint_h.uint8_t;
      arg14 : stdint_h.uint8_t;
      arg15 : stdint_h.uint16_t;
      arg16 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xkb.h:11087
   pragma Import (C, xcb_xkb_set_names_aux_checked, "xcb_xkb_set_names_aux_checked");

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
  -- *
  -- * @param c The connection
  -- * @return A cookie
  -- *
  -- * Delivers a request to the X server.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_xkb_set_names_aux
  -- ** 
  -- ** @param xcb_connection_t                 *c
  -- ** @param xcb_xkb_device_spec_t             deviceSpec
  -- ** @param uint16_t                          virtualMods
  -- ** @param uint32_t                          which
  -- ** @param uint8_t                           firstType
  -- ** @param uint8_t                           nTypes
  -- ** @param uint8_t                           firstKTLevelt
  -- ** @param uint8_t                           nKTLevels
  -- ** @param uint32_t                          indicators
  -- ** @param uint8_t                           groupNames
  -- ** @param uint8_t                           nRadioGroups
  -- ** @param xcb_keycode_t                     firstKey
  -- ** @param uint8_t                           nKeys
  -- ** @param uint8_t                           nKeyAliases
  -- ** @param uint16_t                          totalKTLevelNames
  -- ** @param const xcb_xkb_set_names_values_t *values
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_names_aux
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint8_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : stdint_h.uint32_t;
      arg10 : stdint_h.uint8_t;
      arg11 : stdint_h.uint8_t;
      arg12 : xcb_xproto_h.xcb_keycode_t;
      arg13 : stdint_h.uint8_t;
      arg14 : stdint_h.uint8_t;
      arg15 : stdint_h.uint16_t;
      arg16 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xkb.h:11138
   pragma Import (C, xcb_xkb_set_names_aux, "xcb_xkb_set_names_aux");

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
   function xcb_xkb_get_geometry_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:11156
   pragma Import (C, xcb_xkb_get_geometry_sizeof, "xcb_xkb_get_geometry_sizeof");

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
  -- ** xcb_xkb_get_geometry_cookie_t xcb_xkb_get_geometry
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_xkb_device_spec_t  deviceSpec
  -- ** @param xcb_atom_t             name
  -- ** @returns xcb_xkb_get_geometry_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_geometry
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : xcb_xproto_h.xcb_atom_t) return xcb_xkb_get_geometry_cookie_t;  -- /usr/include/xcb/xkb.h:11179
   pragma Import (C, xcb_xkb_get_geometry, "xcb_xkb_get_geometry");

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
  -- ** xcb_xkb_get_geometry_cookie_t xcb_xkb_get_geometry_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_xkb_device_spec_t  deviceSpec
  -- ** @param xcb_atom_t             name
  -- ** @returns xcb_xkb_get_geometry_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_geometry_unchecked
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : xcb_xproto_h.xcb_atom_t) return xcb_xkb_get_geometry_cookie_t;  -- /usr/include/xcb/xkb.h:11207
   pragma Import (C, xcb_xkb_get_geometry_unchecked, "xcb_xkb_get_geometry_unchecked");

  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_counted_string_16_t * xcb_xkb_get_geometry_label_font
  -- ** 
  -- ** @param const xcb_xkb_get_geometry_reply_t *R
  -- ** @returns xcb_xkb_counted_string_16_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_geometry_label_font (arg1 : System.Address) return access xcb_xkb_counted_string_16_t;  -- /usr/include/xcb/xkb.h:11222
   pragma Import (C, xcb_xkb_get_geometry_label_font, "xcb_xkb_get_geometry_label_font");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_geometry_properties_length
  -- ** 
  -- ** @param const xcb_xkb_get_geometry_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_geometry_properties_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:11235
   pragma Import (C, xcb_xkb_get_geometry_properties_length, "xcb_xkb_get_geometry_properties_length");

  --****************************************************************************
  -- **
  -- ** xcb_xkb_property_iterator_t xcb_xkb_get_geometry_properties_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_geometry_reply_t *R
  -- ** @returns xcb_xkb_property_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_geometry_properties_iterator (arg1 : System.Address) return xcb_xkb_property_iterator_t;  -- /usr/include/xcb/xkb.h:11248
   pragma Import (C, xcb_xkb_get_geometry_properties_iterator, "xcb_xkb_get_geometry_properties_iterator");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_geometry_colors_length
  -- ** 
  -- ** @param const xcb_xkb_get_geometry_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_geometry_colors_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:11261
   pragma Import (C, xcb_xkb_get_geometry_colors_length, "xcb_xkb_get_geometry_colors_length");

  --****************************************************************************
  -- **
  -- ** xcb_xkb_counted_string_16_iterator_t xcb_xkb_get_geometry_colors_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_geometry_reply_t *R
  -- ** @returns xcb_xkb_counted_string_16_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_geometry_colors_iterator (arg1 : System.Address) return xcb_xkb_counted_string_16_iterator_t;  -- /usr/include/xcb/xkb.h:11274
   pragma Import (C, xcb_xkb_get_geometry_colors_iterator, "xcb_xkb_get_geometry_colors_iterator");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_geometry_shapes_length
  -- ** 
  -- ** @param const xcb_xkb_get_geometry_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_geometry_shapes_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:11287
   pragma Import (C, xcb_xkb_get_geometry_shapes_length, "xcb_xkb_get_geometry_shapes_length");

  --****************************************************************************
  -- **
  -- ** xcb_xkb_shape_iterator_t xcb_xkb_get_geometry_shapes_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_geometry_reply_t *R
  -- ** @returns xcb_xkb_shape_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_geometry_shapes_iterator (arg1 : System.Address) return xcb_xkb_shape_iterator_t;  -- /usr/include/xcb/xkb.h:11300
   pragma Import (C, xcb_xkb_get_geometry_shapes_iterator, "xcb_xkb_get_geometry_shapes_iterator");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_geometry_sections_length
  -- ** 
  -- ** @param const xcb_xkb_get_geometry_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_geometry_sections_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:11313
   pragma Import (C, xcb_xkb_get_geometry_sections_length, "xcb_xkb_get_geometry_sections_length");

  --****************************************************************************
  -- **
  -- ** xcb_xkb_section_iterator_t xcb_xkb_get_geometry_sections_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_geometry_reply_t *R
  -- ** @returns xcb_xkb_section_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_geometry_sections_iterator (arg1 : System.Address) return xcb_xkb_section_iterator_t;  -- /usr/include/xcb/xkb.h:11326
   pragma Import (C, xcb_xkb_get_geometry_sections_iterator, "xcb_xkb_get_geometry_sections_iterator");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_geometry_doodads_length
  -- ** 
  -- ** @param const xcb_xkb_get_geometry_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_geometry_doodads_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:11339
   pragma Import (C, xcb_xkb_get_geometry_doodads_length, "xcb_xkb_get_geometry_doodads_length");

  --****************************************************************************
  -- **
  -- ** xcb_xkb_doodad_iterator_t xcb_xkb_get_geometry_doodads_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_geometry_reply_t *R
  -- ** @returns xcb_xkb_doodad_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_geometry_doodads_iterator (arg1 : System.Address) return xcb_xkb_doodad_iterator_t;  -- /usr/include/xcb/xkb.h:11352
   pragma Import (C, xcb_xkb_get_geometry_doodads_iterator, "xcb_xkb_get_geometry_doodads_iterator");

  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_alias_t * xcb_xkb_get_geometry_key_aliases
  -- ** 
  -- ** @param const xcb_xkb_get_geometry_reply_t *R
  -- ** @returns xcb_xkb_key_alias_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_geometry_key_aliases (arg1 : System.Address) return access xcb_xkb_key_alias_t;  -- /usr/include/xcb/xkb.h:11365
   pragma Import (C, xcb_xkb_get_geometry_key_aliases, "xcb_xkb_get_geometry_key_aliases");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_geometry_key_aliases_length
  -- ** 
  -- ** @param const xcb_xkb_get_geometry_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_geometry_key_aliases_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:11378
   pragma Import (C, xcb_xkb_get_geometry_key_aliases_length, "xcb_xkb_get_geometry_key_aliases_length");

  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_alias_iterator_t xcb_xkb_get_geometry_key_aliases_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_geometry_reply_t *R
  -- ** @returns xcb_xkb_key_alias_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_geometry_key_aliases_iterator (arg1 : System.Address) return xcb_xkb_key_alias_iterator_t;  -- /usr/include/xcb/xkb.h:11391
   pragma Import (C, xcb_xkb_get_geometry_key_aliases_iterator, "xcb_xkb_get_geometry_key_aliases_iterator");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_xkb_get_geometry_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xkb_get_geometry_reply_t * xcb_xkb_get_geometry_reply
  -- ** 
  -- ** @param xcb_connection_t               *c
  -- ** @param xcb_xkb_get_geometry_cookie_t   cookie
  -- ** @param xcb_generic_error_t           **e
  -- ** @returns xcb_xkb_get_geometry_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_geometry_reply
     (arg1 : System.Address;
      arg2 : xcb_xkb_get_geometry_cookie_t;
      arg3 : System.Address) return access xcb_xkb_get_geometry_reply_t;  -- /usr/include/xcb/xkb.h:11420
   pragma Import (C, xcb_xkb_get_geometry_reply, "xcb_xkb_get_geometry_reply");

  --*<  
  --*<  
  --*<  
   function xcb_xkb_set_geometry_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:11425
   pragma Import (C, xcb_xkb_set_geometry_sizeof, "xcb_xkb_set_geometry_sizeof");

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
  -- ** xcb_void_cookie_t xcb_xkb_set_geometry_checked
  -- ** 
  -- ** @param xcb_connection_t                  *c
  -- ** @param xcb_xkb_device_spec_t              deviceSpec
  -- ** @param uint8_t                            nShapes
  -- ** @param uint8_t                            nSections
  -- ** @param xcb_atom_t                         name
  -- ** @param uint16_t                           widthMM
  -- ** @param uint16_t                           heightMM
  -- ** @param uint16_t                           nProperties
  -- ** @param uint16_t                           nColors
  -- ** @param uint16_t                           nDoodads
  -- ** @param uint16_t                           nKeyAliases
  -- ** @param uint8_t                            baseColorNdx
  -- ** @param uint8_t                            labelColorNdx
  -- ** @param xcb_xkb_counted_string_16_t       *labelFont
  -- ** @param const xcb_xkb_property_t          *properties
  -- ** @param const xcb_xkb_counted_string_16_t *colors
  -- ** @param const xcb_xkb_shape_t             *shapes
  -- ** @param const xcb_xkb_section_t           *sections
  -- ** @param const xcb_xkb_doodad_t            *doodads
  -- ** @param const xcb_xkb_key_alias_t         *keyAliases
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_geometry_checked
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint8_t;
      arg5 : xcb_xproto_h.xcb_atom_t;
      arg6 : stdint_h.uint16_t;
      arg7 : stdint_h.uint16_t;
      arg8 : stdint_h.uint16_t;
      arg9 : stdint_h.uint16_t;
      arg10 : stdint_h.uint16_t;
      arg11 : stdint_h.uint16_t;
      arg12 : stdint_h.uint8_t;
      arg13 : stdint_h.uint8_t;
      arg14 : access xcb_xkb_counted_string_16_t;
      arg15 : System.Address;
      arg16 : System.Address;
      arg17 : System.Address;
      arg18 : System.Address;
      arg19 : System.Address;
      arg20 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xkb.h:11468
   pragma Import (C, xcb_xkb_set_geometry_checked, "xcb_xkb_set_geometry_checked");

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
  -- *
  -- * @param c The connection
  -- * @return A cookie
  -- *
  -- * Delivers a request to the X server.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_void_cookie_t xcb_xkb_set_geometry
  -- ** 
  -- ** @param xcb_connection_t                  *c
  -- ** @param xcb_xkb_device_spec_t              deviceSpec
  -- ** @param uint8_t                            nShapes
  -- ** @param uint8_t                            nSections
  -- ** @param xcb_atom_t                         name
  -- ** @param uint16_t                           widthMM
  -- ** @param uint16_t                           heightMM
  -- ** @param uint16_t                           nProperties
  -- ** @param uint16_t                           nColors
  -- ** @param uint16_t                           nDoodads
  -- ** @param uint16_t                           nKeyAliases
  -- ** @param uint8_t                            baseColorNdx
  -- ** @param uint8_t                            labelColorNdx
  -- ** @param xcb_xkb_counted_string_16_t       *labelFont
  -- ** @param const xcb_xkb_property_t          *properties
  -- ** @param const xcb_xkb_counted_string_16_t *colors
  -- ** @param const xcb_xkb_shape_t             *shapes
  -- ** @param const xcb_xkb_section_t           *sections
  -- ** @param const xcb_xkb_doodad_t            *doodads
  -- ** @param const xcb_xkb_key_alias_t         *keyAliases
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_geometry
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint8_t;
      arg5 : xcb_xproto_h.xcb_atom_t;
      arg6 : stdint_h.uint16_t;
      arg7 : stdint_h.uint16_t;
      arg8 : stdint_h.uint16_t;
      arg9 : stdint_h.uint16_t;
      arg10 : stdint_h.uint16_t;
      arg11 : stdint_h.uint16_t;
      arg12 : stdint_h.uint8_t;
      arg13 : stdint_h.uint8_t;
      arg14 : access xcb_xkb_counted_string_16_t;
      arg15 : System.Address;
      arg16 : System.Address;
      arg17 : System.Address;
      arg18 : System.Address;
      arg19 : System.Address;
      arg20 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xkb.h:11527
   pragma Import (C, xcb_xkb_set_geometry, "xcb_xkb_set_geometry");

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
  -- *
  -- * @param c The connection
  -- * @return A cookie
  -- *
  -- * Delivers a request to the X server.
  -- * 
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xkb_per_client_flags_cookie_t xcb_xkb_per_client_flags
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_xkb_device_spec_t  deviceSpec
  -- ** @param uint32_t               change
  -- ** @param uint32_t               value
  -- ** @param uint32_t               ctrlsToChange
  -- ** @param uint32_t               autoCtrls
  -- ** @param uint32_t               autoCtrlsValues
  -- ** @returns xcb_xkb_per_client_flags_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_per_client_flags
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : stdint_h.uint32_t;
      arg7 : stdint_h.uint32_t) return xcb_xkb_per_client_flags_cookie_t;  -- /usr/include/xcb/xkb.h:11573
   pragma Import (C, xcb_xkb_per_client_flags, "xcb_xkb_per_client_flags");

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
  -- ** xcb_xkb_per_client_flags_cookie_t xcb_xkb_per_client_flags_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_xkb_device_spec_t  deviceSpec
  -- ** @param uint32_t               change
  -- ** @param uint32_t               value
  -- ** @param uint32_t               ctrlsToChange
  -- ** @param uint32_t               autoCtrls
  -- ** @param uint32_t               autoCtrlsValues
  -- ** @returns xcb_xkb_per_client_flags_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_per_client_flags_unchecked
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : stdint_h.uint32_t;
      arg7 : stdint_h.uint32_t) return xcb_xkb_per_client_flags_cookie_t;  -- /usr/include/xcb/xkb.h:11609
   pragma Import (C, xcb_xkb_per_client_flags_unchecked, "xcb_xkb_per_client_flags_unchecked");

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
  -- * xcb_xkb_per_client_flags_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xkb_per_client_flags_reply_t * xcb_xkb_per_client_flags_reply
  -- ** 
  -- ** @param xcb_connection_t                   *c
  -- ** @param xcb_xkb_per_client_flags_cookie_t   cookie
  -- ** @param xcb_generic_error_t               **e
  -- ** @returns xcb_xkb_per_client_flags_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_per_client_flags_reply
     (arg1 : System.Address;
      arg2 : xcb_xkb_per_client_flags_cookie_t;
      arg3 : System.Address) return access xcb_xkb_per_client_flags_reply_t;  -- /usr/include/xcb/xkb.h:11644
   pragma Import (C, xcb_xkb_per_client_flags_reply, "xcb_xkb_per_client_flags_reply");

  --*<  
  --*<  
  --*<  
   function xcb_xkb_list_components_serialize
     (arg1 : System.Address;
      arg2 : System.Address;
      arg3 : access xcb_xkb_string8_t;
      arg4 : access xcb_xkb_string8_t;
      arg5 : access xcb_xkb_string8_t;
      arg6 : access xcb_xkb_string8_t;
      arg7 : access xcb_xkb_string8_t;
      arg8 : access xcb_xkb_string8_t) return int;  -- /usr/include/xcb/xkb.h:11649
   pragma Import (C, xcb_xkb_list_components_serialize, "xcb_xkb_list_components_serialize");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_xkb_list_components_unserialize (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:11659
   pragma Import (C, xcb_xkb_list_components_unserialize, "xcb_xkb_list_components_unserialize");

  --*<  
  --*<  
   function xcb_xkb_list_components_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:11663
   pragma Import (C, xcb_xkb_list_components_sizeof, "xcb_xkb_list_components_sizeof");

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
  -- ** xcb_xkb_list_components_cookie_t xcb_xkb_list_components
  -- ** 
  -- ** @param xcb_connection_t        *c
  -- ** @param xcb_xkb_device_spec_t    deviceSpec
  -- ** @param uint16_t                 maxNames
  -- ** @param uint8_t                  keymapsSpecLen
  -- ** @param const xcb_xkb_string8_t *keymapsSpec
  -- ** @param uint8_t                  keycodesSpecLen
  -- ** @param const xcb_xkb_string8_t *keycodesSpec
  -- ** @param uint8_t                  typesSpecLen
  -- ** @param const xcb_xkb_string8_t *typesSpec
  -- ** @param uint8_t                  compatMapSpecLen
  -- ** @param const xcb_xkb_string8_t *compatMapSpec
  -- ** @param uint8_t                  symbolsSpecLen
  -- ** @param const xcb_xkb_string8_t *symbolsSpec
  -- ** @param uint8_t                  geometrySpecLen
  -- ** @param const xcb_xkb_string8_t *geometrySpec
  -- ** @returns xcb_xkb_list_components_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_list_components
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint8_t;
      arg5 : access xcb_xkb_string8_t;
      arg6 : stdint_h.uint8_t;
      arg7 : access xcb_xkb_string8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : access xcb_xkb_string8_t;
      arg10 : stdint_h.uint8_t;
      arg11 : access xcb_xkb_string8_t;
      arg12 : stdint_h.uint8_t;
      arg13 : access xcb_xkb_string8_t;
      arg14 : stdint_h.uint8_t;
      arg15 : access xcb_xkb_string8_t) return xcb_xkb_list_components_cookie_t;  -- /usr/include/xcb/xkb.h:11698
   pragma Import (C, xcb_xkb_list_components, "xcb_xkb_list_components");

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
  -- ** xcb_xkb_list_components_cookie_t xcb_xkb_list_components_unchecked
  -- ** 
  -- ** @param xcb_connection_t        *c
  -- ** @param xcb_xkb_device_spec_t    deviceSpec
  -- ** @param uint16_t                 maxNames
  -- ** @param uint8_t                  keymapsSpecLen
  -- ** @param const xcb_xkb_string8_t *keymapsSpec
  -- ** @param uint8_t                  keycodesSpecLen
  -- ** @param const xcb_xkb_string8_t *keycodesSpec
  -- ** @param uint8_t                  typesSpecLen
  -- ** @param const xcb_xkb_string8_t *typesSpec
  -- ** @param uint8_t                  compatMapSpecLen
  -- ** @param const xcb_xkb_string8_t *compatMapSpec
  -- ** @param uint8_t                  symbolsSpecLen
  -- ** @param const xcb_xkb_string8_t *symbolsSpec
  -- ** @param uint8_t                  geometrySpecLen
  -- ** @param const xcb_xkb_string8_t *geometrySpec
  -- ** @returns xcb_xkb_list_components_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_list_components_unchecked
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint8_t;
      arg5 : access xcb_xkb_string8_t;
      arg6 : stdint_h.uint8_t;
      arg7 : access xcb_xkb_string8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : access xcb_xkb_string8_t;
      arg10 : stdint_h.uint8_t;
      arg11 : access xcb_xkb_string8_t;
      arg12 : stdint_h.uint8_t;
      arg13 : access xcb_xkb_string8_t;
      arg14 : stdint_h.uint8_t;
      arg15 : access xcb_xkb_string8_t) return xcb_xkb_list_components_cookie_t;  -- /usr/include/xcb/xkb.h:11750
   pragma Import (C, xcb_xkb_list_components_unchecked, "xcb_xkb_list_components_unchecked");

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
  --****************************************************************************
  -- **
  -- ** int xcb_xkb_list_components_keymaps_length
  -- ** 
  -- ** @param const xcb_xkb_list_components_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_list_components_keymaps_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:11777
   pragma Import (C, xcb_xkb_list_components_keymaps_length, "xcb_xkb_list_components_keymaps_length");

  --****************************************************************************
  -- **
  -- ** xcb_xkb_listing_iterator_t xcb_xkb_list_components_keymaps_iterator
  -- ** 
  -- ** @param const xcb_xkb_list_components_reply_t *R
  -- ** @returns xcb_xkb_listing_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_list_components_keymaps_iterator (arg1 : System.Address) return xcb_xkb_listing_iterator_t;  -- /usr/include/xcb/xkb.h:11790
   pragma Import (C, xcb_xkb_list_components_keymaps_iterator, "xcb_xkb_list_components_keymaps_iterator");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_list_components_keycodes_length
  -- ** 
  -- ** @param const xcb_xkb_list_components_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_list_components_keycodes_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:11803
   pragma Import (C, xcb_xkb_list_components_keycodes_length, "xcb_xkb_list_components_keycodes_length");

  --****************************************************************************
  -- **
  -- ** xcb_xkb_listing_iterator_t xcb_xkb_list_components_keycodes_iterator
  -- ** 
  -- ** @param const xcb_xkb_list_components_reply_t *R
  -- ** @returns xcb_xkb_listing_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_list_components_keycodes_iterator (arg1 : System.Address) return xcb_xkb_listing_iterator_t;  -- /usr/include/xcb/xkb.h:11816
   pragma Import (C, xcb_xkb_list_components_keycodes_iterator, "xcb_xkb_list_components_keycodes_iterator");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_list_components_types_length
  -- ** 
  -- ** @param const xcb_xkb_list_components_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_list_components_types_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:11829
   pragma Import (C, xcb_xkb_list_components_types_length, "xcb_xkb_list_components_types_length");

  --****************************************************************************
  -- **
  -- ** xcb_xkb_listing_iterator_t xcb_xkb_list_components_types_iterator
  -- ** 
  -- ** @param const xcb_xkb_list_components_reply_t *R
  -- ** @returns xcb_xkb_listing_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_list_components_types_iterator (arg1 : System.Address) return xcb_xkb_listing_iterator_t;  -- /usr/include/xcb/xkb.h:11842
   pragma Import (C, xcb_xkb_list_components_types_iterator, "xcb_xkb_list_components_types_iterator");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_list_components_compat_maps_length
  -- ** 
  -- ** @param const xcb_xkb_list_components_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_list_components_compat_maps_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:11855
   pragma Import (C, xcb_xkb_list_components_compat_maps_length, "xcb_xkb_list_components_compat_maps_length");

  --****************************************************************************
  -- **
  -- ** xcb_xkb_listing_iterator_t xcb_xkb_list_components_compat_maps_iterator
  -- ** 
  -- ** @param const xcb_xkb_list_components_reply_t *R
  -- ** @returns xcb_xkb_listing_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_list_components_compat_maps_iterator (arg1 : System.Address) return xcb_xkb_listing_iterator_t;  -- /usr/include/xcb/xkb.h:11868
   pragma Import (C, xcb_xkb_list_components_compat_maps_iterator, "xcb_xkb_list_components_compat_maps_iterator");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_list_components_symbols_length
  -- ** 
  -- ** @param const xcb_xkb_list_components_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_list_components_symbols_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:11881
   pragma Import (C, xcb_xkb_list_components_symbols_length, "xcb_xkb_list_components_symbols_length");

  --****************************************************************************
  -- **
  -- ** xcb_xkb_listing_iterator_t xcb_xkb_list_components_symbols_iterator
  -- ** 
  -- ** @param const xcb_xkb_list_components_reply_t *R
  -- ** @returns xcb_xkb_listing_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_list_components_symbols_iterator (arg1 : System.Address) return xcb_xkb_listing_iterator_t;  -- /usr/include/xcb/xkb.h:11894
   pragma Import (C, xcb_xkb_list_components_symbols_iterator, "xcb_xkb_list_components_symbols_iterator");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_list_components_geometries_length
  -- ** 
  -- ** @param const xcb_xkb_list_components_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_list_components_geometries_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:11907
   pragma Import (C, xcb_xkb_list_components_geometries_length, "xcb_xkb_list_components_geometries_length");

  --****************************************************************************
  -- **
  -- ** xcb_xkb_listing_iterator_t xcb_xkb_list_components_geometries_iterator
  -- ** 
  -- ** @param const xcb_xkb_list_components_reply_t *R
  -- ** @returns xcb_xkb_listing_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_list_components_geometries_iterator (arg1 : System.Address) return xcb_xkb_listing_iterator_t;  -- /usr/include/xcb/xkb.h:11920
   pragma Import (C, xcb_xkb_list_components_geometries_iterator, "xcb_xkb_list_components_geometries_iterator");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_xkb_list_components_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xkb_list_components_reply_t * xcb_xkb_list_components_reply
  -- ** 
  -- ** @param xcb_connection_t                  *c
  -- ** @param xcb_xkb_list_components_cookie_t   cookie
  -- ** @param xcb_generic_error_t              **e
  -- ** @returns xcb_xkb_list_components_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_list_components_reply
     (arg1 : System.Address;
      arg2 : xcb_xkb_list_components_cookie_t;
      arg3 : System.Address) return access xcb_xkb_list_components_reply_t;  -- /usr/include/xcb/xkb.h:11949
   pragma Import (C, xcb_xkb_list_components_reply, "xcb_xkb_list_components_reply");

  --*<  
  --*<  
  --*<  
   function xcb_xkb_get_kbd_by_name_serialize
     (arg1 : System.Address;
      arg2 : System.Address;
      arg3 : access xcb_xkb_string8_t;
      arg4 : access xcb_xkb_string8_t;
      arg5 : access xcb_xkb_string8_t;
      arg6 : access xcb_xkb_string8_t;
      arg7 : access xcb_xkb_string8_t;
      arg8 : access xcb_xkb_string8_t) return int;  -- /usr/include/xcb/xkb.h:11954
   pragma Import (C, xcb_xkb_get_kbd_by_name_serialize, "xcb_xkb_get_kbd_by_name_serialize");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_xkb_get_kbd_by_name_unserialize (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:11964
   pragma Import (C, xcb_xkb_get_kbd_by_name_unserialize, "xcb_xkb_get_kbd_by_name_unserialize");

  --*<  
  --*<  
   function xcb_xkb_get_kbd_by_name_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:11968
   pragma Import (C, xcb_xkb_get_kbd_by_name_sizeof, "xcb_xkb_get_kbd_by_name_sizeof");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_types_map_types_rtrn_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_types_map_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_types_map_types_rtrn_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:11981
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_types_map_types_rtrn_length, "xcb_xkb_get_kbd_by_name_replies_types_map_types_rtrn_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_type_iterator_t xcb_xkb_get_kbd_by_name_replies_types_map_types_rtrn_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_types_map_t *R
  -- ** @returns xcb_xkb_key_type_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_types_map_types_rtrn_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_key_type_iterator_t;  -- /usr/include/xcb/xkb.h:11995
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_types_map_types_rtrn_iterator, "xcb_xkb_get_kbd_by_name_replies_types_map_types_rtrn_iterator");

  --*<  
  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_types_map_syms_rtrn_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_types_map_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_types_map_syms_rtrn_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:12009
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_types_map_syms_rtrn_length, "xcb_xkb_get_kbd_by_name_replies_types_map_syms_rtrn_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_sym_map_iterator_t xcb_xkb_get_kbd_by_name_replies_types_map_syms_rtrn_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_types_map_t *R
  -- ** @returns xcb_xkb_key_sym_map_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_types_map_syms_rtrn_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_key_sym_map_iterator_t;  -- /usr/include/xcb/xkb.h:12023
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_types_map_syms_rtrn_iterator, "xcb_xkb_get_kbd_by_name_replies_types_map_syms_rtrn_iterator");

  --*<  
  --****************************************************************************
  -- **
  -- ** uint8_t * xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_count
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
  -- ** @returns uint8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_count (arg1 : System.Address) return access stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:12037
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_count, "xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_count");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_count_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_types_map_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_count_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:12050
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_count_length, "xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_count_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_count_end
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_types_map_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_count_end (arg1 : System.Address; arg2 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:12064
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_count_end, "xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_count_end");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_action_t * xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_acts
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
  -- ** @returns xcb_xkb_action_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_acts (arg1 : System.Address) return access xcb_xkb_action_t;  -- /usr/include/xcb/xkb.h:12078
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_acts, "xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_acts");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_acts_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_types_map_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_acts_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:12091
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_acts_length, "xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_acts_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_action_iterator_t xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_acts_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_types_map_t *R
  -- ** @returns xcb_xkb_action_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_acts_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_action_iterator_t;  -- /usr/include/xcb/xkb.h:12105
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_acts_iterator, "xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_acts_iterator");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_set_behavior_t * xcb_xkb_get_kbd_by_name_replies_types_map_behaviors_rtrn
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
  -- ** @returns xcb_xkb_set_behavior_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_types_map_behaviors_rtrn (arg1 : System.Address) return access xcb_xkb_set_behavior_t;  -- /usr/include/xcb/xkb.h:12119
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_types_map_behaviors_rtrn, "xcb_xkb_get_kbd_by_name_replies_types_map_behaviors_rtrn");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_types_map_behaviors_rtrn_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_types_map_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_types_map_behaviors_rtrn_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:12132
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_types_map_behaviors_rtrn_length, "xcb_xkb_get_kbd_by_name_replies_types_map_behaviors_rtrn_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_set_behavior_iterator_t xcb_xkb_get_kbd_by_name_replies_types_map_behaviors_rtrn_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_types_map_t *R
  -- ** @returns xcb_xkb_set_behavior_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_types_map_behaviors_rtrn_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_set_behavior_iterator_t;  -- /usr/include/xcb/xkb.h:12146
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_types_map_behaviors_rtrn_iterator, "xcb_xkb_get_kbd_by_name_replies_types_map_behaviors_rtrn_iterator");

  --*<  
  --****************************************************************************
  -- **
  -- ** uint8_t * xcb_xkb_get_kbd_by_name_replies_types_map_vmods_rtrn
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
  -- ** @returns uint8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_types_map_vmods_rtrn (arg1 : System.Address) return access stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:12160
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_types_map_vmods_rtrn, "xcb_xkb_get_kbd_by_name_replies_types_map_vmods_rtrn");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_types_map_vmods_rtrn_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_types_map_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_types_map_vmods_rtrn_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:12173
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_types_map_vmods_rtrn_length, "xcb_xkb_get_kbd_by_name_replies_types_map_vmods_rtrn_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_types_map_vmods_rtrn_end
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_types_map_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_types_map_vmods_rtrn_end (arg1 : System.Address; arg2 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:12187
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_types_map_vmods_rtrn_end, "xcb_xkb_get_kbd_by_name_replies_types_map_vmods_rtrn_end");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_set_explicit_t * xcb_xkb_get_kbd_by_name_replies_types_map_explicit_rtrn
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
  -- ** @returns xcb_xkb_set_explicit_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_types_map_explicit_rtrn (arg1 : System.Address) return access xcb_xkb_set_explicit_t;  -- /usr/include/xcb/xkb.h:12201
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_types_map_explicit_rtrn, "xcb_xkb_get_kbd_by_name_replies_types_map_explicit_rtrn");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_types_map_explicit_rtrn_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_types_map_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_types_map_explicit_rtrn_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:12214
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_types_map_explicit_rtrn_length, "xcb_xkb_get_kbd_by_name_replies_types_map_explicit_rtrn_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_set_explicit_iterator_t xcb_xkb_get_kbd_by_name_replies_types_map_explicit_rtrn_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_types_map_t *R
  -- ** @returns xcb_xkb_set_explicit_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_types_map_explicit_rtrn_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_set_explicit_iterator_t;  -- /usr/include/xcb/xkb.h:12228
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_types_map_explicit_rtrn_iterator, "xcb_xkb_get_kbd_by_name_replies_types_map_explicit_rtrn_iterator");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_mod_map_t * xcb_xkb_get_kbd_by_name_replies_types_map_modmap_rtrn
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
  -- ** @returns xcb_xkb_key_mod_map_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_types_map_modmap_rtrn (arg1 : System.Address) return access xcb_xkb_key_mod_map_t;  -- /usr/include/xcb/xkb.h:12242
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_types_map_modmap_rtrn, "xcb_xkb_get_kbd_by_name_replies_types_map_modmap_rtrn");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_types_map_modmap_rtrn_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_types_map_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_types_map_modmap_rtrn_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:12255
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_types_map_modmap_rtrn_length, "xcb_xkb_get_kbd_by_name_replies_types_map_modmap_rtrn_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_mod_map_iterator_t xcb_xkb_get_kbd_by_name_replies_types_map_modmap_rtrn_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_types_map_t *R
  -- ** @returns xcb_xkb_key_mod_map_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_types_map_modmap_rtrn_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_key_mod_map_iterator_t;  -- /usr/include/xcb/xkb.h:12269
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_types_map_modmap_rtrn_iterator, "xcb_xkb_get_kbd_by_name_replies_types_map_modmap_rtrn_iterator");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_v_mod_map_t * xcb_xkb_get_kbd_by_name_replies_types_map_vmodmap_rtrn
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
  -- ** @returns xcb_xkb_key_v_mod_map_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_types_map_vmodmap_rtrn (arg1 : System.Address) return access xcb_xkb_key_v_mod_map_t;  -- /usr/include/xcb/xkb.h:12283
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_types_map_vmodmap_rtrn, "xcb_xkb_get_kbd_by_name_replies_types_map_vmodmap_rtrn");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_types_map_vmodmap_rtrn_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_types_map_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_types_map_vmodmap_rtrn_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:12296
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_types_map_vmodmap_rtrn_length, "xcb_xkb_get_kbd_by_name_replies_types_map_vmodmap_rtrn_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_v_mod_map_iterator_t xcb_xkb_get_kbd_by_name_replies_types_map_vmodmap_rtrn_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_types_map_t *R
  -- ** @returns xcb_xkb_key_v_mod_map_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_types_map_vmodmap_rtrn_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_key_v_mod_map_iterator_t;  -- /usr/include/xcb/xkb.h:12310
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_types_map_vmodmap_rtrn_iterator, "xcb_xkb_get_kbd_by_name_replies_types_map_vmodmap_rtrn_iterator");

  --*<  
  --*<  
   function xcb_xkb_get_kbd_by_name_replies_types_map_serialize
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : stdint_h.uint8_t;
      arg10 : stdint_h.uint8_t;
      arg11 : stdint_h.uint16_t;
      arg12 : System.Address) return int;  -- /usr/include/xcb/xkb.h:12314
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_types_map_serialize, "xcb_xkb_get_kbd_by_name_replies_types_map_serialize");

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
   function xcb_xkb_get_kbd_by_name_replies_types_map_unpack
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : stdint_h.uint8_t;
      arg10 : stdint_h.uint8_t;
      arg11 : stdint_h.uint16_t;
      arg12 : access xcb_xkb_get_kbd_by_name_replies_types_map_t) return int;  -- /usr/include/xcb/xkb.h:12328
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_types_map_unpack, "xcb_xkb_get_kbd_by_name_replies_types_map_unpack");

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
   function xcb_xkb_get_kbd_by_name_replies_types_map_sizeof
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : stdint_h.uint8_t;
      arg10 : stdint_h.uint8_t;
      arg11 : stdint_h.uint16_t) return int;  -- /usr/include/xcb/xkb.h:12342
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_types_map_sizeof, "xcb_xkb_get_kbd_by_name_replies_types_map_sizeof");

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
  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_client_symbols_map_types_rtrn_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_client_symbols_map_types_rtrn_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:12365
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_client_symbols_map_types_rtrn_length, "xcb_xkb_get_kbd_by_name_replies_client_symbols_map_types_rtrn_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_type_iterator_t xcb_xkb_get_kbd_by_name_replies_client_symbols_map_types_rtrn_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t *R
  -- ** @returns xcb_xkb_key_type_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_client_symbols_map_types_rtrn_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_key_type_iterator_t;  -- /usr/include/xcb/xkb.h:12379
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_client_symbols_map_types_rtrn_iterator, "xcb_xkb_get_kbd_by_name_replies_client_symbols_map_types_rtrn_iterator");

  --*<  
  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_client_symbols_map_syms_rtrn_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_client_symbols_map_syms_rtrn_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:12393
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_client_symbols_map_syms_rtrn_length, "xcb_xkb_get_kbd_by_name_replies_client_symbols_map_syms_rtrn_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_sym_map_iterator_t xcb_xkb_get_kbd_by_name_replies_client_symbols_map_syms_rtrn_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t *R
  -- ** @returns xcb_xkb_key_sym_map_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_client_symbols_map_syms_rtrn_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_key_sym_map_iterator_t;  -- /usr/include/xcb/xkb.h:12407
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_client_symbols_map_syms_rtrn_iterator, "xcb_xkb_get_kbd_by_name_replies_client_symbols_map_syms_rtrn_iterator");

  --*<  
  --****************************************************************************
  -- **
  -- ** uint8_t * xcb_xkb_get_kbd_by_name_replies_client_symbols_map_acts_rtrn_count
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
  -- ** @returns uint8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_client_symbols_map_acts_rtrn_count (arg1 : System.Address) return access stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:12421
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_client_symbols_map_acts_rtrn_count, "xcb_xkb_get_kbd_by_name_replies_client_symbols_map_acts_rtrn_count");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_client_symbols_map_acts_rtrn_count_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_client_symbols_map_acts_rtrn_count_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:12434
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_client_symbols_map_acts_rtrn_count_length, "xcb_xkb_get_kbd_by_name_replies_client_symbols_map_acts_rtrn_count_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_client_symbols_map_acts_rtrn_count_end
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_client_symbols_map_acts_rtrn_count_end (arg1 : System.Address; arg2 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:12448
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_client_symbols_map_acts_rtrn_count_end, "xcb_xkb_get_kbd_by_name_replies_client_symbols_map_acts_rtrn_count_end");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_action_t * xcb_xkb_get_kbd_by_name_replies_client_symbols_map_acts_rtrn_acts
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
  -- ** @returns xcb_xkb_action_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_client_symbols_map_acts_rtrn_acts (arg1 : System.Address) return access xcb_xkb_action_t;  -- /usr/include/xcb/xkb.h:12462
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_client_symbols_map_acts_rtrn_acts, "xcb_xkb_get_kbd_by_name_replies_client_symbols_map_acts_rtrn_acts");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_client_symbols_map_acts_rtrn_acts_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_client_symbols_map_acts_rtrn_acts_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:12475
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_client_symbols_map_acts_rtrn_acts_length, "xcb_xkb_get_kbd_by_name_replies_client_symbols_map_acts_rtrn_acts_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_action_iterator_t xcb_xkb_get_kbd_by_name_replies_client_symbols_map_acts_rtrn_acts_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t *R
  -- ** @returns xcb_xkb_action_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_client_symbols_map_acts_rtrn_acts_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_action_iterator_t;  -- /usr/include/xcb/xkb.h:12489
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_client_symbols_map_acts_rtrn_acts_iterator, "xcb_xkb_get_kbd_by_name_replies_client_symbols_map_acts_rtrn_acts_iterator");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_set_behavior_t * xcb_xkb_get_kbd_by_name_replies_client_symbols_map_behaviors_rtrn
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
  -- ** @returns xcb_xkb_set_behavior_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_client_symbols_map_behaviors_rtrn (arg1 : System.Address) return access xcb_xkb_set_behavior_t;  -- /usr/include/xcb/xkb.h:12503
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_client_symbols_map_behaviors_rtrn, "xcb_xkb_get_kbd_by_name_replies_client_symbols_map_behaviors_rtrn");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_client_symbols_map_behaviors_rtrn_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_client_symbols_map_behaviors_rtrn_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:12516
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_client_symbols_map_behaviors_rtrn_length, "xcb_xkb_get_kbd_by_name_replies_client_symbols_map_behaviors_rtrn_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_set_behavior_iterator_t xcb_xkb_get_kbd_by_name_replies_client_symbols_map_behaviors_rtrn_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t *R
  -- ** @returns xcb_xkb_set_behavior_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_client_symbols_map_behaviors_rtrn_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_set_behavior_iterator_t;  -- /usr/include/xcb/xkb.h:12530
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_client_symbols_map_behaviors_rtrn_iterator, "xcb_xkb_get_kbd_by_name_replies_client_symbols_map_behaviors_rtrn_iterator");

  --*<  
  --****************************************************************************
  -- **
  -- ** uint8_t * xcb_xkb_get_kbd_by_name_replies_client_symbols_map_vmods_rtrn
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
  -- ** @returns uint8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_client_symbols_map_vmods_rtrn (arg1 : System.Address) return access stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:12544
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_client_symbols_map_vmods_rtrn, "xcb_xkb_get_kbd_by_name_replies_client_symbols_map_vmods_rtrn");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_client_symbols_map_vmods_rtrn_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_client_symbols_map_vmods_rtrn_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:12557
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_client_symbols_map_vmods_rtrn_length, "xcb_xkb_get_kbd_by_name_replies_client_symbols_map_vmods_rtrn_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_client_symbols_map_vmods_rtrn_end
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_client_symbols_map_vmods_rtrn_end (arg1 : System.Address; arg2 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:12571
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_client_symbols_map_vmods_rtrn_end, "xcb_xkb_get_kbd_by_name_replies_client_symbols_map_vmods_rtrn_end");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_set_explicit_t * xcb_xkb_get_kbd_by_name_replies_client_symbols_map_explicit_rtrn
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
  -- ** @returns xcb_xkb_set_explicit_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_client_symbols_map_explicit_rtrn (arg1 : System.Address) return access xcb_xkb_set_explicit_t;  -- /usr/include/xcb/xkb.h:12585
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_client_symbols_map_explicit_rtrn, "xcb_xkb_get_kbd_by_name_replies_client_symbols_map_explicit_rtrn");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_client_symbols_map_explicit_rtrn_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_client_symbols_map_explicit_rtrn_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:12598
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_client_symbols_map_explicit_rtrn_length, "xcb_xkb_get_kbd_by_name_replies_client_symbols_map_explicit_rtrn_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_set_explicit_iterator_t xcb_xkb_get_kbd_by_name_replies_client_symbols_map_explicit_rtrn_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t *R
  -- ** @returns xcb_xkb_set_explicit_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_client_symbols_map_explicit_rtrn_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_set_explicit_iterator_t;  -- /usr/include/xcb/xkb.h:12612
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_client_symbols_map_explicit_rtrn_iterator, "xcb_xkb_get_kbd_by_name_replies_client_symbols_map_explicit_rtrn_iterator");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_mod_map_t * xcb_xkb_get_kbd_by_name_replies_client_symbols_map_modmap_rtrn
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
  -- ** @returns xcb_xkb_key_mod_map_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_client_symbols_map_modmap_rtrn (arg1 : System.Address) return access xcb_xkb_key_mod_map_t;  -- /usr/include/xcb/xkb.h:12626
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_client_symbols_map_modmap_rtrn, "xcb_xkb_get_kbd_by_name_replies_client_symbols_map_modmap_rtrn");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_client_symbols_map_modmap_rtrn_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_client_symbols_map_modmap_rtrn_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:12639
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_client_symbols_map_modmap_rtrn_length, "xcb_xkb_get_kbd_by_name_replies_client_symbols_map_modmap_rtrn_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_mod_map_iterator_t xcb_xkb_get_kbd_by_name_replies_client_symbols_map_modmap_rtrn_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t *R
  -- ** @returns xcb_xkb_key_mod_map_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_client_symbols_map_modmap_rtrn_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_key_mod_map_iterator_t;  -- /usr/include/xcb/xkb.h:12653
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_client_symbols_map_modmap_rtrn_iterator, "xcb_xkb_get_kbd_by_name_replies_client_symbols_map_modmap_rtrn_iterator");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_v_mod_map_t * xcb_xkb_get_kbd_by_name_replies_client_symbols_map_vmodmap_rtrn
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
  -- ** @returns xcb_xkb_key_v_mod_map_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_client_symbols_map_vmodmap_rtrn (arg1 : System.Address) return access xcb_xkb_key_v_mod_map_t;  -- /usr/include/xcb/xkb.h:12667
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_client_symbols_map_vmodmap_rtrn, "xcb_xkb_get_kbd_by_name_replies_client_symbols_map_vmodmap_rtrn");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_client_symbols_map_vmodmap_rtrn_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_client_symbols_map_vmodmap_rtrn_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:12680
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_client_symbols_map_vmodmap_rtrn_length, "xcb_xkb_get_kbd_by_name_replies_client_symbols_map_vmodmap_rtrn_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_v_mod_map_iterator_t xcb_xkb_get_kbd_by_name_replies_client_symbols_map_vmodmap_rtrn_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t *R
  -- ** @returns xcb_xkb_key_v_mod_map_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_client_symbols_map_vmodmap_rtrn_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_key_v_mod_map_iterator_t;  -- /usr/include/xcb/xkb.h:12694
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_client_symbols_map_vmodmap_rtrn_iterator, "xcb_xkb_get_kbd_by_name_replies_client_symbols_map_vmodmap_rtrn_iterator");

  --*<  
  --*<  
   function xcb_xkb_get_kbd_by_name_replies_client_symbols_map_serialize
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : stdint_h.uint8_t;
      arg10 : stdint_h.uint8_t;
      arg11 : stdint_h.uint16_t;
      arg12 : System.Address) return int;  -- /usr/include/xcb/xkb.h:12698
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_client_symbols_map_serialize, "xcb_xkb_get_kbd_by_name_replies_client_symbols_map_serialize");

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
   function xcb_xkb_get_kbd_by_name_replies_client_symbols_map_unpack
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : stdint_h.uint8_t;
      arg10 : stdint_h.uint8_t;
      arg11 : stdint_h.uint16_t;
      arg12 : access xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t) return int;  -- /usr/include/xcb/xkb.h:12712
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_client_symbols_map_unpack, "xcb_xkb_get_kbd_by_name_replies_client_symbols_map_unpack");

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
   function xcb_xkb_get_kbd_by_name_replies_client_symbols_map_sizeof
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : stdint_h.uint8_t;
      arg10 : stdint_h.uint8_t;
      arg11 : stdint_h.uint16_t) return int;  -- /usr/include/xcb/xkb.h:12726
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_client_symbols_map_sizeof, "xcb_xkb_get_kbd_by_name_replies_client_symbols_map_sizeof");

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
  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_server_symbols_map_types_rtrn_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_server_symbols_map_types_rtrn_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:12749
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_server_symbols_map_types_rtrn_length, "xcb_xkb_get_kbd_by_name_replies_server_symbols_map_types_rtrn_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_type_iterator_t xcb_xkb_get_kbd_by_name_replies_server_symbols_map_types_rtrn_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t *R
  -- ** @returns xcb_xkb_key_type_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_server_symbols_map_types_rtrn_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_key_type_iterator_t;  -- /usr/include/xcb/xkb.h:12763
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_server_symbols_map_types_rtrn_iterator, "xcb_xkb_get_kbd_by_name_replies_server_symbols_map_types_rtrn_iterator");

  --*<  
  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_server_symbols_map_syms_rtrn_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_server_symbols_map_syms_rtrn_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:12777
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_server_symbols_map_syms_rtrn_length, "xcb_xkb_get_kbd_by_name_replies_server_symbols_map_syms_rtrn_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_sym_map_iterator_t xcb_xkb_get_kbd_by_name_replies_server_symbols_map_syms_rtrn_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t *R
  -- ** @returns xcb_xkb_key_sym_map_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_server_symbols_map_syms_rtrn_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_key_sym_map_iterator_t;  -- /usr/include/xcb/xkb.h:12791
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_server_symbols_map_syms_rtrn_iterator, "xcb_xkb_get_kbd_by_name_replies_server_symbols_map_syms_rtrn_iterator");

  --*<  
  --****************************************************************************
  -- **
  -- ** uint8_t * xcb_xkb_get_kbd_by_name_replies_server_symbols_map_acts_rtrn_count
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
  -- ** @returns uint8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_server_symbols_map_acts_rtrn_count (arg1 : System.Address) return access stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:12805
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_server_symbols_map_acts_rtrn_count, "xcb_xkb_get_kbd_by_name_replies_server_symbols_map_acts_rtrn_count");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_server_symbols_map_acts_rtrn_count_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_server_symbols_map_acts_rtrn_count_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:12818
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_server_symbols_map_acts_rtrn_count_length, "xcb_xkb_get_kbd_by_name_replies_server_symbols_map_acts_rtrn_count_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_server_symbols_map_acts_rtrn_count_end
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_server_symbols_map_acts_rtrn_count_end (arg1 : System.Address; arg2 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:12832
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_server_symbols_map_acts_rtrn_count_end, "xcb_xkb_get_kbd_by_name_replies_server_symbols_map_acts_rtrn_count_end");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_action_t * xcb_xkb_get_kbd_by_name_replies_server_symbols_map_acts_rtrn_acts
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
  -- ** @returns xcb_xkb_action_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_server_symbols_map_acts_rtrn_acts (arg1 : System.Address) return access xcb_xkb_action_t;  -- /usr/include/xcb/xkb.h:12846
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_server_symbols_map_acts_rtrn_acts, "xcb_xkb_get_kbd_by_name_replies_server_symbols_map_acts_rtrn_acts");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_server_symbols_map_acts_rtrn_acts_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_server_symbols_map_acts_rtrn_acts_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:12859
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_server_symbols_map_acts_rtrn_acts_length, "xcb_xkb_get_kbd_by_name_replies_server_symbols_map_acts_rtrn_acts_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_action_iterator_t xcb_xkb_get_kbd_by_name_replies_server_symbols_map_acts_rtrn_acts_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t *R
  -- ** @returns xcb_xkb_action_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_server_symbols_map_acts_rtrn_acts_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_action_iterator_t;  -- /usr/include/xcb/xkb.h:12873
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_server_symbols_map_acts_rtrn_acts_iterator, "xcb_xkb_get_kbd_by_name_replies_server_symbols_map_acts_rtrn_acts_iterator");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_set_behavior_t * xcb_xkb_get_kbd_by_name_replies_server_symbols_map_behaviors_rtrn
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
  -- ** @returns xcb_xkb_set_behavior_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_server_symbols_map_behaviors_rtrn (arg1 : System.Address) return access xcb_xkb_set_behavior_t;  -- /usr/include/xcb/xkb.h:12887
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_server_symbols_map_behaviors_rtrn, "xcb_xkb_get_kbd_by_name_replies_server_symbols_map_behaviors_rtrn");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_server_symbols_map_behaviors_rtrn_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_server_symbols_map_behaviors_rtrn_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:12900
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_server_symbols_map_behaviors_rtrn_length, "xcb_xkb_get_kbd_by_name_replies_server_symbols_map_behaviors_rtrn_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_set_behavior_iterator_t xcb_xkb_get_kbd_by_name_replies_server_symbols_map_behaviors_rtrn_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t *R
  -- ** @returns xcb_xkb_set_behavior_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_server_symbols_map_behaviors_rtrn_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_set_behavior_iterator_t;  -- /usr/include/xcb/xkb.h:12914
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_server_symbols_map_behaviors_rtrn_iterator, "xcb_xkb_get_kbd_by_name_replies_server_symbols_map_behaviors_rtrn_iterator");

  --*<  
  --****************************************************************************
  -- **
  -- ** uint8_t * xcb_xkb_get_kbd_by_name_replies_server_symbols_map_vmods_rtrn
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
  -- ** @returns uint8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_server_symbols_map_vmods_rtrn (arg1 : System.Address) return access stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:12928
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_server_symbols_map_vmods_rtrn, "xcb_xkb_get_kbd_by_name_replies_server_symbols_map_vmods_rtrn");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_server_symbols_map_vmods_rtrn_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_server_symbols_map_vmods_rtrn_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:12941
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_server_symbols_map_vmods_rtrn_length, "xcb_xkb_get_kbd_by_name_replies_server_symbols_map_vmods_rtrn_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_server_symbols_map_vmods_rtrn_end
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_server_symbols_map_vmods_rtrn_end (arg1 : System.Address; arg2 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:12955
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_server_symbols_map_vmods_rtrn_end, "xcb_xkb_get_kbd_by_name_replies_server_symbols_map_vmods_rtrn_end");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_set_explicit_t * xcb_xkb_get_kbd_by_name_replies_server_symbols_map_explicit_rtrn
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
  -- ** @returns xcb_xkb_set_explicit_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_server_symbols_map_explicit_rtrn (arg1 : System.Address) return access xcb_xkb_set_explicit_t;  -- /usr/include/xcb/xkb.h:12969
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_server_symbols_map_explicit_rtrn, "xcb_xkb_get_kbd_by_name_replies_server_symbols_map_explicit_rtrn");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_server_symbols_map_explicit_rtrn_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_server_symbols_map_explicit_rtrn_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:12982
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_server_symbols_map_explicit_rtrn_length, "xcb_xkb_get_kbd_by_name_replies_server_symbols_map_explicit_rtrn_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_set_explicit_iterator_t xcb_xkb_get_kbd_by_name_replies_server_symbols_map_explicit_rtrn_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t *R
  -- ** @returns xcb_xkb_set_explicit_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_server_symbols_map_explicit_rtrn_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_set_explicit_iterator_t;  -- /usr/include/xcb/xkb.h:12996
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_server_symbols_map_explicit_rtrn_iterator, "xcb_xkb_get_kbd_by_name_replies_server_symbols_map_explicit_rtrn_iterator");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_mod_map_t * xcb_xkb_get_kbd_by_name_replies_server_symbols_map_modmap_rtrn
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
  -- ** @returns xcb_xkb_key_mod_map_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_server_symbols_map_modmap_rtrn (arg1 : System.Address) return access xcb_xkb_key_mod_map_t;  -- /usr/include/xcb/xkb.h:13010
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_server_symbols_map_modmap_rtrn, "xcb_xkb_get_kbd_by_name_replies_server_symbols_map_modmap_rtrn");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_server_symbols_map_modmap_rtrn_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_server_symbols_map_modmap_rtrn_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:13023
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_server_symbols_map_modmap_rtrn_length, "xcb_xkb_get_kbd_by_name_replies_server_symbols_map_modmap_rtrn_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_mod_map_iterator_t xcb_xkb_get_kbd_by_name_replies_server_symbols_map_modmap_rtrn_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t *R
  -- ** @returns xcb_xkb_key_mod_map_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_server_symbols_map_modmap_rtrn_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_key_mod_map_iterator_t;  -- /usr/include/xcb/xkb.h:13037
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_server_symbols_map_modmap_rtrn_iterator, "xcb_xkb_get_kbd_by_name_replies_server_symbols_map_modmap_rtrn_iterator");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_v_mod_map_t * xcb_xkb_get_kbd_by_name_replies_server_symbols_map_vmodmap_rtrn
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
  -- ** @returns xcb_xkb_key_v_mod_map_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_server_symbols_map_vmodmap_rtrn (arg1 : System.Address) return access xcb_xkb_key_v_mod_map_t;  -- /usr/include/xcb/xkb.h:13051
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_server_symbols_map_vmodmap_rtrn, "xcb_xkb_get_kbd_by_name_replies_server_symbols_map_vmodmap_rtrn");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_server_symbols_map_vmodmap_rtrn_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_server_symbols_map_vmodmap_rtrn_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:13064
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_server_symbols_map_vmodmap_rtrn_length, "xcb_xkb_get_kbd_by_name_replies_server_symbols_map_vmodmap_rtrn_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_v_mod_map_iterator_t xcb_xkb_get_kbd_by_name_replies_server_symbols_map_vmodmap_rtrn_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t *R
  -- ** @returns xcb_xkb_key_v_mod_map_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_server_symbols_map_vmodmap_rtrn_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_key_v_mod_map_iterator_t;  -- /usr/include/xcb/xkb.h:13078
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_server_symbols_map_vmodmap_rtrn_iterator, "xcb_xkb_get_kbd_by_name_replies_server_symbols_map_vmodmap_rtrn_iterator");

  --*<  
  --*<  
   function xcb_xkb_get_kbd_by_name_replies_server_symbols_map_serialize
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : stdint_h.uint8_t;
      arg10 : stdint_h.uint8_t;
      arg11 : stdint_h.uint16_t;
      arg12 : System.Address) return int;  -- /usr/include/xcb/xkb.h:13082
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_server_symbols_map_serialize, "xcb_xkb_get_kbd_by_name_replies_server_symbols_map_serialize");

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
   function xcb_xkb_get_kbd_by_name_replies_server_symbols_map_unpack
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : stdint_h.uint8_t;
      arg10 : stdint_h.uint8_t;
      arg11 : stdint_h.uint16_t;
      arg12 : access xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t) return int;  -- /usr/include/xcb/xkb.h:13096
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_server_symbols_map_unpack, "xcb_xkb_get_kbd_by_name_replies_server_symbols_map_unpack");

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
   function xcb_xkb_get_kbd_by_name_replies_server_symbols_map_sizeof
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : stdint_h.uint8_t;
      arg10 : stdint_h.uint8_t;
      arg11 : stdint_h.uint16_t) return int;  -- /usr/include/xcb/xkb.h:13110
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_server_symbols_map_sizeof, "xcb_xkb_get_kbd_by_name_replies_server_symbols_map_sizeof");

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
  --****************************************************************************
  -- **
  -- ** xcb_atom_t * xcb_xkb_get_kbd_by_name_replies_key_names_value_list_type_names
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
  -- ** @returns xcb_atom_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_type_names (arg1 : System.Address) return access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:13133
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_key_names_value_list_type_names, "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_type_names");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_key_names_value_list_type_names_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_type_names_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:13146
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_key_names_value_list_type_names_length, "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_type_names_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_key_names_value_list_type_names_end
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_type_names_end (arg1 : System.Address; arg2 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:13160
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_key_names_value_list_type_names_end, "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_type_names_end");

  --*<  
  --****************************************************************************
  -- **
  -- ** uint8_t * xcb_xkb_get_kbd_by_name_replies_key_names_value_list_n_levels_per_type
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
  -- ** @returns uint8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_n_levels_per_type (arg1 : System.Address) return access stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:13174
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_key_names_value_list_n_levels_per_type, "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_n_levels_per_type");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_key_names_value_list_n_levels_per_type_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_n_levels_per_type_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:13187
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_key_names_value_list_n_levels_per_type_length, "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_n_levels_per_type_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_key_names_value_list_n_levels_per_type_end
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_n_levels_per_type_end (arg1 : System.Address; arg2 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:13201
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_key_names_value_list_n_levels_per_type_end, "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_n_levels_per_type_end");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_atom_t * xcb_xkb_get_kbd_by_name_replies_key_names_value_list_kt_level_names
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
  -- ** @returns xcb_atom_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_kt_level_names (arg1 : System.Address) return access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:13215
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_key_names_value_list_kt_level_names, "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_kt_level_names");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_key_names_value_list_kt_level_names_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_kt_level_names_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:13228
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_key_names_value_list_kt_level_names_length, "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_kt_level_names_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_key_names_value_list_kt_level_names_end
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_kt_level_names_end (arg1 : System.Address; arg2 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:13242
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_key_names_value_list_kt_level_names_end, "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_kt_level_names_end");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_atom_t * xcb_xkb_get_kbd_by_name_replies_key_names_value_list_indicator_names
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
  -- ** @returns xcb_atom_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_indicator_names (arg1 : System.Address) return access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:13256
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_key_names_value_list_indicator_names, "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_indicator_names");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_key_names_value_list_indicator_names_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_indicator_names_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:13269
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_key_names_value_list_indicator_names_length, "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_indicator_names_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_key_names_value_list_indicator_names_end
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_indicator_names_end (arg1 : System.Address; arg2 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:13283
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_key_names_value_list_indicator_names_end, "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_indicator_names_end");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_atom_t * xcb_xkb_get_kbd_by_name_replies_key_names_value_list_virtual_mod_names
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
  -- ** @returns xcb_atom_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_virtual_mod_names (arg1 : System.Address) return access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:13297
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_key_names_value_list_virtual_mod_names, "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_virtual_mod_names");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_key_names_value_list_virtual_mod_names_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_virtual_mod_names_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:13310
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_key_names_value_list_virtual_mod_names_length, "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_virtual_mod_names_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_key_names_value_list_virtual_mod_names_end
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_virtual_mod_names_end (arg1 : System.Address; arg2 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:13324
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_key_names_value_list_virtual_mod_names_end, "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_virtual_mod_names_end");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_atom_t * xcb_xkb_get_kbd_by_name_replies_key_names_value_list_groups
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
  -- ** @returns xcb_atom_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_groups (arg1 : System.Address) return access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:13338
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_key_names_value_list_groups, "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_groups");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_key_names_value_list_groups_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_groups_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:13351
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_key_names_value_list_groups_length, "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_groups_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_key_names_value_list_groups_end
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_groups_end (arg1 : System.Address; arg2 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:13365
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_key_names_value_list_groups_end, "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_groups_end");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_name_t * xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_names
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
  -- ** @returns xcb_xkb_key_name_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_names (arg1 : System.Address) return access xcb_xkb_key_name_t;  -- /usr/include/xcb/xkb.h:13379
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_names, "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_names");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_names_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_names_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:13392
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_names_length, "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_names_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_name_iterator_t xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_names_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t *R
  -- ** @returns xcb_xkb_key_name_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_names_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_key_name_iterator_t;  -- /usr/include/xcb/xkb.h:13406
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_names_iterator, "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_names_iterator");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_alias_t * xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_aliases
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
  -- ** @returns xcb_xkb_key_alias_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_aliases (arg1 : System.Address) return access xcb_xkb_key_alias_t;  -- /usr/include/xcb/xkb.h:13420
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_aliases, "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_aliases");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_aliases_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_aliases_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:13433
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_aliases_length, "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_aliases_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_alias_iterator_t xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_aliases_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t *R
  -- ** @returns xcb_xkb_key_alias_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_aliases_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_key_alias_iterator_t;  -- /usr/include/xcb/xkb.h:13447
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_aliases_iterator, "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_aliases_iterator");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_atom_t * xcb_xkb_get_kbd_by_name_replies_key_names_value_list_radio_group_names
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
  -- ** @returns xcb_atom_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_radio_group_names (arg1 : System.Address) return access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:13461
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_key_names_value_list_radio_group_names, "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_radio_group_names");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_key_names_value_list_radio_group_names_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_radio_group_names_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:13474
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_key_names_value_list_radio_group_names_length, "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_radio_group_names_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_key_names_value_list_radio_group_names_end
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_radio_group_names_end (arg1 : System.Address; arg2 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:13488
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_key_names_value_list_radio_group_names_end, "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_radio_group_names_end");

  --*<  
  --*<  
   function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_serialize
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : stdint_h.uint8_t;
      arg10 : stdint_h.uint32_t;
      arg11 : System.Address) return int;  -- /usr/include/xcb/xkb.h:13492
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_key_names_value_list_serialize, "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_serialize");

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
   function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_unpack
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : stdint_h.uint8_t;
      arg10 : stdint_h.uint32_t;
      arg11 : access xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t) return int;  -- /usr/include/xcb/xkb.h:13505
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_key_names_value_list_unpack, "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_unpack");

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
   function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_sizeof
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : stdint_h.uint8_t;
      arg10 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/xkb.h:13518
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_key_names_value_list_sizeof, "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_sizeof");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_atom_t * xcb_xkb_get_kbd_by_name_replies_other_names_value_list_type_names
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
  -- ** @returns xcb_atom_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_other_names_value_list_type_names (arg1 : System.Address) return access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:13540
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_other_names_value_list_type_names, "xcb_xkb_get_kbd_by_name_replies_other_names_value_list_type_names");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_other_names_value_list_type_names_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_other_names_value_list_type_names_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:13553
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_other_names_value_list_type_names_length, "xcb_xkb_get_kbd_by_name_replies_other_names_value_list_type_names_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_other_names_value_list_type_names_end
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_other_names_value_list_type_names_end (arg1 : System.Address; arg2 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:13567
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_other_names_value_list_type_names_end, "xcb_xkb_get_kbd_by_name_replies_other_names_value_list_type_names_end");

  --*<  
  --****************************************************************************
  -- **
  -- ** uint8_t * xcb_xkb_get_kbd_by_name_replies_other_names_value_list_n_levels_per_type
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
  -- ** @returns uint8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_other_names_value_list_n_levels_per_type (arg1 : System.Address) return access stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:13581
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_other_names_value_list_n_levels_per_type, "xcb_xkb_get_kbd_by_name_replies_other_names_value_list_n_levels_per_type");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_other_names_value_list_n_levels_per_type_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_other_names_value_list_n_levels_per_type_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:13594
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_other_names_value_list_n_levels_per_type_length, "xcb_xkb_get_kbd_by_name_replies_other_names_value_list_n_levels_per_type_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_other_names_value_list_n_levels_per_type_end
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_other_names_value_list_n_levels_per_type_end (arg1 : System.Address; arg2 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:13608
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_other_names_value_list_n_levels_per_type_end, "xcb_xkb_get_kbd_by_name_replies_other_names_value_list_n_levels_per_type_end");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_atom_t * xcb_xkb_get_kbd_by_name_replies_other_names_value_list_kt_level_names
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
  -- ** @returns xcb_atom_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_other_names_value_list_kt_level_names (arg1 : System.Address) return access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:13622
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_other_names_value_list_kt_level_names, "xcb_xkb_get_kbd_by_name_replies_other_names_value_list_kt_level_names");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_other_names_value_list_kt_level_names_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_other_names_value_list_kt_level_names_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:13635
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_other_names_value_list_kt_level_names_length, "xcb_xkb_get_kbd_by_name_replies_other_names_value_list_kt_level_names_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_other_names_value_list_kt_level_names_end
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_other_names_value_list_kt_level_names_end (arg1 : System.Address; arg2 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:13649
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_other_names_value_list_kt_level_names_end, "xcb_xkb_get_kbd_by_name_replies_other_names_value_list_kt_level_names_end");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_atom_t * xcb_xkb_get_kbd_by_name_replies_other_names_value_list_indicator_names
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
  -- ** @returns xcb_atom_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_other_names_value_list_indicator_names (arg1 : System.Address) return access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:13663
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_other_names_value_list_indicator_names, "xcb_xkb_get_kbd_by_name_replies_other_names_value_list_indicator_names");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_other_names_value_list_indicator_names_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_other_names_value_list_indicator_names_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:13676
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_other_names_value_list_indicator_names_length, "xcb_xkb_get_kbd_by_name_replies_other_names_value_list_indicator_names_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_other_names_value_list_indicator_names_end
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_other_names_value_list_indicator_names_end (arg1 : System.Address; arg2 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:13690
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_other_names_value_list_indicator_names_end, "xcb_xkb_get_kbd_by_name_replies_other_names_value_list_indicator_names_end");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_atom_t * xcb_xkb_get_kbd_by_name_replies_other_names_value_list_virtual_mod_names
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
  -- ** @returns xcb_atom_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_other_names_value_list_virtual_mod_names (arg1 : System.Address) return access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:13704
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_other_names_value_list_virtual_mod_names, "xcb_xkb_get_kbd_by_name_replies_other_names_value_list_virtual_mod_names");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_other_names_value_list_virtual_mod_names_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_other_names_value_list_virtual_mod_names_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:13717
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_other_names_value_list_virtual_mod_names_length, "xcb_xkb_get_kbd_by_name_replies_other_names_value_list_virtual_mod_names_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_other_names_value_list_virtual_mod_names_end
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_other_names_value_list_virtual_mod_names_end (arg1 : System.Address; arg2 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:13731
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_other_names_value_list_virtual_mod_names_end, "xcb_xkb_get_kbd_by_name_replies_other_names_value_list_virtual_mod_names_end");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_atom_t * xcb_xkb_get_kbd_by_name_replies_other_names_value_list_groups
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
  -- ** @returns xcb_atom_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_other_names_value_list_groups (arg1 : System.Address) return access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:13745
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_other_names_value_list_groups, "xcb_xkb_get_kbd_by_name_replies_other_names_value_list_groups");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_other_names_value_list_groups_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_other_names_value_list_groups_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:13758
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_other_names_value_list_groups_length, "xcb_xkb_get_kbd_by_name_replies_other_names_value_list_groups_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_other_names_value_list_groups_end
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_other_names_value_list_groups_end (arg1 : System.Address; arg2 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:13772
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_other_names_value_list_groups_end, "xcb_xkb_get_kbd_by_name_replies_other_names_value_list_groups_end");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_name_t * xcb_xkb_get_kbd_by_name_replies_other_names_value_list_key_names
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
  -- ** @returns xcb_xkb_key_name_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_other_names_value_list_key_names (arg1 : System.Address) return access xcb_xkb_key_name_t;  -- /usr/include/xcb/xkb.h:13786
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_other_names_value_list_key_names, "xcb_xkb_get_kbd_by_name_replies_other_names_value_list_key_names");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_other_names_value_list_key_names_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_other_names_value_list_key_names_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:13799
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_other_names_value_list_key_names_length, "xcb_xkb_get_kbd_by_name_replies_other_names_value_list_key_names_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_name_iterator_t xcb_xkb_get_kbd_by_name_replies_other_names_value_list_key_names_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t *R
  -- ** @returns xcb_xkb_key_name_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_other_names_value_list_key_names_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_key_name_iterator_t;  -- /usr/include/xcb/xkb.h:13813
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_other_names_value_list_key_names_iterator, "xcb_xkb_get_kbd_by_name_replies_other_names_value_list_key_names_iterator");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_alias_t * xcb_xkb_get_kbd_by_name_replies_other_names_value_list_key_aliases
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
  -- ** @returns xcb_xkb_key_alias_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_other_names_value_list_key_aliases (arg1 : System.Address) return access xcb_xkb_key_alias_t;  -- /usr/include/xcb/xkb.h:13827
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_other_names_value_list_key_aliases, "xcb_xkb_get_kbd_by_name_replies_other_names_value_list_key_aliases");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_other_names_value_list_key_aliases_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_other_names_value_list_key_aliases_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:13840
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_other_names_value_list_key_aliases_length, "xcb_xkb_get_kbd_by_name_replies_other_names_value_list_key_aliases_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_alias_iterator_t xcb_xkb_get_kbd_by_name_replies_other_names_value_list_key_aliases_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t *R
  -- ** @returns xcb_xkb_key_alias_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_other_names_value_list_key_aliases_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_key_alias_iterator_t;  -- /usr/include/xcb/xkb.h:13854
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_other_names_value_list_key_aliases_iterator, "xcb_xkb_get_kbd_by_name_replies_other_names_value_list_key_aliases_iterator");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_atom_t * xcb_xkb_get_kbd_by_name_replies_other_names_value_list_radio_group_names
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
  -- ** @returns xcb_atom_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_other_names_value_list_radio_group_names (arg1 : System.Address) return access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xkb.h:13868
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_other_names_value_list_radio_group_names, "xcb_xkb_get_kbd_by_name_replies_other_names_value_list_radio_group_names");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_other_names_value_list_radio_group_names_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_other_names_value_list_radio_group_names_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:13881
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_other_names_value_list_radio_group_names_length, "xcb_xkb_get_kbd_by_name_replies_other_names_value_list_radio_group_names_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_other_names_value_list_radio_group_names_end
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_other_names_value_list_radio_group_names_end (arg1 : System.Address; arg2 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:13895
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_other_names_value_list_radio_group_names_end, "xcb_xkb_get_kbd_by_name_replies_other_names_value_list_radio_group_names_end");

  --*<  
  --*<  
   function xcb_xkb_get_kbd_by_name_replies_other_names_value_list_serialize
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : stdint_h.uint8_t;
      arg10 : stdint_h.uint32_t;
      arg11 : System.Address) return int;  -- /usr/include/xcb/xkb.h:13899
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_other_names_value_list_serialize, "xcb_xkb_get_kbd_by_name_replies_other_names_value_list_serialize");

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
   function xcb_xkb_get_kbd_by_name_replies_other_names_value_list_unpack
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : stdint_h.uint8_t;
      arg10 : stdint_h.uint32_t;
      arg11 : access xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t) return int;  -- /usr/include/xcb/xkb.h:13912
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_other_names_value_list_unpack, "xcb_xkb_get_kbd_by_name_replies_other_names_value_list_unpack");

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
   function xcb_xkb_get_kbd_by_name_replies_other_names_value_list_sizeof
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : stdint_h.uint8_t;
      arg10 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/xkb.h:13925
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_other_names_value_list_sizeof, "xcb_xkb_get_kbd_by_name_replies_other_names_value_list_sizeof");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** uint8_t * xcb_xkb_get_kbd_by_name_replies_compat_map_si_rtrn
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
  -- ** @returns uint8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_compat_map_si_rtrn (arg1 : System.Address) return access stdint_h.uint8_t;  -- /usr/include/xcb/xkb.h:13947
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_compat_map_si_rtrn, "xcb_xkb_get_kbd_by_name_replies_compat_map_si_rtrn");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_compat_map_si_rtrn_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_compat_map_si_rtrn_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:13960
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_compat_map_si_rtrn_length, "xcb_xkb_get_kbd_by_name_replies_compat_map_si_rtrn_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_compat_map_si_rtrn_end
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_compat_map_si_rtrn_end (arg1 : System.Address; arg2 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:13974
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_compat_map_si_rtrn_end, "xcb_xkb_get_kbd_by_name_replies_compat_map_si_rtrn_end");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_mod_def_t * xcb_xkb_get_kbd_by_name_replies_compat_map_group_rtrn
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
  -- ** @returns xcb_xkb_mod_def_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_compat_map_group_rtrn (arg1 : System.Address) return access xcb_xkb_mod_def_t;  -- /usr/include/xcb/xkb.h:13988
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_compat_map_group_rtrn, "xcb_xkb_get_kbd_by_name_replies_compat_map_group_rtrn");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_compat_map_group_rtrn_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_compat_map_group_rtrn_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:14001
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_compat_map_group_rtrn_length, "xcb_xkb_get_kbd_by_name_replies_compat_map_group_rtrn_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_mod_def_iterator_t xcb_xkb_get_kbd_by_name_replies_compat_map_group_rtrn_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
  -- ** @returns xcb_xkb_mod_def_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_compat_map_group_rtrn_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_mod_def_iterator_t;  -- /usr/include/xcb/xkb.h:14015
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_compat_map_group_rtrn_iterator, "xcb_xkb_get_kbd_by_name_replies_compat_map_group_rtrn_iterator");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t * xcb_xkb_get_kbd_by_name_replies_client_symbols_map
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
  -- ** @returns xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_client_symbols_map (arg1 : System.Address) return access xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t;  -- /usr/include/xcb/xkb.h:14029
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_client_symbols_map, "xcb_xkb_get_kbd_by_name_replies_client_symbols_map");

  --****************************************************************************
  -- **
  -- ** xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t * xcb_xkb_get_kbd_by_name_replies_server_symbols_map
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
  -- ** @returns xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_server_symbols_map (arg1 : System.Address) return access xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t;  -- /usr/include/xcb/xkb.h:14042
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_server_symbols_map, "xcb_xkb_get_kbd_by_name_replies_server_symbols_map");

  --****************************************************************************
  -- **
  -- ** xcb_xkb_indicator_map_t * xcb_xkb_get_kbd_by_name_replies_indicator_maps_maps
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
  -- ** @returns xcb_xkb_indicator_map_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_indicator_maps_maps (arg1 : System.Address) return access xcb_xkb_indicator_map_t;  -- /usr/include/xcb/xkb.h:14055
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_indicator_maps_maps, "xcb_xkb_get_kbd_by_name_replies_indicator_maps_maps");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_indicator_maps_maps_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_indicator_maps_maps_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:14068
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_indicator_maps_maps_length, "xcb_xkb_get_kbd_by_name_replies_indicator_maps_maps_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_indicator_map_iterator_t xcb_xkb_get_kbd_by_name_replies_indicator_maps_maps_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
  -- ** @returns xcb_xkb_indicator_map_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_indicator_maps_maps_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_indicator_map_iterator_t;  -- /usr/include/xcb/xkb.h:14082
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_indicator_maps_maps_iterator, "xcb_xkb_get_kbd_by_name_replies_indicator_maps_maps_iterator");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t * xcb_xkb_get_kbd_by_name_replies_key_names_value_list
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
  -- ** @returns xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_key_names_value_list (arg1 : System.Address) return access xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t;  -- /usr/include/xcb/xkb.h:14096
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_key_names_value_list, "xcb_xkb_get_kbd_by_name_replies_key_names_value_list");

  --****************************************************************************
  -- **
  -- ** xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t * xcb_xkb_get_kbd_by_name_replies_other_names_value_list
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
  -- ** @returns xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_other_names_value_list (arg1 : System.Address) return access xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t;  -- /usr/include/xcb/xkb.h:14109
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_other_names_value_list, "xcb_xkb_get_kbd_by_name_replies_other_names_value_list");

  --****************************************************************************
  -- **
  -- ** xcb_xkb_counted_string_16_t * xcb_xkb_get_kbd_by_name_replies_geometry_label_font
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
  -- ** @returns xcb_xkb_counted_string_16_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_geometry_label_font (arg1 : System.Address) return access xcb_xkb_counted_string_16_t;  -- /usr/include/xcb/xkb.h:14122
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_geometry_label_font, "xcb_xkb_get_kbd_by_name_replies_geometry_label_font");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_geometry_properties_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_geometry_properties_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:14135
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_geometry_properties_length, "xcb_xkb_get_kbd_by_name_replies_geometry_properties_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_property_iterator_t xcb_xkb_get_kbd_by_name_replies_geometry_properties_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
  -- ** @returns xcb_xkb_property_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_geometry_properties_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_property_iterator_t;  -- /usr/include/xcb/xkb.h:14149
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_geometry_properties_iterator, "xcb_xkb_get_kbd_by_name_replies_geometry_properties_iterator");

  --*<  
  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_geometry_colors_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_geometry_colors_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:14163
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_geometry_colors_length, "xcb_xkb_get_kbd_by_name_replies_geometry_colors_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_counted_string_16_iterator_t xcb_xkb_get_kbd_by_name_replies_geometry_colors_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
  -- ** @returns xcb_xkb_counted_string_16_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_geometry_colors_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_counted_string_16_iterator_t;  -- /usr/include/xcb/xkb.h:14177
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_geometry_colors_iterator, "xcb_xkb_get_kbd_by_name_replies_geometry_colors_iterator");

  --*<  
  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_geometry_shapes_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_geometry_shapes_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:14191
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_geometry_shapes_length, "xcb_xkb_get_kbd_by_name_replies_geometry_shapes_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_shape_iterator_t xcb_xkb_get_kbd_by_name_replies_geometry_shapes_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
  -- ** @returns xcb_xkb_shape_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_geometry_shapes_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_shape_iterator_t;  -- /usr/include/xcb/xkb.h:14205
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_geometry_shapes_iterator, "xcb_xkb_get_kbd_by_name_replies_geometry_shapes_iterator");

  --*<  
  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_geometry_sections_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_geometry_sections_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:14219
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_geometry_sections_length, "xcb_xkb_get_kbd_by_name_replies_geometry_sections_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_section_iterator_t xcb_xkb_get_kbd_by_name_replies_geometry_sections_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
  -- ** @returns xcb_xkb_section_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_geometry_sections_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_section_iterator_t;  -- /usr/include/xcb/xkb.h:14233
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_geometry_sections_iterator, "xcb_xkb_get_kbd_by_name_replies_geometry_sections_iterator");

  --*<  
  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_geometry_doodads_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_geometry_doodads_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:14247
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_geometry_doodads_length, "xcb_xkb_get_kbd_by_name_replies_geometry_doodads_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_doodad_iterator_t xcb_xkb_get_kbd_by_name_replies_geometry_doodads_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
  -- ** @returns xcb_xkb_doodad_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_geometry_doodads_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_doodad_iterator_t;  -- /usr/include/xcb/xkb.h:14261
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_geometry_doodads_iterator, "xcb_xkb_get_kbd_by_name_replies_geometry_doodads_iterator");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_alias_t * xcb_xkb_get_kbd_by_name_replies_geometry_key_aliases
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
  -- ** @returns xcb_xkb_key_alias_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_geometry_key_aliases (arg1 : System.Address) return access xcb_xkb_key_alias_t;  -- /usr/include/xcb/xkb.h:14275
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_geometry_key_aliases, "xcb_xkb_get_kbd_by_name_replies_geometry_key_aliases");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_kbd_by_name_replies_geometry_key_aliases_length
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_geometry_key_aliases_length (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/xcb/xkb.h:14288
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_geometry_key_aliases_length, "xcb_xkb_get_kbd_by_name_replies_geometry_key_aliases_length");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_key_alias_iterator_t xcb_xkb_get_kbd_by_name_replies_geometry_key_aliases_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
  -- ** @returns xcb_xkb_key_alias_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies_geometry_key_aliases_iterator (arg1 : System.Address; arg2 : System.Address) return xcb_xkb_key_alias_iterator_t;  -- /usr/include/xcb/xkb.h:14302
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_geometry_key_aliases_iterator, "xcb_xkb_get_kbd_by_name_replies_geometry_key_aliases_iterator");

  --*<  
  --*<  
   function xcb_xkb_get_kbd_by_name_replies_serialize
     (arg1 : System.Address;
      arg2 : stdint_h.uint16_t;
      arg3 : System.Address) return int;  -- /usr/include/xcb/xkb.h:14306
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_serialize, "xcb_xkb_get_kbd_by_name_replies_serialize");

  --*<  
  --*<  
  --*<  
   function xcb_xkb_get_kbd_by_name_replies_unpack
     (arg1 : System.Address;
      arg2 : stdint_h.uint16_t;
      arg3 : access xcb_xkb_get_kbd_by_name_replies_t) return int;  -- /usr/include/xcb/xkb.h:14311
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_unpack, "xcb_xkb_get_kbd_by_name_replies_unpack");

  --*<  
  --*<  
  --*<  
   function xcb_xkb_get_kbd_by_name_replies_sizeof (arg1 : System.Address; arg2 : stdint_h.uint16_t) return int;  -- /usr/include/xcb/xkb.h:14316
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies_sizeof, "xcb_xkb_get_kbd_by_name_replies_sizeof");

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
  -- ** xcb_xkb_get_kbd_by_name_cookie_t xcb_xkb_get_kbd_by_name
  -- ** 
  -- ** @param xcb_connection_t        *c
  -- ** @param xcb_xkb_device_spec_t    deviceSpec
  -- ** @param uint16_t                 need
  -- ** @param uint16_t                 want
  -- ** @param uint8_t                  load
  -- ** @param uint8_t                  keymapsSpecLen
  -- ** @param const xcb_xkb_string8_t *keymapsSpec
  -- ** @param uint8_t                  keycodesSpecLen
  -- ** @param const xcb_xkb_string8_t *keycodesSpec
  -- ** @param uint8_t                  typesSpecLen
  -- ** @param const xcb_xkb_string8_t *typesSpec
  -- ** @param uint8_t                  compatMapSpecLen
  -- ** @param const xcb_xkb_string8_t *compatMapSpec
  -- ** @param uint8_t                  symbolsSpecLen
  -- ** @param const xcb_xkb_string8_t *symbolsSpec
  -- ** @param uint8_t                  geometrySpecLen
  -- ** @param const xcb_xkb_string8_t *geometrySpec
  -- ** @returns xcb_xkb_get_kbd_by_name_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint8_t;
      arg6 : stdint_h.uint8_t;
      arg7 : access xcb_xkb_string8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : access xcb_xkb_string8_t;
      arg10 : stdint_h.uint8_t;
      arg11 : access xcb_xkb_string8_t;
      arg12 : stdint_h.uint8_t;
      arg13 : access xcb_xkb_string8_t;
      arg14 : stdint_h.uint8_t;
      arg15 : access xcb_xkb_string8_t;
      arg16 : stdint_h.uint8_t;
      arg17 : access xcb_xkb_string8_t) return xcb_xkb_get_kbd_by_name_cookie_t;  -- /usr/include/xcb/xkb.h:14354
   pragma Import (C, xcb_xkb_get_kbd_by_name, "xcb_xkb_get_kbd_by_name");

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
  -- ** xcb_xkb_get_kbd_by_name_cookie_t xcb_xkb_get_kbd_by_name_unchecked
  -- ** 
  -- ** @param xcb_connection_t        *c
  -- ** @param xcb_xkb_device_spec_t    deviceSpec
  -- ** @param uint16_t                 need
  -- ** @param uint16_t                 want
  -- ** @param uint8_t                  load
  -- ** @param uint8_t                  keymapsSpecLen
  -- ** @param const xcb_xkb_string8_t *keymapsSpec
  -- ** @param uint8_t                  keycodesSpecLen
  -- ** @param const xcb_xkb_string8_t *keycodesSpec
  -- ** @param uint8_t                  typesSpecLen
  -- ** @param const xcb_xkb_string8_t *typesSpec
  -- ** @param uint8_t                  compatMapSpecLen
  -- ** @param const xcb_xkb_string8_t *compatMapSpec
  -- ** @param uint8_t                  symbolsSpecLen
  -- ** @param const xcb_xkb_string8_t *symbolsSpec
  -- ** @param uint8_t                  geometrySpecLen
  -- ** @param const xcb_xkb_string8_t *geometrySpec
  -- ** @returns xcb_xkb_get_kbd_by_name_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_unchecked
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint8_t;
      arg6 : stdint_h.uint8_t;
      arg7 : access xcb_xkb_string8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : access xcb_xkb_string8_t;
      arg10 : stdint_h.uint8_t;
      arg11 : access xcb_xkb_string8_t;
      arg12 : stdint_h.uint8_t;
      arg13 : access xcb_xkb_string8_t;
      arg14 : stdint_h.uint8_t;
      arg15 : access xcb_xkb_string8_t;
      arg16 : stdint_h.uint8_t;
      arg17 : access xcb_xkb_string8_t) return xcb_xkb_get_kbd_by_name_cookie_t;  -- /usr/include/xcb/xkb.h:14410
   pragma Import (C, xcb_xkb_get_kbd_by_name_unchecked, "xcb_xkb_get_kbd_by_name_unchecked");

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
  --****************************************************************************
  -- **
  -- ** xcb_xkb_get_kbd_by_name_replies_t * xcb_xkb_get_kbd_by_name_replies
  -- ** 
  -- ** @param const xcb_xkb_get_kbd_by_name_reply_t *R
  -- ** @returns xcb_xkb_get_kbd_by_name_replies_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_replies (arg1 : System.Address) return System.Address;  -- /usr/include/xcb/xkb.h:14439
   pragma Import (C, xcb_xkb_get_kbd_by_name_replies, "xcb_xkb_get_kbd_by_name_replies");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_xkb_get_kbd_by_name_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xkb_get_kbd_by_name_reply_t * xcb_xkb_get_kbd_by_name_reply
  -- ** 
  -- ** @param xcb_connection_t                  *c
  -- ** @param xcb_xkb_get_kbd_by_name_cookie_t   cookie
  -- ** @param xcb_generic_error_t              **e
  -- ** @returns xcb_xkb_get_kbd_by_name_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_kbd_by_name_reply
     (arg1 : System.Address;
      arg2 : xcb_xkb_get_kbd_by_name_cookie_t;
      arg3 : System.Address) return access xcb_xkb_get_kbd_by_name_reply_t;  -- /usr/include/xcb/xkb.h:14468
   pragma Import (C, xcb_xkb_get_kbd_by_name_reply, "xcb_xkb_get_kbd_by_name_reply");

  --*<  
  --*<  
  --*<  
   function xcb_xkb_get_device_info_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:14473
   pragma Import (C, xcb_xkb_get_device_info_sizeof, "xcb_xkb_get_device_info_sizeof");

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
  -- ** xcb_xkb_get_device_info_cookie_t xcb_xkb_get_device_info
  -- ** 
  -- ** @param xcb_connection_t         *c
  -- ** @param xcb_xkb_device_spec_t     deviceSpec
  -- ** @param uint16_t                  wanted
  -- ** @param uint8_t                   allButtons
  -- ** @param uint8_t                   firstButton
  -- ** @param uint8_t                   nButtons
  -- ** @param xcb_xkb_led_class_spec_t  ledClass
  -- ** @param xcb_xkb_id_spec_t         ledID
  -- ** @returns xcb_xkb_get_device_info_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_device_info
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint8_t;
      arg6 : stdint_h.uint8_t;
      arg7 : xcb_xkb_led_class_spec_t;
      arg8 : xcb_xkb_id_spec_t) return xcb_xkb_get_device_info_cookie_t;  -- /usr/include/xcb/xkb.h:14501
   pragma Import (C, xcb_xkb_get_device_info, "xcb_xkb_get_device_info");

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
  -- ** xcb_xkb_get_device_info_cookie_t xcb_xkb_get_device_info_unchecked
  -- ** 
  -- ** @param xcb_connection_t         *c
  -- ** @param xcb_xkb_device_spec_t     deviceSpec
  -- ** @param uint16_t                  wanted
  -- ** @param uint8_t                   allButtons
  -- ** @param uint8_t                   firstButton
  -- ** @param uint8_t                   nButtons
  -- ** @param xcb_xkb_led_class_spec_t  ledClass
  -- ** @param xcb_xkb_id_spec_t         ledID
  -- ** @returns xcb_xkb_get_device_info_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_device_info_unchecked
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint8_t;
      arg6 : stdint_h.uint8_t;
      arg7 : xcb_xkb_led_class_spec_t;
      arg8 : xcb_xkb_id_spec_t) return xcb_xkb_get_device_info_cookie_t;  -- /usr/include/xcb/xkb.h:14539
   pragma Import (C, xcb_xkb_get_device_info_unchecked, "xcb_xkb_get_device_info_unchecked");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_xkb_string8_t * xcb_xkb_get_device_info_name
  -- ** 
  -- ** @param const xcb_xkb_get_device_info_reply_t *R
  -- ** @returns xcb_xkb_string8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_device_info_name (arg1 : System.Address) return access xcb_xkb_string8_t;  -- /usr/include/xcb/xkb.h:14559
   pragma Import (C, xcb_xkb_get_device_info_name, "xcb_xkb_get_device_info_name");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_device_info_name_length
  -- ** 
  -- ** @param const xcb_xkb_get_device_info_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_device_info_name_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:14572
   pragma Import (C, xcb_xkb_get_device_info_name_length, "xcb_xkb_get_device_info_name_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_xkb_get_device_info_name_end
  -- ** 
  -- ** @param const xcb_xkb_get_device_info_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_device_info_name_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xkb.h:14585
   pragma Import (C, xcb_xkb_get_device_info_name_end, "xcb_xkb_get_device_info_name_end");

  --****************************************************************************
  -- **
  -- ** xcb_xkb_action_t * xcb_xkb_get_device_info_btn_actions
  -- ** 
  -- ** @param const xcb_xkb_get_device_info_reply_t *R
  -- ** @returns xcb_xkb_action_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_device_info_btn_actions (arg1 : System.Address) return access xcb_xkb_action_t;  -- /usr/include/xcb/xkb.h:14598
   pragma Import (C, xcb_xkb_get_device_info_btn_actions, "xcb_xkb_get_device_info_btn_actions");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_device_info_btn_actions_length
  -- ** 
  -- ** @param const xcb_xkb_get_device_info_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_device_info_btn_actions_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:14611
   pragma Import (C, xcb_xkb_get_device_info_btn_actions_length, "xcb_xkb_get_device_info_btn_actions_length");

  --****************************************************************************
  -- **
  -- ** xcb_xkb_action_iterator_t xcb_xkb_get_device_info_btn_actions_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_device_info_reply_t *R
  -- ** @returns xcb_xkb_action_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_device_info_btn_actions_iterator (arg1 : System.Address) return xcb_xkb_action_iterator_t;  -- /usr/include/xcb/xkb.h:14624
   pragma Import (C, xcb_xkb_get_device_info_btn_actions_iterator, "xcb_xkb_get_device_info_btn_actions_iterator");

  --****************************************************************************
  -- **
  -- ** int xcb_xkb_get_device_info_leds_length
  -- ** 
  -- ** @param const xcb_xkb_get_device_info_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_device_info_leds_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:14637
   pragma Import (C, xcb_xkb_get_device_info_leds_length, "xcb_xkb_get_device_info_leds_length");

  --****************************************************************************
  -- **
  -- ** xcb_xkb_device_led_info_iterator_t xcb_xkb_get_device_info_leds_iterator
  -- ** 
  -- ** @param const xcb_xkb_get_device_info_reply_t *R
  -- ** @returns xcb_xkb_device_led_info_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_device_info_leds_iterator (arg1 : System.Address) return xcb_xkb_device_led_info_iterator_t;  -- /usr/include/xcb/xkb.h:14650
   pragma Import (C, xcb_xkb_get_device_info_leds_iterator, "xcb_xkb_get_device_info_leds_iterator");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_xkb_get_device_info_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xkb_get_device_info_reply_t * xcb_xkb_get_device_info_reply
  -- ** 
  -- ** @param xcb_connection_t                  *c
  -- ** @param xcb_xkb_get_device_info_cookie_t   cookie
  -- ** @param xcb_generic_error_t              **e
  -- ** @returns xcb_xkb_get_device_info_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_get_device_info_reply
     (arg1 : System.Address;
      arg2 : xcb_xkb_get_device_info_cookie_t;
      arg3 : System.Address) return access xcb_xkb_get_device_info_reply_t;  -- /usr/include/xcb/xkb.h:14679
   pragma Import (C, xcb_xkb_get_device_info_reply, "xcb_xkb_get_device_info_reply");

  --*<  
  --*<  
  --*<  
   function xcb_xkb_set_device_info_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:14684
   pragma Import (C, xcb_xkb_set_device_info_sizeof, "xcb_xkb_set_device_info_sizeof");

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
  -- ** xcb_void_cookie_t xcb_xkb_set_device_info_checked
  -- ** 
  -- ** @param xcb_connection_t                *c
  -- ** @param xcb_xkb_device_spec_t            deviceSpec
  -- ** @param uint8_t                          firstBtn
  -- ** @param uint8_t                          nBtns
  -- ** @param uint16_t                         change
  -- ** @param uint16_t                         nDeviceLedFBs
  -- ** @param const xcb_xkb_action_t          *btnActions
  -- ** @param const xcb_xkb_device_led_info_t *leds
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_device_info_checked
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint16_t;
      arg7 : System.Address;
      arg8 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xkb.h:14715
   pragma Import (C, xcb_xkb_set_device_info_checked, "xcb_xkb_set_device_info_checked");

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
  -- ** xcb_void_cookie_t xcb_xkb_set_device_info
  -- ** 
  -- ** @param xcb_connection_t                *c
  -- ** @param xcb_xkb_device_spec_t            deviceSpec
  -- ** @param uint8_t                          firstBtn
  -- ** @param uint8_t                          nBtns
  -- ** @param uint16_t                         change
  -- ** @param uint16_t                         nDeviceLedFBs
  -- ** @param const xcb_xkb_action_t          *btnActions
  -- ** @param const xcb_xkb_device_led_info_t *leds
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_device_info
     (arg1 : System.Address;
      arg2 : xcb_xkb_device_spec_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint16_t;
      arg7 : System.Address;
      arg8 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xkb.h:14750
   pragma Import (C, xcb_xkb_set_device_info, "xcb_xkb_set_device_info");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_xkb_set_debugging_flags_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xkb.h:14760
   pragma Import (C, xcb_xkb_set_debugging_flags_sizeof, "xcb_xkb_set_debugging_flags_sizeof");

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
  -- ** xcb_xkb_set_debugging_flags_cookie_t xcb_xkb_set_debugging_flags
  -- ** 
  -- ** @param xcb_connection_t        *c
  -- ** @param uint16_t                 msgLength
  -- ** @param uint32_t                 affectFlags
  -- ** @param uint32_t                 flags
  -- ** @param uint32_t                 affectCtrls
  -- ** @param uint32_t                 ctrls
  -- ** @param const xcb_xkb_string8_t *message
  -- ** @returns xcb_xkb_set_debugging_flags_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_debugging_flags
     (arg1 : System.Address;
      arg2 : stdint_h.uint16_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : stdint_h.uint32_t;
      arg7 : access xcb_xkb_string8_t) return xcb_xkb_set_debugging_flags_cookie_t;  -- /usr/include/xcb/xkb.h:14787
   pragma Import (C, xcb_xkb_set_debugging_flags, "xcb_xkb_set_debugging_flags");

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
  -- ** xcb_xkb_set_debugging_flags_cookie_t xcb_xkb_set_debugging_flags_unchecked
  -- ** 
  -- ** @param xcb_connection_t        *c
  -- ** @param uint16_t                 msgLength
  -- ** @param uint32_t                 affectFlags
  -- ** @param uint32_t                 flags
  -- ** @param uint32_t                 affectCtrls
  -- ** @param uint32_t                 ctrls
  -- ** @param const xcb_xkb_string8_t *message
  -- ** @returns xcb_xkb_set_debugging_flags_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_debugging_flags_unchecked
     (arg1 : System.Address;
      arg2 : stdint_h.uint16_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : stdint_h.uint32_t;
      arg7 : access xcb_xkb_string8_t) return xcb_xkb_set_debugging_flags_cookie_t;  -- /usr/include/xcb/xkb.h:14823
   pragma Import (C, xcb_xkb_set_debugging_flags_unchecked, "xcb_xkb_set_debugging_flags_unchecked");

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
  -- * xcb_xkb_set_debugging_flags_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_xkb_set_debugging_flags_reply_t * xcb_xkb_set_debugging_flags_reply
  -- ** 
  -- ** @param xcb_connection_t                      *c
  -- ** @param xcb_xkb_set_debugging_flags_cookie_t   cookie
  -- ** @param xcb_generic_error_t                  **e
  -- ** @returns xcb_xkb_set_debugging_flags_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_xkb_set_debugging_flags_reply
     (arg1 : System.Address;
      arg2 : xcb_xkb_set_debugging_flags_cookie_t;
      arg3 : System.Address) return access xcb_xkb_set_debugging_flags_reply_t;  -- /usr/include/xcb/xkb.h:14858
   pragma Import (C, xcb_xkb_set_debugging_flags_reply, "xcb_xkb_set_debugging_flags_reply");

  --*<  
  --*<  
  --*
  -- * @}
  --  

end xcb_xkb_h;
