with Interfaces.C; use Interfaces.C;
with xcb_xcb_h;
with stdint_h;
with xcb_xproto_h;
with sys_types_h;
with System;
with Interfaces.C.Strings;

package xcb_xinput_h is

   --  unsupported macro: XCB_INPUT_MAJOR_VERSION 1
   --  unsupported macro: XCB_INPUT_MINOR_VERSION 4
   --  unsupported macro: XCB_INPUT_GET_EXTENSION_VERSION 1
   --  unsupported macro: XCB_INPUT_LIST_INPUT_DEVICES 2
   --  unsupported macro: XCB_INPUT_OPEN_DEVICE 3
   --  unsupported macro: XCB_INPUT_CLOSE_DEVICE 4
   --  unsupported macro: XCB_INPUT_SET_DEVICE_MODE 5
   --  unsupported macro: XCB_INPUT_SELECT_EXTENSION_EVENT 6
   --  unsupported macro: XCB_INPUT_GET_SELECTED_EXTENSION_EVENTS 7
   --  unsupported macro: XCB_INPUT_CHANGE_DEVICE_DONT_PROPAGATE_LIST 8
   --  unsupported macro: XCB_INPUT_GET_DEVICE_DONT_PROPAGATE_LIST 9
   --  unsupported macro: XCB_INPUT_GET_DEVICE_MOTION_EVENTS 10
   --  unsupported macro: XCB_INPUT_CHANGE_KEYBOARD_DEVICE 11
   --  unsupported macro: XCB_INPUT_CHANGE_POINTER_DEVICE 12
   --  unsupported macro: XCB_INPUT_GRAB_DEVICE 13
   --  unsupported macro: XCB_INPUT_UNGRAB_DEVICE 14
   --  unsupported macro: XCB_INPUT_GRAB_DEVICE_KEY 15
   --  unsupported macro: XCB_INPUT_UNGRAB_DEVICE_KEY 16
   --  unsupported macro: XCB_INPUT_GRAB_DEVICE_BUTTON 17
   --  unsupported macro: XCB_INPUT_UNGRAB_DEVICE_BUTTON 18
   --  unsupported macro: XCB_INPUT_ALLOW_DEVICE_EVENTS 19
   --  unsupported macro: XCB_INPUT_GET_DEVICE_FOCUS 20
   --  unsupported macro: XCB_INPUT_SET_DEVICE_FOCUS 21
   --  unsupported macro: XCB_INPUT_GET_FEEDBACK_CONTROL 22
   --  unsupported macro: XCB_INPUT_GET_DEVICE_KEY_MAPPING 24
   --  unsupported macro: XCB_INPUT_CHANGE_DEVICE_KEY_MAPPING 25
   --  unsupported macro: XCB_INPUT_GET_DEVICE_MODIFIER_MAPPING 26
   --  unsupported macro: XCB_INPUT_SET_DEVICE_MODIFIER_MAPPING 27
   --  unsupported macro: XCB_INPUT_GET_DEVICE_BUTTON_MAPPING 28
   --  unsupported macro: XCB_INPUT_SET_DEVICE_BUTTON_MAPPING 29
   --  unsupported macro: XCB_INPUT_QUERY_DEVICE_STATE 30
   --  unsupported macro: XCB_INPUT_SEND_EXTENSION_EVENT 31
   --  unsupported macro: XCB_INPUT_DEVICE_BELL 32
   --  unsupported macro: XCB_INPUT_SET_DEVICE_VALUATORS 33
   --  unsupported macro: XCB_INPUT_GET_DEVICE_CONTROL 34
   --  unsupported macro: XCB_INPUT_DEVICE_VALUATOR 0
   --  unsupported macro: XCB_INPUT_DEVICE_KEY_PRESS 1
   --  unsupported macro: XCB_INPUT_DEVICE_KEY_RELEASE 2
   --  unsupported macro: XCB_INPUT_DEVICE_BUTTON_PRESS 3
   --  unsupported macro: XCB_INPUT_DEVICE_BUTTON_RELEASE 4
   --  unsupported macro: XCB_INPUT_DEVICE_MOTION_NOTIFY 5
   --  unsupported macro: XCB_INPUT_PROXIMITY_IN 8
   --  unsupported macro: XCB_INPUT_PROXIMITY_OUT 9
   --  unsupported macro: XCB_INPUT_FOCUS_IN 6
   --  unsupported macro: XCB_INPUT_FOCUS_OUT 7
   --  unsupported macro: XCB_INPUT_DEVICE_STATE_NOTIFY 10
   --  unsupported macro: XCB_INPUT_DEVICE_MAPPING_NOTIFY 11
   --  unsupported macro: XCB_INPUT_CHANGE_DEVICE_NOTIFY 12
   --  unsupported macro: XCB_INPUT_DEVICE_KEY_STATE_NOTIFY 13
   --  unsupported macro: XCB_INPUT_DEVICE_BUTTON_STATE_NOTIFY 14
   --  unsupported macro: XCB_INPUT_DEVICE_PRESENCE_NOTIFY 15
   --  unsupported macro: XCB_INPUT_DEVICE 0
   --  unsupported macro: XCB_INPUT_EVENT 1
   --  unsupported macro: XCB_INPUT_MODE 2
   --  unsupported macro: XCB_INPUT_DEVICE_BUSY 3
   --  unsupported macro: XCB_INPUT_CLASS 4
  -- * This file generated automatically from xinput.xml by c_client.py.
  -- * Edit at your peril.
  --  

  --*
  -- * @defgroup XCB_Input_API XCB Input API
  -- * @brief Input XCB Protocol Implementation.
  -- * @{
  -- * 

   xcb_input_id : aliased xcb_xcb_h.xcb_extension_t;  -- /usr/include/xcb/xinput.h:25
   pragma Import (C, xcb_input_id, "xcb_input_id");

   subtype xcb_input_key_code_t is stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:27

  --*
  -- * @brief xcb_input_key_code_iterator_t
  -- * 

  --*<   
   type xcb_input_key_code_iterator_t is record
      data : access xcb_input_key_code_t;  -- /usr/include/xcb/xinput.h:33
      c_rem : aliased int;  -- /usr/include/xcb/xinput.h:34
      index : aliased int;  -- /usr/include/xcb/xinput.h:35
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_key_code_iterator_t);  -- /usr/include/xcb/xinput.h:32

  --*<   
  --*<   
   subtype xcb_input_event_class_t is stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:38

  --*
  -- * @brief xcb_input_event_class_iterator_t
  -- * 

  --*<   
   type xcb_input_event_class_iterator_t is record
      data : access xcb_input_event_class_t;  -- /usr/include/xcb/xinput.h:44
      c_rem : aliased int;  -- /usr/include/xcb/xinput.h:45
      index : aliased int;  -- /usr/include/xcb/xinput.h:46
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_event_class_iterator_t);  -- /usr/include/xcb/xinput.h:43

  --*<   
  --*<   
   type xcb_input_valuator_mode_t is 
     (XCB_INPUT_VALUATOR_MODE_RELATIVE,
      XCB_INPUT_VALUATOR_MODE_ABSOLUTE);
   pragma Convention (C, xcb_input_valuator_mode_t);  -- /usr/include/xcb/xinput.h:49

   type xcb_input_propagate_mode_t is 
     (XCB_INPUT_PROPAGATE_MODE_ADD_TO_LIST,
      XCB_INPUT_PROPAGATE_MODE_DELETE_FROM_LIST);
   pragma Convention (C, xcb_input_propagate_mode_t);  -- /usr/include/xcb/xinput.h:54

  --*
  -- * @brief xcb_input_get_extension_version_cookie_t
  -- * 

  --*<   
   type xcb_input_get_extension_version_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xinput.h:63
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_get_extension_version_cookie_t);  -- /usr/include/xcb/xinput.h:62

  --* Opcode for xcb_input_get_extension_version.  
  --*
  -- * @brief xcb_input_get_extension_version_request_t
  -- * 

  --*<   
   type anon3969_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_input_get_extension_version_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:73
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:74
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:75
      name_len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:76
      pad0 : aliased anon3969_anon1795_array;  -- /usr/include/xcb/xinput.h:77
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_get_extension_version_request_t);  -- /usr/include/xcb/xinput.h:72

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_get_extension_version_reply_t
  -- * 

  --*<   
   type anon3973_anon3975_array is array (0 .. 18) of aliased stdint_h.uint8_t;
   type xcb_input_get_extension_version_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:84
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:85
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:86
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:87
      server_major : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:88
      server_minor : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:89
      present : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:90
      pad1 : aliased anon3973_anon3975_array;  -- /usr/include/xcb/xinput.h:91
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_get_extension_version_reply_t);  -- /usr/include/xcb/xinput.h:83

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
   type xcb_input_device_use_t is 
     (XCB_INPUT_DEVICE_USE_IS_X_POINTER,
      XCB_INPUT_DEVICE_USE_IS_X_KEYBOARD,
      XCB_INPUT_DEVICE_USE_IS_X_EXTENSION_DEVICE,
      XCB_INPUT_DEVICE_USE_IS_X_EXTENSION_KEYBOARD,
      XCB_INPUT_DEVICE_USE_IS_X_EXTENSION_POINTER);
   pragma Convention (C, xcb_input_device_use_t);  -- /usr/include/xcb/xinput.h:94

  --*
  -- * @brief xcb_input_device_info_t
  -- * 

  --*<   
   type xcb_input_device_info_t is record
      device_type : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xinput.h:106
      device_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:107
      num_class_info : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:108
      device_use : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:109
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:110
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_device_info_t);  -- /usr/include/xcb/xinput.h:105

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_device_info_iterator_t
  -- * 

  --*<   
   type xcb_input_device_info_iterator_t is record
      data : access xcb_input_device_info_t;  -- /usr/include/xcb/xinput.h:117
      c_rem : aliased int;  -- /usr/include/xcb/xinput.h:118
      index : aliased int;  -- /usr/include/xcb/xinput.h:119
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_device_info_iterator_t);  -- /usr/include/xcb/xinput.h:116

  --*<   
  --*<   
  --*
  -- * @brief xcb_input_list_input_devices_cookie_t
  -- * 

  --*<   
   type xcb_input_list_input_devices_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xinput.h:126
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_list_input_devices_cookie_t);  -- /usr/include/xcb/xinput.h:125

  --* Opcode for xcb_input_list_input_devices.  
  --*
  -- * @brief xcb_input_list_input_devices_request_t
  -- * 

  --*<   
   type xcb_input_list_input_devices_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:136
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:137
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:138
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_list_input_devices_request_t);  -- /usr/include/xcb/xinput.h:135

  --*<   
  --*<   
  --*
  -- * @brief xcb_input_list_input_devices_reply_t
  -- * 

  --*<   
   type anon3990_anon3992_array is array (0 .. 22) of aliased stdint_h.uint8_t;
   type xcb_input_list_input_devices_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:145
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:146
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:147
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:148
      devices_len : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:149
      pad1 : aliased anon3990_anon3992_array;  -- /usr/include/xcb/xinput.h:150
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_list_input_devices_reply_t);  -- /usr/include/xcb/xinput.h:144

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
   type xcb_input_input_class_t is 
     (XCB_INPUT_INPUT_CLASS_KEY,
      XCB_INPUT_INPUT_CLASS_BUTTON,
      XCB_INPUT_INPUT_CLASS_VALUATOR,
      XCB_INPUT_INPUT_CLASS_FEEDBACK,
      XCB_INPUT_INPUT_CLASS_PROXIMITY,
      XCB_INPUT_INPUT_CLASS_FOCUS,
      XCB_INPUT_INPUT_CLASS_OTHER);
   pragma Convention (C, xcb_input_input_class_t);  -- /usr/include/xcb/xinput.h:153

  --*
  -- * @brief xcb_input_input_info_t
  -- * 

  --*<   
   type xcb_input_input_info_t is record
      class_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:167
      len : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:168
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_input_info_t);  -- /usr/include/xcb/xinput.h:166

  --*<   
  --*
  -- * @brief xcb_input_input_info_iterator_t
  -- * 

  --*<   
   type xcb_input_input_info_iterator_t is record
      data : access xcb_input_input_info_t;  -- /usr/include/xcb/xinput.h:175
      c_rem : aliased int;  -- /usr/include/xcb/xinput.h:176
      index : aliased int;  -- /usr/include/xcb/xinput.h:177
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_input_info_iterator_t);  -- /usr/include/xcb/xinput.h:174

  --*<   
  --*<   
  --*
  -- * @brief xcb_input_key_info_t
  -- * 

  --*<   
   type anon4003_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_input_key_info_t is record
      class_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:184
      len : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:185
      min_keycode : aliased xcb_input_key_code_t;  -- /usr/include/xcb/xinput.h:186
      max_keycode : aliased xcb_input_key_code_t;  -- /usr/include/xcb/xinput.h:187
      num_keys : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:188
      pad0 : aliased anon4003_anon1795_array;  -- /usr/include/xcb/xinput.h:189
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_key_info_t);  -- /usr/include/xcb/xinput.h:183

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_key_info_iterator_t
  -- * 

  --*<   
   type xcb_input_key_info_iterator_t is record
      data : access xcb_input_key_info_t;  -- /usr/include/xcb/xinput.h:196
      c_rem : aliased int;  -- /usr/include/xcb/xinput.h:197
      index : aliased int;  -- /usr/include/xcb/xinput.h:198
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_key_info_iterator_t);  -- /usr/include/xcb/xinput.h:195

  --*<   
  --*<   
  --*
  -- * @brief xcb_input_button_info_t
  -- * 

  --*<   
   type xcb_input_button_info_t is record
      class_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:205
      len : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:206
      num_buttons : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:207
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_button_info_t);  -- /usr/include/xcb/xinput.h:204

  --*<   
  --*<   
  --*
  -- * @brief xcb_input_button_info_iterator_t
  -- * 

  --*<   
   type xcb_input_button_info_iterator_t is record
      data : access xcb_input_button_info_t;  -- /usr/include/xcb/xinput.h:214
      c_rem : aliased int;  -- /usr/include/xcb/xinput.h:215
      index : aliased int;  -- /usr/include/xcb/xinput.h:216
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_button_info_iterator_t);  -- /usr/include/xcb/xinput.h:213

  --*<   
  --*<   
  --*
  -- * @brief xcb_input_axis_info_t
  -- * 

  --*<   
   type xcb_input_axis_info_t is record
      resolution : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:223
      minimum : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xinput.h:224
      maximum : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xinput.h:225
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_axis_info_t);  -- /usr/include/xcb/xinput.h:222

  --*<   
  --*<   
  --*
  -- * @brief xcb_input_axis_info_iterator_t
  -- * 

  --*<   
   type xcb_input_axis_info_iterator_t is record
      data : access xcb_input_axis_info_t;  -- /usr/include/xcb/xinput.h:232
      c_rem : aliased int;  -- /usr/include/xcb/xinput.h:233
      index : aliased int;  -- /usr/include/xcb/xinput.h:234
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_axis_info_iterator_t);  -- /usr/include/xcb/xinput.h:231

  --*<   
  --*<   
  --*
  -- * @brief xcb_input_valuator_info_t
  -- * 

  --*<   
   type xcb_input_valuator_info_t is record
      class_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:241
      len : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:242
      axes_len : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:243
      mode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:244
      motion_size : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:245
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_valuator_info_t);  -- /usr/include/xcb/xinput.h:240

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_valuator_info_iterator_t
  -- * 

  --*<   
   type xcb_input_valuator_info_iterator_t is record
      data : access xcb_input_valuator_info_t;  -- /usr/include/xcb/xinput.h:252
      c_rem : aliased int;  -- /usr/include/xcb/xinput.h:253
      index : aliased int;  -- /usr/include/xcb/xinput.h:254
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_valuator_info_iterator_t);  -- /usr/include/xcb/xinput.h:251

  --*<   
  --*<   
  --*
  -- * @brief xcb_input_input_class_info_t
  -- * 

  --*<   
   type xcb_input_input_class_info_t is record
      class_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:261
      event_type_base : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:262
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_input_class_info_t);  -- /usr/include/xcb/xinput.h:260

  --*<   
  --*
  -- * @brief xcb_input_input_class_info_iterator_t
  -- * 

  --*<   
   type xcb_input_input_class_info_iterator_t is record
      data : access xcb_input_input_class_info_t;  -- /usr/include/xcb/xinput.h:269
      c_rem : aliased int;  -- /usr/include/xcb/xinput.h:270
      index : aliased int;  -- /usr/include/xcb/xinput.h:271
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_input_class_info_iterator_t);  -- /usr/include/xcb/xinput.h:268

  --*<   
  --*<   
  --*
  -- * @brief xcb_input_open_device_cookie_t
  -- * 

  --*<   
   type xcb_input_open_device_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xinput.h:278
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_open_device_cookie_t);  -- /usr/include/xcb/xinput.h:277

  --* Opcode for xcb_input_open_device.  
  --*
  -- * @brief xcb_input_open_device_request_t
  -- * 

  --*<   
   type anon4037_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_input_open_device_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:288
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:289
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:290
      device_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:291
      pad0 : aliased anon4037_anon1853_array;  -- /usr/include/xcb/xinput.h:292
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_open_device_request_t);  -- /usr/include/xcb/xinput.h:287

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_open_device_reply_t
  -- * 

  --*<   
   type anon4041_anon3992_array is array (0 .. 22) of aliased stdint_h.uint8_t;
   type xcb_input_open_device_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:299
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:300
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:301
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:302
      num_classes : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:303
      pad1 : aliased anon4041_anon3992_array;  -- /usr/include/xcb/xinput.h:304
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_open_device_reply_t);  -- /usr/include/xcb/xinput.h:298

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_input_close_device.  
  --*
  -- * @brief xcb_input_close_device_request_t
  -- * 

  --*<   
   type anon4045_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_input_close_device_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:314
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:315
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:316
      device_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:317
      pad0 : aliased anon4045_anon1853_array;  -- /usr/include/xcb/xinput.h:318
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_close_device_request_t);  -- /usr/include/xcb/xinput.h:313

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_set_device_mode_cookie_t
  -- * 

  --*<   
   type xcb_input_set_device_mode_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xinput.h:325
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_set_device_mode_cookie_t);  -- /usr/include/xcb/xinput.h:324

  --* Opcode for xcb_input_set_device_mode.  
  --*
  -- * @brief xcb_input_set_device_mode_request_t
  -- * 

  --*<   
   type anon4051_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_input_set_device_mode_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:335
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:336
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:337
      device_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:338
      mode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:339
      pad0 : aliased anon4051_anon1795_array;  -- /usr/include/xcb/xinput.h:340
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_set_device_mode_request_t);  -- /usr/include/xcb/xinput.h:334

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_set_device_mode_reply_t
  -- * 

  --*<   
   type anon4055_anon3992_array is array (0 .. 22) of aliased stdint_h.uint8_t;
   type xcb_input_set_device_mode_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:347
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:348
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:349
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:350
      status : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:351
      pad1 : aliased anon4055_anon3992_array;  -- /usr/include/xcb/xinput.h:352
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_set_device_mode_reply_t);  -- /usr/include/xcb/xinput.h:346

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_input_select_extension_event.  
  --*
  -- * @brief xcb_input_select_extension_event_request_t
  -- * 

  --*<   
   type anon4059_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_input_select_extension_event_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:362
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:363
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:364
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xinput.h:365
      num_classes : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:366
      pad0 : aliased anon4059_anon1795_array;  -- /usr/include/xcb/xinput.h:367
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_select_extension_event_request_t);  -- /usr/include/xcb/xinput.h:361

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_get_selected_extension_events_cookie_t
  -- * 

  --*<   
   type xcb_input_get_selected_extension_events_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xinput.h:374
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_get_selected_extension_events_cookie_t);  -- /usr/include/xcb/xinput.h:373

  --* Opcode for xcb_input_get_selected_extension_events.  
  --*
  -- * @brief xcb_input_get_selected_extension_events_request_t
  -- * 

  --*<   
   type xcb_input_get_selected_extension_events_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:384
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:385
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:386
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xinput.h:387
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_get_selected_extension_events_request_t);  -- /usr/include/xcb/xinput.h:383

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_get_selected_extension_events_reply_t
  -- * 

  --*<   
   type anon4067_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_input_get_selected_extension_events_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:394
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:395
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:396
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:397
      num_this_classes : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:398
      num_all_classes : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:399
      pad1 : aliased anon4067_anon1939_array;  -- /usr/include/xcb/xinput.h:400
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_get_selected_extension_events_reply_t);  -- /usr/include/xcb/xinput.h:393

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_input_change_device_dont_propagate_list.  
  --*
  -- * @brief xcb_input_change_device_dont_propagate_list_request_t
  -- * 

  --*<   
   type xcb_input_change_device_dont_propagate_list_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:410
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:411
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:412
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xinput.h:413
      num_classes : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:414
      mode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:415
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:416
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_change_device_dont_propagate_list_request_t);  -- /usr/include/xcb/xinput.h:409

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_get_device_dont_propagate_list_cookie_t
  -- * 

  --*<   
   type xcb_input_get_device_dont_propagate_list_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xinput.h:423
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_get_device_dont_propagate_list_cookie_t);  -- /usr/include/xcb/xinput.h:422

  --* Opcode for xcb_input_get_device_dont_propagate_list.  
  --*
  -- * @brief xcb_input_get_device_dont_propagate_list_request_t
  -- * 

  --*<   
   type xcb_input_get_device_dont_propagate_list_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:433
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:434
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:435
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xinput.h:436
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_get_device_dont_propagate_list_request_t);  -- /usr/include/xcb/xinput.h:432

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_get_device_dont_propagate_list_reply_t
  -- * 

  --*<   
   type anon4077_anon2060_array is array (0 .. 21) of aliased stdint_h.uint8_t;
   type xcb_input_get_device_dont_propagate_list_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:443
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:444
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:445
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:446
      num_classes : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:447
      pad1 : aliased anon4077_anon2060_array;  -- /usr/include/xcb/xinput.h:448
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_get_device_dont_propagate_list_reply_t);  -- /usr/include/xcb/xinput.h:442

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_get_device_motion_events_cookie_t
  -- * 

  --*<   
   type xcb_input_get_device_motion_events_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xinput.h:455
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_get_device_motion_events_cookie_t);  -- /usr/include/xcb/xinput.h:454

  --* Opcode for xcb_input_get_device_motion_events.  
  --*
  -- * @brief xcb_input_get_device_motion_events_request_t
  -- * 

  --*<   
   type xcb_input_get_device_motion_events_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:465
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:466
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:467
      start : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/xinput.h:468
      stop : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/xinput.h:469
      device_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:470
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_get_device_motion_events_request_t);  -- /usr/include/xcb/xinput.h:464

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_get_device_motion_events_reply_t
  -- * 

  --*<   
   type anon4085_anon2547_array is array (0 .. 17) of aliased stdint_h.uint8_t;
   type xcb_input_get_device_motion_events_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:477
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:478
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:479
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:480
      num_coords : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:481
      num_axes : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:482
      device_mode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:483
      pad1 : aliased anon4085_anon2547_array;  -- /usr/include/xcb/xinput.h:484
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_get_device_motion_events_reply_t);  -- /usr/include/xcb/xinput.h:476

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_device_time_coord_t
  -- * 

  --*<   
   type xcb_input_device_time_coord_t is record
      time : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/xinput.h:491
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_device_time_coord_t);  -- /usr/include/xcb/xinput.h:490

  --*
  -- * @brief xcb_input_device_time_coord_iterator_t
  -- * 

  --*<   
   type xcb_input_device_time_coord_iterator_t is record
      data : access xcb_input_device_time_coord_t;  -- /usr/include/xcb/xinput.h:498
      c_rem : aliased int;  -- /usr/include/xcb/xinput.h:499
      index : aliased int;  -- /usr/include/xcb/xinput.h:500
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_device_time_coord_iterator_t);  -- /usr/include/xcb/xinput.h:497

  --*<   
  --*<   
  --*
  -- * @brief xcb_input_change_keyboard_device_cookie_t
  -- * 

  --*<   
   type xcb_input_change_keyboard_device_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xinput.h:507
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_change_keyboard_device_cookie_t);  -- /usr/include/xcb/xinput.h:506

  --* Opcode for xcb_input_change_keyboard_device.  
  --*
  -- * @brief xcb_input_change_keyboard_device_request_t
  -- * 

  --*<   
   type anon4097_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_input_change_keyboard_device_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:517
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:518
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:519
      device_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:520
      pad0 : aliased anon4097_anon1853_array;  -- /usr/include/xcb/xinput.h:521
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_change_keyboard_device_request_t);  -- /usr/include/xcb/xinput.h:516

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_change_keyboard_device_reply_t
  -- * 

  --*<   
   type anon4101_anon3992_array is array (0 .. 22) of aliased stdint_h.uint8_t;
   type xcb_input_change_keyboard_device_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:528
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:529
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:530
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:531
      status : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:532
      pad1 : aliased anon4101_anon3992_array;  -- /usr/include/xcb/xinput.h:533
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_change_keyboard_device_reply_t);  -- /usr/include/xcb/xinput.h:527

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_change_pointer_device_cookie_t
  -- * 

  --*<   
   type xcb_input_change_pointer_device_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xinput.h:540
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_change_pointer_device_cookie_t);  -- /usr/include/xcb/xinput.h:539

  --* Opcode for xcb_input_change_pointer_device.  
  --*
  -- * @brief xcb_input_change_pointer_device_request_t
  -- * 

  --*<   
   type xcb_input_change_pointer_device_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:550
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:551
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:552
      x_axis : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:553
      y_axis : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:554
      device_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:555
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:556
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_change_pointer_device_request_t);  -- /usr/include/xcb/xinput.h:549

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_change_pointer_device_reply_t
  -- * 

  --*<   
   type anon4109_anon3992_array is array (0 .. 22) of aliased stdint_h.uint8_t;
   type xcb_input_change_pointer_device_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:563
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:564
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:565
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:566
      status : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:567
      pad1 : aliased anon4109_anon3992_array;  -- /usr/include/xcb/xinput.h:568
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_change_pointer_device_reply_t);  -- /usr/include/xcb/xinput.h:562

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_grab_device_cookie_t
  -- * 

  --*<   
   type xcb_input_grab_device_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xinput.h:575
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_grab_device_cookie_t);  -- /usr/include/xcb/xinput.h:574

  --* Opcode for xcb_input_grab_device.  
  --*
  -- * @brief xcb_input_grab_device_request_t
  -- * 

  --*<   
   type anon4115_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_input_grab_device_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:585
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:586
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:587
      grab_window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xinput.h:588
      time : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/xinput.h:589
      num_classes : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:590
      this_device_mode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:591
      other_device_mode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:592
      owner_events : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:593
      device_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:594
      pad0 : aliased anon4115_anon1795_array;  -- /usr/include/xcb/xinput.h:595
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_grab_device_request_t);  -- /usr/include/xcb/xinput.h:584

  --*<   
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
  -- * @brief xcb_input_grab_device_reply_t
  -- * 

  --*<   
   type anon4119_anon3992_array is array (0 .. 22) of aliased stdint_h.uint8_t;
   type xcb_input_grab_device_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:602
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:603
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:604
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:605
      status : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:606
      pad1 : aliased anon4119_anon3992_array;  -- /usr/include/xcb/xinput.h:607
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_grab_device_reply_t);  -- /usr/include/xcb/xinput.h:601

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_input_ungrab_device.  
  --*
  -- * @brief xcb_input_ungrab_device_request_t
  -- * 

  --*<   
   type xcb_input_ungrab_device_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:617
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:618
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:619
      time : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/xinput.h:620
      device_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:621
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_ungrab_device_request_t);  -- /usr/include/xcb/xinput.h:616

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_input_grab_device_key.  
  --*
  -- * @brief xcb_input_grab_device_key_request_t
  -- * 

  --*<   
   type anon4125_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_input_grab_device_key_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:631
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:632
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:633
      grab_window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xinput.h:634
      num_classes : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:635
      modifiers : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:636
      modifier_device : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:637
      grabbed_device : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:638
      key : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:639
      this_device_mode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:640
      other_device_mode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:641
      owner_events : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:642
      pad0 : aliased anon4125_anon1795_array;  -- /usr/include/xcb/xinput.h:643
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_grab_device_key_request_t);  -- /usr/include/xcb/xinput.h:630

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_input_ungrab_device_key.  
  --*
  -- * @brief xcb_input_ungrab_device_key_request_t
  -- * 

  --*<   
   type xcb_input_ungrab_device_key_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:653
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:654
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:655
      grabWindow : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xinput.h:656
      modifiers : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:657
      modifier_device : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:658
      key : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:659
      grabbed_device : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:660
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_ungrab_device_key_request_t);  -- /usr/include/xcb/xinput.h:652

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_input_grab_device_button.  
  --*
  -- * @brief xcb_input_grab_device_button_request_t
  -- * 

  --*<   
   type anon4131_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_input_grab_device_button_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:670
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:671
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:672
      grab_window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xinput.h:673
      grabbed_device : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:674
      modifier_device : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:675
      num_classes : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:676
      modifiers : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:677
      this_device_mode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:678
      other_device_mode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:679
      button : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:680
      owner_events : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:681
      pad0 : aliased anon4131_anon1795_array;  -- /usr/include/xcb/xinput.h:682
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_grab_device_button_request_t);  -- /usr/include/xcb/xinput.h:669

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_input_ungrab_device_button.  
  --*
  -- * @brief xcb_input_ungrab_device_button_request_t
  -- * 

  --*<   
   type xcb_input_ungrab_device_button_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:692
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:693
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:694
      grab_window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xinput.h:695
      modifiers : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:696
      modifier_device : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:697
      button : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:698
      grabbed_device : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:699
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_ungrab_device_button_request_t);  -- /usr/include/xcb/xinput.h:691

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
   type xcb_input_device_input_mode_t is 
     (XCB_INPUT_DEVICE_INPUT_MODE_ASYNC_THIS_DEVICE,
      XCB_INPUT_DEVICE_INPUT_MODE_SYNC_THIS_DEVICE,
      XCB_INPUT_DEVICE_INPUT_MODE_REPLAY_THIS_DEVICE,
      XCB_INPUT_DEVICE_INPUT_MODE_ASYNC_OTHER_DEVICES,
      XCB_INPUT_DEVICE_INPUT_MODE_ASYNC_ALL,
      XCB_INPUT_DEVICE_INPUT_MODE_SYNC_ALL);
   pragma Convention (C, xcb_input_device_input_mode_t);  -- /usr/include/xcb/xinput.h:702

  --* Opcode for xcb_input_allow_device_events.  
  --*
  -- * @brief xcb_input_allow_device_events_request_t
  -- * 

  --*<   
   type xcb_input_allow_device_events_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:718
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:719
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:720
      time : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/xinput.h:721
      mode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:722
      device_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:723
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_allow_device_events_request_t);  -- /usr/include/xcb/xinput.h:717

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_get_device_focus_cookie_t
  -- * 

  --*<   
   type xcb_input_get_device_focus_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xinput.h:730
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_get_device_focus_cookie_t);  -- /usr/include/xcb/xinput.h:729

  --* Opcode for xcb_input_get_device_focus.  
  --*
  -- * @brief xcb_input_get_device_focus_request_t
  -- * 

  --*<   
   type anon4143_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_input_get_device_focus_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:740
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:741
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:742
      device_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:743
      pad0 : aliased anon4143_anon1853_array;  -- /usr/include/xcb/xinput.h:744
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_get_device_focus_request_t);  -- /usr/include/xcb/xinput.h:739

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_get_device_focus_reply_t
  -- * 

  --*<   
   type anon4147_anon4149_array is array (0 .. 14) of aliased stdint_h.uint8_t;
   type xcb_input_get_device_focus_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:751
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:752
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:753
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:754
      focus : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xinput.h:755
      time : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/xinput.h:756
      revert_to : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:757
      pad1 : aliased anon4147_anon4149_array;  -- /usr/include/xcb/xinput.h:758
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_get_device_focus_reply_t);  -- /usr/include/xcb/xinput.h:750

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_input_set_device_focus.  
  --*
  -- * @brief xcb_input_set_device_focus_request_t
  -- * 

  --*<   
   type xcb_input_set_device_focus_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:768
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:769
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:770
      focus : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xinput.h:771
      time : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/xinput.h:772
      revert_to : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:773
      device_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:774
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_set_device_focus_request_t);  -- /usr/include/xcb/xinput.h:767

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_get_feedback_control_cookie_t
  -- * 

  --*<   
   type xcb_input_get_feedback_control_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xinput.h:781
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_get_feedback_control_cookie_t);  -- /usr/include/xcb/xinput.h:780

  --* Opcode for xcb_input_get_feedback_control.  
  --*
  -- * @brief xcb_input_get_feedback_control_request_t
  -- * 

  --*<   
   type anon4156_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_input_get_feedback_control_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:791
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:792
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:793
      device_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:794
      pad0 : aliased anon4156_anon1853_array;  -- /usr/include/xcb/xinput.h:795
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_get_feedback_control_request_t);  -- /usr/include/xcb/xinput.h:790

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_get_feedback_control_reply_t
  -- * 

  --*<   
   type anon4160_anon2060_array is array (0 .. 21) of aliased stdint_h.uint8_t;
   type xcb_input_get_feedback_control_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:802
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:803
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:804
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:805
      num_feedback : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:806
      pad1 : aliased anon4160_anon2060_array;  -- /usr/include/xcb/xinput.h:807
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_get_feedback_control_reply_t);  -- /usr/include/xcb/xinput.h:801

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
   type xcb_input_feedback_class_t is 
     (XCB_INPUT_FEEDBACK_CLASS_KEYBOARD,
      XCB_INPUT_FEEDBACK_CLASS_POINTER,
      XCB_INPUT_FEEDBACK_CLASS_STRING,
      XCB_INPUT_FEEDBACK_CLASS_INTEGER,
      XCB_INPUT_FEEDBACK_CLASS_LED,
      XCB_INPUT_FEEDBACK_CLASS_BELL);
   pragma Convention (C, xcb_input_feedback_class_t);  -- /usr/include/xcb/xinput.h:810

  --*
  -- * @brief xcb_input_feedback_state_t
  -- * 

  --*<   
   type xcb_input_feedback_state_t is record
      class_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:823
      id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:824
      len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:825
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_feedback_state_t);  -- /usr/include/xcb/xinput.h:822

  --*<   
  --*<   
  --*
  -- * @brief xcb_input_feedback_state_iterator_t
  -- * 

  --*<   
   type xcb_input_feedback_state_iterator_t is record
      data : access xcb_input_feedback_state_t;  -- /usr/include/xcb/xinput.h:832
      c_rem : aliased int;  -- /usr/include/xcb/xinput.h:833
      index : aliased int;  -- /usr/include/xcb/xinput.h:834
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_feedback_state_iterator_t);  -- /usr/include/xcb/xinput.h:831

  --*<   
  --*<   
  --*
  -- * @brief xcb_input_kbd_feedback_state_t
  -- * 

  --*<   
   type anon4172_anon2206_array is array (0 .. 31) of aliased stdint_h.uint8_t;
   type xcb_input_kbd_feedback_state_t is record
      class_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:841
      id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:842
      len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:843
      pitch : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:844
      duration : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:845
      led_mask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:846
      led_values : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:847
      global_auto_repeat : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:848
      click : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:849
      percent : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:850
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:851
      auto_repeats : aliased anon4172_anon2206_array;  -- /usr/include/xcb/xinput.h:852
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_kbd_feedback_state_t);  -- /usr/include/xcb/xinput.h:840

  --*<   
  --*<   
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
  -- * @brief xcb_input_kbd_feedback_state_iterator_t
  -- * 

  --*<   
   type xcb_input_kbd_feedback_state_iterator_t is record
      data : access xcb_input_kbd_feedback_state_t;  -- /usr/include/xcb/xinput.h:859
      c_rem : aliased int;  -- /usr/include/xcb/xinput.h:860
      index : aliased int;  -- /usr/include/xcb/xinput.h:861
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_kbd_feedback_state_iterator_t);  -- /usr/include/xcb/xinput.h:858

  --*<   
  --*<   
  --*
  -- * @brief xcb_input_ptr_feedback_state_t
  -- * 

  --*<   
   type anon4180_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_input_ptr_feedback_state_t is record
      class_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:868
      id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:869
      len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:870
      pad0 : aliased anon4180_anon1795_array;  -- /usr/include/xcb/xinput.h:871
      accel_num : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:872
      accel_denom : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:873
      threshold : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:874
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_ptr_feedback_state_t);  -- /usr/include/xcb/xinput.h:867

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_ptr_feedback_state_iterator_t
  -- * 

  --*<   
   type xcb_input_ptr_feedback_state_iterator_t is record
      data : access xcb_input_ptr_feedback_state_t;  -- /usr/include/xcb/xinput.h:881
      c_rem : aliased int;  -- /usr/include/xcb/xinput.h:882
      index : aliased int;  -- /usr/include/xcb/xinput.h:883
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_ptr_feedback_state_iterator_t);  -- /usr/include/xcb/xinput.h:880

  --*<   
  --*<   
  --*
  -- * @brief xcb_input_integer_feedback_state_t
  -- * 

  --*<   
   type xcb_input_integer_feedback_state_t is record
      class_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:890
      id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:891
      len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:892
      resolution : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:893
      min_value : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xinput.h:894
      max_value : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xinput.h:895
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_integer_feedback_state_t);  -- /usr/include/xcb/xinput.h:889

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_integer_feedback_state_iterator_t
  -- * 

  --*<   
   type xcb_input_integer_feedback_state_iterator_t is record
      data : access xcb_input_integer_feedback_state_t;  -- /usr/include/xcb/xinput.h:902
      c_rem : aliased int;  -- /usr/include/xcb/xinput.h:903
      index : aliased int;  -- /usr/include/xcb/xinput.h:904
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_integer_feedback_state_iterator_t);  -- /usr/include/xcb/xinput.h:901

  --*<   
  --*<   
  --*
  -- * @brief xcb_input_string_feedback_state_t
  -- * 

  --*<   
   type xcb_input_string_feedback_state_t is record
      class_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:911
      id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:912
      len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:913
      max_symbols : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:914
      num_keysyms : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:915
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_string_feedback_state_t);  -- /usr/include/xcb/xinput.h:910

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_string_feedback_state_iterator_t
  -- * 

  --*<   
   type xcb_input_string_feedback_state_iterator_t is record
      data : access xcb_input_string_feedback_state_t;  -- /usr/include/xcb/xinput.h:922
      c_rem : aliased int;  -- /usr/include/xcb/xinput.h:923
      index : aliased int;  -- /usr/include/xcb/xinput.h:924
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_string_feedback_state_iterator_t);  -- /usr/include/xcb/xinput.h:921

  --*<   
  --*<   
  --*
  -- * @brief xcb_input_bell_feedback_state_t
  -- * 

  --*<   
   type anon4200_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_input_bell_feedback_state_t is record
      class_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:931
      id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:932
      len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:933
      percent : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:934
      pad0 : aliased anon4200_anon1853_array;  -- /usr/include/xcb/xinput.h:935
      pitch : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:936
      duration : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:937
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_bell_feedback_state_t);  -- /usr/include/xcb/xinput.h:930

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_bell_feedback_state_iterator_t
  -- * 

  --*<   
   type xcb_input_bell_feedback_state_iterator_t is record
      data : access xcb_input_bell_feedback_state_t;  -- /usr/include/xcb/xinput.h:944
      c_rem : aliased int;  -- /usr/include/xcb/xinput.h:945
      index : aliased int;  -- /usr/include/xcb/xinput.h:946
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_bell_feedback_state_iterator_t);  -- /usr/include/xcb/xinput.h:943

  --*<   
  --*<   
  --*
  -- * @brief xcb_input_led_feedback_state_t
  -- * 

  --*<   
   type xcb_input_led_feedback_state_t is record
      class_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:953
      id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:954
      len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:955
      led_mask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:956
      led_values : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:957
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_led_feedback_state_t);  -- /usr/include/xcb/xinput.h:952

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_led_feedback_state_iterator_t
  -- * 

  --*<   
   type xcb_input_led_feedback_state_iterator_t is record
      data : access xcb_input_led_feedback_state_t;  -- /usr/include/xcb/xinput.h:964
      c_rem : aliased int;  -- /usr/include/xcb/xinput.h:965
      index : aliased int;  -- /usr/include/xcb/xinput.h:966
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_led_feedback_state_iterator_t);  -- /usr/include/xcb/xinput.h:963

  --*<   
  --*<   
  --*
  -- * @brief xcb_input_feedback_ctl_t
  -- * 

  --*<   
   type xcb_input_feedback_ctl_t is record
      class_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:973
      id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:974
      len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:975
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_feedback_ctl_t);  -- /usr/include/xcb/xinput.h:972

  --*<   
  --*<   
  --*
  -- * @brief xcb_input_feedback_ctl_iterator_t
  -- * 

  --*<   
   type xcb_input_feedback_ctl_iterator_t is record
      data : access xcb_input_feedback_ctl_t;  -- /usr/include/xcb/xinput.h:982
      c_rem : aliased int;  -- /usr/include/xcb/xinput.h:983
      index : aliased int;  -- /usr/include/xcb/xinput.h:984
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_feedback_ctl_iterator_t);  -- /usr/include/xcb/xinput.h:981

  --*<   
  --*<   
  --*
  -- * @brief xcb_input_kbd_feedback_ctl_t
  -- * 

  --*<   
   type xcb_input_kbd_feedback_ctl_t is record
      class_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:991
      id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:992
      len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:993
      key : aliased xcb_input_key_code_t;  -- /usr/include/xcb/xinput.h:994
      auto_repeat_mode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:995
      key_click_percent : aliased sys_types_h.int8_t;  -- /usr/include/xcb/xinput.h:996
      bell_percent : aliased sys_types_h.int8_t;  -- /usr/include/xcb/xinput.h:997
      bell_pitch : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xinput.h:998
      bell_duration : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xinput.h:999
      led_mask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:1000
      led_values : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:1001
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_kbd_feedback_ctl_t);  -- /usr/include/xcb/xinput.h:990

  --*<   
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
  -- * @brief xcb_input_kbd_feedback_ctl_iterator_t
  -- * 

  --*<   
   type xcb_input_kbd_feedback_ctl_iterator_t is record
      data : access xcb_input_kbd_feedback_ctl_t;  -- /usr/include/xcb/xinput.h:1008
      c_rem : aliased int;  -- /usr/include/xcb/xinput.h:1009
      index : aliased int;  -- /usr/include/xcb/xinput.h:1010
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_kbd_feedback_ctl_iterator_t);  -- /usr/include/xcb/xinput.h:1007

  --*<   
  --*<   
  --*
  -- * @brief xcb_input_ptr_feedback_ctl_t
  -- * 

  --*<   
   type anon4226_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_input_ptr_feedback_ctl_t is record
      class_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1017
      id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1018
      len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1019
      pad0 : aliased anon4226_anon1795_array;  -- /usr/include/xcb/xinput.h:1020
      num : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xinput.h:1021
      denom : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xinput.h:1022
      threshold : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xinput.h:1023
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_ptr_feedback_ctl_t);  -- /usr/include/xcb/xinput.h:1016

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_ptr_feedback_ctl_iterator_t
  -- * 

  --*<   
   type xcb_input_ptr_feedback_ctl_iterator_t is record
      data : access xcb_input_ptr_feedback_ctl_t;  -- /usr/include/xcb/xinput.h:1030
      c_rem : aliased int;  -- /usr/include/xcb/xinput.h:1031
      index : aliased int;  -- /usr/include/xcb/xinput.h:1032
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_ptr_feedback_ctl_iterator_t);  -- /usr/include/xcb/xinput.h:1029

  --*<   
  --*<   
  --*
  -- * @brief xcb_input_integer_feedback_ctl_t
  -- * 

  --*<   
   type xcb_input_integer_feedback_ctl_t is record
      class_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1039
      id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1040
      len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1041
      int_to_display : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xinput.h:1042
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_integer_feedback_ctl_t);  -- /usr/include/xcb/xinput.h:1038

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_integer_feedback_ctl_iterator_t
  -- * 

  --*<   
   type xcb_input_integer_feedback_ctl_iterator_t is record
      data : access xcb_input_integer_feedback_ctl_t;  -- /usr/include/xcb/xinput.h:1049
      c_rem : aliased int;  -- /usr/include/xcb/xinput.h:1050
      index : aliased int;  -- /usr/include/xcb/xinput.h:1051
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_integer_feedback_ctl_iterator_t);  -- /usr/include/xcb/xinput.h:1048

  --*<   
  --*<   
  --*
  -- * @brief xcb_input_string_feedback_ctl_t
  -- * 

  --*<   
   type anon4240_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_input_string_feedback_ctl_t is record
      class_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1058
      id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1059
      len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1060
      pad0 : aliased anon4240_anon1795_array;  -- /usr/include/xcb/xinput.h:1061
      num_keysyms : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1062
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_string_feedback_ctl_t);  -- /usr/include/xcb/xinput.h:1057

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_string_feedback_ctl_iterator_t
  -- * 

  --*<   
   type xcb_input_string_feedback_ctl_iterator_t is record
      data : access xcb_input_string_feedback_ctl_t;  -- /usr/include/xcb/xinput.h:1069
      c_rem : aliased int;  -- /usr/include/xcb/xinput.h:1070
      index : aliased int;  -- /usr/include/xcb/xinput.h:1071
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_string_feedback_ctl_iterator_t);  -- /usr/include/xcb/xinput.h:1068

  --*<   
  --*<   
  --*
  -- * @brief xcb_input_bell_feedback_ctl_t
  -- * 

  --*<   
   type anon4248_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_input_bell_feedback_ctl_t is record
      class_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1078
      id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1079
      len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1080
      percent : aliased sys_types_h.int8_t;  -- /usr/include/xcb/xinput.h:1081
      pad0 : aliased anon4248_anon1853_array;  -- /usr/include/xcb/xinput.h:1082
      pitch : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xinput.h:1083
      duration : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xinput.h:1084
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_bell_feedback_ctl_t);  -- /usr/include/xcb/xinput.h:1077

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_bell_feedback_ctl_iterator_t
  -- * 

  --*<   
   type xcb_input_bell_feedback_ctl_iterator_t is record
      data : access xcb_input_bell_feedback_ctl_t;  -- /usr/include/xcb/xinput.h:1091
      c_rem : aliased int;  -- /usr/include/xcb/xinput.h:1092
      index : aliased int;  -- /usr/include/xcb/xinput.h:1093
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_bell_feedback_ctl_iterator_t);  -- /usr/include/xcb/xinput.h:1090

  --*<   
  --*<   
  --*
  -- * @brief xcb_input_led_feedback_ctl_t
  -- * 

  --*<   
   type xcb_input_led_feedback_ctl_t is record
      class_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1100
      id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1101
      len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1102
      led_mask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:1103
      led_values : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:1104
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_led_feedback_ctl_t);  -- /usr/include/xcb/xinput.h:1099

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_led_feedback_ctl_iterator_t
  -- * 

  --*<   
   type xcb_input_led_feedback_ctl_iterator_t is record
      data : access xcb_input_led_feedback_ctl_t;  -- /usr/include/xcb/xinput.h:1111
      c_rem : aliased int;  -- /usr/include/xcb/xinput.h:1112
      index : aliased int;  -- /usr/include/xcb/xinput.h:1113
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_led_feedback_ctl_iterator_t);  -- /usr/include/xcb/xinput.h:1110

  --*<   
  --*<   
  --*
  -- * @brief xcb_input_get_device_key_mapping_cookie_t
  -- * 

  --*<   
   type xcb_input_get_device_key_mapping_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xinput.h:1120
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_get_device_key_mapping_cookie_t);  -- /usr/include/xcb/xinput.h:1119

  --* Opcode for xcb_input_get_device_key_mapping.  
  --*
  -- * @brief xcb_input_get_device_key_mapping_request_t
  -- * 

  --*<   
   type xcb_input_get_device_key_mapping_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1130
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1131
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1132
      device_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1133
      first_keycode : aliased xcb_input_key_code_t;  -- /usr/include/xcb/xinput.h:1134
      count : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1135
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_get_device_key_mapping_request_t);  -- /usr/include/xcb/xinput.h:1129

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_get_device_key_mapping_reply_t
  -- * 

  --*<   
   type anon4266_anon3992_array is array (0 .. 22) of aliased stdint_h.uint8_t;
   type xcb_input_get_device_key_mapping_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1142
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1143
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1144
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:1145
      keysyms_per_keycode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1146
      pad1 : aliased anon4266_anon3992_array;  -- /usr/include/xcb/xinput.h:1147
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_get_device_key_mapping_reply_t);  -- /usr/include/xcb/xinput.h:1141

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_input_change_device_key_mapping.  
  --*
  -- * @brief xcb_input_change_device_key_mapping_request_t
  -- * 

  --*<   
   type xcb_input_change_device_key_mapping_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1157
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1158
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1159
      device_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1160
      first_keycode : aliased xcb_input_key_code_t;  -- /usr/include/xcb/xinput.h:1161
      keysyms_per_keycode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1162
      keycode_count : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1163
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_change_device_key_mapping_request_t);  -- /usr/include/xcb/xinput.h:1156

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_get_device_modifier_mapping_cookie_t
  -- * 

  --*<   
   type xcb_input_get_device_modifier_mapping_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xinput.h:1170
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_get_device_modifier_mapping_cookie_t);  -- /usr/include/xcb/xinput.h:1169

  --* Opcode for xcb_input_get_device_modifier_mapping.  
  --*
  -- * @brief xcb_input_get_device_modifier_mapping_request_t
  -- * 

  --*<   
   type anon4274_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_input_get_device_modifier_mapping_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1180
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1181
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1182
      device_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1183
      pad0 : aliased anon4274_anon1853_array;  -- /usr/include/xcb/xinput.h:1184
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_get_device_modifier_mapping_request_t);  -- /usr/include/xcb/xinput.h:1179

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_get_device_modifier_mapping_reply_t
  -- * 

  --*<   
   type anon4278_anon3992_array is array (0 .. 22) of aliased stdint_h.uint8_t;
   type xcb_input_get_device_modifier_mapping_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1191
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1192
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1193
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:1194
      keycodes_per_modifier : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1195
      pad1 : aliased anon4278_anon3992_array;  -- /usr/include/xcb/xinput.h:1196
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_get_device_modifier_mapping_reply_t);  -- /usr/include/xcb/xinput.h:1190

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_set_device_modifier_mapping_cookie_t
  -- * 

  --*<   
   type xcb_input_set_device_modifier_mapping_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xinput.h:1203
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_set_device_modifier_mapping_cookie_t);  -- /usr/include/xcb/xinput.h:1202

  --* Opcode for xcb_input_set_device_modifier_mapping.  
  --*
  -- * @brief xcb_input_set_device_modifier_mapping_request_t
  -- * 

  --*<   
   type xcb_input_set_device_modifier_mapping_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1213
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1214
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1215
      device_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1216
      keycodes_per_modifier : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1217
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1218
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_set_device_modifier_mapping_request_t);  -- /usr/include/xcb/xinput.h:1212

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_set_device_modifier_mapping_reply_t
  -- * 

  --*<   
   type anon4286_anon3992_array is array (0 .. 22) of aliased stdint_h.uint8_t;
   type xcb_input_set_device_modifier_mapping_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1225
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1226
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1227
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:1228
      status : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1229
      pad1 : aliased anon4286_anon3992_array;  -- /usr/include/xcb/xinput.h:1230
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_set_device_modifier_mapping_reply_t);  -- /usr/include/xcb/xinput.h:1224

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_get_device_button_mapping_cookie_t
  -- * 

  --*<   
   type xcb_input_get_device_button_mapping_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xinput.h:1237
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_get_device_button_mapping_cookie_t);  -- /usr/include/xcb/xinput.h:1236

  --* Opcode for xcb_input_get_device_button_mapping.  
  --*
  -- * @brief xcb_input_get_device_button_mapping_request_t
  -- * 

  --*<   
   type anon4292_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_input_get_device_button_mapping_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1247
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1248
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1249
      device_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1250
      pad0 : aliased anon4292_anon1853_array;  -- /usr/include/xcb/xinput.h:1251
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_get_device_button_mapping_request_t);  -- /usr/include/xcb/xinput.h:1246

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_get_device_button_mapping_reply_t
  -- * 

  --*<   
   type anon4296_anon3992_array is array (0 .. 22) of aliased stdint_h.uint8_t;
   type xcb_input_get_device_button_mapping_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1258
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1259
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1260
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:1261
      map_size : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1262
      pad1 : aliased anon4296_anon3992_array;  -- /usr/include/xcb/xinput.h:1263
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_get_device_button_mapping_reply_t);  -- /usr/include/xcb/xinput.h:1257

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_set_device_button_mapping_cookie_t
  -- * 

  --*<   
   type xcb_input_set_device_button_mapping_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xinput.h:1270
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_set_device_button_mapping_cookie_t);  -- /usr/include/xcb/xinput.h:1269

  --* Opcode for xcb_input_set_device_button_mapping.  
  --*
  -- * @brief xcb_input_set_device_button_mapping_request_t
  -- * 

  --*<   
   type anon4302_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_input_set_device_button_mapping_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1280
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1281
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1282
      device_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1283
      map_size : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1284
      pad0 : aliased anon4302_anon1795_array;  -- /usr/include/xcb/xinput.h:1285
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_set_device_button_mapping_request_t);  -- /usr/include/xcb/xinput.h:1279

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_set_device_button_mapping_reply_t
  -- * 

  --*<   
   type anon4306_anon3992_array is array (0 .. 22) of aliased stdint_h.uint8_t;
   type xcb_input_set_device_button_mapping_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1292
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1293
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1294
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:1295
      status : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1296
      pad1 : aliased anon4306_anon3992_array;  -- /usr/include/xcb/xinput.h:1297
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_set_device_button_mapping_reply_t);  -- /usr/include/xcb/xinput.h:1291

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_query_device_state_cookie_t
  -- * 

  --*<   
   type xcb_input_query_device_state_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xinput.h:1304
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_query_device_state_cookie_t);  -- /usr/include/xcb/xinput.h:1303

  --* Opcode for xcb_input_query_device_state.  
  --*
  -- * @brief xcb_input_query_device_state_request_t
  -- * 

  --*<   
   type anon4312_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_input_query_device_state_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1314
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1315
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1316
      device_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1317
      pad0 : aliased anon4312_anon1853_array;  -- /usr/include/xcb/xinput.h:1318
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_query_device_state_request_t);  -- /usr/include/xcb/xinput.h:1313

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_query_device_state_reply_t
  -- * 

  --*<   
   type anon4316_anon3992_array is array (0 .. 22) of aliased stdint_h.uint8_t;
   type xcb_input_query_device_state_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1325
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1326
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1327
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:1328
      num_classes : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1329
      pad1 : aliased anon4316_anon3992_array;  -- /usr/include/xcb/xinput.h:1330
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_query_device_state_reply_t);  -- /usr/include/xcb/xinput.h:1324

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_input_state_t
  -- * 

  --*<   
   type xcb_input_input_state_t is record
      class_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1337
      len : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1338
      num_items : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1339
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_input_state_t);  -- /usr/include/xcb/xinput.h:1336

  --*<   
  --*<   
  --*
  -- * @brief xcb_input_input_state_iterator_t
  -- * 

  --*<   
   type xcb_input_input_state_iterator_t is record
      data : access xcb_input_input_state_t;  -- /usr/include/xcb/xinput.h:1346
      c_rem : aliased int;  -- /usr/include/xcb/xinput.h:1347
      index : aliased int;  -- /usr/include/xcb/xinput.h:1348
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_input_state_iterator_t);  -- /usr/include/xcb/xinput.h:1345

  --*<   
  --*<   
  --*
  -- * @brief xcb_input_key_state_t
  -- * 

  --*<   
   type anon4326_anon2206_array is array (0 .. 31) of aliased stdint_h.uint8_t;
   type xcb_input_key_state_t is record
      class_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1355
      len : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1356
      num_keys : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1357
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1358
      keys : aliased anon4326_anon2206_array;  -- /usr/include/xcb/xinput.h:1359
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_key_state_t);  -- /usr/include/xcb/xinput.h:1354

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_key_state_iterator_t
  -- * 

  --*<   
   type xcb_input_key_state_iterator_t is record
      data : access xcb_input_key_state_t;  -- /usr/include/xcb/xinput.h:1366
      c_rem : aliased int;  -- /usr/include/xcb/xinput.h:1367
      index : aliased int;  -- /usr/include/xcb/xinput.h:1368
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_key_state_iterator_t);  -- /usr/include/xcb/xinput.h:1365

  --*<   
  --*<   
  --*
  -- * @brief xcb_input_button_state_t
  -- * 

  --*<   
   type anon4334_anon2206_array is array (0 .. 31) of aliased stdint_h.uint8_t;
   type xcb_input_button_state_t is record
      class_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1375
      len : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1376
      num_buttons : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1377
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1378
      buttons : aliased anon4334_anon2206_array;  -- /usr/include/xcb/xinput.h:1379
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_button_state_t);  -- /usr/include/xcb/xinput.h:1374

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_button_state_iterator_t
  -- * 

  --*<   
   type xcb_input_button_state_iterator_t is record
      data : access xcb_input_button_state_t;  -- /usr/include/xcb/xinput.h:1386
      c_rem : aliased int;  -- /usr/include/xcb/xinput.h:1387
      index : aliased int;  -- /usr/include/xcb/xinput.h:1388
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_button_state_iterator_t);  -- /usr/include/xcb/xinput.h:1385

  --*<   
  --*<   
  --*
  -- * @brief xcb_input_valuator_state_t
  -- * 

  --*<   
   type xcb_input_valuator_state_t is record
      class_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1395
      len : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1396
      num_valuators : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1397
      mode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1398
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_valuator_state_t);  -- /usr/include/xcb/xinput.h:1394

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_valuator_state_iterator_t
  -- * 

  --*<   
   type xcb_input_valuator_state_iterator_t is record
      data : access xcb_input_valuator_state_t;  -- /usr/include/xcb/xinput.h:1405
      c_rem : aliased int;  -- /usr/include/xcb/xinput.h:1406
      index : aliased int;  -- /usr/include/xcb/xinput.h:1407
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_valuator_state_iterator_t);  -- /usr/include/xcb/xinput.h:1404

  --*<   
  --*<   
  --* Opcode for xcb_input_send_extension_event.  
  --*
  -- * @brief xcb_input_send_extension_event_request_t
  -- * 

  --*<   
   type anon4348_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_input_send_extension_event_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1417
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1418
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1419
      destination : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xinput.h:1420
      device_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1421
      propagate : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1422
      num_classes : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1423
      num_events : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1424
      pad0 : aliased anon4348_anon1853_array;  -- /usr/include/xcb/xinput.h:1425
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_send_extension_event_request_t);  -- /usr/include/xcb/xinput.h:1416

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_input_device_bell.  
  --*
  -- * @brief xcb_input_device_bell_request_t
  -- * 

  --*<   
   type xcb_input_device_bell_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1435
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1436
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1437
      device_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1438
      feedback_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1439
      feedback_class : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1440
      percent : aliased sys_types_h.int8_t;  -- /usr/include/xcb/xinput.h:1441
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_device_bell_request_t);  -- /usr/include/xcb/xinput.h:1434

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_set_device_valuators_cookie_t
  -- * 

  --*<   
   type xcb_input_set_device_valuators_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xinput.h:1448
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_set_device_valuators_cookie_t);  -- /usr/include/xcb/xinput.h:1447

  --* Opcode for xcb_input_set_device_valuators.  
  --*
  -- * @brief xcb_input_set_device_valuators_request_t
  -- * 

  --*<   
   type xcb_input_set_device_valuators_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1458
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1459
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1460
      device_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1461
      first_valuator : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1462
      num_valuators : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1463
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1464
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_set_device_valuators_request_t);  -- /usr/include/xcb/xinput.h:1457

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_set_device_valuators_reply_t
  -- * 

  --*<   
   type anon4358_anon3992_array is array (0 .. 22) of aliased stdint_h.uint8_t;
   type xcb_input_set_device_valuators_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1471
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1472
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1473
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:1474
      status : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1475
      pad1 : aliased anon4358_anon3992_array;  -- /usr/include/xcb/xinput.h:1476
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_set_device_valuators_reply_t);  -- /usr/include/xcb/xinput.h:1470

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_get_device_control_cookie_t
  -- * 

  --*<   
   type xcb_input_get_device_control_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xinput.h:1483
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_get_device_control_cookie_t);  -- /usr/include/xcb/xinput.h:1482

  --* Opcode for xcb_input_get_device_control.  
  --*
  -- * @brief xcb_input_get_device_control_request_t
  -- * 

  --*<   
   type xcb_input_get_device_control_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1493
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1494
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1495
      control_id : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1496
      device_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1497
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1498
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_get_device_control_request_t);  -- /usr/include/xcb/xinput.h:1492

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_get_device_control_reply_t
  -- * 

  --*<   
   type anon4366_anon3992_array is array (0 .. 22) of aliased stdint_h.uint8_t;
   type xcb_input_get_device_control_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1505
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1506
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1507
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:1508
      status : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1509
      pad1 : aliased anon4366_anon3992_array;  -- /usr/include/xcb/xinput.h:1510
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_get_device_control_reply_t);  -- /usr/include/xcb/xinput.h:1504

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_device_state_t
  -- * 

  --*<   
   type xcb_input_device_state_t is record
      control_id : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1517
      len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1518
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_device_state_t);  -- /usr/include/xcb/xinput.h:1516

  --*<   
  --*
  -- * @brief xcb_input_device_state_iterator_t
  -- * 

  --*<   
   type xcb_input_device_state_iterator_t is record
      data : access xcb_input_device_state_t;  -- /usr/include/xcb/xinput.h:1525
      c_rem : aliased int;  -- /usr/include/xcb/xinput.h:1526
      index : aliased int;  -- /usr/include/xcb/xinput.h:1527
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_device_state_iterator_t);  -- /usr/include/xcb/xinput.h:1524

  --*<   
  --*<   
  --*
  -- * @brief xcb_input_device_resolution_state_t
  -- * 

  --*<   
   type xcb_input_device_resolution_state_t is record
      control_id : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1534
      len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1535
      num_valuators : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:1536
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_device_resolution_state_t);  -- /usr/include/xcb/xinput.h:1533

  --*<   
  --*<   
  --*
  -- * @brief xcb_input_device_resolution_state_iterator_t
  -- * 

  --*<   
   type xcb_input_device_resolution_state_iterator_t is record
      data : access xcb_input_device_resolution_state_t;  -- /usr/include/xcb/xinput.h:1543
      c_rem : aliased int;  -- /usr/include/xcb/xinput.h:1544
      index : aliased int;  -- /usr/include/xcb/xinput.h:1545
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_device_resolution_state_iterator_t);  -- /usr/include/xcb/xinput.h:1542

  --*<   
  --*<   
  --*
  -- * @brief xcb_input_device_abs_calib_state_t
  -- * 

  --*<   
   type xcb_input_device_abs_calib_state_t is record
      control_id : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1552
      len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1553
      min_x : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xinput.h:1554
      max_x : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xinput.h:1555
      min_y : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xinput.h:1556
      max_y : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xinput.h:1557
      flip_x : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:1558
      flip_y : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:1559
      rotation : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:1560
      button_threshold : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:1561
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_device_abs_calib_state_t);  -- /usr/include/xcb/xinput.h:1551

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
  -- * @brief xcb_input_device_abs_calib_state_iterator_t
  -- * 

  --*<   
   type xcb_input_device_abs_calib_state_iterator_t is record
      data : access xcb_input_device_abs_calib_state_t;  -- /usr/include/xcb/xinput.h:1568
      c_rem : aliased int;  -- /usr/include/xcb/xinput.h:1569
      index : aliased int;  -- /usr/include/xcb/xinput.h:1570
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_device_abs_calib_state_iterator_t);  -- /usr/include/xcb/xinput.h:1567

  --*<   
  --*<   
  --*
  -- * @brief xcb_input_device_abs_area_state_t
  -- * 

  --*<   
   type xcb_input_device_abs_area_state_t is record
      control_id : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1577
      len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1578
      offset_x : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:1579
      offset_y : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:1580
      width : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:1581
      height : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:1582
      screen : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:1583
      following : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:1584
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_device_abs_area_state_t);  -- /usr/include/xcb/xinput.h:1576

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_device_abs_area_state_iterator_t
  -- * 

  --*<   
   type xcb_input_device_abs_area_state_iterator_t is record
      data : access xcb_input_device_abs_area_state_t;  -- /usr/include/xcb/xinput.h:1591
      c_rem : aliased int;  -- /usr/include/xcb/xinput.h:1592
      index : aliased int;  -- /usr/include/xcb/xinput.h:1593
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_device_abs_area_state_iterator_t);  -- /usr/include/xcb/xinput.h:1590

  --*<   
  --*<   
  --*
  -- * @brief xcb_input_device_core_state_t
  -- * 

  --*<   
   type anon4394_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_input_device_core_state_t is record
      control_id : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1600
      len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1601
      status : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1602
      iscore : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1603
      pad0 : aliased anon4394_anon1795_array;  -- /usr/include/xcb/xinput.h:1604
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_device_core_state_t);  -- /usr/include/xcb/xinput.h:1599

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_device_core_state_iterator_t
  -- * 

  --*<   
   type xcb_input_device_core_state_iterator_t is record
      data : access xcb_input_device_core_state_t;  -- /usr/include/xcb/xinput.h:1611
      c_rem : aliased int;  -- /usr/include/xcb/xinput.h:1612
      index : aliased int;  -- /usr/include/xcb/xinput.h:1613
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_device_core_state_iterator_t);  -- /usr/include/xcb/xinput.h:1610

  --*<   
  --*<   
  --*
  -- * @brief xcb_input_device_enable_state_t
  -- * 

  --*<   
   type anon4402_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_input_device_enable_state_t is record
      control_id : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1620
      len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1621
      enable : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1622
      pad0 : aliased anon4402_anon1853_array;  -- /usr/include/xcb/xinput.h:1623
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_device_enable_state_t);  -- /usr/include/xcb/xinput.h:1619

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_device_enable_state_iterator_t
  -- * 

  --*<   
   type xcb_input_device_enable_state_iterator_t is record
      data : access xcb_input_device_enable_state_t;  -- /usr/include/xcb/xinput.h:1630
      c_rem : aliased int;  -- /usr/include/xcb/xinput.h:1631
      index : aliased int;  -- /usr/include/xcb/xinput.h:1632
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_device_enable_state_iterator_t);  -- /usr/include/xcb/xinput.h:1629

  --*<   
  --*<   
  --*
  -- * @brief xcb_input_device_ctl_t
  -- * 

  --*<   
   type xcb_input_device_ctl_t is record
      control_id : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1639
      len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1640
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_device_ctl_t);  -- /usr/include/xcb/xinput.h:1638

  --*<   
  --*
  -- * @brief xcb_input_device_ctl_iterator_t
  -- * 

  --*<   
   type xcb_input_device_ctl_iterator_t is record
      data : access xcb_input_device_ctl_t;  -- /usr/include/xcb/xinput.h:1647
      c_rem : aliased int;  -- /usr/include/xcb/xinput.h:1648
      index : aliased int;  -- /usr/include/xcb/xinput.h:1649
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_device_ctl_iterator_t);  -- /usr/include/xcb/xinput.h:1646

  --*<   
  --*<   
  --*
  -- * @brief xcb_input_device_resolution_ctl_t
  -- * 

  --*<   
   type xcb_input_device_resolution_ctl_t is record
      control_id : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1656
      len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1657
      first_valuator : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1658
      num_valuators : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1659
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_device_resolution_ctl_t);  -- /usr/include/xcb/xinput.h:1655

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_device_resolution_ctl_iterator_t
  -- * 

  --*<   
   type xcb_input_device_resolution_ctl_iterator_t is record
      data : access xcb_input_device_resolution_ctl_t;  -- /usr/include/xcb/xinput.h:1666
      c_rem : aliased int;  -- /usr/include/xcb/xinput.h:1667
      index : aliased int;  -- /usr/include/xcb/xinput.h:1668
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_device_resolution_ctl_iterator_t);  -- /usr/include/xcb/xinput.h:1665

  --*<   
  --*<   
  --*
  -- * @brief xcb_input_device_abs_calib_ctl_t
  -- * 

  --*<   
   type xcb_input_device_abs_calib_ctl_t is record
      control_id : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1675
      len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1676
      min_x : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xinput.h:1677
      max_x : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xinput.h:1678
      min_y : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xinput.h:1679
      max_y : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xinput.h:1680
      flip_x : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:1681
      flip_y : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:1682
      rotation : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:1683
      button_threshold : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:1684
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_device_abs_calib_ctl_t);  -- /usr/include/xcb/xinput.h:1674

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
  -- * @brief xcb_input_device_abs_calib_ctl_iterator_t
  -- * 

  --*<   
   type xcb_input_device_abs_calib_ctl_iterator_t is record
      data : access xcb_input_device_abs_calib_ctl_t;  -- /usr/include/xcb/xinput.h:1691
      c_rem : aliased int;  -- /usr/include/xcb/xinput.h:1692
      index : aliased int;  -- /usr/include/xcb/xinput.h:1693
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_device_abs_calib_ctl_iterator_t);  -- /usr/include/xcb/xinput.h:1690

  --*<   
  --*<   
  --*
  -- * @brief xcb_input_device_abs_area_ctrl_t
  -- * 

  --*<   
   type xcb_input_device_abs_area_ctrl_t is record
      control_id : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1700
      len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1701
      offset_x : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:1702
      offset_y : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:1703
      width : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xinput.h:1704
      height : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xinput.h:1705
      screen : aliased sys_types_h.int32_t;  -- /usr/include/xcb/xinput.h:1706
      following : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:1707
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_device_abs_area_ctrl_t);  -- /usr/include/xcb/xinput.h:1699

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_device_abs_area_ctrl_iterator_t
  -- * 

  --*<   
   type xcb_input_device_abs_area_ctrl_iterator_t is record
      data : access xcb_input_device_abs_area_ctrl_t;  -- /usr/include/xcb/xinput.h:1714
      c_rem : aliased int;  -- /usr/include/xcb/xinput.h:1715
      index : aliased int;  -- /usr/include/xcb/xinput.h:1716
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_device_abs_area_ctrl_iterator_t);  -- /usr/include/xcb/xinput.h:1713

  --*<   
  --*<   
  --*
  -- * @brief xcb_input_device_core_ctrl_t
  -- * 

  --*<   
   type anon4434_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_input_device_core_ctrl_t is record
      control_id : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1723
      len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1724
      status : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1725
      pad0 : aliased anon4434_anon1853_array;  -- /usr/include/xcb/xinput.h:1726
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_device_core_ctrl_t);  -- /usr/include/xcb/xinput.h:1722

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_device_core_ctrl_iterator_t
  -- * 

  --*<   
   type xcb_input_device_core_ctrl_iterator_t is record
      data : access xcb_input_device_core_ctrl_t;  -- /usr/include/xcb/xinput.h:1733
      c_rem : aliased int;  -- /usr/include/xcb/xinput.h:1734
      index : aliased int;  -- /usr/include/xcb/xinput.h:1735
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_device_core_ctrl_iterator_t);  -- /usr/include/xcb/xinput.h:1732

  --*<   
  --*<   
  --*
  -- * @brief xcb_input_device_enable_ctrl_t
  -- * 

  --*<   
   type anon4442_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_input_device_enable_ctrl_t is record
      control_id : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1742
      len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1743
      enable : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1744
      pad0 : aliased anon4442_anon1853_array;  -- /usr/include/xcb/xinput.h:1745
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_device_enable_ctrl_t);  -- /usr/include/xcb/xinput.h:1741

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_input_device_enable_ctrl_iterator_t
  -- * 

  --*<   
   type xcb_input_device_enable_ctrl_iterator_t is record
      data : access xcb_input_device_enable_ctrl_t;  -- /usr/include/xcb/xinput.h:1752
      c_rem : aliased int;  -- /usr/include/xcb/xinput.h:1753
      index : aliased int;  -- /usr/include/xcb/xinput.h:1754
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_device_enable_ctrl_iterator_t);  -- /usr/include/xcb/xinput.h:1751

  --*<   
  --*<   
  --* Opcode for xcb_input_device_valuator.  
  --*
  -- * @brief xcb_input_device_valuator_event_t
  -- * 

  --*<   
   type anon4450_anon4452_array is array (0 .. 5) of aliased sys_types_h.int32_t;
   type xcb_input_device_valuator_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1764
      device_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1765
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1766
      device_state : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1767
      num_valuators : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1768
      first_valuator : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1769
      valuators : aliased anon4450_anon4452_array;  -- /usr/include/xcb/xinput.h:1770
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_device_valuator_event_t);  -- /usr/include/xcb/xinput.h:1763

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_input_device_key_press.  
  --*
  -- * @brief xcb_input_device_key_press_event_t
  -- * 

  --*<   
   type xcb_input_device_key_press_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1780
      detail : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1781
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1782
      time : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/xinput.h:1783
      root : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xinput.h:1784
      event : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xinput.h:1785
      child : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xinput.h:1786
      root_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xinput.h:1787
      root_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xinput.h:1788
      event_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xinput.h:1789
      event_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/xinput.h:1790
      state : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1791
      same_screen : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1792
      device_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1793
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_device_key_press_event_t);  -- /usr/include/xcb/xinput.h:1779

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_input_device_key_release.  
   subtype xcb_input_device_key_release_event_t is xcb_input_device_key_press_event_t;

  --* Opcode for xcb_input_device_button_press.  
   subtype xcb_input_device_button_press_event_t is xcb_input_device_key_press_event_t;

  --* Opcode for xcb_input_device_button_release.  
   subtype xcb_input_device_button_release_event_t is xcb_input_device_key_press_event_t;

  --* Opcode for xcb_input_device_motion_notify.  
   subtype xcb_input_device_motion_notify_event_t is xcb_input_device_key_press_event_t;

  --* Opcode for xcb_input_proximity_in.  
   subtype xcb_input_proximity_in_event_t is xcb_input_device_key_press_event_t;

  --* Opcode for xcb_input_proximity_out.  
   subtype xcb_input_proximity_out_event_t is xcb_input_device_key_press_event_t;

  --* Opcode for xcb_input_focus_in.  
  --*
  -- * @brief xcb_input_focus_in_event_t
  -- * 

  --*<   
   type anon4464_anon2547_array is array (0 .. 17) of aliased stdint_h.uint8_t;
   type xcb_input_focus_in_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1833
      detail : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1834
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1835
      time : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/xinput.h:1836
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xinput.h:1837
      mode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1838
      device_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1839
      pad0 : aliased anon4464_anon2547_array;  -- /usr/include/xcb/xinput.h:1840
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_focus_in_event_t);  -- /usr/include/xcb/xinput.h:1832

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_input_focus_out.  
   subtype xcb_input_focus_out_event_t is xcb_input_focus_in_event_t;

  --* Opcode for xcb_input_device_state_notify.  
  --*
  -- * @brief xcb_input_device_state_notify_event_t
  -- * 

  --*<   
   type anon4469_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type anon4469_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type anon4469_anon4475_array is array (0 .. 2) of aliased stdint_h.uint32_t;
   type xcb_input_device_state_notify_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1855
      device_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1856
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1857
      time : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/xinput.h:1858
      num_keys : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1859
      num_buttons : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1860
      num_valuators : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1861
      classes_reported : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1862
      buttons : aliased anon4469_anon1768_array;  -- /usr/include/xcb/xinput.h:1863
      keys : aliased anon4469_anon1768_array;  -- /usr/include/xcb/xinput.h:1864
      valuators : aliased anon4469_anon4475_array;  -- /usr/include/xcb/xinput.h:1865
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_device_state_notify_event_t);  -- /usr/include/xcb/xinput.h:1854

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_input_device_mapping_notify.  
  --*
  -- * @brief xcb_input_device_mapping_notify_event_t
  -- * 

  --*<   
   type anon4478_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_input_device_mapping_notify_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1875
      device_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1876
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1877
      request : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1878
      first_keycode : aliased xcb_input_key_code_t;  -- /usr/include/xcb/xinput.h:1879
      count : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1880
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1881
      time : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/xinput.h:1882
      pad1 : aliased anon4478_anon1939_array;  -- /usr/include/xcb/xinput.h:1883
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_device_mapping_notify_event_t);  -- /usr/include/xcb/xinput.h:1874

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_input_change_device_notify.  
  --*
  -- * @brief xcb_input_change_device_notify_event_t
  -- * 

  --*<   
   type anon4482_anon3992_array is array (0 .. 22) of aliased stdint_h.uint8_t;
   type xcb_input_change_device_notify_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1893
      device_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1894
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1895
      time : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/xinput.h:1896
      request : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1897
      pad0 : aliased anon4482_anon3992_array;  -- /usr/include/xcb/xinput.h:1898
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_change_device_notify_event_t);  -- /usr/include/xcb/xinput.h:1892

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_input_device_key_state_notify.  
  --*
  -- * @brief xcb_input_device_key_state_notify_event_t
  -- * 

  --*<   
   type anon4486_anon4488_array is array (0 .. 27) of aliased stdint_h.uint8_t;
   type xcb_input_device_key_state_notify_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1908
      device_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1909
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1910
      keys : aliased anon4486_anon4488_array;  -- /usr/include/xcb/xinput.h:1911
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_device_key_state_notify_event_t);  -- /usr/include/xcb/xinput.h:1907

  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_input_device_button_state_notify.  
  --*
  -- * @brief xcb_input_device_button_state_notify_event_t
  -- * 

  --*<   
   type anon4491_anon4488_array is array (0 .. 27) of aliased stdint_h.uint8_t;
   type xcb_input_device_button_state_notify_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1921
      device_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1922
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1923
      buttons : aliased anon4491_anon4488_array;  -- /usr/include/xcb/xinput.h:1924
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_device_button_state_notify_event_t);  -- /usr/include/xcb/xinput.h:1920

  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_input_device_presence_notify.  
  --*
  -- * @brief xcb_input_device_presence_notify_event_t
  -- * 

  --*<   
   type anon4495_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_input_device_presence_notify_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1934
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1935
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1936
      time : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/xinput.h:1937
      devchange : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1938
      device_id : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1939
      control : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1940
      pad1 : aliased anon4495_anon1939_array;  -- /usr/include/xcb/xinput.h:1941
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_device_presence_notify_event_t);  -- /usr/include/xcb/xinput.h:1933

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_input_device.  
  --*
  -- * @brief xcb_input_device_error_t
  -- * 

  --*<   
   type xcb_input_device_error_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1951
      error_code : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1952
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1953
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_device_error_t);  -- /usr/include/xcb/xinput.h:1950

  --*<   
  --*<   
  --* Opcode for xcb_input_event.  
  --*
  -- * @brief xcb_input_event_error_t
  -- * 

  --*<   
   type xcb_input_event_error_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1963
      error_code : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1964
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1965
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_event_error_t);  -- /usr/include/xcb/xinput.h:1962

  --*<   
  --*<   
  --* Opcode for xcb_input_mode.  
  --*
  -- * @brief xcb_input_mode_error_t
  -- * 

  --*<   
   type xcb_input_mode_error_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1975
      error_code : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1976
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1977
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_mode_error_t);  -- /usr/include/xcb/xinput.h:1974

  --*<   
  --*<   
  --* Opcode for xcb_input_device_busy.  
  --*
  -- * @brief xcb_input_device_busy_error_t
  -- * 

  --*<   
   type xcb_input_device_busy_error_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1987
      error_code : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1988
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:1989
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_device_busy_error_t);  -- /usr/include/xcb/xinput.h:1986

  --*<   
  --*<   
  --* Opcode for xcb_input_class.  
  --*
  -- * @brief xcb_input_class_error_t
  -- * 

  --*<   
   type xcb_input_class_error_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:1999
      error_code : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:2000
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xinput.h:2001
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_input_class_error_t);  -- /usr/include/xcb/xinput.h:1998

  --*<   
  --*<   
  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_input_key_code_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_input_key_code_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_input_key_code_next
  -- ** 
  -- ** @param xcb_input_key_code_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_input_key_code_next (arg1 : access xcb_input_key_code_iterator_t);  -- /usr/include/xcb/xinput.h:2023
   pragma Import (C, xcb_input_key_code_next, "xcb_input_key_code_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_input_key_code_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_key_code_end
  -- ** 
  -- ** @param xcb_input_key_code_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_key_code_end (arg1 : xcb_input_key_code_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:2045
   pragma Import (C, xcb_input_key_code_end, "xcb_input_key_code_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_input_event_class_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_input_event_class_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_input_event_class_next
  -- ** 
  -- ** @param xcb_input_event_class_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_input_event_class_next (arg1 : access xcb_input_event_class_iterator_t);  -- /usr/include/xcb/xinput.h:2066
   pragma Import (C, xcb_input_event_class_next, "xcb_input_event_class_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_input_event_class_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_event_class_end
  -- ** 
  -- ** @param xcb_input_event_class_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_event_class_end (arg1 : xcb_input_event_class_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:2088
   pragma Import (C, xcb_input_event_class_end, "xcb_input_event_class_end");

  --*<  
   function xcb_input_get_extension_version_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xinput.h:2091
   pragma Import (C, xcb_input_get_extension_version_sizeof, "xcb_input_get_extension_version_sizeof");

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
  -- ** xcb_input_get_extension_version_cookie_t xcb_input_get_extension_version
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint16_t          name_len
  -- ** @param const char       *name
  -- ** @returns xcb_input_get_extension_version_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_extension_version
     (arg1 : System.Address;
      arg2 : stdint_h.uint16_t;
      arg3 : Interfaces.C.Strings.chars_ptr) return xcb_input_get_extension_version_cookie_t;  -- /usr/include/xcb/xinput.h:2114
   pragma Import (C, xcb_input_get_extension_version, "xcb_input_get_extension_version");

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
  -- ** xcb_input_get_extension_version_cookie_t xcb_input_get_extension_version_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint16_t          name_len
  -- ** @param const char       *name
  -- ** @returns xcb_input_get_extension_version_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_extension_version_unchecked
     (arg1 : System.Address;
      arg2 : stdint_h.uint16_t;
      arg3 : Interfaces.C.Strings.chars_ptr) return xcb_input_get_extension_version_cookie_t;  -- /usr/include/xcb/xinput.h:2142
   pragma Import (C, xcb_input_get_extension_version_unchecked, "xcb_input_get_extension_version_unchecked");

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
  -- * xcb_input_get_extension_version_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_input_get_extension_version_reply_t * xcb_input_get_extension_version_reply
  -- ** 
  -- ** @param xcb_connection_t                          *c
  -- ** @param xcb_input_get_extension_version_cookie_t   cookie
  -- ** @param xcb_generic_error_t                      **e
  -- ** @returns xcb_input_get_extension_version_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_extension_version_reply
     (arg1 : System.Address;
      arg2 : xcb_input_get_extension_version_cookie_t;
      arg3 : System.Address) return access xcb_input_get_extension_version_reply_t;  -- /usr/include/xcb/xinput.h:2173
   pragma Import (C, xcb_input_get_extension_version_reply, "xcb_input_get_extension_version_reply");

  --*<  
  --*<  
  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_input_device_info_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_input_device_info_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_input_device_info_next
  -- ** 
  -- ** @param xcb_input_device_info_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_input_device_info_next (arg1 : access xcb_input_device_info_iterator_t);  -- /usr/include/xcb/xinput.h:2196
   pragma Import (C, xcb_input_device_info_next, "xcb_input_device_info_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_input_device_info_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_device_info_end
  -- ** 
  -- ** @param xcb_input_device_info_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_device_info_end (arg1 : xcb_input_device_info_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:2218
   pragma Import (C, xcb_input_device_info_end, "xcb_input_device_info_end");

  --*<  
   function xcb_input_list_input_devices_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xinput.h:2221
   pragma Import (C, xcb_input_list_input_devices_sizeof, "xcb_input_list_input_devices_sizeof");

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
  -- ** xcb_input_list_input_devices_cookie_t xcb_input_list_input_devices
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_input_list_input_devices_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_list_input_devices (arg1 : System.Address) return xcb_input_list_input_devices_cookie_t;  -- /usr/include/xcb/xinput.h:2242
   pragma Import (C, xcb_input_list_input_devices, "xcb_input_list_input_devices");

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
  -- ** xcb_input_list_input_devices_cookie_t xcb_input_list_input_devices_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_input_list_input_devices_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_list_input_devices_unchecked (arg1 : System.Address) return xcb_input_list_input_devices_cookie_t;  -- /usr/include/xcb/xinput.h:2266
   pragma Import (C, xcb_input_list_input_devices_unchecked, "xcb_input_list_input_devices_unchecked");

  --****************************************************************************
  -- **
  -- ** xcb_input_device_info_t * xcb_input_list_input_devices_devices
  -- ** 
  -- ** @param const xcb_input_list_input_devices_reply_t *R
  -- ** @returns xcb_input_device_info_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_list_input_devices_devices (arg1 : System.Address) return access xcb_input_device_info_t;  -- /usr/include/xcb/xinput.h:2279
   pragma Import (C, xcb_input_list_input_devices_devices, "xcb_input_list_input_devices_devices");

  --****************************************************************************
  -- **
  -- ** int xcb_input_list_input_devices_devices_length
  -- ** 
  -- ** @param const xcb_input_list_input_devices_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_list_input_devices_devices_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xinput.h:2292
   pragma Import (C, xcb_input_list_input_devices_devices_length, "xcb_input_list_input_devices_devices_length");

  --****************************************************************************
  -- **
  -- ** xcb_input_device_info_iterator_t xcb_input_list_input_devices_devices_iterator
  -- ** 
  -- ** @param const xcb_input_list_input_devices_reply_t *R
  -- ** @returns xcb_input_device_info_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_list_input_devices_devices_iterator (arg1 : System.Address) return xcb_input_device_info_iterator_t;  -- /usr/include/xcb/xinput.h:2305
   pragma Import (C, xcb_input_list_input_devices_devices_iterator, "xcb_input_list_input_devices_devices_iterator");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_input_list_input_devices_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_input_list_input_devices_reply_t * xcb_input_list_input_devices_reply
  -- ** 
  -- ** @param xcb_connection_t                       *c
  -- ** @param xcb_input_list_input_devices_cookie_t   cookie
  -- ** @param xcb_generic_error_t                   **e
  -- ** @returns xcb_input_list_input_devices_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_list_input_devices_reply
     (arg1 : System.Address;
      arg2 : xcb_input_list_input_devices_cookie_t;
      arg3 : System.Address) return access xcb_input_list_input_devices_reply_t;  -- /usr/include/xcb/xinput.h:2334
   pragma Import (C, xcb_input_list_input_devices_reply, "xcb_input_list_input_devices_reply");

  --*<  
  --*<  
  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_input_input_info_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_input_input_info_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_input_input_info_next
  -- ** 
  -- ** @param xcb_input_input_info_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_input_input_info_next (arg1 : access xcb_input_input_info_iterator_t);  -- /usr/include/xcb/xinput.h:2357
   pragma Import (C, xcb_input_input_info_next, "xcb_input_input_info_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_input_input_info_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_input_info_end
  -- ** 
  -- ** @param xcb_input_input_info_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_input_info_end (arg1 : xcb_input_input_info_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:2379
   pragma Import (C, xcb_input_input_info_end, "xcb_input_input_info_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_input_key_info_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_input_key_info_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_input_key_info_next
  -- ** 
  -- ** @param xcb_input_key_info_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_input_key_info_next (arg1 : access xcb_input_key_info_iterator_t);  -- /usr/include/xcb/xinput.h:2400
   pragma Import (C, xcb_input_key_info_next, "xcb_input_key_info_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_input_key_info_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_key_info_end
  -- ** 
  -- ** @param xcb_input_key_info_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_key_info_end (arg1 : xcb_input_key_info_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:2422
   pragma Import (C, xcb_input_key_info_end, "xcb_input_key_info_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_input_button_info_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_input_button_info_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_input_button_info_next
  -- ** 
  -- ** @param xcb_input_button_info_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_input_button_info_next (arg1 : access xcb_input_button_info_iterator_t);  -- /usr/include/xcb/xinput.h:2443
   pragma Import (C, xcb_input_button_info_next, "xcb_input_button_info_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_input_button_info_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_button_info_end
  -- ** 
  -- ** @param xcb_input_button_info_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_button_info_end (arg1 : xcb_input_button_info_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:2465
   pragma Import (C, xcb_input_button_info_end, "xcb_input_button_info_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_input_axis_info_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_input_axis_info_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_input_axis_info_next
  -- ** 
  -- ** @param xcb_input_axis_info_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_input_axis_info_next (arg1 : access xcb_input_axis_info_iterator_t);  -- /usr/include/xcb/xinput.h:2486
   pragma Import (C, xcb_input_axis_info_next, "xcb_input_axis_info_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_input_axis_info_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_axis_info_end
  -- ** 
  -- ** @param xcb_input_axis_info_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_axis_info_end (arg1 : xcb_input_axis_info_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:2508
   pragma Import (C, xcb_input_axis_info_end, "xcb_input_axis_info_end");

  --*<  
   function xcb_input_valuator_info_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xinput.h:2511
   pragma Import (C, xcb_input_valuator_info_sizeof, "xcb_input_valuator_info_sizeof");

  --****************************************************************************
  -- **
  -- ** xcb_input_axis_info_t * xcb_input_valuator_info_axes
  -- ** 
  -- ** @param const xcb_input_valuator_info_t *R
  -- ** @returns xcb_input_axis_info_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_valuator_info_axes (arg1 : System.Address) return access xcb_input_axis_info_t;  -- /usr/include/xcb/xinput.h:2524
   pragma Import (C, xcb_input_valuator_info_axes, "xcb_input_valuator_info_axes");

  --****************************************************************************
  -- **
  -- ** int xcb_input_valuator_info_axes_length
  -- ** 
  -- ** @param const xcb_input_valuator_info_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_valuator_info_axes_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xinput.h:2537
   pragma Import (C, xcb_input_valuator_info_axes_length, "xcb_input_valuator_info_axes_length");

  --****************************************************************************
  -- **
  -- ** xcb_input_axis_info_iterator_t xcb_input_valuator_info_axes_iterator
  -- ** 
  -- ** @param const xcb_input_valuator_info_t *R
  -- ** @returns xcb_input_axis_info_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_valuator_info_axes_iterator (arg1 : System.Address) return xcb_input_axis_info_iterator_t;  -- /usr/include/xcb/xinput.h:2550
   pragma Import (C, xcb_input_valuator_info_axes_iterator, "xcb_input_valuator_info_axes_iterator");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_input_valuator_info_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_input_valuator_info_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_input_valuator_info_next
  -- ** 
  -- ** @param xcb_input_valuator_info_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_input_valuator_info_next (arg1 : access xcb_input_valuator_info_iterator_t);  -- /usr/include/xcb/xinput.h:2571
   pragma Import (C, xcb_input_valuator_info_next, "xcb_input_valuator_info_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_input_valuator_info_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_valuator_info_end
  -- ** 
  -- ** @param xcb_input_valuator_info_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_valuator_info_end (arg1 : xcb_input_valuator_info_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:2593
   pragma Import (C, xcb_input_valuator_info_end, "xcb_input_valuator_info_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_input_input_class_info_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_input_input_class_info_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_input_input_class_info_next
  -- ** 
  -- ** @param xcb_input_input_class_info_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_input_input_class_info_next (arg1 : access xcb_input_input_class_info_iterator_t);  -- /usr/include/xcb/xinput.h:2614
   pragma Import (C, xcb_input_input_class_info_next, "xcb_input_input_class_info_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_input_input_class_info_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_input_class_info_end
  -- ** 
  -- ** @param xcb_input_input_class_info_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_input_class_info_end (arg1 : xcb_input_input_class_info_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:2636
   pragma Import (C, xcb_input_input_class_info_end, "xcb_input_input_class_info_end");

  --*<  
   function xcb_input_open_device_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xinput.h:2639
   pragma Import (C, xcb_input_open_device_sizeof, "xcb_input_open_device_sizeof");

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
  -- ** xcb_input_open_device_cookie_t xcb_input_open_device
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           device_id
  -- ** @returns xcb_input_open_device_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_open_device (arg1 : System.Address; arg2 : stdint_h.uint8_t) return xcb_input_open_device_cookie_t;  -- /usr/include/xcb/xinput.h:2661
   pragma Import (C, xcb_input_open_device, "xcb_input_open_device");

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
  -- ** xcb_input_open_device_cookie_t xcb_input_open_device_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           device_id
  -- ** @returns xcb_input_open_device_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_open_device_unchecked (arg1 : System.Address; arg2 : stdint_h.uint8_t) return xcb_input_open_device_cookie_t;  -- /usr/include/xcb/xinput.h:2687
   pragma Import (C, xcb_input_open_device_unchecked, "xcb_input_open_device_unchecked");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_input_input_class_info_t * xcb_input_open_device_class_info
  -- ** 
  -- ** @param const xcb_input_open_device_reply_t *R
  -- ** @returns xcb_input_input_class_info_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_open_device_class_info (arg1 : System.Address) return access xcb_input_input_class_info_t;  -- /usr/include/xcb/xinput.h:2701
   pragma Import (C, xcb_input_open_device_class_info, "xcb_input_open_device_class_info");

  --****************************************************************************
  -- **
  -- ** int xcb_input_open_device_class_info_length
  -- ** 
  -- ** @param const xcb_input_open_device_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_open_device_class_info_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xinput.h:2714
   pragma Import (C, xcb_input_open_device_class_info_length, "xcb_input_open_device_class_info_length");

  --****************************************************************************
  -- **
  -- ** xcb_input_input_class_info_iterator_t xcb_input_open_device_class_info_iterator
  -- ** 
  -- ** @param const xcb_input_open_device_reply_t *R
  -- ** @returns xcb_input_input_class_info_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_open_device_class_info_iterator (arg1 : System.Address) return xcb_input_input_class_info_iterator_t;  -- /usr/include/xcb/xinput.h:2727
   pragma Import (C, xcb_input_open_device_class_info_iterator, "xcb_input_open_device_class_info_iterator");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_input_open_device_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_input_open_device_reply_t * xcb_input_open_device_reply
  -- ** 
  -- ** @param xcb_connection_t                *c
  -- ** @param xcb_input_open_device_cookie_t   cookie
  -- ** @param xcb_generic_error_t            **e
  -- ** @returns xcb_input_open_device_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_open_device_reply
     (arg1 : System.Address;
      arg2 : xcb_input_open_device_cookie_t;
      arg3 : System.Address) return access xcb_input_open_device_reply_t;  -- /usr/include/xcb/xinput.h:2756
   pragma Import (C, xcb_input_open_device_reply, "xcb_input_open_device_reply");

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
  -- ** xcb_void_cookie_t xcb_input_close_device_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           device_id
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_close_device_checked (arg1 : System.Address; arg2 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xinput.h:2783
   pragma Import (C, xcb_input_close_device_checked, "xcb_input_close_device_checked");

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
  -- ** xcb_void_cookie_t xcb_input_close_device
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           device_id
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_close_device (arg1 : System.Address; arg2 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xinput.h:2806
   pragma Import (C, xcb_input_close_device, "xcb_input_close_device");

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
  -- ** xcb_input_set_device_mode_cookie_t xcb_input_set_device_mode
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           device_id
  -- ** @param uint8_t           mode
  -- ** @returns xcb_input_set_device_mode_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_set_device_mode
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint8_t) return xcb_input_set_device_mode_cookie_t;  -- /usr/include/xcb/xinput.h:2830
   pragma Import (C, xcb_input_set_device_mode, "xcb_input_set_device_mode");

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
  -- ** xcb_input_set_device_mode_cookie_t xcb_input_set_device_mode_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           device_id
  -- ** @param uint8_t           mode
  -- ** @returns xcb_input_set_device_mode_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_set_device_mode_unchecked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint8_t) return xcb_input_set_device_mode_cookie_t;  -- /usr/include/xcb/xinput.h:2858
   pragma Import (C, xcb_input_set_device_mode_unchecked, "xcb_input_set_device_mode_unchecked");

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
  -- * xcb_input_set_device_mode_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_input_set_device_mode_reply_t * xcb_input_set_device_mode_reply
  -- ** 
  -- ** @param xcb_connection_t                    *c
  -- ** @param xcb_input_set_device_mode_cookie_t   cookie
  -- ** @param xcb_generic_error_t                **e
  -- ** @returns xcb_input_set_device_mode_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_set_device_mode_reply
     (arg1 : System.Address;
      arg2 : xcb_input_set_device_mode_cookie_t;
      arg3 : System.Address) return access xcb_input_set_device_mode_reply_t;  -- /usr/include/xcb/xinput.h:2889
   pragma Import (C, xcb_input_set_device_mode_reply, "xcb_input_set_device_mode_reply");

  --*<  
  --*<  
  --*<  
   function xcb_input_select_extension_event_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xinput.h:2894
   pragma Import (C, xcb_input_select_extension_event_sizeof, "xcb_input_select_extension_event_sizeof");

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
  -- ** xcb_void_cookie_t xcb_input_select_extension_event_checked
  -- ** 
  -- ** @param xcb_connection_t              *c
  -- ** @param xcb_window_t                   window
  -- ** @param uint16_t                       num_classes
  -- ** @param const xcb_input_event_class_t *classes
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_select_extension_event_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint16_t;
      arg4 : access xcb_input_event_class_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xinput.h:2921
   pragma Import (C, xcb_input_select_extension_event_checked, "xcb_input_select_extension_event_checked");

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
  -- ** xcb_void_cookie_t xcb_input_select_extension_event
  -- ** 
  -- ** @param xcb_connection_t              *c
  -- ** @param xcb_window_t                   window
  -- ** @param uint16_t                       num_classes
  -- ** @param const xcb_input_event_class_t *classes
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_select_extension_event
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint16_t;
      arg4 : access xcb_input_event_class_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xinput.h:2948
   pragma Import (C, xcb_input_select_extension_event, "xcb_input_select_extension_event");

  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_input_get_selected_extension_events_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xinput.h:2954
   pragma Import (C, xcb_input_get_selected_extension_events_sizeof, "xcb_input_get_selected_extension_events_sizeof");

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
  -- ** xcb_input_get_selected_extension_events_cookie_t xcb_input_get_selected_extension_events
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_input_get_selected_extension_events_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_selected_extension_events (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_input_get_selected_extension_events_cookie_t;  -- /usr/include/xcb/xinput.h:2976
   pragma Import (C, xcb_input_get_selected_extension_events, "xcb_input_get_selected_extension_events");

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
  -- ** xcb_input_get_selected_extension_events_cookie_t xcb_input_get_selected_extension_events_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_input_get_selected_extension_events_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_selected_extension_events_unchecked (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_input_get_selected_extension_events_cookie_t;  -- /usr/include/xcb/xinput.h:3002
   pragma Import (C, xcb_input_get_selected_extension_events_unchecked, "xcb_input_get_selected_extension_events_unchecked");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_input_event_class_t * xcb_input_get_selected_extension_events_this_classes
  -- ** 
  -- ** @param const xcb_input_get_selected_extension_events_reply_t *R
  -- ** @returns xcb_input_event_class_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_selected_extension_events_this_classes (arg1 : System.Address) return access xcb_input_event_class_t;  -- /usr/include/xcb/xinput.h:3016
   pragma Import (C, xcb_input_get_selected_extension_events_this_classes, "xcb_input_get_selected_extension_events_this_classes");

  --****************************************************************************
  -- **
  -- ** int xcb_input_get_selected_extension_events_this_classes_length
  -- ** 
  -- ** @param const xcb_input_get_selected_extension_events_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_selected_extension_events_this_classes_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xinput.h:3029
   pragma Import (C, xcb_input_get_selected_extension_events_this_classes_length, "xcb_input_get_selected_extension_events_this_classes_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_get_selected_extension_events_this_classes_end
  -- ** 
  -- ** @param const xcb_input_get_selected_extension_events_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_selected_extension_events_this_classes_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:3042
   pragma Import (C, xcb_input_get_selected_extension_events_this_classes_end, "xcb_input_get_selected_extension_events_this_classes_end");

  --****************************************************************************
  -- **
  -- ** xcb_input_event_class_t * xcb_input_get_selected_extension_events_all_classes
  -- ** 
  -- ** @param const xcb_input_get_selected_extension_events_reply_t *R
  -- ** @returns xcb_input_event_class_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_selected_extension_events_all_classes (arg1 : System.Address) return access xcb_input_event_class_t;  -- /usr/include/xcb/xinput.h:3055
   pragma Import (C, xcb_input_get_selected_extension_events_all_classes, "xcb_input_get_selected_extension_events_all_classes");

  --****************************************************************************
  -- **
  -- ** int xcb_input_get_selected_extension_events_all_classes_length
  -- ** 
  -- ** @param const xcb_input_get_selected_extension_events_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_selected_extension_events_all_classes_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xinput.h:3068
   pragma Import (C, xcb_input_get_selected_extension_events_all_classes_length, "xcb_input_get_selected_extension_events_all_classes_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_get_selected_extension_events_all_classes_end
  -- ** 
  -- ** @param const xcb_input_get_selected_extension_events_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_selected_extension_events_all_classes_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:3081
   pragma Import (C, xcb_input_get_selected_extension_events_all_classes_end, "xcb_input_get_selected_extension_events_all_classes_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_input_get_selected_extension_events_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_input_get_selected_extension_events_reply_t * xcb_input_get_selected_extension_events_reply
  -- ** 
  -- ** @param xcb_connection_t                                  *c
  -- ** @param xcb_input_get_selected_extension_events_cookie_t   cookie
  -- ** @param xcb_generic_error_t                              **e
  -- ** @returns xcb_input_get_selected_extension_events_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_selected_extension_events_reply
     (arg1 : System.Address;
      arg2 : xcb_input_get_selected_extension_events_cookie_t;
      arg3 : System.Address) return access xcb_input_get_selected_extension_events_reply_t;  -- /usr/include/xcb/xinput.h:3110
   pragma Import (C, xcb_input_get_selected_extension_events_reply, "xcb_input_get_selected_extension_events_reply");

  --*<  
  --*<  
  --*<  
   function xcb_input_change_device_dont_propagate_list_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xinput.h:3115
   pragma Import (C, xcb_input_change_device_dont_propagate_list_sizeof, "xcb_input_change_device_dont_propagate_list_sizeof");

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
  -- ** xcb_void_cookie_t xcb_input_change_device_dont_propagate_list_checked
  -- ** 
  -- ** @param xcb_connection_t              *c
  -- ** @param xcb_window_t                   window
  -- ** @param uint16_t                       num_classes
  -- ** @param uint8_t                        mode
  -- ** @param const xcb_input_event_class_t *classes
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_change_device_dont_propagate_list_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint8_t;
      arg5 : access xcb_input_event_class_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xinput.h:3143
   pragma Import (C, xcb_input_change_device_dont_propagate_list_checked, "xcb_input_change_device_dont_propagate_list_checked");

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
  -- ** xcb_void_cookie_t xcb_input_change_device_dont_propagate_list
  -- ** 
  -- ** @param xcb_connection_t              *c
  -- ** @param xcb_window_t                   window
  -- ** @param uint16_t                       num_classes
  -- ** @param uint8_t                        mode
  -- ** @param const xcb_input_event_class_t *classes
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_change_device_dont_propagate_list
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint8_t;
      arg5 : access xcb_input_event_class_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xinput.h:3172
   pragma Import (C, xcb_input_change_device_dont_propagate_list, "xcb_input_change_device_dont_propagate_list");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_input_get_device_dont_propagate_list_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xinput.h:3179
   pragma Import (C, xcb_input_get_device_dont_propagate_list_sizeof, "xcb_input_get_device_dont_propagate_list_sizeof");

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
  -- ** xcb_input_get_device_dont_propagate_list_cookie_t xcb_input_get_device_dont_propagate_list
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_input_get_device_dont_propagate_list_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_device_dont_propagate_list (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_input_get_device_dont_propagate_list_cookie_t;  -- /usr/include/xcb/xinput.h:3201
   pragma Import (C, xcb_input_get_device_dont_propagate_list, "xcb_input_get_device_dont_propagate_list");

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
  -- ** xcb_input_get_device_dont_propagate_list_cookie_t xcb_input_get_device_dont_propagate_list_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      window
  -- ** @returns xcb_input_get_device_dont_propagate_list_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_device_dont_propagate_list_unchecked (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_window_t) return xcb_input_get_device_dont_propagate_list_cookie_t;  -- /usr/include/xcb/xinput.h:3227
   pragma Import (C, xcb_input_get_device_dont_propagate_list_unchecked, "xcb_input_get_device_dont_propagate_list_unchecked");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_input_event_class_t * xcb_input_get_device_dont_propagate_list_classes
  -- ** 
  -- ** @param const xcb_input_get_device_dont_propagate_list_reply_t *R
  -- ** @returns xcb_input_event_class_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_device_dont_propagate_list_classes (arg1 : System.Address) return access xcb_input_event_class_t;  -- /usr/include/xcb/xinput.h:3241
   pragma Import (C, xcb_input_get_device_dont_propagate_list_classes, "xcb_input_get_device_dont_propagate_list_classes");

  --****************************************************************************
  -- **
  -- ** int xcb_input_get_device_dont_propagate_list_classes_length
  -- ** 
  -- ** @param const xcb_input_get_device_dont_propagate_list_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_device_dont_propagate_list_classes_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xinput.h:3254
   pragma Import (C, xcb_input_get_device_dont_propagate_list_classes_length, "xcb_input_get_device_dont_propagate_list_classes_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_get_device_dont_propagate_list_classes_end
  -- ** 
  -- ** @param const xcb_input_get_device_dont_propagate_list_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_device_dont_propagate_list_classes_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:3267
   pragma Import (C, xcb_input_get_device_dont_propagate_list_classes_end, "xcb_input_get_device_dont_propagate_list_classes_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_input_get_device_dont_propagate_list_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_input_get_device_dont_propagate_list_reply_t * xcb_input_get_device_dont_propagate_list_reply
  -- ** 
  -- ** @param xcb_connection_t                                   *c
  -- ** @param xcb_input_get_device_dont_propagate_list_cookie_t   cookie
  -- ** @param xcb_generic_error_t                               **e
  -- ** @returns xcb_input_get_device_dont_propagate_list_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_device_dont_propagate_list_reply
     (arg1 : System.Address;
      arg2 : xcb_input_get_device_dont_propagate_list_cookie_t;
      arg3 : System.Address) return access xcb_input_get_device_dont_propagate_list_reply_t;  -- /usr/include/xcb/xinput.h:3296
   pragma Import (C, xcb_input_get_device_dont_propagate_list_reply, "xcb_input_get_device_dont_propagate_list_reply");

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
  -- ** xcb_input_get_device_motion_events_cookie_t xcb_input_get_device_motion_events
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_timestamp_t   start
  -- ** @param xcb_timestamp_t   stop
  -- ** @param uint8_t           device_id
  -- ** @returns xcb_input_get_device_motion_events_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_device_motion_events
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_timestamp_t;
      arg3 : xcb_xproto_h.xcb_timestamp_t;
      arg4 : stdint_h.uint8_t) return xcb_input_get_device_motion_events_cookie_t;  -- /usr/include/xcb/xinput.h:3322
   pragma Import (C, xcb_input_get_device_motion_events, "xcb_input_get_device_motion_events");

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
  -- ** xcb_input_get_device_motion_events_cookie_t xcb_input_get_device_motion_events_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_timestamp_t   start
  -- ** @param xcb_timestamp_t   stop
  -- ** @param uint8_t           device_id
  -- ** @returns xcb_input_get_device_motion_events_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_device_motion_events_unchecked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_timestamp_t;
      arg3 : xcb_xproto_h.xcb_timestamp_t;
      arg4 : stdint_h.uint8_t) return xcb_input_get_device_motion_events_cookie_t;  -- /usr/include/xcb/xinput.h:3352
   pragma Import (C, xcb_input_get_device_motion_events_unchecked, "xcb_input_get_device_motion_events_unchecked");

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
  -- * xcb_input_get_device_motion_events_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_input_get_device_motion_events_reply_t * xcb_input_get_device_motion_events_reply
  -- ** 
  -- ** @param xcb_connection_t                             *c
  -- ** @param xcb_input_get_device_motion_events_cookie_t   cookie
  -- ** @param xcb_generic_error_t                         **e
  -- ** @returns xcb_input_get_device_motion_events_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_device_motion_events_reply
     (arg1 : System.Address;
      arg2 : xcb_input_get_device_motion_events_cookie_t;
      arg3 : System.Address) return access xcb_input_get_device_motion_events_reply_t;  -- /usr/include/xcb/xinput.h:3384
   pragma Import (C, xcb_input_get_device_motion_events_reply, "xcb_input_get_device_motion_events_reply");

  --*<  
  --*<  
  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_input_device_time_coord_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_input_device_time_coord_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_input_device_time_coord_next
  -- ** 
  -- ** @param xcb_input_device_time_coord_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_input_device_time_coord_next (arg1 : access xcb_input_device_time_coord_iterator_t);  -- /usr/include/xcb/xinput.h:3407
   pragma Import (C, xcb_input_device_time_coord_next, "xcb_input_device_time_coord_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_input_device_time_coord_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_device_time_coord_end
  -- ** 
  -- ** @param xcb_input_device_time_coord_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_device_time_coord_end (arg1 : xcb_input_device_time_coord_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:3429
   pragma Import (C, xcb_input_device_time_coord_end, "xcb_input_device_time_coord_end");

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
  -- ** xcb_input_change_keyboard_device_cookie_t xcb_input_change_keyboard_device
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           device_id
  -- ** @returns xcb_input_change_keyboard_device_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_change_keyboard_device (arg1 : System.Address; arg2 : stdint_h.uint8_t) return xcb_input_change_keyboard_device_cookie_t;  -- /usr/include/xcb/xinput.h:3451
   pragma Import (C, xcb_input_change_keyboard_device, "xcb_input_change_keyboard_device");

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
  -- ** xcb_input_change_keyboard_device_cookie_t xcb_input_change_keyboard_device_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           device_id
  -- ** @returns xcb_input_change_keyboard_device_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_change_keyboard_device_unchecked (arg1 : System.Address; arg2 : stdint_h.uint8_t) return xcb_input_change_keyboard_device_cookie_t;  -- /usr/include/xcb/xinput.h:3477
   pragma Import (C, xcb_input_change_keyboard_device_unchecked, "xcb_input_change_keyboard_device_unchecked");

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
  -- * xcb_input_change_keyboard_device_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_input_change_keyboard_device_reply_t * xcb_input_change_keyboard_device_reply
  -- ** 
  -- ** @param xcb_connection_t                           *c
  -- ** @param xcb_input_change_keyboard_device_cookie_t   cookie
  -- ** @param xcb_generic_error_t                       **e
  -- ** @returns xcb_input_change_keyboard_device_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_change_keyboard_device_reply
     (arg1 : System.Address;
      arg2 : xcb_input_change_keyboard_device_cookie_t;
      arg3 : System.Address) return access xcb_input_change_keyboard_device_reply_t;  -- /usr/include/xcb/xinput.h:3507
   pragma Import (C, xcb_input_change_keyboard_device_reply, "xcb_input_change_keyboard_device_reply");

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
  -- ** xcb_input_change_pointer_device_cookie_t xcb_input_change_pointer_device
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           x_axis
  -- ** @param uint8_t           y_axis
  -- ** @param uint8_t           device_id
  -- ** @returns xcb_input_change_pointer_device_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_change_pointer_device
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint8_t) return xcb_input_change_pointer_device_cookie_t;  -- /usr/include/xcb/xinput.h:3533
   pragma Import (C, xcb_input_change_pointer_device, "xcb_input_change_pointer_device");

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
  -- ** xcb_input_change_pointer_device_cookie_t xcb_input_change_pointer_device_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           x_axis
  -- ** @param uint8_t           y_axis
  -- ** @param uint8_t           device_id
  -- ** @returns xcb_input_change_pointer_device_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_change_pointer_device_unchecked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint8_t) return xcb_input_change_pointer_device_cookie_t;  -- /usr/include/xcb/xinput.h:3563
   pragma Import (C, xcb_input_change_pointer_device_unchecked, "xcb_input_change_pointer_device_unchecked");

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
  -- * xcb_input_change_pointer_device_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_input_change_pointer_device_reply_t * xcb_input_change_pointer_device_reply
  -- ** 
  -- ** @param xcb_connection_t                          *c
  -- ** @param xcb_input_change_pointer_device_cookie_t   cookie
  -- ** @param xcb_generic_error_t                      **e
  -- ** @returns xcb_input_change_pointer_device_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_change_pointer_device_reply
     (arg1 : System.Address;
      arg2 : xcb_input_change_pointer_device_cookie_t;
      arg3 : System.Address) return access xcb_input_change_pointer_device_reply_t;  -- /usr/include/xcb/xinput.h:3595
   pragma Import (C, xcb_input_change_pointer_device_reply, "xcb_input_change_pointer_device_reply");

  --*<  
  --*<  
  --*<  
   function xcb_input_grab_device_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xinput.h:3600
   pragma Import (C, xcb_input_grab_device_sizeof, "xcb_input_grab_device_sizeof");

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
  -- ** xcb_input_grab_device_cookie_t xcb_input_grab_device
  -- ** 
  -- ** @param xcb_connection_t              *c
  -- ** @param xcb_window_t                   grab_window
  -- ** @param xcb_timestamp_t                time
  -- ** @param uint16_t                       num_classes
  -- ** @param uint8_t                        this_device_mode
  -- ** @param uint8_t                        other_device_mode
  -- ** @param uint8_t                        owner_events
  -- ** @param uint8_t                        device_id
  -- ** @param const xcb_input_event_class_t *classes
  -- ** @returns xcb_input_grab_device_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_grab_device
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_xproto_h.xcb_timestamp_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint8_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : access xcb_input_event_class_t) return xcb_input_grab_device_cookie_t;  -- /usr/include/xcb/xinput.h:3629
   pragma Import (C, xcb_input_grab_device, "xcb_input_grab_device");

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
  -- ** xcb_input_grab_device_cookie_t xcb_input_grab_device_unchecked
  -- ** 
  -- ** @param xcb_connection_t              *c
  -- ** @param xcb_window_t                   grab_window
  -- ** @param xcb_timestamp_t                time
  -- ** @param uint16_t                       num_classes
  -- ** @param uint8_t                        this_device_mode
  -- ** @param uint8_t                        other_device_mode
  -- ** @param uint8_t                        owner_events
  -- ** @param uint8_t                        device_id
  -- ** @param const xcb_input_event_class_t *classes
  -- ** @returns xcb_input_grab_device_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_grab_device_unchecked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_xproto_h.xcb_timestamp_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint8_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : access xcb_input_event_class_t) return xcb_input_grab_device_cookie_t;  -- /usr/include/xcb/xinput.h:3669
   pragma Import (C, xcb_input_grab_device_unchecked, "xcb_input_grab_device_unchecked");

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
  -- * xcb_input_grab_device_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_input_grab_device_reply_t * xcb_input_grab_device_reply
  -- ** 
  -- ** @param xcb_connection_t                *c
  -- ** @param xcb_input_grab_device_cookie_t   cookie
  -- ** @param xcb_generic_error_t            **e
  -- ** @returns xcb_input_grab_device_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_grab_device_reply
     (arg1 : System.Address;
      arg2 : xcb_input_grab_device_cookie_t;
      arg3 : System.Address) return access xcb_input_grab_device_reply_t;  -- /usr/include/xcb/xinput.h:3706
   pragma Import (C, xcb_input_grab_device_reply, "xcb_input_grab_device_reply");

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
  -- ** xcb_void_cookie_t xcb_input_ungrab_device_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_timestamp_t   time
  -- ** @param uint8_t           device_id
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_ungrab_device_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_timestamp_t;
      arg3 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xinput.h:3734
   pragma Import (C, xcb_input_ungrab_device_checked, "xcb_input_ungrab_device_checked");

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
  -- ** xcb_void_cookie_t xcb_input_ungrab_device
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_timestamp_t   time
  -- ** @param uint8_t           device_id
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_ungrab_device
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_timestamp_t;
      arg3 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xinput.h:3759
   pragma Import (C, xcb_input_ungrab_device, "xcb_input_ungrab_device");

  --*<  
  --*<  
  --*<  
   function xcb_input_grab_device_key_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xinput.h:3764
   pragma Import (C, xcb_input_grab_device_key_sizeof, "xcb_input_grab_device_key_sizeof");

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
  -- ** xcb_void_cookie_t xcb_input_grab_device_key_checked
  -- ** 
  -- ** @param xcb_connection_t              *c
  -- ** @param xcb_window_t                   grab_window
  -- ** @param uint16_t                       num_classes
  -- ** @param uint16_t                       modifiers
  -- ** @param uint8_t                        modifier_device
  -- ** @param uint8_t                        grabbed_device
  -- ** @param uint8_t                        key
  -- ** @param uint8_t                        this_device_mode
  -- ** @param uint8_t                        other_device_mode
  -- ** @param uint8_t                        owner_events
  -- ** @param const xcb_input_event_class_t *classes
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_grab_device_key_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint8_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : stdint_h.uint8_t;
      arg10 : stdint_h.uint8_t;
      arg11 : access xcb_input_event_class_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xinput.h:3798
   pragma Import (C, xcb_input_grab_device_key_checked, "xcb_input_grab_device_key_checked");

  --*<  
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
  -- ** xcb_void_cookie_t xcb_input_grab_device_key
  -- ** 
  -- ** @param xcb_connection_t              *c
  -- ** @param xcb_window_t                   grab_window
  -- ** @param uint16_t                       num_classes
  -- ** @param uint16_t                       modifiers
  -- ** @param uint8_t                        modifier_device
  -- ** @param uint8_t                        grabbed_device
  -- ** @param uint8_t                        key
  -- ** @param uint8_t                        this_device_mode
  -- ** @param uint8_t                        other_device_mode
  -- ** @param uint8_t                        owner_events
  -- ** @param const xcb_input_event_class_t *classes
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_grab_device_key
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint8_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : stdint_h.uint8_t;
      arg10 : stdint_h.uint8_t;
      arg11 : access xcb_input_event_class_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xinput.h:3839
   pragma Import (C, xcb_input_grab_device_key, "xcb_input_grab_device_key");

  --*<  
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
  -- ** xcb_void_cookie_t xcb_input_ungrab_device_key_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      grabWindow
  -- ** @param uint16_t          modifiers
  -- ** @param uint8_t           modifier_device
  -- ** @param uint8_t           key
  -- ** @param uint8_t           grabbed_device
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_ungrab_device_key_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint8_t;
      arg6 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xinput.h:3878
   pragma Import (C, xcb_input_ungrab_device_key_checked, "xcb_input_ungrab_device_key_checked");

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
  -- ** xcb_void_cookie_t xcb_input_ungrab_device_key
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      grabWindow
  -- ** @param uint16_t          modifiers
  -- ** @param uint8_t           modifier_device
  -- ** @param uint8_t           key
  -- ** @param uint8_t           grabbed_device
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_ungrab_device_key
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint8_t;
      arg6 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xinput.h:3909
   pragma Import (C, xcb_input_ungrab_device_key, "xcb_input_ungrab_device_key");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_input_grab_device_button_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xinput.h:3917
   pragma Import (C, xcb_input_grab_device_button_sizeof, "xcb_input_grab_device_button_sizeof");

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
  -- ** xcb_void_cookie_t xcb_input_grab_device_button_checked
  -- ** 
  -- ** @param xcb_connection_t              *c
  -- ** @param xcb_window_t                   grab_window
  -- ** @param uint8_t                        grabbed_device
  -- ** @param uint8_t                        modifier_device
  -- ** @param uint16_t                       num_classes
  -- ** @param uint16_t                       modifiers
  -- ** @param uint8_t                        this_device_mode
  -- ** @param uint8_t                        other_device_mode
  -- ** @param uint8_t                        button
  -- ** @param uint8_t                        owner_events
  -- ** @param const xcb_input_event_class_t *classes
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_grab_device_button_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint16_t;
      arg7 : stdint_h.uint8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : stdint_h.uint8_t;
      arg10 : stdint_h.uint8_t;
      arg11 : access xcb_input_event_class_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xinput.h:3951
   pragma Import (C, xcb_input_grab_device_button_checked, "xcb_input_grab_device_button_checked");

  --*<  
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
  -- ** xcb_void_cookie_t xcb_input_grab_device_button
  -- ** 
  -- ** @param xcb_connection_t              *c
  -- ** @param xcb_window_t                   grab_window
  -- ** @param uint8_t                        grabbed_device
  -- ** @param uint8_t                        modifier_device
  -- ** @param uint16_t                       num_classes
  -- ** @param uint16_t                       modifiers
  -- ** @param uint8_t                        this_device_mode
  -- ** @param uint8_t                        other_device_mode
  -- ** @param uint8_t                        button
  -- ** @param uint8_t                        owner_events
  -- ** @param const xcb_input_event_class_t *classes
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_grab_device_button
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint16_t;
      arg7 : stdint_h.uint8_t;
      arg8 : stdint_h.uint8_t;
      arg9 : stdint_h.uint8_t;
      arg10 : stdint_h.uint8_t;
      arg11 : access xcb_input_event_class_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xinput.h:3992
   pragma Import (C, xcb_input_grab_device_button, "xcb_input_grab_device_button");

  --*<  
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
  -- ** xcb_void_cookie_t xcb_input_ungrab_device_button_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      grab_window
  -- ** @param uint16_t          modifiers
  -- ** @param uint8_t           modifier_device
  -- ** @param uint8_t           button
  -- ** @param uint8_t           grabbed_device
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_ungrab_device_button_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint8_t;
      arg6 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xinput.h:4031
   pragma Import (C, xcb_input_ungrab_device_button_checked, "xcb_input_ungrab_device_button_checked");

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
  -- ** xcb_void_cookie_t xcb_input_ungrab_device_button
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      grab_window
  -- ** @param uint16_t          modifiers
  -- ** @param uint8_t           modifier_device
  -- ** @param uint8_t           button
  -- ** @param uint8_t           grabbed_device
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_ungrab_device_button
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint8_t;
      arg6 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xinput.h:4062
   pragma Import (C, xcb_input_ungrab_device_button, "xcb_input_ungrab_device_button");

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
  -- ** xcb_void_cookie_t xcb_input_allow_device_events_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_timestamp_t   time
  -- ** @param uint8_t           mode
  -- ** @param uint8_t           device_id
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_allow_device_events_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_timestamp_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xinput.h:4094
   pragma Import (C, xcb_input_allow_device_events_checked, "xcb_input_allow_device_events_checked");

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
  -- ** xcb_void_cookie_t xcb_input_allow_device_events
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_timestamp_t   time
  -- ** @param uint8_t           mode
  -- ** @param uint8_t           device_id
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_allow_device_events
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_timestamp_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xinput.h:4121
   pragma Import (C, xcb_input_allow_device_events, "xcb_input_allow_device_events");

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
  -- ** xcb_input_get_device_focus_cookie_t xcb_input_get_device_focus
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           device_id
  -- ** @returns xcb_input_get_device_focus_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_device_focus (arg1 : System.Address; arg2 : stdint_h.uint8_t) return xcb_input_get_device_focus_cookie_t;  -- /usr/include/xcb/xinput.h:4146
   pragma Import (C, xcb_input_get_device_focus, "xcb_input_get_device_focus");

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
  -- ** xcb_input_get_device_focus_cookie_t xcb_input_get_device_focus_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           device_id
  -- ** @returns xcb_input_get_device_focus_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_device_focus_unchecked (arg1 : System.Address; arg2 : stdint_h.uint8_t) return xcb_input_get_device_focus_cookie_t;  -- /usr/include/xcb/xinput.h:4172
   pragma Import (C, xcb_input_get_device_focus_unchecked, "xcb_input_get_device_focus_unchecked");

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
  -- * xcb_input_get_device_focus_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_input_get_device_focus_reply_t * xcb_input_get_device_focus_reply
  -- ** 
  -- ** @param xcb_connection_t                     *c
  -- ** @param xcb_input_get_device_focus_cookie_t   cookie
  -- ** @param xcb_generic_error_t                 **e
  -- ** @returns xcb_input_get_device_focus_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_device_focus_reply
     (arg1 : System.Address;
      arg2 : xcb_input_get_device_focus_cookie_t;
      arg3 : System.Address) return access xcb_input_get_device_focus_reply_t;  -- /usr/include/xcb/xinput.h:4202
   pragma Import (C, xcb_input_get_device_focus_reply, "xcb_input_get_device_focus_reply");

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
  -- ** xcb_void_cookie_t xcb_input_set_device_focus_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      focus
  -- ** @param xcb_timestamp_t   time
  -- ** @param uint8_t           revert_to
  -- ** @param uint8_t           device_id
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_set_device_focus_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_xproto_h.xcb_timestamp_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xinput.h:4232
   pragma Import (C, xcb_input_set_device_focus_checked, "xcb_input_set_device_focus_checked");

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
  -- ** xcb_void_cookie_t xcb_input_set_device_focus
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_window_t      focus
  -- ** @param xcb_timestamp_t   time
  -- ** @param uint8_t           revert_to
  -- ** @param uint8_t           device_id
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_set_device_focus
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_xproto_h.xcb_timestamp_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xinput.h:4261
   pragma Import (C, xcb_input_set_device_focus, "xcb_input_set_device_focus");

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
  -- ** xcb_input_get_feedback_control_cookie_t xcb_input_get_feedback_control
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           device_id
  -- ** @returns xcb_input_get_feedback_control_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_feedback_control (arg1 : System.Address; arg2 : stdint_h.uint8_t) return xcb_input_get_feedback_control_cookie_t;  -- /usr/include/xcb/xinput.h:4287
   pragma Import (C, xcb_input_get_feedback_control, "xcb_input_get_feedback_control");

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
  -- ** xcb_input_get_feedback_control_cookie_t xcb_input_get_feedback_control_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           device_id
  -- ** @returns xcb_input_get_feedback_control_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_feedback_control_unchecked (arg1 : System.Address; arg2 : stdint_h.uint8_t) return xcb_input_get_feedback_control_cookie_t;  -- /usr/include/xcb/xinput.h:4313
   pragma Import (C, xcb_input_get_feedback_control_unchecked, "xcb_input_get_feedback_control_unchecked");

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
  -- * xcb_input_get_feedback_control_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_input_get_feedback_control_reply_t * xcb_input_get_feedback_control_reply
  -- ** 
  -- ** @param xcb_connection_t                         *c
  -- ** @param xcb_input_get_feedback_control_cookie_t   cookie
  -- ** @param xcb_generic_error_t                     **e
  -- ** @returns xcb_input_get_feedback_control_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_feedback_control_reply
     (arg1 : System.Address;
      arg2 : xcb_input_get_feedback_control_cookie_t;
      arg3 : System.Address) return access xcb_input_get_feedback_control_reply_t;  -- /usr/include/xcb/xinput.h:4343
   pragma Import (C, xcb_input_get_feedback_control_reply, "xcb_input_get_feedback_control_reply");

  --*<  
  --*<  
  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_input_feedback_state_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_input_feedback_state_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_input_feedback_state_next
  -- ** 
  -- ** @param xcb_input_feedback_state_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_input_feedback_state_next (arg1 : access xcb_input_feedback_state_iterator_t);  -- /usr/include/xcb/xinput.h:4366
   pragma Import (C, xcb_input_feedback_state_next, "xcb_input_feedback_state_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_input_feedback_state_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_feedback_state_end
  -- ** 
  -- ** @param xcb_input_feedback_state_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_feedback_state_end (arg1 : xcb_input_feedback_state_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:4388
   pragma Import (C, xcb_input_feedback_state_end, "xcb_input_feedback_state_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_input_kbd_feedback_state_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_input_kbd_feedback_state_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_input_kbd_feedback_state_next
  -- ** 
  -- ** @param xcb_input_kbd_feedback_state_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_input_kbd_feedback_state_next (arg1 : access xcb_input_kbd_feedback_state_iterator_t);  -- /usr/include/xcb/xinput.h:4409
   pragma Import (C, xcb_input_kbd_feedback_state_next, "xcb_input_kbd_feedback_state_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_input_kbd_feedback_state_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_kbd_feedback_state_end
  -- ** 
  -- ** @param xcb_input_kbd_feedback_state_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_kbd_feedback_state_end (arg1 : xcb_input_kbd_feedback_state_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:4431
   pragma Import (C, xcb_input_kbd_feedback_state_end, "xcb_input_kbd_feedback_state_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_input_ptr_feedback_state_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_input_ptr_feedback_state_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_input_ptr_feedback_state_next
  -- ** 
  -- ** @param xcb_input_ptr_feedback_state_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_input_ptr_feedback_state_next (arg1 : access xcb_input_ptr_feedback_state_iterator_t);  -- /usr/include/xcb/xinput.h:4452
   pragma Import (C, xcb_input_ptr_feedback_state_next, "xcb_input_ptr_feedback_state_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_input_ptr_feedback_state_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_ptr_feedback_state_end
  -- ** 
  -- ** @param xcb_input_ptr_feedback_state_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_ptr_feedback_state_end (arg1 : xcb_input_ptr_feedback_state_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:4474
   pragma Import (C, xcb_input_ptr_feedback_state_end, "xcb_input_ptr_feedback_state_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_input_integer_feedback_state_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_input_integer_feedback_state_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_input_integer_feedback_state_next
  -- ** 
  -- ** @param xcb_input_integer_feedback_state_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_input_integer_feedback_state_next (arg1 : access xcb_input_integer_feedback_state_iterator_t);  -- /usr/include/xcb/xinput.h:4495
   pragma Import (C, xcb_input_integer_feedback_state_next, "xcb_input_integer_feedback_state_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_input_integer_feedback_state_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_integer_feedback_state_end
  -- ** 
  -- ** @param xcb_input_integer_feedback_state_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_integer_feedback_state_end (arg1 : xcb_input_integer_feedback_state_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:4517
   pragma Import (C, xcb_input_integer_feedback_state_end, "xcb_input_integer_feedback_state_end");

  --*<  
   function xcb_input_string_feedback_state_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xinput.h:4520
   pragma Import (C, xcb_input_string_feedback_state_sizeof, "xcb_input_string_feedback_state_sizeof");

  --****************************************************************************
  -- **
  -- ** xcb_keysym_t * xcb_input_string_feedback_state_keysyms
  -- ** 
  -- ** @param const xcb_input_string_feedback_state_t *R
  -- ** @returns xcb_keysym_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_string_feedback_state_keysyms (arg1 : System.Address) return access xcb_xproto_h.xcb_keysym_t;  -- /usr/include/xcb/xinput.h:4533
   pragma Import (C, xcb_input_string_feedback_state_keysyms, "xcb_input_string_feedback_state_keysyms");

  --****************************************************************************
  -- **
  -- ** int xcb_input_string_feedback_state_keysyms_length
  -- ** 
  -- ** @param const xcb_input_string_feedback_state_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_string_feedback_state_keysyms_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xinput.h:4546
   pragma Import (C, xcb_input_string_feedback_state_keysyms_length, "xcb_input_string_feedback_state_keysyms_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_string_feedback_state_keysyms_end
  -- ** 
  -- ** @param const xcb_input_string_feedback_state_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_string_feedback_state_keysyms_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:4559
   pragma Import (C, xcb_input_string_feedback_state_keysyms_end, "xcb_input_string_feedback_state_keysyms_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_input_string_feedback_state_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_input_string_feedback_state_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_input_string_feedback_state_next
  -- ** 
  -- ** @param xcb_input_string_feedback_state_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_input_string_feedback_state_next (arg1 : access xcb_input_string_feedback_state_iterator_t);  -- /usr/include/xcb/xinput.h:4580
   pragma Import (C, xcb_input_string_feedback_state_next, "xcb_input_string_feedback_state_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_input_string_feedback_state_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_string_feedback_state_end
  -- ** 
  -- ** @param xcb_input_string_feedback_state_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_string_feedback_state_end (arg1 : xcb_input_string_feedback_state_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:4602
   pragma Import (C, xcb_input_string_feedback_state_end, "xcb_input_string_feedback_state_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_input_bell_feedback_state_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_input_bell_feedback_state_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_input_bell_feedback_state_next
  -- ** 
  -- ** @param xcb_input_bell_feedback_state_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_input_bell_feedback_state_next (arg1 : access xcb_input_bell_feedback_state_iterator_t);  -- /usr/include/xcb/xinput.h:4623
   pragma Import (C, xcb_input_bell_feedback_state_next, "xcb_input_bell_feedback_state_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_input_bell_feedback_state_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_bell_feedback_state_end
  -- ** 
  -- ** @param xcb_input_bell_feedback_state_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_bell_feedback_state_end (arg1 : xcb_input_bell_feedback_state_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:4645
   pragma Import (C, xcb_input_bell_feedback_state_end, "xcb_input_bell_feedback_state_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_input_led_feedback_state_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_input_led_feedback_state_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_input_led_feedback_state_next
  -- ** 
  -- ** @param xcb_input_led_feedback_state_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_input_led_feedback_state_next (arg1 : access xcb_input_led_feedback_state_iterator_t);  -- /usr/include/xcb/xinput.h:4666
   pragma Import (C, xcb_input_led_feedback_state_next, "xcb_input_led_feedback_state_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_input_led_feedback_state_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_led_feedback_state_end
  -- ** 
  -- ** @param xcb_input_led_feedback_state_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_led_feedback_state_end (arg1 : xcb_input_led_feedback_state_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:4688
   pragma Import (C, xcb_input_led_feedback_state_end, "xcb_input_led_feedback_state_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_input_feedback_ctl_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_input_feedback_ctl_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_input_feedback_ctl_next
  -- ** 
  -- ** @param xcb_input_feedback_ctl_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_input_feedback_ctl_next (arg1 : access xcb_input_feedback_ctl_iterator_t);  -- /usr/include/xcb/xinput.h:4709
   pragma Import (C, xcb_input_feedback_ctl_next, "xcb_input_feedback_ctl_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_input_feedback_ctl_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_feedback_ctl_end
  -- ** 
  -- ** @param xcb_input_feedback_ctl_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_feedback_ctl_end (arg1 : xcb_input_feedback_ctl_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:4731
   pragma Import (C, xcb_input_feedback_ctl_end, "xcb_input_feedback_ctl_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_input_kbd_feedback_ctl_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_input_kbd_feedback_ctl_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_input_kbd_feedback_ctl_next
  -- ** 
  -- ** @param xcb_input_kbd_feedback_ctl_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_input_kbd_feedback_ctl_next (arg1 : access xcb_input_kbd_feedback_ctl_iterator_t);  -- /usr/include/xcb/xinput.h:4752
   pragma Import (C, xcb_input_kbd_feedback_ctl_next, "xcb_input_kbd_feedback_ctl_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_input_kbd_feedback_ctl_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_kbd_feedback_ctl_end
  -- ** 
  -- ** @param xcb_input_kbd_feedback_ctl_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_kbd_feedback_ctl_end (arg1 : xcb_input_kbd_feedback_ctl_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:4774
   pragma Import (C, xcb_input_kbd_feedback_ctl_end, "xcb_input_kbd_feedback_ctl_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_input_ptr_feedback_ctl_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_input_ptr_feedback_ctl_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_input_ptr_feedback_ctl_next
  -- ** 
  -- ** @param xcb_input_ptr_feedback_ctl_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_input_ptr_feedback_ctl_next (arg1 : access xcb_input_ptr_feedback_ctl_iterator_t);  -- /usr/include/xcb/xinput.h:4795
   pragma Import (C, xcb_input_ptr_feedback_ctl_next, "xcb_input_ptr_feedback_ctl_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_input_ptr_feedback_ctl_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_ptr_feedback_ctl_end
  -- ** 
  -- ** @param xcb_input_ptr_feedback_ctl_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_ptr_feedback_ctl_end (arg1 : xcb_input_ptr_feedback_ctl_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:4817
   pragma Import (C, xcb_input_ptr_feedback_ctl_end, "xcb_input_ptr_feedback_ctl_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_input_integer_feedback_ctl_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_input_integer_feedback_ctl_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_input_integer_feedback_ctl_next
  -- ** 
  -- ** @param xcb_input_integer_feedback_ctl_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_input_integer_feedback_ctl_next (arg1 : access xcb_input_integer_feedback_ctl_iterator_t);  -- /usr/include/xcb/xinput.h:4838
   pragma Import (C, xcb_input_integer_feedback_ctl_next, "xcb_input_integer_feedback_ctl_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_input_integer_feedback_ctl_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_integer_feedback_ctl_end
  -- ** 
  -- ** @param xcb_input_integer_feedback_ctl_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_integer_feedback_ctl_end (arg1 : xcb_input_integer_feedback_ctl_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:4860
   pragma Import (C, xcb_input_integer_feedback_ctl_end, "xcb_input_integer_feedback_ctl_end");

  --*<  
   function xcb_input_string_feedback_ctl_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xinput.h:4863
   pragma Import (C, xcb_input_string_feedback_ctl_sizeof, "xcb_input_string_feedback_ctl_sizeof");

  --****************************************************************************
  -- **
  -- ** xcb_keysym_t * xcb_input_string_feedback_ctl_keysyms
  -- ** 
  -- ** @param const xcb_input_string_feedback_ctl_t *R
  -- ** @returns xcb_keysym_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_string_feedback_ctl_keysyms (arg1 : System.Address) return access xcb_xproto_h.xcb_keysym_t;  -- /usr/include/xcb/xinput.h:4876
   pragma Import (C, xcb_input_string_feedback_ctl_keysyms, "xcb_input_string_feedback_ctl_keysyms");

  --****************************************************************************
  -- **
  -- ** int xcb_input_string_feedback_ctl_keysyms_length
  -- ** 
  -- ** @param const xcb_input_string_feedback_ctl_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_string_feedback_ctl_keysyms_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xinput.h:4889
   pragma Import (C, xcb_input_string_feedback_ctl_keysyms_length, "xcb_input_string_feedback_ctl_keysyms_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_string_feedback_ctl_keysyms_end
  -- ** 
  -- ** @param const xcb_input_string_feedback_ctl_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_string_feedback_ctl_keysyms_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:4902
   pragma Import (C, xcb_input_string_feedback_ctl_keysyms_end, "xcb_input_string_feedback_ctl_keysyms_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_input_string_feedback_ctl_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_input_string_feedback_ctl_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_input_string_feedback_ctl_next
  -- ** 
  -- ** @param xcb_input_string_feedback_ctl_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_input_string_feedback_ctl_next (arg1 : access xcb_input_string_feedback_ctl_iterator_t);  -- /usr/include/xcb/xinput.h:4923
   pragma Import (C, xcb_input_string_feedback_ctl_next, "xcb_input_string_feedback_ctl_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_input_string_feedback_ctl_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_string_feedback_ctl_end
  -- ** 
  -- ** @param xcb_input_string_feedback_ctl_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_string_feedback_ctl_end (arg1 : xcb_input_string_feedback_ctl_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:4945
   pragma Import (C, xcb_input_string_feedback_ctl_end, "xcb_input_string_feedback_ctl_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_input_bell_feedback_ctl_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_input_bell_feedback_ctl_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_input_bell_feedback_ctl_next
  -- ** 
  -- ** @param xcb_input_bell_feedback_ctl_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_input_bell_feedback_ctl_next (arg1 : access xcb_input_bell_feedback_ctl_iterator_t);  -- /usr/include/xcb/xinput.h:4966
   pragma Import (C, xcb_input_bell_feedback_ctl_next, "xcb_input_bell_feedback_ctl_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_input_bell_feedback_ctl_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_bell_feedback_ctl_end
  -- ** 
  -- ** @param xcb_input_bell_feedback_ctl_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_bell_feedback_ctl_end (arg1 : xcb_input_bell_feedback_ctl_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:4988
   pragma Import (C, xcb_input_bell_feedback_ctl_end, "xcb_input_bell_feedback_ctl_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_input_led_feedback_ctl_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_input_led_feedback_ctl_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_input_led_feedback_ctl_next
  -- ** 
  -- ** @param xcb_input_led_feedback_ctl_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_input_led_feedback_ctl_next (arg1 : access xcb_input_led_feedback_ctl_iterator_t);  -- /usr/include/xcb/xinput.h:5009
   pragma Import (C, xcb_input_led_feedback_ctl_next, "xcb_input_led_feedback_ctl_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_input_led_feedback_ctl_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_led_feedback_ctl_end
  -- ** 
  -- ** @param xcb_input_led_feedback_ctl_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_led_feedback_ctl_end (arg1 : xcb_input_led_feedback_ctl_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:5031
   pragma Import (C, xcb_input_led_feedback_ctl_end, "xcb_input_led_feedback_ctl_end");

  --*<  
   function xcb_input_get_device_key_mapping_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xinput.h:5034
   pragma Import (C, xcb_input_get_device_key_mapping_sizeof, "xcb_input_get_device_key_mapping_sizeof");

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
  -- ** xcb_input_get_device_key_mapping_cookie_t xcb_input_get_device_key_mapping
  -- ** 
  -- ** @param xcb_connection_t     *c
  -- ** @param uint8_t               device_id
  -- ** @param xcb_input_key_code_t  first_keycode
  -- ** @param uint8_t               count
  -- ** @returns xcb_input_get_device_key_mapping_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_device_key_mapping
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_input_key_code_t;
      arg4 : stdint_h.uint8_t) return xcb_input_get_device_key_mapping_cookie_t;  -- /usr/include/xcb/xinput.h:5058
   pragma Import (C, xcb_input_get_device_key_mapping, "xcb_input_get_device_key_mapping");

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
  -- ** xcb_input_get_device_key_mapping_cookie_t xcb_input_get_device_key_mapping_unchecked
  -- ** 
  -- ** @param xcb_connection_t     *c
  -- ** @param uint8_t               device_id
  -- ** @param xcb_input_key_code_t  first_keycode
  -- ** @param uint8_t               count
  -- ** @returns xcb_input_get_device_key_mapping_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_device_key_mapping_unchecked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_input_key_code_t;
      arg4 : stdint_h.uint8_t) return xcb_input_get_device_key_mapping_cookie_t;  -- /usr/include/xcb/xinput.h:5088
   pragma Import (C, xcb_input_get_device_key_mapping_unchecked, "xcb_input_get_device_key_mapping_unchecked");

  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_keysym_t * xcb_input_get_device_key_mapping_keysyms
  -- ** 
  -- ** @param const xcb_input_get_device_key_mapping_reply_t *R
  -- ** @returns xcb_keysym_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_device_key_mapping_keysyms (arg1 : System.Address) return access xcb_xproto_h.xcb_keysym_t;  -- /usr/include/xcb/xinput.h:5104
   pragma Import (C, xcb_input_get_device_key_mapping_keysyms, "xcb_input_get_device_key_mapping_keysyms");

  --****************************************************************************
  -- **
  -- ** int xcb_input_get_device_key_mapping_keysyms_length
  -- ** 
  -- ** @param const xcb_input_get_device_key_mapping_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_device_key_mapping_keysyms_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xinput.h:5117
   pragma Import (C, xcb_input_get_device_key_mapping_keysyms_length, "xcb_input_get_device_key_mapping_keysyms_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_get_device_key_mapping_keysyms_end
  -- ** 
  -- ** @param const xcb_input_get_device_key_mapping_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_device_key_mapping_keysyms_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:5130
   pragma Import (C, xcb_input_get_device_key_mapping_keysyms_end, "xcb_input_get_device_key_mapping_keysyms_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_input_get_device_key_mapping_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_input_get_device_key_mapping_reply_t * xcb_input_get_device_key_mapping_reply
  -- ** 
  -- ** @param xcb_connection_t                           *c
  -- ** @param xcb_input_get_device_key_mapping_cookie_t   cookie
  -- ** @param xcb_generic_error_t                       **e
  -- ** @returns xcb_input_get_device_key_mapping_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_device_key_mapping_reply
     (arg1 : System.Address;
      arg2 : xcb_input_get_device_key_mapping_cookie_t;
      arg3 : System.Address) return access xcb_input_get_device_key_mapping_reply_t;  -- /usr/include/xcb/xinput.h:5159
   pragma Import (C, xcb_input_get_device_key_mapping_reply, "xcb_input_get_device_key_mapping_reply");

  --*<  
  --*<  
  --*<  
   function xcb_input_change_device_key_mapping_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xinput.h:5164
   pragma Import (C, xcb_input_change_device_key_mapping_sizeof, "xcb_input_change_device_key_mapping_sizeof");

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
  -- ** xcb_void_cookie_t xcb_input_change_device_key_mapping_checked
  -- ** 
  -- ** @param xcb_connection_t     *c
  -- ** @param uint8_t               device_id
  -- ** @param xcb_input_key_code_t  first_keycode
  -- ** @param uint8_t               keysyms_per_keycode
  -- ** @param uint8_t               keycode_count
  -- ** @param const xcb_keysym_t   *keysyms
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_change_device_key_mapping_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_input_key_code_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint8_t;
      arg6 : access xcb_xproto_h.xcb_keysym_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xinput.h:5193
   pragma Import (C, xcb_input_change_device_key_mapping_checked, "xcb_input_change_device_key_mapping_checked");

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
  -- ** xcb_void_cookie_t xcb_input_change_device_key_mapping
  -- ** 
  -- ** @param xcb_connection_t     *c
  -- ** @param uint8_t               device_id
  -- ** @param xcb_input_key_code_t  first_keycode
  -- ** @param uint8_t               keysyms_per_keycode
  -- ** @param uint8_t               keycode_count
  -- ** @param const xcb_keysym_t   *keysyms
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_change_device_key_mapping
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_input_key_code_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint8_t;
      arg6 : access xcb_xproto_h.xcb_keysym_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xinput.h:5224
   pragma Import (C, xcb_input_change_device_key_mapping, "xcb_input_change_device_key_mapping");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_input_get_device_modifier_mapping_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xinput.h:5232
   pragma Import (C, xcb_input_get_device_modifier_mapping_sizeof, "xcb_input_get_device_modifier_mapping_sizeof");

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
  -- ** xcb_input_get_device_modifier_mapping_cookie_t xcb_input_get_device_modifier_mapping
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           device_id
  -- ** @returns xcb_input_get_device_modifier_mapping_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_device_modifier_mapping (arg1 : System.Address; arg2 : stdint_h.uint8_t) return xcb_input_get_device_modifier_mapping_cookie_t;  -- /usr/include/xcb/xinput.h:5254
   pragma Import (C, xcb_input_get_device_modifier_mapping, "xcb_input_get_device_modifier_mapping");

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
  -- ** xcb_input_get_device_modifier_mapping_cookie_t xcb_input_get_device_modifier_mapping_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           device_id
  -- ** @returns xcb_input_get_device_modifier_mapping_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_device_modifier_mapping_unchecked (arg1 : System.Address; arg2 : stdint_h.uint8_t) return xcb_input_get_device_modifier_mapping_cookie_t;  -- /usr/include/xcb/xinput.h:5280
   pragma Import (C, xcb_input_get_device_modifier_mapping_unchecked, "xcb_input_get_device_modifier_mapping_unchecked");

  --*<  
  --****************************************************************************
  -- **
  -- ** uint8_t * xcb_input_get_device_modifier_mapping_keymaps
  -- ** 
  -- ** @param const xcb_input_get_device_modifier_mapping_reply_t *R
  -- ** @returns uint8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_device_modifier_mapping_keymaps (arg1 : System.Address) return access stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:5294
   pragma Import (C, xcb_input_get_device_modifier_mapping_keymaps, "xcb_input_get_device_modifier_mapping_keymaps");

  --****************************************************************************
  -- **
  -- ** int xcb_input_get_device_modifier_mapping_keymaps_length
  -- ** 
  -- ** @param const xcb_input_get_device_modifier_mapping_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_device_modifier_mapping_keymaps_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xinput.h:5307
   pragma Import (C, xcb_input_get_device_modifier_mapping_keymaps_length, "xcb_input_get_device_modifier_mapping_keymaps_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_get_device_modifier_mapping_keymaps_end
  -- ** 
  -- ** @param const xcb_input_get_device_modifier_mapping_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_device_modifier_mapping_keymaps_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:5320
   pragma Import (C, xcb_input_get_device_modifier_mapping_keymaps_end, "xcb_input_get_device_modifier_mapping_keymaps_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_input_get_device_modifier_mapping_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_input_get_device_modifier_mapping_reply_t * xcb_input_get_device_modifier_mapping_reply
  -- ** 
  -- ** @param xcb_connection_t                                *c
  -- ** @param xcb_input_get_device_modifier_mapping_cookie_t   cookie
  -- ** @param xcb_generic_error_t                            **e
  -- ** @returns xcb_input_get_device_modifier_mapping_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_device_modifier_mapping_reply
     (arg1 : System.Address;
      arg2 : xcb_input_get_device_modifier_mapping_cookie_t;
      arg3 : System.Address) return access xcb_input_get_device_modifier_mapping_reply_t;  -- /usr/include/xcb/xinput.h:5349
   pragma Import (C, xcb_input_get_device_modifier_mapping_reply, "xcb_input_get_device_modifier_mapping_reply");

  --*<  
  --*<  
  --*<  
   function xcb_input_set_device_modifier_mapping_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xinput.h:5354
   pragma Import (C, xcb_input_set_device_modifier_mapping_sizeof, "xcb_input_set_device_modifier_mapping_sizeof");

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
  -- ** xcb_input_set_device_modifier_mapping_cookie_t xcb_input_set_device_modifier_mapping
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           device_id
  -- ** @param uint8_t           keycodes_per_modifier
  -- ** @param const uint8_t    *keymaps
  -- ** @returns xcb_input_set_device_modifier_mapping_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_set_device_modifier_mapping
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint8_t;
      arg4 : access stdint_h.uint8_t) return xcb_input_set_device_modifier_mapping_cookie_t;  -- /usr/include/xcb/xinput.h:5378
   pragma Import (C, xcb_input_set_device_modifier_mapping, "xcb_input_set_device_modifier_mapping");

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
  -- ** xcb_input_set_device_modifier_mapping_cookie_t xcb_input_set_device_modifier_mapping_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           device_id
  -- ** @param uint8_t           keycodes_per_modifier
  -- ** @param const uint8_t    *keymaps
  -- ** @returns xcb_input_set_device_modifier_mapping_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_set_device_modifier_mapping_unchecked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint8_t;
      arg4 : access stdint_h.uint8_t) return xcb_input_set_device_modifier_mapping_cookie_t;  -- /usr/include/xcb/xinput.h:5408
   pragma Import (C, xcb_input_set_device_modifier_mapping_unchecked, "xcb_input_set_device_modifier_mapping_unchecked");

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
  -- * xcb_input_set_device_modifier_mapping_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_input_set_device_modifier_mapping_reply_t * xcb_input_set_device_modifier_mapping_reply
  -- ** 
  -- ** @param xcb_connection_t                                *c
  -- ** @param xcb_input_set_device_modifier_mapping_cookie_t   cookie
  -- ** @param xcb_generic_error_t                            **e
  -- ** @returns xcb_input_set_device_modifier_mapping_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_set_device_modifier_mapping_reply
     (arg1 : System.Address;
      arg2 : xcb_input_set_device_modifier_mapping_cookie_t;
      arg3 : System.Address) return access xcb_input_set_device_modifier_mapping_reply_t;  -- /usr/include/xcb/xinput.h:5440
   pragma Import (C, xcb_input_set_device_modifier_mapping_reply, "xcb_input_set_device_modifier_mapping_reply");

  --*<  
  --*<  
  --*<  
   function xcb_input_get_device_button_mapping_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xinput.h:5445
   pragma Import (C, xcb_input_get_device_button_mapping_sizeof, "xcb_input_get_device_button_mapping_sizeof");

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
  -- ** xcb_input_get_device_button_mapping_cookie_t xcb_input_get_device_button_mapping
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           device_id
  -- ** @returns xcb_input_get_device_button_mapping_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_device_button_mapping (arg1 : System.Address; arg2 : stdint_h.uint8_t) return xcb_input_get_device_button_mapping_cookie_t;  -- /usr/include/xcb/xinput.h:5467
   pragma Import (C, xcb_input_get_device_button_mapping, "xcb_input_get_device_button_mapping");

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
  -- ** xcb_input_get_device_button_mapping_cookie_t xcb_input_get_device_button_mapping_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           device_id
  -- ** @returns xcb_input_get_device_button_mapping_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_device_button_mapping_unchecked (arg1 : System.Address; arg2 : stdint_h.uint8_t) return xcb_input_get_device_button_mapping_cookie_t;  -- /usr/include/xcb/xinput.h:5493
   pragma Import (C, xcb_input_get_device_button_mapping_unchecked, "xcb_input_get_device_button_mapping_unchecked");

  --*<  
  --****************************************************************************
  -- **
  -- ** uint8_t * xcb_input_get_device_button_mapping_map
  -- ** 
  -- ** @param const xcb_input_get_device_button_mapping_reply_t *R
  -- ** @returns uint8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_device_button_mapping_map (arg1 : System.Address) return access stdint_h.uint8_t;  -- /usr/include/xcb/xinput.h:5507
   pragma Import (C, xcb_input_get_device_button_mapping_map, "xcb_input_get_device_button_mapping_map");

  --****************************************************************************
  -- **
  -- ** int xcb_input_get_device_button_mapping_map_length
  -- ** 
  -- ** @param const xcb_input_get_device_button_mapping_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_device_button_mapping_map_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xinput.h:5520
   pragma Import (C, xcb_input_get_device_button_mapping_map_length, "xcb_input_get_device_button_mapping_map_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_get_device_button_mapping_map_end
  -- ** 
  -- ** @param const xcb_input_get_device_button_mapping_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_device_button_mapping_map_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:5533
   pragma Import (C, xcb_input_get_device_button_mapping_map_end, "xcb_input_get_device_button_mapping_map_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_input_get_device_button_mapping_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_input_get_device_button_mapping_reply_t * xcb_input_get_device_button_mapping_reply
  -- ** 
  -- ** @param xcb_connection_t                              *c
  -- ** @param xcb_input_get_device_button_mapping_cookie_t   cookie
  -- ** @param xcb_generic_error_t                          **e
  -- ** @returns xcb_input_get_device_button_mapping_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_device_button_mapping_reply
     (arg1 : System.Address;
      arg2 : xcb_input_get_device_button_mapping_cookie_t;
      arg3 : System.Address) return access xcb_input_get_device_button_mapping_reply_t;  -- /usr/include/xcb/xinput.h:5562
   pragma Import (C, xcb_input_get_device_button_mapping_reply, "xcb_input_get_device_button_mapping_reply");

  --*<  
  --*<  
  --*<  
   function xcb_input_set_device_button_mapping_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xinput.h:5567
   pragma Import (C, xcb_input_set_device_button_mapping_sizeof, "xcb_input_set_device_button_mapping_sizeof");

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
  -- ** xcb_input_set_device_button_mapping_cookie_t xcb_input_set_device_button_mapping
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           device_id
  -- ** @param uint8_t           map_size
  -- ** @param const uint8_t    *map
  -- ** @returns xcb_input_set_device_button_mapping_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_set_device_button_mapping
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint8_t;
      arg4 : access stdint_h.uint8_t) return xcb_input_set_device_button_mapping_cookie_t;  -- /usr/include/xcb/xinput.h:5591
   pragma Import (C, xcb_input_set_device_button_mapping, "xcb_input_set_device_button_mapping");

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
  -- ** xcb_input_set_device_button_mapping_cookie_t xcb_input_set_device_button_mapping_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           device_id
  -- ** @param uint8_t           map_size
  -- ** @param const uint8_t    *map
  -- ** @returns xcb_input_set_device_button_mapping_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_set_device_button_mapping_unchecked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint8_t;
      arg4 : access stdint_h.uint8_t) return xcb_input_set_device_button_mapping_cookie_t;  -- /usr/include/xcb/xinput.h:5621
   pragma Import (C, xcb_input_set_device_button_mapping_unchecked, "xcb_input_set_device_button_mapping_unchecked");

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
  -- * xcb_input_set_device_button_mapping_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_input_set_device_button_mapping_reply_t * xcb_input_set_device_button_mapping_reply
  -- ** 
  -- ** @param xcb_connection_t                              *c
  -- ** @param xcb_input_set_device_button_mapping_cookie_t   cookie
  -- ** @param xcb_generic_error_t                          **e
  -- ** @returns xcb_input_set_device_button_mapping_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_set_device_button_mapping_reply
     (arg1 : System.Address;
      arg2 : xcb_input_set_device_button_mapping_cookie_t;
      arg3 : System.Address) return access xcb_input_set_device_button_mapping_reply_t;  -- /usr/include/xcb/xinput.h:5653
   pragma Import (C, xcb_input_set_device_button_mapping_reply, "xcb_input_set_device_button_mapping_reply");

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
  -- ** xcb_input_query_device_state_cookie_t xcb_input_query_device_state
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           device_id
  -- ** @returns xcb_input_query_device_state_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_query_device_state (arg1 : System.Address; arg2 : stdint_h.uint8_t) return xcb_input_query_device_state_cookie_t;  -- /usr/include/xcb/xinput.h:5677
   pragma Import (C, xcb_input_query_device_state, "xcb_input_query_device_state");

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
  -- ** xcb_input_query_device_state_cookie_t xcb_input_query_device_state_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           device_id
  -- ** @returns xcb_input_query_device_state_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_query_device_state_unchecked (arg1 : System.Address; arg2 : stdint_h.uint8_t) return xcb_input_query_device_state_cookie_t;  -- /usr/include/xcb/xinput.h:5703
   pragma Import (C, xcb_input_query_device_state_unchecked, "xcb_input_query_device_state_unchecked");

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
  -- * xcb_input_query_device_state_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_input_query_device_state_reply_t * xcb_input_query_device_state_reply
  -- ** 
  -- ** @param xcb_connection_t                       *c
  -- ** @param xcb_input_query_device_state_cookie_t   cookie
  -- ** @param xcb_generic_error_t                   **e
  -- ** @returns xcb_input_query_device_state_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_query_device_state_reply
     (arg1 : System.Address;
      arg2 : xcb_input_query_device_state_cookie_t;
      arg3 : System.Address) return access xcb_input_query_device_state_reply_t;  -- /usr/include/xcb/xinput.h:5733
   pragma Import (C, xcb_input_query_device_state_reply, "xcb_input_query_device_state_reply");

  --*<  
  --*<  
  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_input_input_state_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_input_input_state_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_input_input_state_next
  -- ** 
  -- ** @param xcb_input_input_state_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_input_input_state_next (arg1 : access xcb_input_input_state_iterator_t);  -- /usr/include/xcb/xinput.h:5756
   pragma Import (C, xcb_input_input_state_next, "xcb_input_input_state_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_input_input_state_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_input_state_end
  -- ** 
  -- ** @param xcb_input_input_state_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_input_state_end (arg1 : xcb_input_input_state_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:5778
   pragma Import (C, xcb_input_input_state_end, "xcb_input_input_state_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_input_key_state_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_input_key_state_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_input_key_state_next
  -- ** 
  -- ** @param xcb_input_key_state_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_input_key_state_next (arg1 : access xcb_input_key_state_iterator_t);  -- /usr/include/xcb/xinput.h:5799
   pragma Import (C, xcb_input_key_state_next, "xcb_input_key_state_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_input_key_state_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_key_state_end
  -- ** 
  -- ** @param xcb_input_key_state_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_key_state_end (arg1 : xcb_input_key_state_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:5821
   pragma Import (C, xcb_input_key_state_end, "xcb_input_key_state_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_input_button_state_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_input_button_state_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_input_button_state_next
  -- ** 
  -- ** @param xcb_input_button_state_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_input_button_state_next (arg1 : access xcb_input_button_state_iterator_t);  -- /usr/include/xcb/xinput.h:5842
   pragma Import (C, xcb_input_button_state_next, "xcb_input_button_state_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_input_button_state_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_button_state_end
  -- ** 
  -- ** @param xcb_input_button_state_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_button_state_end (arg1 : xcb_input_button_state_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:5864
   pragma Import (C, xcb_input_button_state_end, "xcb_input_button_state_end");

  --*<  
   function xcb_input_valuator_state_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xinput.h:5867
   pragma Import (C, xcb_input_valuator_state_sizeof, "xcb_input_valuator_state_sizeof");

  --****************************************************************************
  -- **
  -- ** uint32_t * xcb_input_valuator_state_valuators
  -- ** 
  -- ** @param const xcb_input_valuator_state_t *R
  -- ** @returns uint32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_valuator_state_valuators (arg1 : System.Address) return access stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:5880
   pragma Import (C, xcb_input_valuator_state_valuators, "xcb_input_valuator_state_valuators");

  --****************************************************************************
  -- **
  -- ** int xcb_input_valuator_state_valuators_length
  -- ** 
  -- ** @param const xcb_input_valuator_state_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_valuator_state_valuators_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xinput.h:5893
   pragma Import (C, xcb_input_valuator_state_valuators_length, "xcb_input_valuator_state_valuators_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_valuator_state_valuators_end
  -- ** 
  -- ** @param const xcb_input_valuator_state_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_valuator_state_valuators_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:5906
   pragma Import (C, xcb_input_valuator_state_valuators_end, "xcb_input_valuator_state_valuators_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_input_valuator_state_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_input_valuator_state_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_input_valuator_state_next
  -- ** 
  -- ** @param xcb_input_valuator_state_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_input_valuator_state_next (arg1 : access xcb_input_valuator_state_iterator_t);  -- /usr/include/xcb/xinput.h:5927
   pragma Import (C, xcb_input_valuator_state_next, "xcb_input_valuator_state_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_input_valuator_state_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_valuator_state_end
  -- ** 
  -- ** @param xcb_input_valuator_state_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_valuator_state_end (arg1 : xcb_input_valuator_state_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:5949
   pragma Import (C, xcb_input_valuator_state_end, "xcb_input_valuator_state_end");

  --*<  
   function xcb_input_send_extension_event_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xinput.h:5952
   pragma Import (C, xcb_input_send_extension_event_sizeof, "xcb_input_send_extension_event_sizeof");

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
  -- ** xcb_void_cookie_t xcb_input_send_extension_event_checked
  -- ** 
  -- ** @param xcb_connection_t              *c
  -- ** @param xcb_window_t                   destination
  -- ** @param uint8_t                        device_id
  -- ** @param uint8_t                        propagate
  -- ** @param uint16_t                       num_classes
  -- ** @param uint8_t                        num_events
  -- ** @param const char                    *events
  -- ** @param const xcb_input_event_class_t *classes
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_send_extension_event_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint8_t;
      arg7 : Interfaces.C.Strings.chars_ptr;
      arg8 : access xcb_input_event_class_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xinput.h:5983
   pragma Import (C, xcb_input_send_extension_event_checked, "xcb_input_send_extension_event_checked");

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
  -- ** xcb_void_cookie_t xcb_input_send_extension_event
  -- ** 
  -- ** @param xcb_connection_t              *c
  -- ** @param xcb_window_t                   destination
  -- ** @param uint8_t                        device_id
  -- ** @param uint8_t                        propagate
  -- ** @param uint16_t                       num_classes
  -- ** @param uint8_t                        num_events
  -- ** @param const char                    *events
  -- ** @param const xcb_input_event_class_t *classes
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_send_extension_event
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint8_t;
      arg7 : Interfaces.C.Strings.chars_ptr;
      arg8 : access xcb_input_event_class_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xinput.h:6018
   pragma Import (C, xcb_input_send_extension_event, "xcb_input_send_extension_event");

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
  -- ** xcb_void_cookie_t xcb_input_device_bell_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           device_id
  -- ** @param uint8_t           feedback_id
  -- ** @param uint8_t           feedback_class
  -- ** @param int8_t            percent
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_device_bell_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint8_t;
      arg5 : sys_types_h.int8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xinput.h:6053
   pragma Import (C, xcb_input_device_bell_checked, "xcb_input_device_bell_checked");

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
  -- ** xcb_void_cookie_t xcb_input_device_bell
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           device_id
  -- ** @param uint8_t           feedback_id
  -- ** @param uint8_t           feedback_class
  -- ** @param int8_t            percent
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_device_bell
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint8_t;
      arg5 : sys_types_h.int8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xinput.h:6082
   pragma Import (C, xcb_input_device_bell, "xcb_input_device_bell");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_input_set_device_valuators_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xinput.h:6089
   pragma Import (C, xcb_input_set_device_valuators_sizeof, "xcb_input_set_device_valuators_sizeof");

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
  -- ** xcb_input_set_device_valuators_cookie_t xcb_input_set_device_valuators
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           device_id
  -- ** @param uint8_t           first_valuator
  -- ** @param uint8_t           num_valuators
  -- ** @param const int32_t    *valuators
  -- ** @returns xcb_input_set_device_valuators_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_set_device_valuators
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint8_t;
      arg5 : access sys_types_h.int32_t) return xcb_input_set_device_valuators_cookie_t;  -- /usr/include/xcb/xinput.h:6114
   pragma Import (C, xcb_input_set_device_valuators, "xcb_input_set_device_valuators");

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
  -- ** xcb_input_set_device_valuators_cookie_t xcb_input_set_device_valuators_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           device_id
  -- ** @param uint8_t           first_valuator
  -- ** @param uint8_t           num_valuators
  -- ** @param const int32_t    *valuators
  -- ** @returns xcb_input_set_device_valuators_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_set_device_valuators_unchecked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint8_t;
      arg4 : stdint_h.uint8_t;
      arg5 : access sys_types_h.int32_t) return xcb_input_set_device_valuators_cookie_t;  -- /usr/include/xcb/xinput.h:6146
   pragma Import (C, xcb_input_set_device_valuators_unchecked, "xcb_input_set_device_valuators_unchecked");

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
  -- * xcb_input_set_device_valuators_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_input_set_device_valuators_reply_t * xcb_input_set_device_valuators_reply
  -- ** 
  -- ** @param xcb_connection_t                         *c
  -- ** @param xcb_input_set_device_valuators_cookie_t   cookie
  -- ** @param xcb_generic_error_t                     **e
  -- ** @returns xcb_input_set_device_valuators_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_set_device_valuators_reply
     (arg1 : System.Address;
      arg2 : xcb_input_set_device_valuators_cookie_t;
      arg3 : System.Address) return access xcb_input_set_device_valuators_reply_t;  -- /usr/include/xcb/xinput.h:6179
   pragma Import (C, xcb_input_set_device_valuators_reply, "xcb_input_set_device_valuators_reply");

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
  -- ** xcb_input_get_device_control_cookie_t xcb_input_get_device_control
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint16_t          control_id
  -- ** @param uint8_t           device_id
  -- ** @returns xcb_input_get_device_control_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_device_control
     (arg1 : System.Address;
      arg2 : stdint_h.uint16_t;
      arg3 : stdint_h.uint8_t) return xcb_input_get_device_control_cookie_t;  -- /usr/include/xcb/xinput.h:6204
   pragma Import (C, xcb_input_get_device_control, "xcb_input_get_device_control");

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
  -- ** xcb_input_get_device_control_cookie_t xcb_input_get_device_control_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint16_t          control_id
  -- ** @param uint8_t           device_id
  -- ** @returns xcb_input_get_device_control_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_device_control_unchecked
     (arg1 : System.Address;
      arg2 : stdint_h.uint16_t;
      arg3 : stdint_h.uint8_t) return xcb_input_get_device_control_cookie_t;  -- /usr/include/xcb/xinput.h:6232
   pragma Import (C, xcb_input_get_device_control_unchecked, "xcb_input_get_device_control_unchecked");

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
  -- * xcb_input_get_device_control_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_input_get_device_control_reply_t * xcb_input_get_device_control_reply
  -- ** 
  -- ** @param xcb_connection_t                       *c
  -- ** @param xcb_input_get_device_control_cookie_t   cookie
  -- ** @param xcb_generic_error_t                   **e
  -- ** @returns xcb_input_get_device_control_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_get_device_control_reply
     (arg1 : System.Address;
      arg2 : xcb_input_get_device_control_cookie_t;
      arg3 : System.Address) return access xcb_input_get_device_control_reply_t;  -- /usr/include/xcb/xinput.h:6263
   pragma Import (C, xcb_input_get_device_control_reply, "xcb_input_get_device_control_reply");

  --*<  
  --*<  
  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_input_device_state_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_input_device_state_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_input_device_state_next
  -- ** 
  -- ** @param xcb_input_device_state_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_input_device_state_next (arg1 : access xcb_input_device_state_iterator_t);  -- /usr/include/xcb/xinput.h:6286
   pragma Import (C, xcb_input_device_state_next, "xcb_input_device_state_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_input_device_state_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_device_state_end
  -- ** 
  -- ** @param xcb_input_device_state_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_device_state_end (arg1 : xcb_input_device_state_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:6308
   pragma Import (C, xcb_input_device_state_end, "xcb_input_device_state_end");

  --*<  
   function xcb_input_device_resolution_state_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xinput.h:6311
   pragma Import (C, xcb_input_device_resolution_state_sizeof, "xcb_input_device_resolution_state_sizeof");

  --****************************************************************************
  -- **
  -- ** uint32_t * xcb_input_device_resolution_state_resolution_values
  -- ** 
  -- ** @param const xcb_input_device_resolution_state_t *R
  -- ** @returns uint32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_device_resolution_state_resolution_values (arg1 : System.Address) return access stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:6324
   pragma Import (C, xcb_input_device_resolution_state_resolution_values, "xcb_input_device_resolution_state_resolution_values");

  --****************************************************************************
  -- **
  -- ** int xcb_input_device_resolution_state_resolution_values_length
  -- ** 
  -- ** @param const xcb_input_device_resolution_state_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_device_resolution_state_resolution_values_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xinput.h:6337
   pragma Import (C, xcb_input_device_resolution_state_resolution_values_length, "xcb_input_device_resolution_state_resolution_values_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_device_resolution_state_resolution_values_end
  -- ** 
  -- ** @param const xcb_input_device_resolution_state_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_device_resolution_state_resolution_values_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:6350
   pragma Import (C, xcb_input_device_resolution_state_resolution_values_end, "xcb_input_device_resolution_state_resolution_values_end");

  --****************************************************************************
  -- **
  -- ** uint32_t * xcb_input_device_resolution_state_resolution_min
  -- ** 
  -- ** @param const xcb_input_device_resolution_state_t *R
  -- ** @returns uint32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_device_resolution_state_resolution_min (arg1 : System.Address) return access stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:6363
   pragma Import (C, xcb_input_device_resolution_state_resolution_min, "xcb_input_device_resolution_state_resolution_min");

  --****************************************************************************
  -- **
  -- ** int xcb_input_device_resolution_state_resolution_min_length
  -- ** 
  -- ** @param const xcb_input_device_resolution_state_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_device_resolution_state_resolution_min_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xinput.h:6376
   pragma Import (C, xcb_input_device_resolution_state_resolution_min_length, "xcb_input_device_resolution_state_resolution_min_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_device_resolution_state_resolution_min_end
  -- ** 
  -- ** @param const xcb_input_device_resolution_state_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_device_resolution_state_resolution_min_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:6389
   pragma Import (C, xcb_input_device_resolution_state_resolution_min_end, "xcb_input_device_resolution_state_resolution_min_end");

  --****************************************************************************
  -- **
  -- ** uint32_t * xcb_input_device_resolution_state_resolution_max
  -- ** 
  -- ** @param const xcb_input_device_resolution_state_t *R
  -- ** @returns uint32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_device_resolution_state_resolution_max (arg1 : System.Address) return access stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:6402
   pragma Import (C, xcb_input_device_resolution_state_resolution_max, "xcb_input_device_resolution_state_resolution_max");

  --****************************************************************************
  -- **
  -- ** int xcb_input_device_resolution_state_resolution_max_length
  -- ** 
  -- ** @param const xcb_input_device_resolution_state_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_device_resolution_state_resolution_max_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xinput.h:6415
   pragma Import (C, xcb_input_device_resolution_state_resolution_max_length, "xcb_input_device_resolution_state_resolution_max_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_device_resolution_state_resolution_max_end
  -- ** 
  -- ** @param const xcb_input_device_resolution_state_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_device_resolution_state_resolution_max_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:6428
   pragma Import (C, xcb_input_device_resolution_state_resolution_max_end, "xcb_input_device_resolution_state_resolution_max_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_input_device_resolution_state_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_input_device_resolution_state_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_input_device_resolution_state_next
  -- ** 
  -- ** @param xcb_input_device_resolution_state_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_input_device_resolution_state_next (arg1 : access xcb_input_device_resolution_state_iterator_t);  -- /usr/include/xcb/xinput.h:6449
   pragma Import (C, xcb_input_device_resolution_state_next, "xcb_input_device_resolution_state_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_input_device_resolution_state_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_device_resolution_state_end
  -- ** 
  -- ** @param xcb_input_device_resolution_state_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_device_resolution_state_end (arg1 : xcb_input_device_resolution_state_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:6471
   pragma Import (C, xcb_input_device_resolution_state_end, "xcb_input_device_resolution_state_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_input_device_abs_calib_state_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_input_device_abs_calib_state_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_input_device_abs_calib_state_next
  -- ** 
  -- ** @param xcb_input_device_abs_calib_state_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_input_device_abs_calib_state_next (arg1 : access xcb_input_device_abs_calib_state_iterator_t);  -- /usr/include/xcb/xinput.h:6492
   pragma Import (C, xcb_input_device_abs_calib_state_next, "xcb_input_device_abs_calib_state_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_input_device_abs_calib_state_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_device_abs_calib_state_end
  -- ** 
  -- ** @param xcb_input_device_abs_calib_state_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_device_abs_calib_state_end (arg1 : xcb_input_device_abs_calib_state_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:6514
   pragma Import (C, xcb_input_device_abs_calib_state_end, "xcb_input_device_abs_calib_state_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_input_device_abs_area_state_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_input_device_abs_area_state_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_input_device_abs_area_state_next
  -- ** 
  -- ** @param xcb_input_device_abs_area_state_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_input_device_abs_area_state_next (arg1 : access xcb_input_device_abs_area_state_iterator_t);  -- /usr/include/xcb/xinput.h:6535
   pragma Import (C, xcb_input_device_abs_area_state_next, "xcb_input_device_abs_area_state_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_input_device_abs_area_state_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_device_abs_area_state_end
  -- ** 
  -- ** @param xcb_input_device_abs_area_state_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_device_abs_area_state_end (arg1 : xcb_input_device_abs_area_state_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:6557
   pragma Import (C, xcb_input_device_abs_area_state_end, "xcb_input_device_abs_area_state_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_input_device_core_state_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_input_device_core_state_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_input_device_core_state_next
  -- ** 
  -- ** @param xcb_input_device_core_state_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_input_device_core_state_next (arg1 : access xcb_input_device_core_state_iterator_t);  -- /usr/include/xcb/xinput.h:6578
   pragma Import (C, xcb_input_device_core_state_next, "xcb_input_device_core_state_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_input_device_core_state_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_device_core_state_end
  -- ** 
  -- ** @param xcb_input_device_core_state_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_device_core_state_end (arg1 : xcb_input_device_core_state_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:6600
   pragma Import (C, xcb_input_device_core_state_end, "xcb_input_device_core_state_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_input_device_enable_state_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_input_device_enable_state_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_input_device_enable_state_next
  -- ** 
  -- ** @param xcb_input_device_enable_state_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_input_device_enable_state_next (arg1 : access xcb_input_device_enable_state_iterator_t);  -- /usr/include/xcb/xinput.h:6621
   pragma Import (C, xcb_input_device_enable_state_next, "xcb_input_device_enable_state_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_input_device_enable_state_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_device_enable_state_end
  -- ** 
  -- ** @param xcb_input_device_enable_state_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_device_enable_state_end (arg1 : xcb_input_device_enable_state_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:6643
   pragma Import (C, xcb_input_device_enable_state_end, "xcb_input_device_enable_state_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_input_device_ctl_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_input_device_ctl_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_input_device_ctl_next
  -- ** 
  -- ** @param xcb_input_device_ctl_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_input_device_ctl_next (arg1 : access xcb_input_device_ctl_iterator_t);  -- /usr/include/xcb/xinput.h:6664
   pragma Import (C, xcb_input_device_ctl_next, "xcb_input_device_ctl_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_input_device_ctl_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_device_ctl_end
  -- ** 
  -- ** @param xcb_input_device_ctl_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_device_ctl_end (arg1 : xcb_input_device_ctl_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:6686
   pragma Import (C, xcb_input_device_ctl_end, "xcb_input_device_ctl_end");

  --*<  
   function xcb_input_device_resolution_ctl_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/xinput.h:6689
   pragma Import (C, xcb_input_device_resolution_ctl_sizeof, "xcb_input_device_resolution_ctl_sizeof");

  --****************************************************************************
  -- **
  -- ** uint32_t * xcb_input_device_resolution_ctl_resolution_values
  -- ** 
  -- ** @param const xcb_input_device_resolution_ctl_t *R
  -- ** @returns uint32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_device_resolution_ctl_resolution_values (arg1 : System.Address) return access stdint_h.uint32_t;  -- /usr/include/xcb/xinput.h:6702
   pragma Import (C, xcb_input_device_resolution_ctl_resolution_values, "xcb_input_device_resolution_ctl_resolution_values");

  --****************************************************************************
  -- **
  -- ** int xcb_input_device_resolution_ctl_resolution_values_length
  -- ** 
  -- ** @param const xcb_input_device_resolution_ctl_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_device_resolution_ctl_resolution_values_length (arg1 : System.Address) return int;  -- /usr/include/xcb/xinput.h:6715
   pragma Import (C, xcb_input_device_resolution_ctl_resolution_values_length, "xcb_input_device_resolution_ctl_resolution_values_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_device_resolution_ctl_resolution_values_end
  -- ** 
  -- ** @param const xcb_input_device_resolution_ctl_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_device_resolution_ctl_resolution_values_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:6728
   pragma Import (C, xcb_input_device_resolution_ctl_resolution_values_end, "xcb_input_device_resolution_ctl_resolution_values_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_input_device_resolution_ctl_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_input_device_resolution_ctl_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_input_device_resolution_ctl_next
  -- ** 
  -- ** @param xcb_input_device_resolution_ctl_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_input_device_resolution_ctl_next (arg1 : access xcb_input_device_resolution_ctl_iterator_t);  -- /usr/include/xcb/xinput.h:6749
   pragma Import (C, xcb_input_device_resolution_ctl_next, "xcb_input_device_resolution_ctl_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_input_device_resolution_ctl_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_device_resolution_ctl_end
  -- ** 
  -- ** @param xcb_input_device_resolution_ctl_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_device_resolution_ctl_end (arg1 : xcb_input_device_resolution_ctl_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:6771
   pragma Import (C, xcb_input_device_resolution_ctl_end, "xcb_input_device_resolution_ctl_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_input_device_abs_calib_ctl_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_input_device_abs_calib_ctl_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_input_device_abs_calib_ctl_next
  -- ** 
  -- ** @param xcb_input_device_abs_calib_ctl_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_input_device_abs_calib_ctl_next (arg1 : access xcb_input_device_abs_calib_ctl_iterator_t);  -- /usr/include/xcb/xinput.h:6792
   pragma Import (C, xcb_input_device_abs_calib_ctl_next, "xcb_input_device_abs_calib_ctl_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_input_device_abs_calib_ctl_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_device_abs_calib_ctl_end
  -- ** 
  -- ** @param xcb_input_device_abs_calib_ctl_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_device_abs_calib_ctl_end (arg1 : xcb_input_device_abs_calib_ctl_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:6814
   pragma Import (C, xcb_input_device_abs_calib_ctl_end, "xcb_input_device_abs_calib_ctl_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_input_device_abs_area_ctrl_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_input_device_abs_area_ctrl_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_input_device_abs_area_ctrl_next
  -- ** 
  -- ** @param xcb_input_device_abs_area_ctrl_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_input_device_abs_area_ctrl_next (arg1 : access xcb_input_device_abs_area_ctrl_iterator_t);  -- /usr/include/xcb/xinput.h:6835
   pragma Import (C, xcb_input_device_abs_area_ctrl_next, "xcb_input_device_abs_area_ctrl_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_input_device_abs_area_ctrl_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_device_abs_area_ctrl_end
  -- ** 
  -- ** @param xcb_input_device_abs_area_ctrl_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_device_abs_area_ctrl_end (arg1 : xcb_input_device_abs_area_ctrl_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:6857
   pragma Import (C, xcb_input_device_abs_area_ctrl_end, "xcb_input_device_abs_area_ctrl_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_input_device_core_ctrl_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_input_device_core_ctrl_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_input_device_core_ctrl_next
  -- ** 
  -- ** @param xcb_input_device_core_ctrl_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_input_device_core_ctrl_next (arg1 : access xcb_input_device_core_ctrl_iterator_t);  -- /usr/include/xcb/xinput.h:6878
   pragma Import (C, xcb_input_device_core_ctrl_next, "xcb_input_device_core_ctrl_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_input_device_core_ctrl_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_device_core_ctrl_end
  -- ** 
  -- ** @param xcb_input_device_core_ctrl_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_device_core_ctrl_end (arg1 : xcb_input_device_core_ctrl_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:6900
   pragma Import (C, xcb_input_device_core_ctrl_end, "xcb_input_device_core_ctrl_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_input_device_enable_ctrl_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_input_device_enable_ctrl_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_input_device_enable_ctrl_next
  -- ** 
  -- ** @param xcb_input_device_enable_ctrl_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_input_device_enable_ctrl_next (arg1 : access xcb_input_device_enable_ctrl_iterator_t);  -- /usr/include/xcb/xinput.h:6921
   pragma Import (C, xcb_input_device_enable_ctrl_next, "xcb_input_device_enable_ctrl_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_input_device_enable_ctrl_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_input_device_enable_ctrl_end
  -- ** 
  -- ** @param xcb_input_device_enable_ctrl_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_input_device_enable_ctrl_end (arg1 : xcb_input_device_enable_ctrl_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/xinput.h:6943
   pragma Import (C, xcb_input_device_enable_ctrl_end, "xcb_input_device_enable_ctrl_end");

  --*
  -- * @}
  --  

end xcb_xinput_h;
