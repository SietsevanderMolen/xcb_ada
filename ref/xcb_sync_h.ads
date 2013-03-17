with Interfaces.C; use Interfaces.C;
with xcb_xcb_h;
with stdint_h;
with sys_types_h;
with xcb_xproto_h;
with System;
with Interfaces.C.Strings;

package xcb_sync_h is

   --  unsupported macro: XCB_SYNC_MAJOR_VERSION 3
   --  unsupported macro: XCB_SYNC_MINOR_VERSION 1
   --  unsupported macro: XCB_SYNC_COUNTER 0
   --  unsupported macro: XCB_SYNC_ALARM 1
   --  unsupported macro: XCB_SYNC_INITIALIZE 0
   --  unsupported macro: XCB_SYNC_LIST_SYSTEM_COUNTERS 1
   --  unsupported macro: XCB_SYNC_CREATE_COUNTER 2
   --  unsupported macro: XCB_SYNC_DESTROY_COUNTER 6
   --  unsupported macro: XCB_SYNC_QUERY_COUNTER 5
   --  unsupported macro: XCB_SYNC_AWAIT 7
   --  unsupported macro: XCB_SYNC_CHANGE_COUNTER 4
   --  unsupported macro: XCB_SYNC_SET_COUNTER 3
   --  unsupported macro: XCB_SYNC_CREATE_ALARM 8
   --  unsupported macro: XCB_SYNC_CHANGE_ALARM 9
   --  unsupported macro: XCB_SYNC_DESTROY_ALARM 11
   --  unsupported macro: XCB_SYNC_QUERY_ALARM 10
   --  unsupported macro: XCB_SYNC_SET_PRIORITY 12
   --  unsupported macro: XCB_SYNC_GET_PRIORITY 13
   --  unsupported macro: XCB_SYNC_CREATE_FENCE 14
   --  unsupported macro: XCB_SYNC_TRIGGER_FENCE 15
   --  unsupported macro: XCB_SYNC_RESET_FENCE 16
   --  unsupported macro: XCB_SYNC_DESTROY_FENCE 17
   --  unsupported macro: XCB_SYNC_QUERY_FENCE 18
   --  unsupported macro: XCB_SYNC_AWAIT_FENCE 19
   --  unsupported macro: XCB_SYNC_COUNTER_NOTIFY 0
   --  unsupported macro: XCB_SYNC_ALARM_NOTIFY 1
  -- * This file generated automatically from sync.xml by c_client.py.
  -- * Edit at your peril.
  --  

  --*
  -- * @defgroup XCB_Sync_API XCB Sync API
  -- * @brief Sync XCB Protocol Implementation.
  -- * @{
  -- * 

   xcb_sync_id : aliased xcb_xcb_h.xcb_extension_t;  -- /usr/include/xcb/sync.h:25
   pragma Import (C, xcb_sync_id, "xcb_sync_id");

   subtype xcb_sync_alarm_t is stdint_h.uint32_t;  -- /usr/include/xcb/sync.h:27

  --*
  -- * @brief xcb_sync_alarm_iterator_t
  -- * 

  --*<   
   type xcb_sync_alarm_iterator_t is record
      data : access xcb_sync_alarm_t;  -- /usr/include/xcb/sync.h:33
      c_rem : aliased int;  -- /usr/include/xcb/sync.h:34
      index : aliased int;  -- /usr/include/xcb/sync.h:35
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_sync_alarm_iterator_t);  -- /usr/include/xcb/sync.h:32

  --*<   
  --*<   
   type xcb_sync_alarmstate_t is 
     (XCB_SYNC_ALARMSTATE_ACTIVE,
      XCB_SYNC_ALARMSTATE_INACTIVE,
      XCB_SYNC_ALARMSTATE_DESTROYED);
   pragma Convention (C, xcb_sync_alarmstate_t);  -- /usr/include/xcb/sync.h:38

   subtype xcb_sync_counter_t is stdint_h.uint32_t;  -- /usr/include/xcb/sync.h:44

  --*
  -- * @brief xcb_sync_counter_iterator_t
  -- * 

  --*<   
   type xcb_sync_counter_iterator_t is record
      data : access xcb_sync_counter_t;  -- /usr/include/xcb/sync.h:50
      c_rem : aliased int;  -- /usr/include/xcb/sync.h:51
      index : aliased int;  -- /usr/include/xcb/sync.h:52
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_sync_counter_iterator_t);  -- /usr/include/xcb/sync.h:49

  --*<   
  --*<   
   subtype xcb_sync_fence_t is stdint_h.uint32_t;  -- /usr/include/xcb/sync.h:55

  --*
  -- * @brief xcb_sync_fence_iterator_t
  -- * 

  --*<   
   type xcb_sync_fence_iterator_t is record
      data : access xcb_sync_fence_t;  -- /usr/include/xcb/sync.h:61
      c_rem : aliased int;  -- /usr/include/xcb/sync.h:62
      index : aliased int;  -- /usr/include/xcb/sync.h:63
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_sync_fence_iterator_t);  -- /usr/include/xcb/sync.h:60

  --*<   
  --*<   
   type xcb_sync_testtype_t is 
     (XCB_SYNC_TESTTYPE_POSITIVE_TRANSITION,
      XCB_SYNC_TESTTYPE_NEGATIVE_TRANSITION,
      XCB_SYNC_TESTTYPE_POSITIVE_COMPARISON,
      XCB_SYNC_TESTTYPE_NEGATIVE_COMPARISON);
   pragma Convention (C, xcb_sync_testtype_t);  -- /usr/include/xcb/sync.h:66

   type xcb_sync_valuetype_t is 
     (XCB_SYNC_VALUETYPE_ABSOLUTE,
      XCB_SYNC_VALUETYPE_RELATIVE);
   pragma Convention (C, xcb_sync_valuetype_t);  -- /usr/include/xcb/sync.h:73

   subtype xcb_sync_ca_t is unsigned;
   XCB_SYNC_CA_COUNTER : constant xcb_sync_ca_t := 1;
   XCB_SYNC_CA_VALUE_TYPE : constant xcb_sync_ca_t := 2;
   XCB_SYNC_CA_VALUE : constant xcb_sync_ca_t := 4;
   XCB_SYNC_CA_TEST_TYPE : constant xcb_sync_ca_t := 8;
   XCB_SYNC_CA_DELTA : constant xcb_sync_ca_t := 16;
   XCB_SYNC_CA_EVENTS : constant xcb_sync_ca_t := 32;  -- /usr/include/xcb/sync.h:78

  --*
  -- * @brief xcb_sync_int64_t
  -- * 

  --*<   
   type xcb_sync_int64_t is record
      hi : aliased sys_types_h.int32_t;  -- /usr/include/xcb/sync.h:91
      lo : aliased stdint_h.uint32_t;  -- /usr/include/xcb/sync.h:92
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_sync_int64_t);  -- /usr/include/xcb/sync.h:90

  --*<   
  --*
  -- * @brief xcb_sync_int64_iterator_t
  -- * 

  --*<   
   type xcb_sync_int64_iterator_t is record
      data : access xcb_sync_int64_t;  -- /usr/include/xcb/sync.h:99
      c_rem : aliased int;  -- /usr/include/xcb/sync.h:100
      index : aliased int;  -- /usr/include/xcb/sync.h:101
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_sync_int64_iterator_t);  -- /usr/include/xcb/sync.h:98

  --*<   
  --*<   
  --*
  -- * @brief xcb_sync_systemcounter_t
  -- * 

  --*<   
   type xcb_sync_systemcounter_t is record
      counter : aliased xcb_sync_counter_t;  -- /usr/include/xcb/sync.h:108
      resolution : aliased xcb_sync_int64_t;  -- /usr/include/xcb/sync.h:109
      name_len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/sync.h:110
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_sync_systemcounter_t);  -- /usr/include/xcb/sync.h:107

  --*<   
  --*<   
  --*
  -- * @brief xcb_sync_systemcounter_iterator_t
  -- * 

  --*<   
   type xcb_sync_systemcounter_iterator_t is record
      data : access xcb_sync_systemcounter_t;  -- /usr/include/xcb/sync.h:117
      c_rem : aliased int;  -- /usr/include/xcb/sync.h:118
      index : aliased int;  -- /usr/include/xcb/sync.h:119
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_sync_systemcounter_iterator_t);  -- /usr/include/xcb/sync.h:116

  --*<   
  --*<   
  --*
  -- * @brief xcb_sync_trigger_t
  -- * 

  --*<   
   type xcb_sync_trigger_t is record
      counter : aliased xcb_sync_counter_t;  -- /usr/include/xcb/sync.h:126
      wait_type : aliased stdint_h.uint32_t;  -- /usr/include/xcb/sync.h:127
      wait_value : aliased xcb_sync_int64_t;  -- /usr/include/xcb/sync.h:128
      test_type : aliased stdint_h.uint32_t;  -- /usr/include/xcb/sync.h:129
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_sync_trigger_t);  -- /usr/include/xcb/sync.h:125

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_sync_trigger_iterator_t
  -- * 

  --*<   
   type xcb_sync_trigger_iterator_t is record
      data : access xcb_sync_trigger_t;  -- /usr/include/xcb/sync.h:136
      c_rem : aliased int;  -- /usr/include/xcb/sync.h:137
      index : aliased int;  -- /usr/include/xcb/sync.h:138
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_sync_trigger_iterator_t);  -- /usr/include/xcb/sync.h:135

  --*<   
  --*<   
  --*
  -- * @brief xcb_sync_waitcondition_t
  -- * 

  --*<   
   type xcb_sync_waitcondition_t is record
      trigger : aliased xcb_sync_trigger_t;  -- /usr/include/xcb/sync.h:145
      event_threshold : aliased xcb_sync_int64_t;  -- /usr/include/xcb/sync.h:146
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_sync_waitcondition_t);  -- /usr/include/xcb/sync.h:144

  --*<   
  --*
  -- * @brief xcb_sync_waitcondition_iterator_t
  -- * 

  --*<   
   type xcb_sync_waitcondition_iterator_t is record
      data : access xcb_sync_waitcondition_t;  -- /usr/include/xcb/sync.h:153
      c_rem : aliased int;  -- /usr/include/xcb/sync.h:154
      index : aliased int;  -- /usr/include/xcb/sync.h:155
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_sync_waitcondition_iterator_t);  -- /usr/include/xcb/sync.h:152

  --*<   
  --*<   
  --* Opcode for xcb_sync_counter.  
  --*
  -- * @brief xcb_sync_counter_error_t
  -- * 

  --*<   
   type xcb_sync_counter_error_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:165
      error_code : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:166
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/sync.h:167
      bad_counter : aliased stdint_h.uint32_t;  -- /usr/include/xcb/sync.h:168
      minor_opcode : aliased stdint_h.uint16_t;  -- /usr/include/xcb/sync.h:169
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:170
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_sync_counter_error_t);  -- /usr/include/xcb/sync.h:164

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_sync_alarm.  
  --*
  -- * @brief xcb_sync_alarm_error_t
  -- * 

  --*<   
   type xcb_sync_alarm_error_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:180
      error_code : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:181
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/sync.h:182
      bad_alarm : aliased stdint_h.uint32_t;  -- /usr/include/xcb/sync.h:183
      minor_opcode : aliased stdint_h.uint16_t;  -- /usr/include/xcb/sync.h:184
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:185
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_sync_alarm_error_t);  -- /usr/include/xcb/sync.h:179

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_sync_initialize_cookie_t
  -- * 

  --*<   
   type xcb_sync_initialize_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/sync.h:192
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_sync_initialize_cookie_t);  -- /usr/include/xcb/sync.h:191

  --* Opcode for xcb_sync_initialize.  
  --*
  -- * @brief xcb_sync_initialize_request_t
  -- * 

  --*<   
   type xcb_sync_initialize_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:202
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:203
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/sync.h:204
      desired_major_version : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:205
      desired_minor_version : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:206
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_sync_initialize_request_t);  -- /usr/include/xcb/sync.h:201

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_sync_initialize_reply_t
  -- * 

  --*<   
   type anon4007_anon2060_array is array (0 .. 21) of aliased stdint_h.uint8_t;
   type xcb_sync_initialize_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:213
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:214
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/sync.h:215
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/sync.h:216
      major_version : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:217
      minor_version : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:218
      pad1 : aliased anon4007_anon2060_array;  -- /usr/include/xcb/sync.h:219
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_sync_initialize_reply_t);  -- /usr/include/xcb/sync.h:212

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_sync_list_system_counters_cookie_t
  -- * 

  --*<   
   type xcb_sync_list_system_counters_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/sync.h:226
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_sync_list_system_counters_cookie_t);  -- /usr/include/xcb/sync.h:225

  --* Opcode for xcb_sync_list_system_counters.  
  --*
  -- * @brief xcb_sync_list_system_counters_request_t
  -- * 

  --*<   
   type xcb_sync_list_system_counters_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:236
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:237
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/sync.h:238
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_sync_list_system_counters_request_t);  -- /usr/include/xcb/sync.h:235

  --*<   
  --*<   
  --*
  -- * @brief xcb_sync_list_system_counters_reply_t
  -- * 

  --*<   
   type anon4015_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_sync_list_system_counters_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:245
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:246
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/sync.h:247
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/sync.h:248
      counters_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/sync.h:249
      pad1 : aliased anon4015_anon1939_array;  -- /usr/include/xcb/sync.h:250
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_sync_list_system_counters_reply_t);  -- /usr/include/xcb/sync.h:244

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_sync_create_counter.  
  --*
  -- * @brief xcb_sync_create_counter_request_t
  -- * 

  --*<   
   type xcb_sync_create_counter_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:260
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:261
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/sync.h:262
      id : aliased xcb_sync_counter_t;  -- /usr/include/xcb/sync.h:263
      initial_value : aliased xcb_sync_int64_t;  -- /usr/include/xcb/sync.h:264
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_sync_create_counter_request_t);  -- /usr/include/xcb/sync.h:259

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_sync_destroy_counter.  
  --*
  -- * @brief xcb_sync_destroy_counter_request_t
  -- * 

  --*<   
   type xcb_sync_destroy_counter_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:274
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:275
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/sync.h:276
      counter : aliased xcb_sync_counter_t;  -- /usr/include/xcb/sync.h:277
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_sync_destroy_counter_request_t);  -- /usr/include/xcb/sync.h:273

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_sync_query_counter_cookie_t
  -- * 

  --*<   
   type xcb_sync_query_counter_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/sync.h:284
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_sync_query_counter_cookie_t);  -- /usr/include/xcb/sync.h:283

  --* Opcode for xcb_sync_query_counter.  
  --*
  -- * @brief xcb_sync_query_counter_request_t
  -- * 

  --*<   
   type xcb_sync_query_counter_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:294
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:295
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/sync.h:296
      counter : aliased xcb_sync_counter_t;  -- /usr/include/xcb/sync.h:297
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_sync_query_counter_request_t);  -- /usr/include/xcb/sync.h:293

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_sync_query_counter_reply_t
  -- * 

  --*<   
   type xcb_sync_query_counter_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:304
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:305
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/sync.h:306
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/sync.h:307
      counter_value : aliased xcb_sync_int64_t;  -- /usr/include/xcb/sync.h:308
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_sync_query_counter_reply_t);  -- /usr/include/xcb/sync.h:303

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_sync_await.  
  --*
  -- * @brief xcb_sync_await_request_t
  -- * 

  --*<   
   type xcb_sync_await_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:318
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:319
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/sync.h:320
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_sync_await_request_t);  -- /usr/include/xcb/sync.h:317

  --*<   
  --*<   
  --* Opcode for xcb_sync_change_counter.  
  --*
  -- * @brief xcb_sync_change_counter_request_t
  -- * 

  --*<   
   type xcb_sync_change_counter_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:330
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:331
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/sync.h:332
      counter : aliased xcb_sync_counter_t;  -- /usr/include/xcb/sync.h:333
      amount : aliased xcb_sync_int64_t;  -- /usr/include/xcb/sync.h:334
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_sync_change_counter_request_t);  -- /usr/include/xcb/sync.h:329

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_sync_set_counter.  
  --*
  -- * @brief xcb_sync_set_counter_request_t
  -- * 

  --*<   
   type xcb_sync_set_counter_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:344
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:345
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/sync.h:346
      counter : aliased xcb_sync_counter_t;  -- /usr/include/xcb/sync.h:347
      value : aliased xcb_sync_int64_t;  -- /usr/include/xcb/sync.h:348
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_sync_set_counter_request_t);  -- /usr/include/xcb/sync.h:343

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_sync_create_alarm.  
  --*
  -- * @brief xcb_sync_create_alarm_request_t
  -- * 

  --*<   
   type xcb_sync_create_alarm_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:358
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:359
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/sync.h:360
      id : aliased xcb_sync_alarm_t;  -- /usr/include/xcb/sync.h:361
      value_mask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/sync.h:362
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_sync_create_alarm_request_t);  -- /usr/include/xcb/sync.h:357

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_sync_change_alarm.  
  --*
  -- * @brief xcb_sync_change_alarm_request_t
  -- * 

  --*<   
   type xcb_sync_change_alarm_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:372
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:373
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/sync.h:374
      id : aliased xcb_sync_alarm_t;  -- /usr/include/xcb/sync.h:375
      value_mask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/sync.h:376
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_sync_change_alarm_request_t);  -- /usr/include/xcb/sync.h:371

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_sync_destroy_alarm.  
  --*
  -- * @brief xcb_sync_destroy_alarm_request_t
  -- * 

  --*<   
   type xcb_sync_destroy_alarm_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:386
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:387
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/sync.h:388
      alarm : aliased xcb_sync_alarm_t;  -- /usr/include/xcb/sync.h:389
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_sync_destroy_alarm_request_t);  -- /usr/include/xcb/sync.h:385

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_sync_query_alarm_cookie_t
  -- * 

  --*<   
   type xcb_sync_query_alarm_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/sync.h:396
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_sync_query_alarm_cookie_t);  -- /usr/include/xcb/sync.h:395

  --* Opcode for xcb_sync_query_alarm.  
  --*
  -- * @brief xcb_sync_query_alarm_request_t
  -- * 

  --*<   
   type xcb_sync_query_alarm_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:406
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:407
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/sync.h:408
      alarm : aliased xcb_sync_alarm_t;  -- /usr/include/xcb/sync.h:409
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_sync_query_alarm_request_t);  -- /usr/include/xcb/sync.h:405

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_sync_query_alarm_reply_t
  -- * 

  --*<   
   type anon4045_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_sync_query_alarm_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:416
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:417
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/sync.h:418
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/sync.h:419
      trigger : aliased xcb_sync_trigger_t;  -- /usr/include/xcb/sync.h:420
      c_delta : aliased xcb_sync_int64_t;  -- /usr/include/xcb/sync.h:421
      events : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:422
      state : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:423
      pad1 : aliased anon4045_anon1795_array;  -- /usr/include/xcb/sync.h:424
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_sync_query_alarm_reply_t);  -- /usr/include/xcb/sync.h:415

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_sync_set_priority.  
  --*
  -- * @brief xcb_sync_set_priority_request_t
  -- * 

  --*<   
   type xcb_sync_set_priority_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:434
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:435
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/sync.h:436
      id : aliased stdint_h.uint32_t;  -- /usr/include/xcb/sync.h:437
      priority : aliased sys_types_h.int32_t;  -- /usr/include/xcb/sync.h:438
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_sync_set_priority_request_t);  -- /usr/include/xcb/sync.h:433

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_sync_get_priority_cookie_t
  -- * 

  --*<   
   type xcb_sync_get_priority_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/sync.h:445
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_sync_get_priority_cookie_t);  -- /usr/include/xcb/sync.h:444

  --* Opcode for xcb_sync_get_priority.  
  --*
  -- * @brief xcb_sync_get_priority_request_t
  -- * 

  --*<   
   type xcb_sync_get_priority_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:455
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:456
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/sync.h:457
      id : aliased stdint_h.uint32_t;  -- /usr/include/xcb/sync.h:458
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_sync_get_priority_request_t);  -- /usr/include/xcb/sync.h:454

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_sync_get_priority_reply_t
  -- * 

  --*<   
   type xcb_sync_get_priority_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:465
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:466
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/sync.h:467
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/sync.h:468
      priority : aliased sys_types_h.int32_t;  -- /usr/include/xcb/sync.h:469
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_sync_get_priority_reply_t);  -- /usr/include/xcb/sync.h:464

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_sync_create_fence.  
  --*
  -- * @brief xcb_sync_create_fence_request_t
  -- * 

  --*<   
   type xcb_sync_create_fence_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:479
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:480
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/sync.h:481
      drawable : aliased xcb_xproto_h.xcb_drawable_t;  -- /usr/include/xcb/sync.h:482
      fence : aliased xcb_sync_fence_t;  -- /usr/include/xcb/sync.h:483
      initially_triggered : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:484
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_sync_create_fence_request_t);  -- /usr/include/xcb/sync.h:478

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_sync_trigger_fence.  
  --*
  -- * @brief xcb_sync_trigger_fence_request_t
  -- * 

  --*<   
   type xcb_sync_trigger_fence_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:494
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:495
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/sync.h:496
      fence : aliased xcb_sync_fence_t;  -- /usr/include/xcb/sync.h:497
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_sync_trigger_fence_request_t);  -- /usr/include/xcb/sync.h:493

  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_sync_reset_fence.  
  --*
  -- * @brief xcb_sync_reset_fence_request_t
  -- * 

  --*<   
   type xcb_sync_reset_fence_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:507
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:508
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/sync.h:509
      fence : aliased xcb_sync_fence_t;  -- /usr/include/xcb/sync.h:510
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_sync_reset_fence_request_t);  -- /usr/include/xcb/sync.h:506

  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_sync_destroy_fence.  
  --*
  -- * @brief xcb_sync_destroy_fence_request_t
  -- * 

  --*<   
   type xcb_sync_destroy_fence_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:520
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:521
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/sync.h:522
      fence : aliased xcb_sync_fence_t;  -- /usr/include/xcb/sync.h:523
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_sync_destroy_fence_request_t);  -- /usr/include/xcb/sync.h:519

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_sync_query_fence_cookie_t
  -- * 

  --*<   
   type xcb_sync_query_fence_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/sync.h:530
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_sync_query_fence_cookie_t);  -- /usr/include/xcb/sync.h:529

  --* Opcode for xcb_sync_query_fence.  
  --*
  -- * @brief xcb_sync_query_fence_request_t
  -- * 

  --*<   
   type xcb_sync_query_fence_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:540
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:541
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/sync.h:542
      fence : aliased xcb_sync_fence_t;  -- /usr/include/xcb/sync.h:543
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_sync_query_fence_request_t);  -- /usr/include/xcb/sync.h:539

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_sync_query_fence_reply_t
  -- * 

  --*<   
   type anon4069_anon4071_array is array (0 .. 22) of aliased stdint_h.uint8_t;
   type xcb_sync_query_fence_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:550
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:551
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/sync.h:552
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/sync.h:553
      triggered : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:554
      pad1 : aliased anon4069_anon4071_array;  -- /usr/include/xcb/sync.h:555
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_sync_query_fence_reply_t);  -- /usr/include/xcb/sync.h:549

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_sync_await_fence.  
  --*
  -- * @brief xcb_sync_await_fence_request_t
  -- * 

  --*<   
   type xcb_sync_await_fence_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:565
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:566
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/sync.h:567
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_sync_await_fence_request_t);  -- /usr/include/xcb/sync.h:564

  --*<   
  --*<   
  --* Opcode for xcb_sync_counter_notify.  
  --*
  -- * @brief xcb_sync_counter_notify_event_t
  -- * 

  --*<   
   type xcb_sync_counter_notify_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:577
      kind : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:578
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/sync.h:579
      counter : aliased xcb_sync_counter_t;  -- /usr/include/xcb/sync.h:580
      wait_value : aliased xcb_sync_int64_t;  -- /usr/include/xcb/sync.h:581
      counter_value : aliased xcb_sync_int64_t;  -- /usr/include/xcb/sync.h:582
      timestamp : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/sync.h:583
      count : aliased stdint_h.uint16_t;  -- /usr/include/xcb/sync.h:584
      destroyed : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:585
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:586
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_sync_counter_notify_event_t);  -- /usr/include/xcb/sync.h:576

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_sync_alarm_notify.  
  --*
  -- * @brief xcb_sync_alarm_notify_event_t
  -- * 

  --*<   
   type anon4078_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_sync_alarm_notify_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:596
      kind : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:597
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/sync.h:598
      alarm : aliased xcb_sync_alarm_t;  -- /usr/include/xcb/sync.h:599
      counter_value : aliased xcb_sync_int64_t;  -- /usr/include/xcb/sync.h:600
      alarm_value : aliased xcb_sync_int64_t;  -- /usr/include/xcb/sync.h:601
      timestamp : aliased xcb_xproto_h.xcb_timestamp_t;  -- /usr/include/xcb/sync.h:602
      state : aliased stdint_h.uint8_t;  -- /usr/include/xcb/sync.h:603
      pad0 : aliased anon4078_anon1853_array;  -- /usr/include/xcb/sync.h:604
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_sync_alarm_notify_event_t);  -- /usr/include/xcb/sync.h:595

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
  -- * @param i Pointer to a xcb_sync_alarm_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_sync_alarm_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_sync_alarm_next
  -- ** 
  -- ** @param xcb_sync_alarm_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_sync_alarm_next (arg1 : access xcb_sync_alarm_iterator_t);  -- /usr/include/xcb/sync.h:626
   pragma Import (C, xcb_sync_alarm_next, "xcb_sync_alarm_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_sync_alarm_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_sync_alarm_end
  -- ** 
  -- ** @param xcb_sync_alarm_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_alarm_end (arg1 : xcb_sync_alarm_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/sync.h:648
   pragma Import (C, xcb_sync_alarm_end, "xcb_sync_alarm_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_sync_counter_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_sync_counter_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_sync_counter_next
  -- ** 
  -- ** @param xcb_sync_counter_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_sync_counter_next (arg1 : access xcb_sync_counter_iterator_t);  -- /usr/include/xcb/sync.h:669
   pragma Import (C, xcb_sync_counter_next, "xcb_sync_counter_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_sync_counter_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_sync_counter_end
  -- ** 
  -- ** @param xcb_sync_counter_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_counter_end (arg1 : xcb_sync_counter_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/sync.h:691
   pragma Import (C, xcb_sync_counter_end, "xcb_sync_counter_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_sync_fence_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_sync_fence_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_sync_fence_next
  -- ** 
  -- ** @param xcb_sync_fence_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_sync_fence_next (arg1 : access xcb_sync_fence_iterator_t);  -- /usr/include/xcb/sync.h:712
   pragma Import (C, xcb_sync_fence_next, "xcb_sync_fence_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_sync_fence_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_sync_fence_end
  -- ** 
  -- ** @param xcb_sync_fence_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_fence_end (arg1 : xcb_sync_fence_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/sync.h:734
   pragma Import (C, xcb_sync_fence_end, "xcb_sync_fence_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_sync_int64_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_sync_int64_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_sync_int64_next
  -- ** 
  -- ** @param xcb_sync_int64_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_sync_int64_next (arg1 : access xcb_sync_int64_iterator_t);  -- /usr/include/xcb/sync.h:755
   pragma Import (C, xcb_sync_int64_next, "xcb_sync_int64_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_sync_int64_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_sync_int64_end
  -- ** 
  -- ** @param xcb_sync_int64_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_int64_end (arg1 : xcb_sync_int64_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/sync.h:777
   pragma Import (C, xcb_sync_int64_end, "xcb_sync_int64_end");

  --*<  
   function xcb_sync_systemcounter_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/sync.h:780
   pragma Import (C, xcb_sync_systemcounter_sizeof, "xcb_sync_systemcounter_sizeof");

  --****************************************************************************
  -- **
  -- ** char * xcb_sync_systemcounter_name
  -- ** 
  -- ** @param const xcb_sync_systemcounter_t *R
  -- ** @returns char *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_systemcounter_name (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/sync.h:793
   pragma Import (C, xcb_sync_systemcounter_name, "xcb_sync_systemcounter_name");

  --****************************************************************************
  -- **
  -- ** int xcb_sync_systemcounter_name_length
  -- ** 
  -- ** @param const xcb_sync_systemcounter_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_systemcounter_name_length (arg1 : System.Address) return int;  -- /usr/include/xcb/sync.h:806
   pragma Import (C, xcb_sync_systemcounter_name_length, "xcb_sync_systemcounter_name_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_sync_systemcounter_name_end
  -- ** 
  -- ** @param const xcb_sync_systemcounter_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_systemcounter_name_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/sync.h:819
   pragma Import (C, xcb_sync_systemcounter_name_end, "xcb_sync_systemcounter_name_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_sync_systemcounter_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_sync_systemcounter_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_sync_systemcounter_next
  -- ** 
  -- ** @param xcb_sync_systemcounter_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_sync_systemcounter_next (arg1 : access xcb_sync_systemcounter_iterator_t);  -- /usr/include/xcb/sync.h:840
   pragma Import (C, xcb_sync_systemcounter_next, "xcb_sync_systemcounter_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_sync_systemcounter_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_sync_systemcounter_end
  -- ** 
  -- ** @param xcb_sync_systemcounter_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_systemcounter_end (arg1 : xcb_sync_systemcounter_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/sync.h:862
   pragma Import (C, xcb_sync_systemcounter_end, "xcb_sync_systemcounter_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_sync_trigger_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_sync_trigger_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_sync_trigger_next
  -- ** 
  -- ** @param xcb_sync_trigger_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_sync_trigger_next (arg1 : access xcb_sync_trigger_iterator_t);  -- /usr/include/xcb/sync.h:883
   pragma Import (C, xcb_sync_trigger_next, "xcb_sync_trigger_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_sync_trigger_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_sync_trigger_end
  -- ** 
  -- ** @param xcb_sync_trigger_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_trigger_end (arg1 : xcb_sync_trigger_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/sync.h:905
   pragma Import (C, xcb_sync_trigger_end, "xcb_sync_trigger_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_sync_waitcondition_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_sync_waitcondition_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_sync_waitcondition_next
  -- ** 
  -- ** @param xcb_sync_waitcondition_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_sync_waitcondition_next (arg1 : access xcb_sync_waitcondition_iterator_t);  -- /usr/include/xcb/sync.h:926
   pragma Import (C, xcb_sync_waitcondition_next, "xcb_sync_waitcondition_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_sync_waitcondition_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_sync_waitcondition_end
  -- ** 
  -- ** @param xcb_sync_waitcondition_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_waitcondition_end (arg1 : xcb_sync_waitcondition_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/sync.h:948
   pragma Import (C, xcb_sync_waitcondition_end, "xcb_sync_waitcondition_end");

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
  -- ** xcb_sync_initialize_cookie_t xcb_sync_initialize
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           desired_major_version
  -- ** @param uint8_t           desired_minor_version
  -- ** @returns xcb_sync_initialize_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_initialize
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint8_t) return xcb_sync_initialize_cookie_t;  -- /usr/include/xcb/sync.h:971
   pragma Import (C, xcb_sync_initialize, "xcb_sync_initialize");

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
  -- ** xcb_sync_initialize_cookie_t xcb_sync_initialize_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint8_t           desired_major_version
  -- ** @param uint8_t           desired_minor_version
  -- ** @returns xcb_sync_initialize_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_initialize_unchecked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : stdint_h.uint8_t) return xcb_sync_initialize_cookie_t;  -- /usr/include/xcb/sync.h:999
   pragma Import (C, xcb_sync_initialize_unchecked, "xcb_sync_initialize_unchecked");

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
  -- * xcb_sync_initialize_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_sync_initialize_reply_t * xcb_sync_initialize_reply
  -- ** 
  -- ** @param xcb_connection_t              *c
  -- ** @param xcb_sync_initialize_cookie_t   cookie
  -- ** @param xcb_generic_error_t          **e
  -- ** @returns xcb_sync_initialize_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_initialize_reply
     (arg1 : System.Address;
      arg2 : xcb_sync_initialize_cookie_t;
      arg3 : System.Address) return access xcb_sync_initialize_reply_t;  -- /usr/include/xcb/sync.h:1030
   pragma Import (C, xcb_sync_initialize_reply, "xcb_sync_initialize_reply");

  --*<  
  --*<  
  --*<  
   function xcb_sync_list_system_counters_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/sync.h:1035
   pragma Import (C, xcb_sync_list_system_counters_sizeof, "xcb_sync_list_system_counters_sizeof");

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
  -- ** xcb_sync_list_system_counters_cookie_t xcb_sync_list_system_counters
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_sync_list_system_counters_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_list_system_counters (arg1 : System.Address) return xcb_sync_list_system_counters_cookie_t;  -- /usr/include/xcb/sync.h:1056
   pragma Import (C, xcb_sync_list_system_counters, "xcb_sync_list_system_counters");

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
  -- ** xcb_sync_list_system_counters_cookie_t xcb_sync_list_system_counters_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_sync_list_system_counters_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_list_system_counters_unchecked (arg1 : System.Address) return xcb_sync_list_system_counters_cookie_t;  -- /usr/include/xcb/sync.h:1080
   pragma Import (C, xcb_sync_list_system_counters_unchecked, "xcb_sync_list_system_counters_unchecked");

  --****************************************************************************
  -- **
  -- ** int xcb_sync_list_system_counters_counters_length
  -- ** 
  -- ** @param const xcb_sync_list_system_counters_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_list_system_counters_counters_length (arg1 : System.Address) return int;  -- /usr/include/xcb/sync.h:1093
   pragma Import (C, xcb_sync_list_system_counters_counters_length, "xcb_sync_list_system_counters_counters_length");

  --****************************************************************************
  -- **
  -- ** xcb_sync_systemcounter_iterator_t xcb_sync_list_system_counters_counters_iterator
  -- ** 
  -- ** @param const xcb_sync_list_system_counters_reply_t *R
  -- ** @returns xcb_sync_systemcounter_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_list_system_counters_counters_iterator (arg1 : System.Address) return xcb_sync_systemcounter_iterator_t;  -- /usr/include/xcb/sync.h:1106
   pragma Import (C, xcb_sync_list_system_counters_counters_iterator, "xcb_sync_list_system_counters_counters_iterator");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_sync_list_system_counters_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_sync_list_system_counters_reply_t * xcb_sync_list_system_counters_reply
  -- ** 
  -- ** @param xcb_connection_t                        *c
  -- ** @param xcb_sync_list_system_counters_cookie_t   cookie
  -- ** @param xcb_generic_error_t                    **e
  -- ** @returns xcb_sync_list_system_counters_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_list_system_counters_reply
     (arg1 : System.Address;
      arg2 : xcb_sync_list_system_counters_cookie_t;
      arg3 : System.Address) return access xcb_sync_list_system_counters_reply_t;  -- /usr/include/xcb/sync.h:1135
   pragma Import (C, xcb_sync_list_system_counters_reply, "xcb_sync_list_system_counters_reply");

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
  -- ** xcb_void_cookie_t xcb_sync_create_counter_checked
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_sync_counter_t  id
  -- ** @param xcb_sync_int64_t    initial_value
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_create_counter_checked
     (arg1 : System.Address;
      arg2 : xcb_sync_counter_t;
      arg3 : xcb_sync_int64_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/sync.h:1163
   pragma Import (C, xcb_sync_create_counter_checked, "xcb_sync_create_counter_checked");

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
  -- ** xcb_void_cookie_t xcb_sync_create_counter
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_sync_counter_t  id
  -- ** @param xcb_sync_int64_t    initial_value
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_create_counter
     (arg1 : System.Address;
      arg2 : xcb_sync_counter_t;
      arg3 : xcb_sync_int64_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/sync.h:1188
   pragma Import (C, xcb_sync_create_counter, "xcb_sync_create_counter");

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
  -- ** xcb_void_cookie_t xcb_sync_destroy_counter_checked
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_sync_counter_t  counter
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_destroy_counter_checked (arg1 : System.Address; arg2 : xcb_sync_counter_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/sync.h:1215
   pragma Import (C, xcb_sync_destroy_counter_checked, "xcb_sync_destroy_counter_checked");

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
  -- ** xcb_void_cookie_t xcb_sync_destroy_counter
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_sync_counter_t  counter
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_destroy_counter (arg1 : System.Address; arg2 : xcb_sync_counter_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/sync.h:1238
   pragma Import (C, xcb_sync_destroy_counter, "xcb_sync_destroy_counter");

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
  -- ** xcb_sync_query_counter_cookie_t xcb_sync_query_counter
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_sync_counter_t  counter
  -- ** @returns xcb_sync_query_counter_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_query_counter (arg1 : System.Address; arg2 : xcb_sync_counter_t) return xcb_sync_query_counter_cookie_t;  -- /usr/include/xcb/sync.h:1261
   pragma Import (C, xcb_sync_query_counter, "xcb_sync_query_counter");

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
  -- ** xcb_sync_query_counter_cookie_t xcb_sync_query_counter_unchecked
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_sync_counter_t  counter
  -- ** @returns xcb_sync_query_counter_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_query_counter_unchecked (arg1 : System.Address; arg2 : xcb_sync_counter_t) return xcb_sync_query_counter_cookie_t;  -- /usr/include/xcb/sync.h:1287
   pragma Import (C, xcb_sync_query_counter_unchecked, "xcb_sync_query_counter_unchecked");

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
  -- * xcb_sync_query_counter_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_sync_query_counter_reply_t * xcb_sync_query_counter_reply
  -- ** 
  -- ** @param xcb_connection_t                 *c
  -- ** @param xcb_sync_query_counter_cookie_t   cookie
  -- ** @param xcb_generic_error_t             **e
  -- ** @returns xcb_sync_query_counter_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_query_counter_reply
     (arg1 : System.Address;
      arg2 : xcb_sync_query_counter_cookie_t;
      arg3 : System.Address) return access xcb_sync_query_counter_reply_t;  -- /usr/include/xcb/sync.h:1317
   pragma Import (C, xcb_sync_query_counter_reply, "xcb_sync_query_counter_reply");

  --*<  
  --*<  
  --*<  
   function xcb_sync_await_sizeof (arg1 : System.Address; arg2 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/sync.h:1322
   pragma Import (C, xcb_sync_await_sizeof, "xcb_sync_await_sizeof");

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
  -- ** xcb_void_cookie_t xcb_sync_await_checked
  -- ** 
  -- ** @param xcb_connection_t               *c
  -- ** @param uint32_t                        wait_list_len
  -- ** @param const xcb_sync_waitcondition_t *wait_list
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_await_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/sync.h:1349
   pragma Import (C, xcb_sync_await_checked, "xcb_sync_await_checked");

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
  -- ** xcb_void_cookie_t xcb_sync_await
  -- ** 
  -- ** @param xcb_connection_t               *c
  -- ** @param uint32_t                        wait_list_len
  -- ** @param const xcb_sync_waitcondition_t *wait_list
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_await
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/sync.h:1374
   pragma Import (C, xcb_sync_await, "xcb_sync_await");

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
  -- ** xcb_void_cookie_t xcb_sync_change_counter_checked
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_sync_counter_t  counter
  -- ** @param xcb_sync_int64_t    amount
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_change_counter_checked
     (arg1 : System.Address;
      arg2 : xcb_sync_counter_t;
      arg3 : xcb_sync_int64_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/sync.h:1402
   pragma Import (C, xcb_sync_change_counter_checked, "xcb_sync_change_counter_checked");

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
  -- ** xcb_void_cookie_t xcb_sync_change_counter
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_sync_counter_t  counter
  -- ** @param xcb_sync_int64_t    amount
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_change_counter
     (arg1 : System.Address;
      arg2 : xcb_sync_counter_t;
      arg3 : xcb_sync_int64_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/sync.h:1427
   pragma Import (C, xcb_sync_change_counter, "xcb_sync_change_counter");

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
  -- ** xcb_void_cookie_t xcb_sync_set_counter_checked
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_sync_counter_t  counter
  -- ** @param xcb_sync_int64_t    value
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_set_counter_checked
     (arg1 : System.Address;
      arg2 : xcb_sync_counter_t;
      arg3 : xcb_sync_int64_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/sync.h:1455
   pragma Import (C, xcb_sync_set_counter_checked, "xcb_sync_set_counter_checked");

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
  -- ** xcb_void_cookie_t xcb_sync_set_counter
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_sync_counter_t  counter
  -- ** @param xcb_sync_int64_t    value
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_set_counter
     (arg1 : System.Address;
      arg2 : xcb_sync_counter_t;
      arg3 : xcb_sync_int64_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/sync.h:1480
   pragma Import (C, xcb_sync_set_counter, "xcb_sync_set_counter");

  --*<  
  --*<  
  --*<  
   function xcb_sync_create_alarm_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/sync.h:1485
   pragma Import (C, xcb_sync_create_alarm_sizeof, "xcb_sync_create_alarm_sizeof");

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
  -- ** xcb_void_cookie_t xcb_sync_create_alarm_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_sync_alarm_t  id
  -- ** @param uint32_t          value_mask
  -- ** @param const uint32_t   *value_list
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_create_alarm_checked
     (arg1 : System.Address;
      arg2 : xcb_sync_alarm_t;
      arg3 : stdint_h.uint32_t;
      arg4 : access stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/sync.h:1512
   pragma Import (C, xcb_sync_create_alarm_checked, "xcb_sync_create_alarm_checked");

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
  -- ** xcb_void_cookie_t xcb_sync_create_alarm
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_sync_alarm_t  id
  -- ** @param uint32_t          value_mask
  -- ** @param const uint32_t   *value_list
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_create_alarm
     (arg1 : System.Address;
      arg2 : xcb_sync_alarm_t;
      arg3 : stdint_h.uint32_t;
      arg4 : access stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/sync.h:1539
   pragma Import (C, xcb_sync_create_alarm, "xcb_sync_create_alarm");

  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_sync_change_alarm_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/sync.h:1545
   pragma Import (C, xcb_sync_change_alarm_sizeof, "xcb_sync_change_alarm_sizeof");

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
  -- ** xcb_void_cookie_t xcb_sync_change_alarm_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_sync_alarm_t  id
  -- ** @param uint32_t          value_mask
  -- ** @param const uint32_t   *value_list
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_change_alarm_checked
     (arg1 : System.Address;
      arg2 : xcb_sync_alarm_t;
      arg3 : stdint_h.uint32_t;
      arg4 : access stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/sync.h:1572
   pragma Import (C, xcb_sync_change_alarm_checked, "xcb_sync_change_alarm_checked");

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
  -- ** xcb_void_cookie_t xcb_sync_change_alarm
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_sync_alarm_t  id
  -- ** @param uint32_t          value_mask
  -- ** @param const uint32_t   *value_list
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_change_alarm
     (arg1 : System.Address;
      arg2 : xcb_sync_alarm_t;
      arg3 : stdint_h.uint32_t;
      arg4 : access stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/sync.h:1599
   pragma Import (C, xcb_sync_change_alarm, "xcb_sync_change_alarm");

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
  -- ** xcb_void_cookie_t xcb_sync_destroy_alarm_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_sync_alarm_t  alarm
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_destroy_alarm_checked (arg1 : System.Address; arg2 : xcb_sync_alarm_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/sync.h:1627
   pragma Import (C, xcb_sync_destroy_alarm_checked, "xcb_sync_destroy_alarm_checked");

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
  -- ** xcb_void_cookie_t xcb_sync_destroy_alarm
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_sync_alarm_t  alarm
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_destroy_alarm (arg1 : System.Address; arg2 : xcb_sync_alarm_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/sync.h:1650
   pragma Import (C, xcb_sync_destroy_alarm, "xcb_sync_destroy_alarm");

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
  -- ** xcb_sync_query_alarm_cookie_t xcb_sync_query_alarm
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_sync_alarm_t  alarm
  -- ** @returns xcb_sync_query_alarm_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_query_alarm (arg1 : System.Address; arg2 : xcb_sync_alarm_t) return xcb_sync_query_alarm_cookie_t;  -- /usr/include/xcb/sync.h:1673
   pragma Import (C, xcb_sync_query_alarm, "xcb_sync_query_alarm");

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
  -- ** xcb_sync_query_alarm_cookie_t xcb_sync_query_alarm_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_sync_alarm_t  alarm
  -- ** @returns xcb_sync_query_alarm_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_query_alarm_unchecked (arg1 : System.Address; arg2 : xcb_sync_alarm_t) return xcb_sync_query_alarm_cookie_t;  -- /usr/include/xcb/sync.h:1699
   pragma Import (C, xcb_sync_query_alarm_unchecked, "xcb_sync_query_alarm_unchecked");

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
  -- * xcb_sync_query_alarm_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_sync_query_alarm_reply_t * xcb_sync_query_alarm_reply
  -- ** 
  -- ** @param xcb_connection_t               *c
  -- ** @param xcb_sync_query_alarm_cookie_t   cookie
  -- ** @param xcb_generic_error_t           **e
  -- ** @returns xcb_sync_query_alarm_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_query_alarm_reply
     (arg1 : System.Address;
      arg2 : xcb_sync_query_alarm_cookie_t;
      arg3 : System.Address) return access xcb_sync_query_alarm_reply_t;  -- /usr/include/xcb/sync.h:1729
   pragma Import (C, xcb_sync_query_alarm_reply, "xcb_sync_query_alarm_reply");

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
  -- ** xcb_void_cookie_t xcb_sync_set_priority_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          id
  -- ** @param int32_t           priority
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_set_priority_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : sys_types_h.int32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/sync.h:1757
   pragma Import (C, xcb_sync_set_priority_checked, "xcb_sync_set_priority_checked");

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
  -- ** xcb_void_cookie_t xcb_sync_set_priority
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          id
  -- ** @param int32_t           priority
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_set_priority
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : sys_types_h.int32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/sync.h:1782
   pragma Import (C, xcb_sync_set_priority, "xcb_sync_set_priority");

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
  -- ** xcb_sync_get_priority_cookie_t xcb_sync_get_priority
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          id
  -- ** @returns xcb_sync_get_priority_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_get_priority (arg1 : System.Address; arg2 : stdint_h.uint32_t) return xcb_sync_get_priority_cookie_t;  -- /usr/include/xcb/sync.h:1806
   pragma Import (C, xcb_sync_get_priority, "xcb_sync_get_priority");

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
  -- ** xcb_sync_get_priority_cookie_t xcb_sync_get_priority_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          id
  -- ** @returns xcb_sync_get_priority_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_get_priority_unchecked (arg1 : System.Address; arg2 : stdint_h.uint32_t) return xcb_sync_get_priority_cookie_t;  -- /usr/include/xcb/sync.h:1832
   pragma Import (C, xcb_sync_get_priority_unchecked, "xcb_sync_get_priority_unchecked");

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
  -- * xcb_sync_get_priority_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_sync_get_priority_reply_t * xcb_sync_get_priority_reply
  -- ** 
  -- ** @param xcb_connection_t                *c
  -- ** @param xcb_sync_get_priority_cookie_t   cookie
  -- ** @param xcb_generic_error_t            **e
  -- ** @returns xcb_sync_get_priority_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_get_priority_reply
     (arg1 : System.Address;
      arg2 : xcb_sync_get_priority_cookie_t;
      arg3 : System.Address) return access xcb_sync_get_priority_reply_t;  -- /usr/include/xcb/sync.h:1862
   pragma Import (C, xcb_sync_get_priority_reply, "xcb_sync_get_priority_reply");

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
  -- ** xcb_void_cookie_t xcb_sync_create_fence_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    drawable
  -- ** @param xcb_sync_fence_t  fence
  -- ** @param uint8_t           initially_triggered
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_create_fence_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_drawable_t;
      arg3 : xcb_sync_fence_t;
      arg4 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/sync.h:1891
   pragma Import (C, xcb_sync_create_fence_checked, "xcb_sync_create_fence_checked");

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
  -- ** xcb_void_cookie_t xcb_sync_create_fence
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    drawable
  -- ** @param xcb_sync_fence_t  fence
  -- ** @param uint8_t           initially_triggered
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_create_fence
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_drawable_t;
      arg3 : xcb_sync_fence_t;
      arg4 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/sync.h:1918
   pragma Import (C, xcb_sync_create_fence, "xcb_sync_create_fence");

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
  -- ** xcb_void_cookie_t xcb_sync_trigger_fence_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_sync_fence_t  fence
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_trigger_fence_checked (arg1 : System.Address; arg2 : xcb_sync_fence_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/sync.h:1946
   pragma Import (C, xcb_sync_trigger_fence_checked, "xcb_sync_trigger_fence_checked");

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
  -- ** xcb_void_cookie_t xcb_sync_trigger_fence
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_sync_fence_t  fence
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_trigger_fence (arg1 : System.Address; arg2 : xcb_sync_fence_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/sync.h:1969
   pragma Import (C, xcb_sync_trigger_fence, "xcb_sync_trigger_fence");

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
  -- ** xcb_void_cookie_t xcb_sync_reset_fence_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_sync_fence_t  fence
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_reset_fence_checked (arg1 : System.Address; arg2 : xcb_sync_fence_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/sync.h:1995
   pragma Import (C, xcb_sync_reset_fence_checked, "xcb_sync_reset_fence_checked");

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
  -- ** xcb_void_cookie_t xcb_sync_reset_fence
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_sync_fence_t  fence
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_reset_fence (arg1 : System.Address; arg2 : xcb_sync_fence_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/sync.h:2018
   pragma Import (C, xcb_sync_reset_fence, "xcb_sync_reset_fence");

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
  -- ** xcb_void_cookie_t xcb_sync_destroy_fence_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_sync_fence_t  fence
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_destroy_fence_checked (arg1 : System.Address; arg2 : xcb_sync_fence_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/sync.h:2044
   pragma Import (C, xcb_sync_destroy_fence_checked, "xcb_sync_destroy_fence_checked");

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
  -- ** xcb_void_cookie_t xcb_sync_destroy_fence
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_sync_fence_t  fence
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_destroy_fence (arg1 : System.Address; arg2 : xcb_sync_fence_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/sync.h:2067
   pragma Import (C, xcb_sync_destroy_fence, "xcb_sync_destroy_fence");

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
  -- ** xcb_sync_query_fence_cookie_t xcb_sync_query_fence
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_sync_fence_t  fence
  -- ** @returns xcb_sync_query_fence_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_query_fence (arg1 : System.Address; arg2 : xcb_sync_fence_t) return xcb_sync_query_fence_cookie_t;  -- /usr/include/xcb/sync.h:2090
   pragma Import (C, xcb_sync_query_fence, "xcb_sync_query_fence");

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
  -- ** xcb_sync_query_fence_cookie_t xcb_sync_query_fence_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_sync_fence_t  fence
  -- ** @returns xcb_sync_query_fence_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_query_fence_unchecked (arg1 : System.Address; arg2 : xcb_sync_fence_t) return xcb_sync_query_fence_cookie_t;  -- /usr/include/xcb/sync.h:2116
   pragma Import (C, xcb_sync_query_fence_unchecked, "xcb_sync_query_fence_unchecked");

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
  -- * xcb_sync_query_fence_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_sync_query_fence_reply_t * xcb_sync_query_fence_reply
  -- ** 
  -- ** @param xcb_connection_t               *c
  -- ** @param xcb_sync_query_fence_cookie_t   cookie
  -- ** @param xcb_generic_error_t           **e
  -- ** @returns xcb_sync_query_fence_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_query_fence_reply
     (arg1 : System.Address;
      arg2 : xcb_sync_query_fence_cookie_t;
      arg3 : System.Address) return access xcb_sync_query_fence_reply_t;  -- /usr/include/xcb/sync.h:2146
   pragma Import (C, xcb_sync_query_fence_reply, "xcb_sync_query_fence_reply");

  --*<  
  --*<  
  --*<  
   function xcb_sync_await_fence_sizeof (arg1 : System.Address; arg2 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/sync.h:2151
   pragma Import (C, xcb_sync_await_fence_sizeof, "xcb_sync_await_fence_sizeof");

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
  -- ** xcb_void_cookie_t xcb_sync_await_fence_checked
  -- ** 
  -- ** @param xcb_connection_t       *c
  -- ** @param uint32_t                fence_list_len
  -- ** @param const xcb_sync_fence_t *fence_list
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_await_fence_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : access xcb_sync_fence_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/sync.h:2178
   pragma Import (C, xcb_sync_await_fence_checked, "xcb_sync_await_fence_checked");

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
  -- ** xcb_void_cookie_t xcb_sync_await_fence
  -- ** 
  -- ** @param xcb_connection_t       *c
  -- ** @param uint32_t                fence_list_len
  -- ** @param const xcb_sync_fence_t *fence_list
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_sync_await_fence
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : access xcb_sync_fence_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/sync.h:2203
   pragma Import (C, xcb_sync_await_fence, "xcb_sync_await_fence");

  --*<  
  --*<  
  --*
  -- * @}
  --  

end xcb_sync_h;
