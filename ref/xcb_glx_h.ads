with Interfaces.C; use Interfaces.C;
with xcb_xcb_h;
with stdint_h;
with xcb_xproto_h;
with sys_types_h;
with System;
with Interfaces.C.Strings;

package xcb_glx_h is

   --  unsupported macro: XCB_GLX_MAJOR_VERSION 1
   --  unsupported macro: XCB_GLX_MINOR_VERSION 3
   --  unsupported macro: XCB_GLX_GENERIC -1
   --  unsupported macro: XCB_GLX_BAD_CONTEXT 0
   --  unsupported macro: XCB_GLX_BAD_CONTEXT_STATE 1
   --  unsupported macro: XCB_GLX_BAD_DRAWABLE 2
   --  unsupported macro: XCB_GLX_BAD_PIXMAP 3
   --  unsupported macro: XCB_GLX_BAD_CONTEXT_TAG 4
   --  unsupported macro: XCB_GLX_BAD_CURRENT_WINDOW 5
   --  unsupported macro: XCB_GLX_BAD_RENDER_REQUEST 6
   --  unsupported macro: XCB_GLX_BAD_LARGE_REQUEST 7
   --  unsupported macro: XCB_GLX_UNSUPPORTED_PRIVATE_REQUEST 8
   --  unsupported macro: XCB_GLX_BAD_FB_CONFIG 9
   --  unsupported macro: XCB_GLX_BAD_PBUFFER 10
   --  unsupported macro: XCB_GLX_BAD_CURRENT_DRAWABLE 11
   --  unsupported macro: XCB_GLX_BAD_WINDOW 12
   --  unsupported macro: XCB_GLX_GLX_BAD_PROFILE_ARB 13
   --  unsupported macro: XCB_GLX_PBUFFER_CLOBBER 0
   --  unsupported macro: XCB_GLX_RENDER 1
   --  unsupported macro: XCB_GLX_RENDER_LARGE 2
   --  unsupported macro: XCB_GLX_CREATE_CONTEXT 3
   --  unsupported macro: XCB_GLX_DESTROY_CONTEXT 4
   --  unsupported macro: XCB_GLX_MAKE_CURRENT 5
   --  unsupported macro: XCB_GLX_IS_DIRECT 6
   --  unsupported macro: XCB_GLX_QUERY_VERSION 7
   --  unsupported macro: XCB_GLX_WAIT_GL 8
   --  unsupported macro: XCB_GLX_WAIT_X 9
   --  unsupported macro: XCB_GLX_COPY_CONTEXT 10
   --  unsupported macro: XCB_GLX_SWAP_BUFFERS 11
   --  unsupported macro: XCB_GLX_USE_X_FONT 12
   --  unsupported macro: XCB_GLX_CREATE_GLX_PIXMAP 13
   --  unsupported macro: XCB_GLX_GET_VISUAL_CONFIGS 14
   --  unsupported macro: XCB_GLX_DESTROY_GLX_PIXMAP 15
   --  unsupported macro: XCB_GLX_VENDOR_PRIVATE 16
   --  unsupported macro: XCB_GLX_VENDOR_PRIVATE_WITH_REPLY 17
   --  unsupported macro: XCB_GLX_QUERY_EXTENSIONS_STRING 18
   --  unsupported macro: XCB_GLX_QUERY_SERVER_STRING 19
   --  unsupported macro: XCB_GLX_CLIENT_INFO 20
   --  unsupported macro: XCB_GLX_GET_FB_CONFIGS 21
   --  unsupported macro: XCB_GLX_CREATE_PIXMAP 22
   --  unsupported macro: XCB_GLX_DESTROY_PIXMAP 23
   --  unsupported macro: XCB_GLX_CREATE_NEW_CONTEXT 24
   --  unsupported macro: XCB_GLX_QUERY_CONTEXT 25
   --  unsupported macro: XCB_GLX_MAKE_CONTEXT_CURRENT 26
   --  unsupported macro: XCB_GLX_CREATE_PBUFFER 27
   --  unsupported macro: XCB_GLX_DESTROY_PBUFFER 28
   --  unsupported macro: XCB_GLX_GET_DRAWABLE_ATTRIBUTES 29
   --  unsupported macro: XCB_GLX_CHANGE_DRAWABLE_ATTRIBUTES 30
   --  unsupported macro: XCB_GLX_CREATE_WINDOW 31
   --  unsupported macro: XCB_GLX_DELETE_WINDOW 32
   --  unsupported macro: XCB_GLX_SET_CLIENT_INFO_ARB 33
   --  unsupported macro: XCB_GLX_CREATE_CONTEXT_ATTRIBS_ARB 34
   --  unsupported macro: XCB_GLX_SET_CLIENT_INFO_2ARB 35
   --  unsupported macro: XCB_GLX_NEW_LIST 101
   --  unsupported macro: XCB_GLX_END_LIST 102
   --  unsupported macro: XCB_GLX_DELETE_LISTS 103
   --  unsupported macro: XCB_GLX_GEN_LISTS 104
   --  unsupported macro: XCB_GLX_FEEDBACK_BUFFER 105
   --  unsupported macro: XCB_GLX_SELECT_BUFFER 106
   --  unsupported macro: XCB_GLX_RENDER_MODE 107
   --  unsupported macro: XCB_GLX_FINISH 108
   --  unsupported macro: XCB_GLX_PIXEL_STOREF 109
   --  unsupported macro: XCB_GLX_PIXEL_STOREI 110
   --  unsupported macro: XCB_GLX_READ_PIXELS 111
   --  unsupported macro: XCB_GLX_GET_BOOLEANV 112
   --  unsupported macro: XCB_GLX_GET_CLIP_PLANE 113
   --  unsupported macro: XCB_GLX_GET_DOUBLEV 114
   --  unsupported macro: XCB_GLX_GET_ERROR 115
   --  unsupported macro: XCB_GLX_GET_FLOATV 116
   --  unsupported macro: XCB_GLX_GET_INTEGERV 117
   --  unsupported macro: XCB_GLX_GET_LIGHTFV 118
   --  unsupported macro: XCB_GLX_GET_LIGHTIV 119
   --  unsupported macro: XCB_GLX_GET_MAPDV 120
   --  unsupported macro: XCB_GLX_GET_MAPFV 121
   --  unsupported macro: XCB_GLX_GET_MAPIV 122
   --  unsupported macro: XCB_GLX_GET_MATERIALFV 123
   --  unsupported macro: XCB_GLX_GET_MATERIALIV 124
   --  unsupported macro: XCB_GLX_GET_PIXEL_MAPFV 125
   --  unsupported macro: XCB_GLX_GET_PIXEL_MAPUIV 126
   --  unsupported macro: XCB_GLX_GET_PIXEL_MAPUSV 127
   --  unsupported macro: XCB_GLX_GET_POLYGON_STIPPLE 128
   --  unsupported macro: XCB_GLX_GET_STRING 129
   --  unsupported macro: XCB_GLX_GET_TEX_ENVFV 130
   --  unsupported macro: XCB_GLX_GET_TEX_ENVIV 131
   --  unsupported macro: XCB_GLX_GET_TEX_GENDV 132
   --  unsupported macro: XCB_GLX_GET_TEX_GENFV 133
   --  unsupported macro: XCB_GLX_GET_TEX_GENIV 134
   --  unsupported macro: XCB_GLX_GET_TEX_IMAGE 135
   --  unsupported macro: XCB_GLX_GET_TEX_PARAMETERFV 136
   --  unsupported macro: XCB_GLX_GET_TEX_PARAMETERIV 137
   --  unsupported macro: XCB_GLX_GET_TEX_LEVEL_PARAMETERFV 138
   --  unsupported macro: XCB_GLX_GET_TEX_LEVEL_PARAMETERIV 139
   --  unsupported macro: XCB_GLX_IS_LIST 141
   --  unsupported macro: XCB_GLX_FLUSH 142
   --  unsupported macro: XCB_GLX_ARE_TEXTURES_RESIDENT 143
   --  unsupported macro: XCB_GLX_DELETE_TEXTURES 144
   --  unsupported macro: XCB_GLX_GEN_TEXTURES 145
   --  unsupported macro: XCB_GLX_IS_TEXTURE 146
   --  unsupported macro: XCB_GLX_GET_COLOR_TABLE 147
   --  unsupported macro: XCB_GLX_GET_COLOR_TABLE_PARAMETERFV 148
   --  unsupported macro: XCB_GLX_GET_COLOR_TABLE_PARAMETERIV 149
   --  unsupported macro: XCB_GLX_GET_CONVOLUTION_FILTER 150
   --  unsupported macro: XCB_GLX_GET_CONVOLUTION_PARAMETERFV 151
   --  unsupported macro: XCB_GLX_GET_CONVOLUTION_PARAMETERIV 152
   --  unsupported macro: XCB_GLX_GET_SEPARABLE_FILTER 153
   --  unsupported macro: XCB_GLX_GET_HISTOGRAM 154
   --  unsupported macro: XCB_GLX_GET_HISTOGRAM_PARAMETERFV 155
   --  unsupported macro: XCB_GLX_GET_HISTOGRAM_PARAMETERIV 156
   --  unsupported macro: XCB_GLX_GET_MINMAX 157
   --  unsupported macro: XCB_GLX_GET_MINMAX_PARAMETERFV 158
   --  unsupported macro: XCB_GLX_GET_MINMAX_PARAMETERIV 159
   --  unsupported macro: XCB_GLX_GET_COMPRESSED_TEX_IMAGE_ARB 160
   --  unsupported macro: XCB_GLX_DELETE_QUERIES_ARB 161
   --  unsupported macro: XCB_GLX_GEN_QUERIES_ARB 162
   --  unsupported macro: XCB_GLX_IS_QUERY_ARB 163
   --  unsupported macro: XCB_GLX_GET_QUERYIV_ARB 164
   --  unsupported macro: XCB_GLX_GET_QUERY_OBJECTIV_ARB 165
   --  unsupported macro: XCB_GLX_GET_QUERY_OBJECTUIV_ARB 166
  -- * This file generated automatically from glx.xml by c_client.py.
  -- * Edit at your peril.
  --  

  --*
  -- * @defgroup XCB_Glx_API XCB Glx API
  -- * @brief Glx XCB Protocol Implementation.
  -- * @{
  -- * 

   xcb_glx_id : aliased xcb_xcb_h.xcb_extension_t;  -- /usr/include/xcb/glx.h:25
   pragma Import (C, xcb_glx_id, "xcb_glx_id");

   subtype xcb_glx_pixmap_t is stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:27

  --*
  -- * @brief xcb_glx_pixmap_iterator_t
  -- * 

  --*<   
   type xcb_glx_pixmap_iterator_t is record
      data : access xcb_glx_pixmap_t;  -- /usr/include/xcb/glx.h:33
      c_rem : aliased int;  -- /usr/include/xcb/glx.h:34
      index : aliased int;  -- /usr/include/xcb/glx.h:35
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_pixmap_iterator_t);  -- /usr/include/xcb/glx.h:32

  --*<   
  --*<   
   subtype xcb_glx_context_t is stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:38

  --*
  -- * @brief xcb_glx_context_iterator_t
  -- * 

  --*<   
   type xcb_glx_context_iterator_t is record
      data : access xcb_glx_context_t;  -- /usr/include/xcb/glx.h:44
      c_rem : aliased int;  -- /usr/include/xcb/glx.h:45
      index : aliased int;  -- /usr/include/xcb/glx.h:46
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_context_iterator_t);  -- /usr/include/xcb/glx.h:43

  --*<   
  --*<   
   subtype xcb_glx_pbuffer_t is stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:49

  --*
  -- * @brief xcb_glx_pbuffer_iterator_t
  -- * 

  --*<   
   type xcb_glx_pbuffer_iterator_t is record
      data : access xcb_glx_pbuffer_t;  -- /usr/include/xcb/glx.h:55
      c_rem : aliased int;  -- /usr/include/xcb/glx.h:56
      index : aliased int;  -- /usr/include/xcb/glx.h:57
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_pbuffer_iterator_t);  -- /usr/include/xcb/glx.h:54

  --*<   
  --*<   
   subtype xcb_glx_window_t is stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:60

  --*
  -- * @brief xcb_glx_window_iterator_t
  -- * 

  --*<   
   type xcb_glx_window_iterator_t is record
      data : access xcb_glx_window_t;  -- /usr/include/xcb/glx.h:66
      c_rem : aliased int;  -- /usr/include/xcb/glx.h:67
      index : aliased int;  -- /usr/include/xcb/glx.h:68
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_window_iterator_t);  -- /usr/include/xcb/glx.h:65

  --*<   
  --*<   
   subtype xcb_glx_fbconfig_t is stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:71

  --*
  -- * @brief xcb_glx_fbconfig_iterator_t
  -- * 

  --*<   
   type xcb_glx_fbconfig_iterator_t is record
      data : access xcb_glx_fbconfig_t;  -- /usr/include/xcb/glx.h:77
      c_rem : aliased int;  -- /usr/include/xcb/glx.h:78
      index : aliased int;  -- /usr/include/xcb/glx.h:79
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_fbconfig_iterator_t);  -- /usr/include/xcb/glx.h:76

  --*<   
  --*<   
   subtype xcb_glx_drawable_t is stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:82

  --*
  -- * @brief xcb_glx_drawable_iterator_t
  -- * 

  --*<   
   type xcb_glx_drawable_iterator_t is record
      data : access xcb_glx_drawable_t;  -- /usr/include/xcb/glx.h:88
      c_rem : aliased int;  -- /usr/include/xcb/glx.h:89
      index : aliased int;  -- /usr/include/xcb/glx.h:90
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_drawable_iterator_t);  -- /usr/include/xcb/glx.h:87

  --*<   
  --*<   
   subtype xcb_glx_float32_t is float;  -- /usr/include/xcb/glx.h:93

  --*
  -- * @brief xcb_glx_float32_iterator_t
  -- * 

  --*<   
   type xcb_glx_float32_iterator_t is record
      data : access xcb_glx_float32_t;  -- /usr/include/xcb/glx.h:99
      c_rem : aliased int;  -- /usr/include/xcb/glx.h:100
      index : aliased int;  -- /usr/include/xcb/glx.h:101
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_float32_iterator_t);  -- /usr/include/xcb/glx.h:98

  --*<   
  --*<   
   subtype xcb_glx_float64_t is double;  -- /usr/include/xcb/glx.h:104

  --*
  -- * @brief xcb_glx_float64_iterator_t
  -- * 

  --*<   
   type xcb_glx_float64_iterator_t is record
      data : access xcb_glx_float64_t;  -- /usr/include/xcb/glx.h:110
      c_rem : aliased int;  -- /usr/include/xcb/glx.h:111
      index : aliased int;  -- /usr/include/xcb/glx.h:112
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_float64_iterator_t);  -- /usr/include/xcb/glx.h:109

  --*<   
  --*<   
   subtype xcb_glx_bool32_t is stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:115

  --*
  -- * @brief xcb_glx_bool32_iterator_t
  -- * 

  --*<   
   type xcb_glx_bool32_iterator_t is record
      data : access xcb_glx_bool32_t;  -- /usr/include/xcb/glx.h:121
      c_rem : aliased int;  -- /usr/include/xcb/glx.h:122
      index : aliased int;  -- /usr/include/xcb/glx.h:123
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_bool32_iterator_t);  -- /usr/include/xcb/glx.h:120

  --*<   
  --*<   
   subtype xcb_glx_context_tag_t is stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:126

  --*
  -- * @brief xcb_glx_context_tag_iterator_t
  -- * 

  --*<   
   type xcb_glx_context_tag_iterator_t is record
      data : access xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:132
      c_rem : aliased int;  -- /usr/include/xcb/glx.h:133
      index : aliased int;  -- /usr/include/xcb/glx.h:134
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_context_tag_iterator_t);  -- /usr/include/xcb/glx.h:131

  --*<   
  --*<   
  --* Opcode for xcb_glx_generic.  
  --*
  -- * @brief xcb_glx_generic_error_t
  -- * 

  --*<   
   type anon3995_anon3997_array is array (0 .. 20) of aliased stdint_h.uint8_t;
   type xcb_glx_generic_error_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:144
      error_code : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:145
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:146
      bad_value : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:147
      minor_opcode : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:148
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:149
      pad0 : aliased anon3995_anon3997_array;  -- /usr/include/xcb/glx.h:150
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_generic_error_t);  -- /usr/include/xcb/glx.h:143

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_glx_bad_context.  
   subtype xcb_glx_bad_context_error_t is xcb_glx_generic_error_t;

  --* Opcode for xcb_glx_bad_context_state.  
   subtype xcb_glx_bad_context_state_error_t is xcb_glx_generic_error_t;

  --* Opcode for xcb_glx_bad_drawable.  
   subtype xcb_glx_bad_drawable_error_t is xcb_glx_generic_error_t;

  --* Opcode for xcb_glx_bad_pixmap.  
   subtype xcb_glx_bad_pixmap_error_t is xcb_glx_generic_error_t;

  --* Opcode for xcb_glx_bad_context_tag.  
   subtype xcb_glx_bad_context_tag_error_t is xcb_glx_generic_error_t;

  --* Opcode for xcb_glx_bad_current_window.  
   subtype xcb_glx_bad_current_window_error_t is xcb_glx_generic_error_t;

  --* Opcode for xcb_glx_bad_render_request.  
   subtype xcb_glx_bad_render_request_error_t is xcb_glx_generic_error_t;

  --* Opcode for xcb_glx_bad_large_request.  
   subtype xcb_glx_bad_large_request_error_t is xcb_glx_generic_error_t;

  --* Opcode for xcb_glx_unsupported_private_request.  
   subtype xcb_glx_unsupported_private_request_error_t is xcb_glx_generic_error_t;

  --* Opcode for xcb_glx_bad_fb_config.  
   subtype xcb_glx_bad_fb_config_error_t is xcb_glx_generic_error_t;

  --* Opcode for xcb_glx_bad_pbuffer.  
   subtype xcb_glx_bad_pbuffer_error_t is xcb_glx_generic_error_t;

  --* Opcode for xcb_glx_bad_current_drawable.  
   subtype xcb_glx_bad_current_drawable_error_t is xcb_glx_generic_error_t;

  --* Opcode for xcb_glx_bad_window.  
   subtype xcb_glx_bad_window_error_t is xcb_glx_generic_error_t;

  --* Opcode for xcb_glx_glx_bad_profile_arb.  
   subtype xcb_glx_glx_bad_profile_arb_error_t is xcb_glx_generic_error_t;

  --* Opcode for xcb_glx_pbuffer_clobber.  
  --*
  -- * @brief xcb_glx_pbuffer_clobber_event_t
  -- * 

  --*<   
   type anon4014_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type xcb_glx_pbuffer_clobber_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:230
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:231
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:232
      event_type : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:233
      draw_type : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:234
      drawable : aliased xcb_glx_drawable_t;  -- /usr/include/xcb/glx.h:235
      b_mask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:236
      aux_buffer : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:237
      x : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:238
      y : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:239
      width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:240
      height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:241
      count : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:242
      pad1 : aliased anon4014_anon1768_array;  -- /usr/include/xcb/glx.h:243
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_pbuffer_clobber_event_t);  -- /usr/include/xcb/glx.h:229

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
   subtype xcb_glx_pbcet_t is unsigned;
   XCB_GLX_PBCET_DAMAGED : constant xcb_glx_pbcet_t := 32791;
   XCB_GLX_PBCET_SAVED : constant xcb_glx_pbcet_t := 32792;  -- /usr/include/xcb/glx.h:246

   subtype xcb_glx_pbcdt_t is unsigned;
   XCB_GLX_PBCDT_WINDOW : constant xcb_glx_pbcdt_t := 32793;
   XCB_GLX_PBCDT_PBUFFER : constant xcb_glx_pbcdt_t := 32794;  -- /usr/include/xcb/glx.h:251

  --* Opcode for xcb_glx_render.  
  --*
  -- * @brief xcb_glx_render_request_t
  -- * 

  --*<   
   type xcb_glx_render_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:263
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:264
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:265
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:266
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_render_request_t);  -- /usr/include/xcb/glx.h:262

  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_glx_render_large.  
  --*
  -- * @brief xcb_glx_render_large_request_t
  -- * 

  --*<   
   type xcb_glx_render_large_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:276
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:277
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:278
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:279
      request_num : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:280
      request_total : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:281
      data_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:282
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_render_large_request_t);  -- /usr/include/xcb/glx.h:275

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_glx_create_context.  
  --*
  -- * @brief xcb_glx_create_context_request_t
  -- * 

  --*<   
   type anon4026_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_glx_create_context_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:292
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:293
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:294
      context : aliased xcb_glx_context_t;  -- /usr/include/xcb/glx.h:295
      visual : aliased xcb_xproto_h.xcb_visualid_t;  -- /usr/include/xcb/glx.h:296
      screen : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:297
      share_list : aliased xcb_glx_context_t;  -- /usr/include/xcb/glx.h:298
      is_direct : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:299
      pad0 : aliased anon4026_anon1853_array;  -- /usr/include/xcb/glx.h:300
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_create_context_request_t);  -- /usr/include/xcb/glx.h:291

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_glx_destroy_context.  
  --*
  -- * @brief xcb_glx_destroy_context_request_t
  -- * 

  --*<   
   type xcb_glx_destroy_context_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:310
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:311
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:312
      context : aliased xcb_glx_context_t;  -- /usr/include/xcb/glx.h:313
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_destroy_context_request_t);  -- /usr/include/xcb/glx.h:309

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_make_current_cookie_t
  -- * 

  --*<   
   type xcb_glx_make_current_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:320
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_make_current_cookie_t);  -- /usr/include/xcb/glx.h:319

  --* Opcode for xcb_glx_make_current.  
  --*
  -- * @brief xcb_glx_make_current_request_t
  -- * 

  --*<   
   type xcb_glx_make_current_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:330
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:331
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:332
      drawable : aliased xcb_glx_drawable_t;  -- /usr/include/xcb/glx.h:333
      context : aliased xcb_glx_context_t;  -- /usr/include/xcb/glx.h:334
      old_context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:335
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_make_current_request_t);  -- /usr/include/xcb/glx.h:329

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_make_current_reply_t
  -- * 

  --*<   
   type anon4036_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_glx_make_current_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:342
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:343
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:344
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:345
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:346
      pad1 : aliased anon4036_anon1939_array;  -- /usr/include/xcb/glx.h:347
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_make_current_reply_t);  -- /usr/include/xcb/glx.h:341

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_is_direct_cookie_t
  -- * 

  --*<   
   type xcb_glx_is_direct_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:354
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_is_direct_cookie_t);  -- /usr/include/xcb/glx.h:353

  --* Opcode for xcb_glx_is_direct.  
  --*
  -- * @brief xcb_glx_is_direct_request_t
  -- * 

  --*<   
   type xcb_glx_is_direct_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:364
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:365
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:366
      context : aliased xcb_glx_context_t;  -- /usr/include/xcb/glx.h:367
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_is_direct_request_t);  -- /usr/include/xcb/glx.h:363

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_is_direct_reply_t
  -- * 

  --*<   
   type anon4044_anon4046_array is array (0 .. 22) of aliased stdint_h.uint8_t;
   type xcb_glx_is_direct_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:374
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:375
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:376
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:377
      is_direct : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:378
      pad1 : aliased anon4044_anon4046_array;  -- /usr/include/xcb/glx.h:379
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_is_direct_reply_t);  -- /usr/include/xcb/glx.h:373

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_query_version_cookie_t
  -- * 

  --*<   
   type xcb_glx_query_version_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:386
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_query_version_cookie_t);  -- /usr/include/xcb/glx.h:385

  --* Opcode for xcb_glx_query_version.  
  --*
  -- * @brief xcb_glx_query_version_request_t
  -- * 

  --*<   
   type xcb_glx_query_version_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:396
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:397
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:398
      major_version : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:399
      minor_version : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:400
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_query_version_request_t);  -- /usr/include/xcb/glx.h:395

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_query_version_reply_t
  -- * 

  --*<   
   type anon4053_anon4055_array is array (0 .. 15) of aliased stdint_h.uint8_t;
   type xcb_glx_query_version_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:407
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:408
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:409
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:410
      major_version : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:411
      minor_version : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:412
      pad1 : aliased anon4053_anon4055_array;  -- /usr/include/xcb/glx.h:413
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_query_version_reply_t);  -- /usr/include/xcb/glx.h:406

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_glx_wait_gl.  
  --*
  -- * @brief xcb_glx_wait_gl_request_t
  -- * 

  --*<   
   type xcb_glx_wait_gl_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:423
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:424
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:425
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:426
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_wait_gl_request_t);  -- /usr/include/xcb/glx.h:422

  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_glx_wait_x.  
  --*
  -- * @brief xcb_glx_wait_x_request_t
  -- * 

  --*<   
   type xcb_glx_wait_x_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:436
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:437
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:438
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:439
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_wait_x_request_t);  -- /usr/include/xcb/glx.h:435

  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_glx_copy_context.  
  --*
  -- * @brief xcb_glx_copy_context_request_t
  -- * 

  --*<   
   type xcb_glx_copy_context_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:449
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:450
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:451
      src : aliased xcb_glx_context_t;  -- /usr/include/xcb/glx.h:452
      dest : aliased xcb_glx_context_t;  -- /usr/include/xcb/glx.h:453
      mask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:454
      src_context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:455
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_copy_context_request_t);  -- /usr/include/xcb/glx.h:448

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
   subtype xcb_glx_gc_t is unsigned;
   XCB_GLX_GC_GL_CURRENT_BIT : constant xcb_glx_gc_t := 1;
   XCB_GLX_GC_GL_POINT_BIT : constant xcb_glx_gc_t := 2;
   XCB_GLX_GC_GL_LINE_BIT : constant xcb_glx_gc_t := 4;
   XCB_GLX_GC_GL_POLYGON_BIT : constant xcb_glx_gc_t := 8;
   XCB_GLX_GC_GL_POLYGON_STIPPLE_BIT : constant xcb_glx_gc_t := 16;
   XCB_GLX_GC_GL_PIXEL_MODE_BIT : constant xcb_glx_gc_t := 32;
   XCB_GLX_GC_GL_LIGHTING_BIT : constant xcb_glx_gc_t := 64;
   XCB_GLX_GC_GL_FOG_BIT : constant xcb_glx_gc_t := 128;
   XCB_GLX_GC_GL_DEPTH_BUFFER_BIT : constant xcb_glx_gc_t := 256;
   XCB_GLX_GC_GL_ACCUM_BUFFER_BIT : constant xcb_glx_gc_t := 512;
   XCB_GLX_GC_GL_STENCIL_BUFFER_BIT : constant xcb_glx_gc_t := 1024;
   XCB_GLX_GC_GL_VIEWPORT_BIT : constant xcb_glx_gc_t := 2048;
   XCB_GLX_GC_GL_TRANSFORM_BIT : constant xcb_glx_gc_t := 4096;
   XCB_GLX_GC_GL_ENABLE_BIT : constant xcb_glx_gc_t := 8192;
   XCB_GLX_GC_GL_COLOR_BUFFER_BIT : constant xcb_glx_gc_t := 16384;
   XCB_GLX_GC_GL_HINT_BIT : constant xcb_glx_gc_t := 32768;
   XCB_GLX_GC_GL_EVAL_BIT : constant xcb_glx_gc_t := 65536;
   XCB_GLX_GC_GL_LIST_BIT : constant xcb_glx_gc_t := 131072;
   XCB_GLX_GC_GL_TEXTURE_BIT : constant xcb_glx_gc_t := 262144;
   XCB_GLX_GC_GL_SCISSOR_BIT : constant xcb_glx_gc_t := 524288;
   XCB_GLX_GC_GL_ALL_ATTRIB_BITS : constant xcb_glx_gc_t := 16777215;  -- /usr/include/xcb/glx.h:458

  --* Opcode for xcb_glx_swap_buffers.  
  --*
  -- * @brief xcb_glx_swap_buffers_request_t
  -- * 

  --*<   
   type xcb_glx_swap_buffers_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:489
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:490
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:491
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:492
      drawable : aliased xcb_glx_drawable_t;  -- /usr/include/xcb/glx.h:493
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_swap_buffers_request_t);  -- /usr/include/xcb/glx.h:488

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_glx_use_x_font.  
  --*
  -- * @brief xcb_glx_use_x_font_request_t
  -- * 

  --*<   
   type xcb_glx_use_x_font_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:503
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:504
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:505
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:506
      font : aliased xcb_xproto_h.xcb_font_t;  -- /usr/include/xcb/glx.h:507
      first : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:508
      count : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:509
      list_base : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:510
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_use_x_font_request_t);  -- /usr/include/xcb/glx.h:502

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_glx_create_glx_pixmap.  
  --*
  -- * @brief xcb_glx_create_glx_pixmap_request_t
  -- * 

  --*<   
   type xcb_glx_create_glx_pixmap_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:520
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:521
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:522
      screen : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:523
      visual : aliased xcb_xproto_h.xcb_visualid_t;  -- /usr/include/xcb/glx.h:524
      pixmap : aliased xcb_xproto_h.xcb_pixmap_t;  -- /usr/include/xcb/glx.h:525
      glx_pixmap : aliased xcb_glx_pixmap_t;  -- /usr/include/xcb/glx.h:526
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_create_glx_pixmap_request_t);  -- /usr/include/xcb/glx.h:519

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_visual_configs_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_visual_configs_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:533
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_visual_configs_cookie_t);  -- /usr/include/xcb/glx.h:532

  --* Opcode for xcb_glx_get_visual_configs.  
  --*
  -- * @brief xcb_glx_get_visual_configs_request_t
  -- * 

  --*<   
   type xcb_glx_get_visual_configs_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:543
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:544
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:545
      screen : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:546
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_visual_configs_request_t);  -- /usr/include/xcb/glx.h:542

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_visual_configs_reply_t
  -- * 

  --*<   
   type anon4076_anon4055_array is array (0 .. 15) of aliased stdint_h.uint8_t;
   type xcb_glx_get_visual_configs_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:553
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:554
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:555
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:556
      num_visuals : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:557
      num_properties : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:558
      pad1 : aliased anon4076_anon4055_array;  -- /usr/include/xcb/glx.h:559
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_visual_configs_reply_t);  -- /usr/include/xcb/glx.h:552

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_glx_destroy_glx_pixmap.  
  --*
  -- * @brief xcb_glx_destroy_glx_pixmap_request_t
  -- * 

  --*<   
   type xcb_glx_destroy_glx_pixmap_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:569
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:570
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:571
      glx_pixmap : aliased xcb_glx_pixmap_t;  -- /usr/include/xcb/glx.h:572
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_destroy_glx_pixmap_request_t);  -- /usr/include/xcb/glx.h:568

  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_glx_vendor_private.  
  --*
  -- * @brief xcb_glx_vendor_private_request_t
  -- * 

  --*<   
   type xcb_glx_vendor_private_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:582
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:583
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:584
      vendor_code : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:585
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:586
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_vendor_private_request_t);  -- /usr/include/xcb/glx.h:581

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_vendor_private_with_reply_cookie_t
  -- * 

  --*<   
   type xcb_glx_vendor_private_with_reply_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:593
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_vendor_private_with_reply_cookie_t);  -- /usr/include/xcb/glx.h:592

  --* Opcode for xcb_glx_vendor_private_with_reply.  
  --*
  -- * @brief xcb_glx_vendor_private_with_reply_request_t
  -- * 

  --*<   
   type xcb_glx_vendor_private_with_reply_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:603
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:604
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:605
      vendor_code : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:606
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:607
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_vendor_private_with_reply_request_t);  -- /usr/include/xcb/glx.h:602

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_vendor_private_with_reply_reply_t
  -- * 

  --*<   
   type anon4088_anon2504_array is array (0 .. 23) of aliased stdint_h.uint8_t;
   type xcb_glx_vendor_private_with_reply_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:614
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:615
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:616
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:617
      retval : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:618
      data1 : aliased anon4088_anon2504_array;  -- /usr/include/xcb/glx.h:619
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_vendor_private_with_reply_reply_t);  -- /usr/include/xcb/glx.h:613

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_query_extensions_string_cookie_t
  -- * 

  --*<   
   type xcb_glx_query_extensions_string_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:626
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_query_extensions_string_cookie_t);  -- /usr/include/xcb/glx.h:625

  --* Opcode for xcb_glx_query_extensions_string.  
  --*
  -- * @brief xcb_glx_query_extensions_string_request_t
  -- * 

  --*<   
   type xcb_glx_query_extensions_string_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:636
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:637
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:638
      screen : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:639
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_query_extensions_string_request_t);  -- /usr/include/xcb/glx.h:635

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_query_extensions_string_reply_t
  -- * 

  --*<   
   type anon4096_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type anon4096_anon4055_array is array (0 .. 15) of aliased stdint_h.uint8_t;
   type xcb_glx_query_extensions_string_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:646
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:647
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:648
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:649
      pad1 : aliased anon4096_anon1768_array;  -- /usr/include/xcb/glx.h:650
      n : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:651
      pad2 : aliased anon4096_anon4055_array;  -- /usr/include/xcb/glx.h:652
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_query_extensions_string_reply_t);  -- /usr/include/xcb/glx.h:645

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_query_server_string_cookie_t
  -- * 

  --*<   
   type xcb_glx_query_server_string_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:659
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_query_server_string_cookie_t);  -- /usr/include/xcb/glx.h:658

  --* Opcode for xcb_glx_query_server_string.  
  --*
  -- * @brief xcb_glx_query_server_string_request_t
  -- * 

  --*<   
   type xcb_glx_query_server_string_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:669
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:670
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:671
      screen : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:672
      name : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:673
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_query_server_string_request_t);  -- /usr/include/xcb/glx.h:668

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_query_server_string_reply_t
  -- * 

  --*<   
   type anon4106_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type anon4106_anon4055_array is array (0 .. 15) of aliased stdint_h.uint8_t;
   type xcb_glx_query_server_string_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:680
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:681
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:682
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:683
      pad1 : aliased anon4106_anon1768_array;  -- /usr/include/xcb/glx.h:684
      str_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:685
      pad2 : aliased anon4106_anon4055_array;  -- /usr/include/xcb/glx.h:686
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_query_server_string_reply_t);  -- /usr/include/xcb/glx.h:679

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_glx_client_info.  
  --*
  -- * @brief xcb_glx_client_info_request_t
  -- * 

  --*<   
   type xcb_glx_client_info_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:696
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:697
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:698
      major_version : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:699
      minor_version : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:700
      str_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:701
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_client_info_request_t);  -- /usr/include/xcb/glx.h:695

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_fb_configs_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_fb_configs_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:708
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_fb_configs_cookie_t);  -- /usr/include/xcb/glx.h:707

  --* Opcode for xcb_glx_get_fb_configs.  
  --*
  -- * @brief xcb_glx_get_fb_configs_request_t
  -- * 

  --*<   
   type xcb_glx_get_fb_configs_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:718
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:719
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:720
      screen : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:721
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_fb_configs_request_t);  -- /usr/include/xcb/glx.h:717

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_fb_configs_reply_t
  -- * 

  --*<   
   type anon4118_anon4055_array is array (0 .. 15) of aliased stdint_h.uint8_t;
   type xcb_glx_get_fb_configs_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:728
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:729
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:730
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:731
      num_FB_configs : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:732
      num_properties : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:733
      pad1 : aliased anon4118_anon4055_array;  -- /usr/include/xcb/glx.h:734
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_fb_configs_reply_t);  -- /usr/include/xcb/glx.h:727

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_glx_create_pixmap.  
  --*
  -- * @brief xcb_glx_create_pixmap_request_t
  -- * 

  --*<   
   type xcb_glx_create_pixmap_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:744
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:745
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:746
      screen : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:747
      fbconfig : aliased xcb_glx_fbconfig_t;  -- /usr/include/xcb/glx.h:748
      pixmap : aliased xcb_xproto_h.xcb_pixmap_t;  -- /usr/include/xcb/glx.h:749
      glx_pixmap : aliased xcb_glx_pixmap_t;  -- /usr/include/xcb/glx.h:750
      num_attribs : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:751
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_create_pixmap_request_t);  -- /usr/include/xcb/glx.h:743

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_glx_destroy_pixmap.  
  --*
  -- * @brief xcb_glx_destroy_pixmap_request_t
  -- * 

  --*<   
   type xcb_glx_destroy_pixmap_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:761
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:762
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:763
      glx_pixmap : aliased xcb_glx_pixmap_t;  -- /usr/include/xcb/glx.h:764
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_destroy_pixmap_request_t);  -- /usr/include/xcb/glx.h:760

  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_glx_create_new_context.  
  --*
  -- * @brief xcb_glx_create_new_context_request_t
  -- * 

  --*<   
   type anon4126_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_glx_create_new_context_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:774
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:775
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:776
      context : aliased xcb_glx_context_t;  -- /usr/include/xcb/glx.h:777
      fbconfig : aliased xcb_glx_fbconfig_t;  -- /usr/include/xcb/glx.h:778
      screen : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:779
      render_type : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:780
      share_list : aliased xcb_glx_context_t;  -- /usr/include/xcb/glx.h:781
      is_direct : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:782
      pad0 : aliased anon4126_anon1853_array;  -- /usr/include/xcb/glx.h:783
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_create_new_context_request_t);  -- /usr/include/xcb/glx.h:773

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
  -- * @brief xcb_glx_query_context_cookie_t
  -- * 

  --*<   
   type xcb_glx_query_context_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:790
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_query_context_cookie_t);  -- /usr/include/xcb/glx.h:789

  --* Opcode for xcb_glx_query_context.  
  --*
  -- * @brief xcb_glx_query_context_request_t
  -- * 

  --*<   
   type xcb_glx_query_context_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:800
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:801
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:802
      context : aliased xcb_glx_context_t;  -- /usr/include/xcb/glx.h:803
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_query_context_request_t);  -- /usr/include/xcb/glx.h:799

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_query_context_reply_t
  -- * 

  --*<   
   type anon4134_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_glx_query_context_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:810
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:811
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:812
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:813
      num_attribs : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:814
      pad1 : aliased anon4134_anon1939_array;  -- /usr/include/xcb/glx.h:815
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_query_context_reply_t);  -- /usr/include/xcb/glx.h:809

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_make_context_current_cookie_t
  -- * 

  --*<   
   type xcb_glx_make_context_current_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:822
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_make_context_current_cookie_t);  -- /usr/include/xcb/glx.h:821

  --* Opcode for xcb_glx_make_context_current.  
  --*
  -- * @brief xcb_glx_make_context_current_request_t
  -- * 

  --*<   
   type xcb_glx_make_context_current_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:832
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:833
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:834
      old_context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:835
      drawable : aliased xcb_glx_drawable_t;  -- /usr/include/xcb/glx.h:836
      read_drawable : aliased xcb_glx_drawable_t;  -- /usr/include/xcb/glx.h:837
      context : aliased xcb_glx_context_t;  -- /usr/include/xcb/glx.h:838
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_make_context_current_request_t);  -- /usr/include/xcb/glx.h:831

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_make_context_current_reply_t
  -- * 

  --*<   
   type anon4142_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_glx_make_context_current_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:845
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:846
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:847
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:848
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:849
      pad1 : aliased anon4142_anon1939_array;  -- /usr/include/xcb/glx.h:850
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_make_context_current_reply_t);  -- /usr/include/xcb/glx.h:844

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_glx_create_pbuffer.  
  --*
  -- * @brief xcb_glx_create_pbuffer_request_t
  -- * 

  --*<   
   type xcb_glx_create_pbuffer_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:860
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:861
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:862
      screen : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:863
      fbconfig : aliased xcb_glx_fbconfig_t;  -- /usr/include/xcb/glx.h:864
      pbuffer : aliased xcb_glx_pbuffer_t;  -- /usr/include/xcb/glx.h:865
      num_attribs : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:866
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_create_pbuffer_request_t);  -- /usr/include/xcb/glx.h:859

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_glx_destroy_pbuffer.  
  --*
  -- * @brief xcb_glx_destroy_pbuffer_request_t
  -- * 

  --*<   
   type xcb_glx_destroy_pbuffer_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:876
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:877
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:878
      pbuffer : aliased xcb_glx_pbuffer_t;  -- /usr/include/xcb/glx.h:879
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_destroy_pbuffer_request_t);  -- /usr/include/xcb/glx.h:875

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_drawable_attributes_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_drawable_attributes_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:886
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_drawable_attributes_cookie_t);  -- /usr/include/xcb/glx.h:885

  --* Opcode for xcb_glx_get_drawable_attributes.  
  --*
  -- * @brief xcb_glx_get_drawable_attributes_request_t
  -- * 

  --*<   
   type xcb_glx_get_drawable_attributes_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:896
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:897
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:898
      drawable : aliased xcb_glx_drawable_t;  -- /usr/include/xcb/glx.h:899
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_drawable_attributes_request_t);  -- /usr/include/xcb/glx.h:895

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_drawable_attributes_reply_t
  -- * 

  --*<   
   type anon4154_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_glx_get_drawable_attributes_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:906
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:907
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:908
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:909
      num_attribs : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:910
      pad1 : aliased anon4154_anon1939_array;  -- /usr/include/xcb/glx.h:911
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_drawable_attributes_reply_t);  -- /usr/include/xcb/glx.h:905

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_glx_change_drawable_attributes.  
  --*
  -- * @brief xcb_glx_change_drawable_attributes_request_t
  -- * 

  --*<   
   type xcb_glx_change_drawable_attributes_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:921
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:922
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:923
      drawable : aliased xcb_glx_drawable_t;  -- /usr/include/xcb/glx.h:924
      num_attribs : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:925
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_change_drawable_attributes_request_t);  -- /usr/include/xcb/glx.h:920

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_glx_create_window.  
  --*
  -- * @brief xcb_glx_create_window_request_t
  -- * 

  --*<   
   type xcb_glx_create_window_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:935
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:936
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:937
      screen : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:938
      fbconfig : aliased xcb_glx_fbconfig_t;  -- /usr/include/xcb/glx.h:939
      window : aliased xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/glx.h:940
      glx_window : aliased xcb_glx_window_t;  -- /usr/include/xcb/glx.h:941
      num_attribs : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:942
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_create_window_request_t);  -- /usr/include/xcb/glx.h:934

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_glx_delete_window.  
  --*
  -- * @brief xcb_glx_delete_window_request_t
  -- * 

  --*<   
   type xcb_glx_delete_window_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:952
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:953
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:954
      glxwindow : aliased xcb_glx_window_t;  -- /usr/include/xcb/glx.h:955
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_delete_window_request_t);  -- /usr/include/xcb/glx.h:951

  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_glx_set_client_info_arb.  
  --*
  -- * @brief xcb_glx_set_client_info_arb_request_t
  -- * 

  --*<   
   type xcb_glx_set_client_info_arb_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:965
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:966
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:967
      major_version : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:968
      minor_version : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:969
      num_versions : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:970
      gl_str_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:971
      glx_str_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:972
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_set_client_info_arb_request_t);  -- /usr/include/xcb/glx.h:964

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_glx_create_context_attribs_arb.  
  --*
  -- * @brief xcb_glx_create_context_attribs_arb_request_t
  -- * 

  --*<   
   type anon4166_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_glx_create_context_attribs_arb_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:982
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:983
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:984
      context : aliased xcb_glx_context_t;  -- /usr/include/xcb/glx.h:985
      fbconfig : aliased xcb_glx_fbconfig_t;  -- /usr/include/xcb/glx.h:986
      screen : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:987
      share_list : aliased xcb_glx_context_t;  -- /usr/include/xcb/glx.h:988
      is_direct : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:989
      pad0 : aliased anon4166_anon1853_array;  -- /usr/include/xcb/glx.h:990
      num_attribs : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:991
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_create_context_attribs_arb_request_t);  -- /usr/include/xcb/glx.h:981

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_glx_set_client_info_2arb.  
  --*
  -- * @brief xcb_glx_set_client_info_2arb_request_t
  -- * 

  --*<   
   type xcb_glx_set_client_info_2arb_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1001
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1002
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1003
      major_version : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1004
      minor_version : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1005
      num_versions : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1006
      gl_str_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1007
      glx_str_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1008
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_set_client_info_2arb_request_t);  -- /usr/include/xcb/glx.h:1000

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_glx_new_list.  
  --*
  -- * @brief xcb_glx_new_list_request_t
  -- * 

  --*<   
   type xcb_glx_new_list_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1018
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1019
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1020
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:1021
      list : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1022
      mode : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1023
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_new_list_request_t);  -- /usr/include/xcb/glx.h:1017

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_glx_end_list.  
  --*
  -- * @brief xcb_glx_end_list_request_t
  -- * 

  --*<   
   type xcb_glx_end_list_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1033
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1034
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1035
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:1036
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_end_list_request_t);  -- /usr/include/xcb/glx.h:1032

  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_glx_delete_lists.  
  --*
  -- * @brief xcb_glx_delete_lists_request_t
  -- * 

  --*<   
   type xcb_glx_delete_lists_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1046
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1047
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1048
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:1049
      list : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1050
      c_range : aliased sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:1051
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_delete_lists_request_t);  -- /usr/include/xcb/glx.h:1045

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_gen_lists_cookie_t
  -- * 

  --*<   
   type xcb_glx_gen_lists_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:1058
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_gen_lists_cookie_t);  -- /usr/include/xcb/glx.h:1057

  --* Opcode for xcb_glx_gen_lists.  
  --*
  -- * @brief xcb_glx_gen_lists_request_t
  -- * 

  --*<   
   type xcb_glx_gen_lists_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1068
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1069
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1070
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:1071
      c_range : aliased sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:1072
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_gen_lists_request_t);  -- /usr/include/xcb/glx.h:1067

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_gen_lists_reply_t
  -- * 

  --*<   
   type xcb_glx_gen_lists_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1079
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1080
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1081
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1082
      ret_val : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1083
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_gen_lists_reply_t);  -- /usr/include/xcb/glx.h:1078

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_glx_feedback_buffer.  
  --*
  -- * @brief xcb_glx_feedback_buffer_request_t
  -- * 

  --*<   
   type xcb_glx_feedback_buffer_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1093
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1094
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1095
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:1096
      size : aliased sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:1097
      c_type : aliased sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:1098
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_feedback_buffer_request_t);  -- /usr/include/xcb/glx.h:1092

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_glx_select_buffer.  
  --*
  -- * @brief xcb_glx_select_buffer_request_t
  -- * 

  --*<   
   type xcb_glx_select_buffer_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1108
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1109
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1110
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:1111
      size : aliased sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:1112
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_select_buffer_request_t);  -- /usr/include/xcb/glx.h:1107

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_render_mode_cookie_t
  -- * 

  --*<   
   type xcb_glx_render_mode_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:1119
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_render_mode_cookie_t);  -- /usr/include/xcb/glx.h:1118

  --* Opcode for xcb_glx_render_mode.  
  --*
  -- * @brief xcb_glx_render_mode_request_t
  -- * 

  --*<   
   type xcb_glx_render_mode_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1129
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1130
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1131
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:1132
      mode : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1133
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_render_mode_request_t);  -- /usr/include/xcb/glx.h:1128

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_render_mode_reply_t
  -- * 

  --*<   
   type anon4192_anon2079_array is array (0 .. 11) of aliased stdint_h.uint8_t;
   type xcb_glx_render_mode_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1140
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1141
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1142
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1143
      ret_val : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1144
      n : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1145
      new_mode : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1146
      pad1 : aliased anon4192_anon2079_array;  -- /usr/include/xcb/glx.h:1147
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_render_mode_reply_t);  -- /usr/include/xcb/glx.h:1139

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
   subtype xcb_glx_rm_t is unsigned;
   XCB_GLX_RM_GL_RENDER : constant xcb_glx_rm_t := 7168;
   XCB_GLX_RM_GL_FEEDBACK : constant xcb_glx_rm_t := 7169;
   XCB_GLX_RM_GL_SELECT : constant xcb_glx_rm_t := 7170;  -- /usr/include/xcb/glx.h:1150

  --*
  -- * @brief xcb_glx_finish_cookie_t
  -- * 

  --*<   
   type xcb_glx_finish_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:1160
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_finish_cookie_t);  -- /usr/include/xcb/glx.h:1159

  --* Opcode for xcb_glx_finish.  
  --*
  -- * @brief xcb_glx_finish_request_t
  -- * 

  --*<   
   type xcb_glx_finish_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1170
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1171
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1172
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:1173
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_finish_request_t);  -- /usr/include/xcb/glx.h:1169

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_finish_reply_t
  -- * 

  --*<   
   type xcb_glx_finish_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1180
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1181
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1182
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1183
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_finish_reply_t);  -- /usr/include/xcb/glx.h:1179

  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_glx_pixel_storef.  
  --*
  -- * @brief xcb_glx_pixel_storef_request_t
  -- * 

  --*<   
   type xcb_glx_pixel_storef_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1193
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1194
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1195
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:1196
      pname : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1197
      datum : aliased xcb_glx_float32_t;  -- /usr/include/xcb/glx.h:1198
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_pixel_storef_request_t);  -- /usr/include/xcb/glx.h:1192

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_glx_pixel_storei.  
  --*
  -- * @brief xcb_glx_pixel_storei_request_t
  -- * 

  --*<   
   type xcb_glx_pixel_storei_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1208
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1209
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1210
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:1211
      pname : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1212
      datum : aliased sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:1213
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_pixel_storei_request_t);  -- /usr/include/xcb/glx.h:1207

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_read_pixels_cookie_t
  -- * 

  --*<   
   type xcb_glx_read_pixels_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:1220
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_read_pixels_cookie_t);  -- /usr/include/xcb/glx.h:1219

  --* Opcode for xcb_glx_read_pixels.  
  --*
  -- * @brief xcb_glx_read_pixels_request_t
  -- * 

  --*<   
   type xcb_glx_read_pixels_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1230
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1231
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1232
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:1233
      x : aliased sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:1234
      y : aliased sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:1235
      width : aliased sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:1236
      height : aliased sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:1237
      format : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1238
      c_type : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1239
      swap_bytes : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1240
      lsb_first : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1241
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_read_pixels_request_t);  -- /usr/include/xcb/glx.h:1229

  --*<   
  --*<   
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
  -- * @brief xcb_glx_read_pixels_reply_t
  -- * 

  --*<   
   type anon4212_anon2504_array is array (0 .. 23) of aliased stdint_h.uint8_t;
   type xcb_glx_read_pixels_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1248
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1249
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1250
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1251
      pad1 : aliased anon4212_anon2504_array;  -- /usr/include/xcb/glx.h:1252
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_read_pixels_reply_t);  -- /usr/include/xcb/glx.h:1247

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_booleanv_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_booleanv_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:1259
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_booleanv_cookie_t);  -- /usr/include/xcb/glx.h:1258

  --* Opcode for xcb_glx_get_booleanv.  
  --*
  -- * @brief xcb_glx_get_booleanv_request_t
  -- * 

  --*<   
   type xcb_glx_get_booleanv_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1269
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1270
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1271
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:1272
      pname : aliased sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:1273
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_booleanv_request_t);  -- /usr/include/xcb/glx.h:1268

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_booleanv_reply_t
  -- * 

  --*<   
   type anon4220_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type anon4220_anon4224_array is array (0 .. 14) of aliased stdint_h.uint8_t;
   type xcb_glx_get_booleanv_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1280
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1281
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1282
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1283
      pad1 : aliased anon4220_anon1768_array;  -- /usr/include/xcb/glx.h:1284
      n : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1285
      datum : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1286
      pad2 : aliased anon4220_anon4224_array;  -- /usr/include/xcb/glx.h:1287
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_booleanv_reply_t);  -- /usr/include/xcb/glx.h:1279

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_clip_plane_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_clip_plane_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:1294
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_clip_plane_cookie_t);  -- /usr/include/xcb/glx.h:1293

  --* Opcode for xcb_glx_get_clip_plane.  
  --*
  -- * @brief xcb_glx_get_clip_plane_request_t
  -- * 

  --*<   
   type xcb_glx_get_clip_plane_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1304
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1305
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1306
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:1307
      plane : aliased sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:1308
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_clip_plane_request_t);  -- /usr/include/xcb/glx.h:1303

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_clip_plane_reply_t
  -- * 

  --*<   
   type anon4231_anon2504_array is array (0 .. 23) of aliased stdint_h.uint8_t;
   type xcb_glx_get_clip_plane_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1315
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1316
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1317
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1318
      pad1 : aliased anon4231_anon2504_array;  -- /usr/include/xcb/glx.h:1319
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_clip_plane_reply_t);  -- /usr/include/xcb/glx.h:1314

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_doublev_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_doublev_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:1326
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_doublev_cookie_t);  -- /usr/include/xcb/glx.h:1325

  --* Opcode for xcb_glx_get_doublev.  
  --*
  -- * @brief xcb_glx_get_doublev_request_t
  -- * 

  --*<   
   type xcb_glx_get_doublev_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1336
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1337
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1338
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:1339
      pname : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1340
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_doublev_request_t);  -- /usr/include/xcb/glx.h:1335

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_doublev_reply_t
  -- * 

  --*<   
   type anon4239_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type anon4239_anon2427_array is array (0 .. 7) of aliased stdint_h.uint8_t;
   type xcb_glx_get_doublev_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1347
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1348
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1349
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1350
      pad1 : aliased anon4239_anon1768_array;  -- /usr/include/xcb/glx.h:1351
      n : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1352
      datum : aliased xcb_glx_float64_t;  -- /usr/include/xcb/glx.h:1353
      pad2 : aliased anon4239_anon2427_array;  -- /usr/include/xcb/glx.h:1354
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_doublev_reply_t);  -- /usr/include/xcb/glx.h:1346

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_error_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_error_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:1361
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_error_cookie_t);  -- /usr/include/xcb/glx.h:1360

  --* Opcode for xcb_glx_get_error.  
  --*
  -- * @brief xcb_glx_get_error_request_t
  -- * 

  --*<   
   type xcb_glx_get_error_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1371
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1372
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1373
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:1374
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_error_request_t);  -- /usr/include/xcb/glx.h:1370

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_error_reply_t
  -- * 

  --*<   
   type xcb_glx_get_error_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1381
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1382
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1383
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1384
      error : aliased sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:1385
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_error_reply_t);  -- /usr/include/xcb/glx.h:1380

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_floatv_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_floatv_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:1392
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_floatv_cookie_t);  -- /usr/include/xcb/glx.h:1391

  --* Opcode for xcb_glx_get_floatv.  
  --*
  -- * @brief xcb_glx_get_floatv_request_t
  -- * 

  --*<   
   type xcb_glx_get_floatv_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1402
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1403
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1404
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:1405
      pname : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1406
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_floatv_request_t);  -- /usr/include/xcb/glx.h:1401

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_floatv_reply_t
  -- * 

  --*<   
   type anon4255_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type anon4255_anon2079_array is array (0 .. 11) of aliased stdint_h.uint8_t;
   type xcb_glx_get_floatv_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1413
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1414
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1415
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1416
      pad1 : aliased anon4255_anon1768_array;  -- /usr/include/xcb/glx.h:1417
      n : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1418
      datum : aliased xcb_glx_float32_t;  -- /usr/include/xcb/glx.h:1419
      pad2 : aliased anon4255_anon2079_array;  -- /usr/include/xcb/glx.h:1420
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_floatv_reply_t);  -- /usr/include/xcb/glx.h:1412

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_integerv_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_integerv_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:1427
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_integerv_cookie_t);  -- /usr/include/xcb/glx.h:1426

  --* Opcode for xcb_glx_get_integerv.  
  --*
  -- * @brief xcb_glx_get_integerv_request_t
  -- * 

  --*<   
   type xcb_glx_get_integerv_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1437
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1438
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1439
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:1440
      pname : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1441
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_integerv_request_t);  -- /usr/include/xcb/glx.h:1436

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_integerv_reply_t
  -- * 

  --*<   
   type anon4265_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type anon4265_anon2079_array is array (0 .. 11) of aliased stdint_h.uint8_t;
   type xcb_glx_get_integerv_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1448
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1449
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1450
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1451
      pad1 : aliased anon4265_anon1768_array;  -- /usr/include/xcb/glx.h:1452
      n : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1453
      datum : aliased sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:1454
      pad2 : aliased anon4265_anon2079_array;  -- /usr/include/xcb/glx.h:1455
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_integerv_reply_t);  -- /usr/include/xcb/glx.h:1447

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_lightfv_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_lightfv_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:1462
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_lightfv_cookie_t);  -- /usr/include/xcb/glx.h:1461

  --* Opcode for xcb_glx_get_lightfv.  
  --*
  -- * @brief xcb_glx_get_lightfv_request_t
  -- * 

  --*<   
   type xcb_glx_get_lightfv_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1472
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1473
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1474
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:1475
      light : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1476
      pname : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1477
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_lightfv_request_t);  -- /usr/include/xcb/glx.h:1471

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_lightfv_reply_t
  -- * 

  --*<   
   type anon4275_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type anon4275_anon2079_array is array (0 .. 11) of aliased stdint_h.uint8_t;
   type xcb_glx_get_lightfv_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1484
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1485
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1486
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1487
      pad1 : aliased anon4275_anon1768_array;  -- /usr/include/xcb/glx.h:1488
      n : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1489
      datum : aliased xcb_glx_float32_t;  -- /usr/include/xcb/glx.h:1490
      pad2 : aliased anon4275_anon2079_array;  -- /usr/include/xcb/glx.h:1491
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_lightfv_reply_t);  -- /usr/include/xcb/glx.h:1483

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_lightiv_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_lightiv_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:1498
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_lightiv_cookie_t);  -- /usr/include/xcb/glx.h:1497

  --* Opcode for xcb_glx_get_lightiv.  
  --*
  -- * @brief xcb_glx_get_lightiv_request_t
  -- * 

  --*<   
   type xcb_glx_get_lightiv_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1508
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1509
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1510
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:1511
      light : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1512
      pname : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1513
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_lightiv_request_t);  -- /usr/include/xcb/glx.h:1507

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_lightiv_reply_t
  -- * 

  --*<   
   type anon4285_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type anon4285_anon2079_array is array (0 .. 11) of aliased stdint_h.uint8_t;
   type xcb_glx_get_lightiv_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1520
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1521
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1522
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1523
      pad1 : aliased anon4285_anon1768_array;  -- /usr/include/xcb/glx.h:1524
      n : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1525
      datum : aliased sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:1526
      pad2 : aliased anon4285_anon2079_array;  -- /usr/include/xcb/glx.h:1527
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_lightiv_reply_t);  -- /usr/include/xcb/glx.h:1519

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_mapdv_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_mapdv_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:1534
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_mapdv_cookie_t);  -- /usr/include/xcb/glx.h:1533

  --* Opcode for xcb_glx_get_mapdv.  
  --*
  -- * @brief xcb_glx_get_mapdv_request_t
  -- * 

  --*<   
   type xcb_glx_get_mapdv_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1544
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1545
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1546
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:1547
      target : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1548
      query : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1549
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_mapdv_request_t);  -- /usr/include/xcb/glx.h:1543

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_mapdv_reply_t
  -- * 

  --*<   
   type anon4295_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type anon4295_anon2427_array is array (0 .. 7) of aliased stdint_h.uint8_t;
   type xcb_glx_get_mapdv_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1556
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1557
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1558
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1559
      pad1 : aliased anon4295_anon1768_array;  -- /usr/include/xcb/glx.h:1560
      n : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1561
      datum : aliased xcb_glx_float64_t;  -- /usr/include/xcb/glx.h:1562
      pad2 : aliased anon4295_anon2427_array;  -- /usr/include/xcb/glx.h:1563
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_mapdv_reply_t);  -- /usr/include/xcb/glx.h:1555

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_mapfv_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_mapfv_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:1570
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_mapfv_cookie_t);  -- /usr/include/xcb/glx.h:1569

  --* Opcode for xcb_glx_get_mapfv.  
  --*
  -- * @brief xcb_glx_get_mapfv_request_t
  -- * 

  --*<   
   type xcb_glx_get_mapfv_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1580
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1581
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1582
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:1583
      target : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1584
      query : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1585
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_mapfv_request_t);  -- /usr/include/xcb/glx.h:1579

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_mapfv_reply_t
  -- * 

  --*<   
   type anon4305_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type anon4305_anon2079_array is array (0 .. 11) of aliased stdint_h.uint8_t;
   type xcb_glx_get_mapfv_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1592
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1593
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1594
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1595
      pad1 : aliased anon4305_anon1768_array;  -- /usr/include/xcb/glx.h:1596
      n : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1597
      datum : aliased xcb_glx_float32_t;  -- /usr/include/xcb/glx.h:1598
      pad2 : aliased anon4305_anon2079_array;  -- /usr/include/xcb/glx.h:1599
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_mapfv_reply_t);  -- /usr/include/xcb/glx.h:1591

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_mapiv_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_mapiv_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:1606
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_mapiv_cookie_t);  -- /usr/include/xcb/glx.h:1605

  --* Opcode for xcb_glx_get_mapiv.  
  --*
  -- * @brief xcb_glx_get_mapiv_request_t
  -- * 

  --*<   
   type xcb_glx_get_mapiv_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1616
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1617
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1618
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:1619
      target : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1620
      query : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1621
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_mapiv_request_t);  -- /usr/include/xcb/glx.h:1615

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_mapiv_reply_t
  -- * 

  --*<   
   type anon4315_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type anon4315_anon2079_array is array (0 .. 11) of aliased stdint_h.uint8_t;
   type xcb_glx_get_mapiv_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1628
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1629
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1630
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1631
      pad1 : aliased anon4315_anon1768_array;  -- /usr/include/xcb/glx.h:1632
      n : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1633
      datum : aliased sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:1634
      pad2 : aliased anon4315_anon2079_array;  -- /usr/include/xcb/glx.h:1635
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_mapiv_reply_t);  -- /usr/include/xcb/glx.h:1627

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_materialfv_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_materialfv_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:1642
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_materialfv_cookie_t);  -- /usr/include/xcb/glx.h:1641

  --* Opcode for xcb_glx_get_materialfv.  
  --*
  -- * @brief xcb_glx_get_materialfv_request_t
  -- * 

  --*<   
   type xcb_glx_get_materialfv_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1652
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1653
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1654
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:1655
      face : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1656
      pname : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1657
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_materialfv_request_t);  -- /usr/include/xcb/glx.h:1651

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_materialfv_reply_t
  -- * 

  --*<   
   type anon4325_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type anon4325_anon2079_array is array (0 .. 11) of aliased stdint_h.uint8_t;
   type xcb_glx_get_materialfv_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1664
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1665
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1666
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1667
      pad1 : aliased anon4325_anon1768_array;  -- /usr/include/xcb/glx.h:1668
      n : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1669
      datum : aliased xcb_glx_float32_t;  -- /usr/include/xcb/glx.h:1670
      pad2 : aliased anon4325_anon2079_array;  -- /usr/include/xcb/glx.h:1671
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_materialfv_reply_t);  -- /usr/include/xcb/glx.h:1663

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_materialiv_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_materialiv_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:1678
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_materialiv_cookie_t);  -- /usr/include/xcb/glx.h:1677

  --* Opcode for xcb_glx_get_materialiv.  
  --*
  -- * @brief xcb_glx_get_materialiv_request_t
  -- * 

  --*<   
   type xcb_glx_get_materialiv_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1688
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1689
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1690
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:1691
      face : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1692
      pname : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1693
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_materialiv_request_t);  -- /usr/include/xcb/glx.h:1687

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_materialiv_reply_t
  -- * 

  --*<   
   type anon4335_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type anon4335_anon2079_array is array (0 .. 11) of aliased stdint_h.uint8_t;
   type xcb_glx_get_materialiv_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1700
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1701
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1702
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1703
      pad1 : aliased anon4335_anon1768_array;  -- /usr/include/xcb/glx.h:1704
      n : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1705
      datum : aliased sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:1706
      pad2 : aliased anon4335_anon2079_array;  -- /usr/include/xcb/glx.h:1707
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_materialiv_reply_t);  -- /usr/include/xcb/glx.h:1699

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_pixel_mapfv_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_pixel_mapfv_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:1714
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_pixel_mapfv_cookie_t);  -- /usr/include/xcb/glx.h:1713

  --* Opcode for xcb_glx_get_pixel_mapfv.  
  --*
  -- * @brief xcb_glx_get_pixel_mapfv_request_t
  -- * 

  --*<   
   type xcb_glx_get_pixel_mapfv_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1724
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1725
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1726
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:1727
      map : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1728
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_pixel_mapfv_request_t);  -- /usr/include/xcb/glx.h:1723

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_pixel_mapfv_reply_t
  -- * 

  --*<   
   type anon4345_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type anon4345_anon2079_array is array (0 .. 11) of aliased stdint_h.uint8_t;
   type xcb_glx_get_pixel_mapfv_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1735
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1736
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1737
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1738
      pad1 : aliased anon4345_anon1768_array;  -- /usr/include/xcb/glx.h:1739
      n : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1740
      datum : aliased xcb_glx_float32_t;  -- /usr/include/xcb/glx.h:1741
      pad2 : aliased anon4345_anon2079_array;  -- /usr/include/xcb/glx.h:1742
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_pixel_mapfv_reply_t);  -- /usr/include/xcb/glx.h:1734

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_pixel_mapuiv_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_pixel_mapuiv_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:1749
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_pixel_mapuiv_cookie_t);  -- /usr/include/xcb/glx.h:1748

  --* Opcode for xcb_glx_get_pixel_mapuiv.  
  --*
  -- * @brief xcb_glx_get_pixel_mapuiv_request_t
  -- * 

  --*<   
   type xcb_glx_get_pixel_mapuiv_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1759
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1760
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1761
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:1762
      map : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1763
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_pixel_mapuiv_request_t);  -- /usr/include/xcb/glx.h:1758

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_pixel_mapuiv_reply_t
  -- * 

  --*<   
   type anon4355_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type anon4355_anon2079_array is array (0 .. 11) of aliased stdint_h.uint8_t;
   type xcb_glx_get_pixel_mapuiv_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1770
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1771
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1772
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1773
      pad1 : aliased anon4355_anon1768_array;  -- /usr/include/xcb/glx.h:1774
      n : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1775
      datum : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1776
      pad2 : aliased anon4355_anon2079_array;  -- /usr/include/xcb/glx.h:1777
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_pixel_mapuiv_reply_t);  -- /usr/include/xcb/glx.h:1769

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_pixel_mapusv_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_pixel_mapusv_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:1784
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_pixel_mapusv_cookie_t);  -- /usr/include/xcb/glx.h:1783

  --* Opcode for xcb_glx_get_pixel_mapusv.  
  --*
  -- * @brief xcb_glx_get_pixel_mapusv_request_t
  -- * 

  --*<   
   type xcb_glx_get_pixel_mapusv_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1794
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1795
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1796
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:1797
      map : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1798
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_pixel_mapusv_request_t);  -- /usr/include/xcb/glx.h:1793

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_pixel_mapusv_reply_t
  -- * 

  --*<   
   type anon4365_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type anon4365_anon4055_array is array (0 .. 15) of aliased stdint_h.uint8_t;
   type xcb_glx_get_pixel_mapusv_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1805
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1806
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1807
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1808
      pad1 : aliased anon4365_anon1768_array;  -- /usr/include/xcb/glx.h:1809
      n : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1810
      datum : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1811
      pad2 : aliased anon4365_anon4055_array;  -- /usr/include/xcb/glx.h:1812
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_pixel_mapusv_reply_t);  -- /usr/include/xcb/glx.h:1804

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_polygon_stipple_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_polygon_stipple_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:1819
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_polygon_stipple_cookie_t);  -- /usr/include/xcb/glx.h:1818

  --* Opcode for xcb_glx_get_polygon_stipple.  
  --*
  -- * @brief xcb_glx_get_polygon_stipple_request_t
  -- * 

  --*<   
   type xcb_glx_get_polygon_stipple_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1829
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1830
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1831
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:1832
      lsb_first : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1833
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_polygon_stipple_request_t);  -- /usr/include/xcb/glx.h:1828

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_polygon_stipple_reply_t
  -- * 

  --*<   
   type anon4375_anon2504_array is array (0 .. 23) of aliased stdint_h.uint8_t;
   type xcb_glx_get_polygon_stipple_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1840
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1841
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1842
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1843
      pad1 : aliased anon4375_anon2504_array;  -- /usr/include/xcb/glx.h:1844
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_polygon_stipple_reply_t);  -- /usr/include/xcb/glx.h:1839

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_string_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_string_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:1851
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_string_cookie_t);  -- /usr/include/xcb/glx.h:1850

  --* Opcode for xcb_glx_get_string.  
  --*
  -- * @brief xcb_glx_get_string_request_t
  -- * 

  --*<   
   type xcb_glx_get_string_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1861
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1862
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1863
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:1864
      name : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1865
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_string_request_t);  -- /usr/include/xcb/glx.h:1860

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_string_reply_t
  -- * 

  --*<   
   type anon4383_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type anon4383_anon4055_array is array (0 .. 15) of aliased stdint_h.uint8_t;
   type xcb_glx_get_string_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1872
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1873
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1874
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1875
      pad1 : aliased anon4383_anon1768_array;  -- /usr/include/xcb/glx.h:1876
      n : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1877
      pad2 : aliased anon4383_anon4055_array;  -- /usr/include/xcb/glx.h:1878
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_string_reply_t);  -- /usr/include/xcb/glx.h:1871

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_tex_envfv_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_tex_envfv_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:1885
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_tex_envfv_cookie_t);  -- /usr/include/xcb/glx.h:1884

  --* Opcode for xcb_glx_get_tex_envfv.  
  --*
  -- * @brief xcb_glx_get_tex_envfv_request_t
  -- * 

  --*<   
   type xcb_glx_get_tex_envfv_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1895
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1896
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1897
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:1898
      target : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1899
      pname : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1900
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_tex_envfv_request_t);  -- /usr/include/xcb/glx.h:1894

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_tex_envfv_reply_t
  -- * 

  --*<   
   type anon4393_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type anon4393_anon2079_array is array (0 .. 11) of aliased stdint_h.uint8_t;
   type xcb_glx_get_tex_envfv_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1907
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1908
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1909
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1910
      pad1 : aliased anon4393_anon1768_array;  -- /usr/include/xcb/glx.h:1911
      n : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1912
      datum : aliased xcb_glx_float32_t;  -- /usr/include/xcb/glx.h:1913
      pad2 : aliased anon4393_anon2079_array;  -- /usr/include/xcb/glx.h:1914
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_tex_envfv_reply_t);  -- /usr/include/xcb/glx.h:1906

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_tex_enviv_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_tex_enviv_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:1921
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_tex_enviv_cookie_t);  -- /usr/include/xcb/glx.h:1920

  --* Opcode for xcb_glx_get_tex_enviv.  
  --*
  -- * @brief xcb_glx_get_tex_enviv_request_t
  -- * 

  --*<   
   type xcb_glx_get_tex_enviv_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1931
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1932
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1933
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:1934
      target : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1935
      pname : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1936
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_tex_enviv_request_t);  -- /usr/include/xcb/glx.h:1930

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_tex_enviv_reply_t
  -- * 

  --*<   
   type anon4403_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type anon4403_anon2079_array is array (0 .. 11) of aliased stdint_h.uint8_t;
   type xcb_glx_get_tex_enviv_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1943
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1944
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1945
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1946
      pad1 : aliased anon4403_anon1768_array;  -- /usr/include/xcb/glx.h:1947
      n : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1948
      datum : aliased sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:1949
      pad2 : aliased anon4403_anon2079_array;  -- /usr/include/xcb/glx.h:1950
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_tex_enviv_reply_t);  -- /usr/include/xcb/glx.h:1942

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_tex_gendv_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_tex_gendv_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:1957
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_tex_gendv_cookie_t);  -- /usr/include/xcb/glx.h:1956

  --* Opcode for xcb_glx_get_tex_gendv.  
  --*
  -- * @brief xcb_glx_get_tex_gendv_request_t
  -- * 

  --*<   
   type xcb_glx_get_tex_gendv_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1967
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1968
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1969
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:1970
      coord : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1971
      pname : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1972
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_tex_gendv_request_t);  -- /usr/include/xcb/glx.h:1966

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_tex_gendv_reply_t
  -- * 

  --*<   
   type anon4413_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type anon4413_anon2427_array is array (0 .. 7) of aliased stdint_h.uint8_t;
   type xcb_glx_get_tex_gendv_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1979
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:1980
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:1981
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1982
      pad1 : aliased anon4413_anon1768_array;  -- /usr/include/xcb/glx.h:1983
      n : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:1984
      datum : aliased xcb_glx_float64_t;  -- /usr/include/xcb/glx.h:1985
      pad2 : aliased anon4413_anon2427_array;  -- /usr/include/xcb/glx.h:1986
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_tex_gendv_reply_t);  -- /usr/include/xcb/glx.h:1978

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_tex_genfv_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_tex_genfv_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:1993
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_tex_genfv_cookie_t);  -- /usr/include/xcb/glx.h:1992

  --* Opcode for xcb_glx_get_tex_genfv.  
  --*
  -- * @brief xcb_glx_get_tex_genfv_request_t
  -- * 

  --*<   
   type xcb_glx_get_tex_genfv_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2003
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2004
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2005
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:2006
      coord : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2007
      pname : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2008
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_tex_genfv_request_t);  -- /usr/include/xcb/glx.h:2002

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_tex_genfv_reply_t
  -- * 

  --*<   
   type anon4423_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type anon4423_anon2079_array is array (0 .. 11) of aliased stdint_h.uint8_t;
   type xcb_glx_get_tex_genfv_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2015
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2016
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2017
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2018
      pad1 : aliased anon4423_anon1768_array;  -- /usr/include/xcb/glx.h:2019
      n : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2020
      datum : aliased xcb_glx_float32_t;  -- /usr/include/xcb/glx.h:2021
      pad2 : aliased anon4423_anon2079_array;  -- /usr/include/xcb/glx.h:2022
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_tex_genfv_reply_t);  -- /usr/include/xcb/glx.h:2014

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_tex_geniv_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_tex_geniv_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:2029
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_tex_geniv_cookie_t);  -- /usr/include/xcb/glx.h:2028

  --* Opcode for xcb_glx_get_tex_geniv.  
  --*
  -- * @brief xcb_glx_get_tex_geniv_request_t
  -- * 

  --*<   
   type xcb_glx_get_tex_geniv_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2039
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2040
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2041
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:2042
      coord : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2043
      pname : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2044
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_tex_geniv_request_t);  -- /usr/include/xcb/glx.h:2038

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_tex_geniv_reply_t
  -- * 

  --*<   
   type anon4433_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type anon4433_anon2079_array is array (0 .. 11) of aliased stdint_h.uint8_t;
   type xcb_glx_get_tex_geniv_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2051
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2052
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2053
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2054
      pad1 : aliased anon4433_anon1768_array;  -- /usr/include/xcb/glx.h:2055
      n : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2056
      datum : aliased sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:2057
      pad2 : aliased anon4433_anon2079_array;  -- /usr/include/xcb/glx.h:2058
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_tex_geniv_reply_t);  -- /usr/include/xcb/glx.h:2050

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_tex_image_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_tex_image_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:2065
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_tex_image_cookie_t);  -- /usr/include/xcb/glx.h:2064

  --* Opcode for xcb_glx_get_tex_image.  
  --*
  -- * @brief xcb_glx_get_tex_image_request_t
  -- * 

  --*<   
   type xcb_glx_get_tex_image_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2075
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2076
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2077
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:2078
      target : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2079
      level : aliased sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:2080
      format : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2081
      c_type : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2082
      swap_bytes : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2083
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_tex_image_request_t);  -- /usr/include/xcb/glx.h:2074

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_tex_image_reply_t
  -- * 

  --*<   
   type anon4443_anon2427_array is array (0 .. 7) of aliased stdint_h.uint8_t;
   type anon4443_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type xcb_glx_get_tex_image_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2090
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2091
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2092
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2093
      pad1 : aliased anon4443_anon2427_array;  -- /usr/include/xcb/glx.h:2094
      width : aliased sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:2095
      height : aliased sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:2096
      depth : aliased sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:2097
      pad2 : aliased anon4443_anon1768_array;  -- /usr/include/xcb/glx.h:2098
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_tex_image_reply_t);  -- /usr/include/xcb/glx.h:2089

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_tex_parameterfv_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_tex_parameterfv_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:2105
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_tex_parameterfv_cookie_t);  -- /usr/include/xcb/glx.h:2104

  --* Opcode for xcb_glx_get_tex_parameterfv.  
  --*
  -- * @brief xcb_glx_get_tex_parameterfv_request_t
  -- * 

  --*<   
   type xcb_glx_get_tex_parameterfv_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2115
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2116
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2117
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:2118
      target : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2119
      pname : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2120
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_tex_parameterfv_request_t);  -- /usr/include/xcb/glx.h:2114

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_tex_parameterfv_reply_t
  -- * 

  --*<   
   type anon4453_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type anon4453_anon2079_array is array (0 .. 11) of aliased stdint_h.uint8_t;
   type xcb_glx_get_tex_parameterfv_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2127
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2128
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2129
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2130
      pad1 : aliased anon4453_anon1768_array;  -- /usr/include/xcb/glx.h:2131
      n : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2132
      datum : aliased xcb_glx_float32_t;  -- /usr/include/xcb/glx.h:2133
      pad2 : aliased anon4453_anon2079_array;  -- /usr/include/xcb/glx.h:2134
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_tex_parameterfv_reply_t);  -- /usr/include/xcb/glx.h:2126

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_tex_parameteriv_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_tex_parameteriv_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:2141
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_tex_parameteriv_cookie_t);  -- /usr/include/xcb/glx.h:2140

  --* Opcode for xcb_glx_get_tex_parameteriv.  
  --*
  -- * @brief xcb_glx_get_tex_parameteriv_request_t
  -- * 

  --*<   
   type xcb_glx_get_tex_parameteriv_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2151
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2152
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2153
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:2154
      target : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2155
      pname : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2156
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_tex_parameteriv_request_t);  -- /usr/include/xcb/glx.h:2150

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_tex_parameteriv_reply_t
  -- * 

  --*<   
   type anon4463_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type anon4463_anon2079_array is array (0 .. 11) of aliased stdint_h.uint8_t;
   type xcb_glx_get_tex_parameteriv_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2163
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2164
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2165
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2166
      pad1 : aliased anon4463_anon1768_array;  -- /usr/include/xcb/glx.h:2167
      n : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2168
      datum : aliased sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:2169
      pad2 : aliased anon4463_anon2079_array;  -- /usr/include/xcb/glx.h:2170
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_tex_parameteriv_reply_t);  -- /usr/include/xcb/glx.h:2162

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_tex_level_parameterfv_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_tex_level_parameterfv_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:2177
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_tex_level_parameterfv_cookie_t);  -- /usr/include/xcb/glx.h:2176

  --* Opcode for xcb_glx_get_tex_level_parameterfv.  
  --*
  -- * @brief xcb_glx_get_tex_level_parameterfv_request_t
  -- * 

  --*<   
   type xcb_glx_get_tex_level_parameterfv_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2187
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2188
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2189
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:2190
      target : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2191
      level : aliased sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:2192
      pname : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2193
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_tex_level_parameterfv_request_t);  -- /usr/include/xcb/glx.h:2186

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_tex_level_parameterfv_reply_t
  -- * 

  --*<   
   type anon4473_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type anon4473_anon2079_array is array (0 .. 11) of aliased stdint_h.uint8_t;
   type xcb_glx_get_tex_level_parameterfv_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2200
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2201
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2202
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2203
      pad1 : aliased anon4473_anon1768_array;  -- /usr/include/xcb/glx.h:2204
      n : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2205
      datum : aliased xcb_glx_float32_t;  -- /usr/include/xcb/glx.h:2206
      pad2 : aliased anon4473_anon2079_array;  -- /usr/include/xcb/glx.h:2207
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_tex_level_parameterfv_reply_t);  -- /usr/include/xcb/glx.h:2199

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_tex_level_parameteriv_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_tex_level_parameteriv_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:2214
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_tex_level_parameteriv_cookie_t);  -- /usr/include/xcb/glx.h:2213

  --* Opcode for xcb_glx_get_tex_level_parameteriv.  
  --*
  -- * @brief xcb_glx_get_tex_level_parameteriv_request_t
  -- * 

  --*<   
   type xcb_glx_get_tex_level_parameteriv_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2224
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2225
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2226
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:2227
      target : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2228
      level : aliased sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:2229
      pname : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2230
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_tex_level_parameteriv_request_t);  -- /usr/include/xcb/glx.h:2223

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_tex_level_parameteriv_reply_t
  -- * 

  --*<   
   type anon4483_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type anon4483_anon2079_array is array (0 .. 11) of aliased stdint_h.uint8_t;
   type xcb_glx_get_tex_level_parameteriv_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2237
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2238
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2239
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2240
      pad1 : aliased anon4483_anon1768_array;  -- /usr/include/xcb/glx.h:2241
      n : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2242
      datum : aliased sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:2243
      pad2 : aliased anon4483_anon2079_array;  -- /usr/include/xcb/glx.h:2244
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_tex_level_parameteriv_reply_t);  -- /usr/include/xcb/glx.h:2236

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_is_list_cookie_t
  -- * 

  --*<   
   type xcb_glx_is_list_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:2251
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_is_list_cookie_t);  -- /usr/include/xcb/glx.h:2250

  --* Opcode for xcb_glx_is_list.  
  --*
  -- * @brief xcb_glx_is_list_request_t
  -- * 

  --*<   
   type xcb_glx_is_list_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2261
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2262
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2263
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:2264
      list : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2265
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_is_list_request_t);  -- /usr/include/xcb/glx.h:2260

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_is_list_reply_t
  -- * 

  --*<   
   type xcb_glx_is_list_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2272
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2273
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2274
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2275
      ret_val : aliased xcb_glx_bool32_t;  -- /usr/include/xcb/glx.h:2276
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_is_list_reply_t);  -- /usr/include/xcb/glx.h:2271

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_glx_flush.  
  --*
  -- * @brief xcb_glx_flush_request_t
  -- * 

  --*<   
   type xcb_glx_flush_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2286
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2287
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2288
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:2289
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_flush_request_t);  -- /usr/include/xcb/glx.h:2285

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_are_textures_resident_cookie_t
  -- * 

  --*<   
   type xcb_glx_are_textures_resident_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:2296
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_are_textures_resident_cookie_t);  -- /usr/include/xcb/glx.h:2295

  --* Opcode for xcb_glx_are_textures_resident.  
  --*
  -- * @brief xcb_glx_are_textures_resident_request_t
  -- * 

  --*<   
   type xcb_glx_are_textures_resident_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2306
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2307
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2308
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:2309
      n : aliased sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:2310
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_are_textures_resident_request_t);  -- /usr/include/xcb/glx.h:2305

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_are_textures_resident_reply_t
  -- * 

  --*<   
   type anon4501_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_glx_are_textures_resident_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2317
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2318
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2319
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2320
      ret_val : aliased xcb_glx_bool32_t;  -- /usr/include/xcb/glx.h:2321
      pad1 : aliased anon4501_anon1939_array;  -- /usr/include/xcb/glx.h:2322
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_are_textures_resident_reply_t);  -- /usr/include/xcb/glx.h:2316

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_glx_delete_textures.  
  --*
  -- * @brief xcb_glx_delete_textures_request_t
  -- * 

  --*<   
   type xcb_glx_delete_textures_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2332
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2333
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2334
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:2335
      n : aliased sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:2336
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_delete_textures_request_t);  -- /usr/include/xcb/glx.h:2331

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_gen_textures_cookie_t
  -- * 

  --*<   
   type xcb_glx_gen_textures_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:2343
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_gen_textures_cookie_t);  -- /usr/include/xcb/glx.h:2342

  --* Opcode for xcb_glx_gen_textures.  
  --*
  -- * @brief xcb_glx_gen_textures_request_t
  -- * 

  --*<   
   type xcb_glx_gen_textures_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2353
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2354
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2355
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:2356
      n : aliased sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:2357
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_gen_textures_request_t);  -- /usr/include/xcb/glx.h:2352

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_gen_textures_reply_t
  -- * 

  --*<   
   type anon4511_anon2504_array is array (0 .. 23) of aliased stdint_h.uint8_t;
   type xcb_glx_gen_textures_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2364
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2365
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2366
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2367
      pad1 : aliased anon4511_anon2504_array;  -- /usr/include/xcb/glx.h:2368
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_gen_textures_reply_t);  -- /usr/include/xcb/glx.h:2363

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_is_texture_cookie_t
  -- * 

  --*<   
   type xcb_glx_is_texture_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:2375
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_is_texture_cookie_t);  -- /usr/include/xcb/glx.h:2374

  --* Opcode for xcb_glx_is_texture.  
  --*
  -- * @brief xcb_glx_is_texture_request_t
  -- * 

  --*<   
   type xcb_glx_is_texture_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2385
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2386
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2387
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:2388
      texture : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2389
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_is_texture_request_t);  -- /usr/include/xcb/glx.h:2384

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_is_texture_reply_t
  -- * 

  --*<   
   type xcb_glx_is_texture_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2396
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2397
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2398
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2399
      ret_val : aliased xcb_glx_bool32_t;  -- /usr/include/xcb/glx.h:2400
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_is_texture_reply_t);  -- /usr/include/xcb/glx.h:2395

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_color_table_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_color_table_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:2407
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_color_table_cookie_t);  -- /usr/include/xcb/glx.h:2406

  --* Opcode for xcb_glx_get_color_table.  
  --*
  -- * @brief xcb_glx_get_color_table_request_t
  -- * 

  --*<   
   type xcb_glx_get_color_table_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2417
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2418
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2419
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:2420
      target : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2421
      format : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2422
      c_type : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2423
      swap_bytes : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2424
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_color_table_request_t);  -- /usr/include/xcb/glx.h:2416

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_color_table_reply_t
  -- * 

  --*<   
   type anon4525_anon2427_array is array (0 .. 7) of aliased stdint_h.uint8_t;
   type anon4525_anon2079_array is array (0 .. 11) of aliased stdint_h.uint8_t;
   type xcb_glx_get_color_table_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2431
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2432
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2433
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2434
      pad1 : aliased anon4525_anon2427_array;  -- /usr/include/xcb/glx.h:2435
      width : aliased sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:2436
      pad2 : aliased anon4525_anon2079_array;  -- /usr/include/xcb/glx.h:2437
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_color_table_reply_t);  -- /usr/include/xcb/glx.h:2430

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_color_table_parameterfv_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_color_table_parameterfv_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:2444
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_color_table_parameterfv_cookie_t);  -- /usr/include/xcb/glx.h:2443

  --* Opcode for xcb_glx_get_color_table_parameterfv.  
  --*
  -- * @brief xcb_glx_get_color_table_parameterfv_request_t
  -- * 

  --*<   
   type xcb_glx_get_color_table_parameterfv_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2454
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2455
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2456
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:2457
      target : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2458
      pname : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2459
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_color_table_parameterfv_request_t);  -- /usr/include/xcb/glx.h:2453

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_color_table_parameterfv_reply_t
  -- * 

  --*<   
   type anon4535_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type anon4535_anon2079_array is array (0 .. 11) of aliased stdint_h.uint8_t;
   type xcb_glx_get_color_table_parameterfv_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2466
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2467
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2468
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2469
      pad1 : aliased anon4535_anon1768_array;  -- /usr/include/xcb/glx.h:2470
      n : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2471
      datum : aliased xcb_glx_float32_t;  -- /usr/include/xcb/glx.h:2472
      pad2 : aliased anon4535_anon2079_array;  -- /usr/include/xcb/glx.h:2473
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_color_table_parameterfv_reply_t);  -- /usr/include/xcb/glx.h:2465

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_color_table_parameteriv_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_color_table_parameteriv_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:2480
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_color_table_parameteriv_cookie_t);  -- /usr/include/xcb/glx.h:2479

  --* Opcode for xcb_glx_get_color_table_parameteriv.  
  --*
  -- * @brief xcb_glx_get_color_table_parameteriv_request_t
  -- * 

  --*<   
   type xcb_glx_get_color_table_parameteriv_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2490
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2491
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2492
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:2493
      target : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2494
      pname : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2495
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_color_table_parameteriv_request_t);  -- /usr/include/xcb/glx.h:2489

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_color_table_parameteriv_reply_t
  -- * 

  --*<   
   type anon4545_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type anon4545_anon2079_array is array (0 .. 11) of aliased stdint_h.uint8_t;
   type xcb_glx_get_color_table_parameteriv_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2502
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2503
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2504
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2505
      pad1 : aliased anon4545_anon1768_array;  -- /usr/include/xcb/glx.h:2506
      n : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2507
      datum : aliased sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:2508
      pad2 : aliased anon4545_anon2079_array;  -- /usr/include/xcb/glx.h:2509
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_color_table_parameteriv_reply_t);  -- /usr/include/xcb/glx.h:2501

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_convolution_filter_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_convolution_filter_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:2516
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_convolution_filter_cookie_t);  -- /usr/include/xcb/glx.h:2515

  --* Opcode for xcb_glx_get_convolution_filter.  
  --*
  -- * @brief xcb_glx_get_convolution_filter_request_t
  -- * 

  --*<   
   type xcb_glx_get_convolution_filter_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2526
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2527
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2528
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:2529
      target : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2530
      format : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2531
      c_type : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2532
      swap_bytes : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2533
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_convolution_filter_request_t);  -- /usr/include/xcb/glx.h:2525

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_convolution_filter_reply_t
  -- * 

  --*<   
   type anon4555_anon2427_array is array (0 .. 7) of aliased stdint_h.uint8_t;
   type anon4555_anon2427_array is array (0 .. 7) of aliased stdint_h.uint8_t;
   type xcb_glx_get_convolution_filter_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2540
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2541
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2542
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2543
      pad1 : aliased anon4555_anon2427_array;  -- /usr/include/xcb/glx.h:2544
      width : aliased sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:2545
      height : aliased sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:2546
      pad2 : aliased anon4555_anon2427_array;  -- /usr/include/xcb/glx.h:2547
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_convolution_filter_reply_t);  -- /usr/include/xcb/glx.h:2539

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_convolution_parameterfv_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_convolution_parameterfv_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:2554
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_convolution_parameterfv_cookie_t);  -- /usr/include/xcb/glx.h:2553

  --* Opcode for xcb_glx_get_convolution_parameterfv.  
  --*
  -- * @brief xcb_glx_get_convolution_parameterfv_request_t
  -- * 

  --*<   
   type xcb_glx_get_convolution_parameterfv_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2564
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2565
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2566
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:2567
      target : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2568
      pname : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2569
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_convolution_parameterfv_request_t);  -- /usr/include/xcb/glx.h:2563

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_convolution_parameterfv_reply_t
  -- * 

  --*<   
   type anon4565_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type anon4565_anon2079_array is array (0 .. 11) of aliased stdint_h.uint8_t;
   type xcb_glx_get_convolution_parameterfv_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2576
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2577
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2578
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2579
      pad1 : aliased anon4565_anon1768_array;  -- /usr/include/xcb/glx.h:2580
      n : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2581
      datum : aliased xcb_glx_float32_t;  -- /usr/include/xcb/glx.h:2582
      pad2 : aliased anon4565_anon2079_array;  -- /usr/include/xcb/glx.h:2583
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_convolution_parameterfv_reply_t);  -- /usr/include/xcb/glx.h:2575

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_convolution_parameteriv_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_convolution_parameteriv_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:2590
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_convolution_parameteriv_cookie_t);  -- /usr/include/xcb/glx.h:2589

  --* Opcode for xcb_glx_get_convolution_parameteriv.  
  --*
  -- * @brief xcb_glx_get_convolution_parameteriv_request_t
  -- * 

  --*<   
   type xcb_glx_get_convolution_parameteriv_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2600
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2601
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2602
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:2603
      target : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2604
      pname : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2605
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_convolution_parameteriv_request_t);  -- /usr/include/xcb/glx.h:2599

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_convolution_parameteriv_reply_t
  -- * 

  --*<   
   type anon4575_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type anon4575_anon2079_array is array (0 .. 11) of aliased stdint_h.uint8_t;
   type xcb_glx_get_convolution_parameteriv_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2612
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2613
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2614
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2615
      pad1 : aliased anon4575_anon1768_array;  -- /usr/include/xcb/glx.h:2616
      n : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2617
      datum : aliased sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:2618
      pad2 : aliased anon4575_anon2079_array;  -- /usr/include/xcb/glx.h:2619
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_convolution_parameteriv_reply_t);  -- /usr/include/xcb/glx.h:2611

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_separable_filter_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_separable_filter_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:2626
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_separable_filter_cookie_t);  -- /usr/include/xcb/glx.h:2625

  --* Opcode for xcb_glx_get_separable_filter.  
  --*
  -- * @brief xcb_glx_get_separable_filter_request_t
  -- * 

  --*<   
   type xcb_glx_get_separable_filter_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2636
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2637
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2638
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:2639
      target : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2640
      format : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2641
      c_type : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2642
      swap_bytes : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2643
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_separable_filter_request_t);  -- /usr/include/xcb/glx.h:2635

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_separable_filter_reply_t
  -- * 

  --*<   
   type anon4585_anon2427_array is array (0 .. 7) of aliased stdint_h.uint8_t;
   type anon4585_anon2427_array is array (0 .. 7) of aliased stdint_h.uint8_t;
   type xcb_glx_get_separable_filter_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2650
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2651
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2652
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2653
      pad1 : aliased anon4585_anon2427_array;  -- /usr/include/xcb/glx.h:2654
      row_w : aliased sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:2655
      col_h : aliased sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:2656
      pad2 : aliased anon4585_anon2427_array;  -- /usr/include/xcb/glx.h:2657
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_separable_filter_reply_t);  -- /usr/include/xcb/glx.h:2649

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_histogram_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_histogram_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:2664
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_histogram_cookie_t);  -- /usr/include/xcb/glx.h:2663

  --* Opcode for xcb_glx_get_histogram.  
  --*
  -- * @brief xcb_glx_get_histogram_request_t
  -- * 

  --*<   
   type xcb_glx_get_histogram_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2674
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2675
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2676
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:2677
      target : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2678
      format : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2679
      c_type : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2680
      swap_bytes : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2681
      reset : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2682
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_histogram_request_t);  -- /usr/include/xcb/glx.h:2673

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_histogram_reply_t
  -- * 

  --*<   
   type anon4595_anon2427_array is array (0 .. 7) of aliased stdint_h.uint8_t;
   type anon4595_anon2079_array is array (0 .. 11) of aliased stdint_h.uint8_t;
   type xcb_glx_get_histogram_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2689
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2690
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2691
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2692
      pad1 : aliased anon4595_anon2427_array;  -- /usr/include/xcb/glx.h:2693
      width : aliased sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:2694
      pad2 : aliased anon4595_anon2079_array;  -- /usr/include/xcb/glx.h:2695
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_histogram_reply_t);  -- /usr/include/xcb/glx.h:2688

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_histogram_parameterfv_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_histogram_parameterfv_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:2702
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_histogram_parameterfv_cookie_t);  -- /usr/include/xcb/glx.h:2701

  --* Opcode for xcb_glx_get_histogram_parameterfv.  
  --*
  -- * @brief xcb_glx_get_histogram_parameterfv_request_t
  -- * 

  --*<   
   type xcb_glx_get_histogram_parameterfv_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2712
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2713
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2714
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:2715
      target : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2716
      pname : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2717
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_histogram_parameterfv_request_t);  -- /usr/include/xcb/glx.h:2711

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_histogram_parameterfv_reply_t
  -- * 

  --*<   
   type anon4605_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type anon4605_anon2079_array is array (0 .. 11) of aliased stdint_h.uint8_t;
   type xcb_glx_get_histogram_parameterfv_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2724
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2725
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2726
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2727
      pad1 : aliased anon4605_anon1768_array;  -- /usr/include/xcb/glx.h:2728
      n : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2729
      datum : aliased xcb_glx_float32_t;  -- /usr/include/xcb/glx.h:2730
      pad2 : aliased anon4605_anon2079_array;  -- /usr/include/xcb/glx.h:2731
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_histogram_parameterfv_reply_t);  -- /usr/include/xcb/glx.h:2723

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_histogram_parameteriv_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_histogram_parameteriv_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:2738
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_histogram_parameteriv_cookie_t);  -- /usr/include/xcb/glx.h:2737

  --* Opcode for xcb_glx_get_histogram_parameteriv.  
  --*
  -- * @brief xcb_glx_get_histogram_parameteriv_request_t
  -- * 

  --*<   
   type xcb_glx_get_histogram_parameteriv_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2748
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2749
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2750
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:2751
      target : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2752
      pname : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2753
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_histogram_parameteriv_request_t);  -- /usr/include/xcb/glx.h:2747

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_histogram_parameteriv_reply_t
  -- * 

  --*<   
   type anon4615_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type anon4615_anon2079_array is array (0 .. 11) of aliased stdint_h.uint8_t;
   type xcb_glx_get_histogram_parameteriv_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2760
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2761
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2762
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2763
      pad1 : aliased anon4615_anon1768_array;  -- /usr/include/xcb/glx.h:2764
      n : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2765
      datum : aliased sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:2766
      pad2 : aliased anon4615_anon2079_array;  -- /usr/include/xcb/glx.h:2767
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_histogram_parameteriv_reply_t);  -- /usr/include/xcb/glx.h:2759

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_minmax_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_minmax_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:2774
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_minmax_cookie_t);  -- /usr/include/xcb/glx.h:2773

  --* Opcode for xcb_glx_get_minmax.  
  --*
  -- * @brief xcb_glx_get_minmax_request_t
  -- * 

  --*<   
   type xcb_glx_get_minmax_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2784
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2785
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2786
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:2787
      target : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2788
      format : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2789
      c_type : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2790
      swap_bytes : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2791
      reset : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2792
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_minmax_request_t);  -- /usr/include/xcb/glx.h:2783

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_minmax_reply_t
  -- * 

  --*<   
   type anon4625_anon2504_array is array (0 .. 23) of aliased stdint_h.uint8_t;
   type xcb_glx_get_minmax_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2799
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2800
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2801
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2802
      pad1 : aliased anon4625_anon2504_array;  -- /usr/include/xcb/glx.h:2803
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_minmax_reply_t);  -- /usr/include/xcb/glx.h:2798

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_minmax_parameterfv_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_minmax_parameterfv_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:2810
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_minmax_parameterfv_cookie_t);  -- /usr/include/xcb/glx.h:2809

  --* Opcode for xcb_glx_get_minmax_parameterfv.  
  --*
  -- * @brief xcb_glx_get_minmax_parameterfv_request_t
  -- * 

  --*<   
   type xcb_glx_get_minmax_parameterfv_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2820
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2821
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2822
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:2823
      target : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2824
      pname : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2825
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_minmax_parameterfv_request_t);  -- /usr/include/xcb/glx.h:2819

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_minmax_parameterfv_reply_t
  -- * 

  --*<   
   type anon4633_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type anon4633_anon2079_array is array (0 .. 11) of aliased stdint_h.uint8_t;
   type xcb_glx_get_minmax_parameterfv_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2832
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2833
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2834
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2835
      pad1 : aliased anon4633_anon1768_array;  -- /usr/include/xcb/glx.h:2836
      n : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2837
      datum : aliased xcb_glx_float32_t;  -- /usr/include/xcb/glx.h:2838
      pad2 : aliased anon4633_anon2079_array;  -- /usr/include/xcb/glx.h:2839
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_minmax_parameterfv_reply_t);  -- /usr/include/xcb/glx.h:2831

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_minmax_parameteriv_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_minmax_parameteriv_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:2846
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_minmax_parameteriv_cookie_t);  -- /usr/include/xcb/glx.h:2845

  --* Opcode for xcb_glx_get_minmax_parameteriv.  
  --*
  -- * @brief xcb_glx_get_minmax_parameteriv_request_t
  -- * 

  --*<   
   type xcb_glx_get_minmax_parameteriv_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2856
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2857
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2858
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:2859
      target : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2860
      pname : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2861
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_minmax_parameteriv_request_t);  -- /usr/include/xcb/glx.h:2855

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_minmax_parameteriv_reply_t
  -- * 

  --*<   
   type anon4643_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type anon4643_anon2079_array is array (0 .. 11) of aliased stdint_h.uint8_t;
   type xcb_glx_get_minmax_parameteriv_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2868
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2869
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2870
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2871
      pad1 : aliased anon4643_anon1768_array;  -- /usr/include/xcb/glx.h:2872
      n : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2873
      datum : aliased sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:2874
      pad2 : aliased anon4643_anon2079_array;  -- /usr/include/xcb/glx.h:2875
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_minmax_parameteriv_reply_t);  -- /usr/include/xcb/glx.h:2867

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_compressed_tex_image_arb_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_compressed_tex_image_arb_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:2882
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_compressed_tex_image_arb_cookie_t);  -- /usr/include/xcb/glx.h:2881

  --* Opcode for xcb_glx_get_compressed_tex_image_arb.  
  --*
  -- * @brief xcb_glx_get_compressed_tex_image_arb_request_t
  -- * 

  --*<   
   type xcb_glx_get_compressed_tex_image_arb_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2892
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2893
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2894
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:2895
      target : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2896
      level : aliased sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:2897
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_compressed_tex_image_arb_request_t);  -- /usr/include/xcb/glx.h:2891

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_compressed_tex_image_arb_reply_t
  -- * 

  --*<   
   type anon4653_anon2427_array is array (0 .. 7) of aliased stdint_h.uint8_t;
   type anon4653_anon2079_array is array (0 .. 11) of aliased stdint_h.uint8_t;
   type xcb_glx_get_compressed_tex_image_arb_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2904
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2905
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2906
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2907
      pad1 : aliased anon4653_anon2427_array;  -- /usr/include/xcb/glx.h:2908
      size : aliased sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:2909
      pad2 : aliased anon4653_anon2079_array;  -- /usr/include/xcb/glx.h:2910
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_compressed_tex_image_arb_reply_t);  -- /usr/include/xcb/glx.h:2903

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_glx_delete_queries_arb.  
  --*
  -- * @brief xcb_glx_delete_queries_arb_request_t
  -- * 

  --*<   
   type xcb_glx_delete_queries_arb_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2920
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2921
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2922
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:2923
      n : aliased sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:2924
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_delete_queries_arb_request_t);  -- /usr/include/xcb/glx.h:2919

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_gen_queries_arb_cookie_t
  -- * 

  --*<   
   type xcb_glx_gen_queries_arb_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:2931
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_gen_queries_arb_cookie_t);  -- /usr/include/xcb/glx.h:2930

  --* Opcode for xcb_glx_gen_queries_arb.  
  --*
  -- * @brief xcb_glx_gen_queries_arb_request_t
  -- * 

  --*<   
   type xcb_glx_gen_queries_arb_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2941
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2942
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2943
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:2944
      n : aliased sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:2945
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_gen_queries_arb_request_t);  -- /usr/include/xcb/glx.h:2940

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_gen_queries_arb_reply_t
  -- * 

  --*<   
   type anon4665_anon2504_array is array (0 .. 23) of aliased stdint_h.uint8_t;
   type xcb_glx_gen_queries_arb_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2952
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2953
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2954
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2955
      pad1 : aliased anon4665_anon2504_array;  -- /usr/include/xcb/glx.h:2956
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_gen_queries_arb_reply_t);  -- /usr/include/xcb/glx.h:2951

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_is_query_arb_cookie_t
  -- * 

  --*<   
   type xcb_glx_is_query_arb_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:2963
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_is_query_arb_cookie_t);  -- /usr/include/xcb/glx.h:2962

  --* Opcode for xcb_glx_is_query_arb.  
  --*
  -- * @brief xcb_glx_is_query_arb_request_t
  -- * 

  --*<   
   type xcb_glx_is_query_arb_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2973
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2974
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2975
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:2976
      id : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2977
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_is_query_arb_request_t);  -- /usr/include/xcb/glx.h:2972

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_is_query_arb_reply_t
  -- * 

  --*<   
   type xcb_glx_is_query_arb_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2984
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:2985
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:2986
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:2987
      ret_val : aliased xcb_glx_bool32_t;  -- /usr/include/xcb/glx.h:2988
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_is_query_arb_reply_t);  -- /usr/include/xcb/glx.h:2983

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_queryiv_arb_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_queryiv_arb_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:2995
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_queryiv_arb_cookie_t);  -- /usr/include/xcb/glx.h:2994

  --* Opcode for xcb_glx_get_queryiv_arb.  
  --*
  -- * @brief xcb_glx_get_queryiv_arb_request_t
  -- * 

  --*<   
   type xcb_glx_get_queryiv_arb_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:3005
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:3006
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:3007
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:3008
      target : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:3009
      pname : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:3010
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_queryiv_arb_request_t);  -- /usr/include/xcb/glx.h:3004

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_queryiv_arb_reply_t
  -- * 

  --*<   
   type anon4679_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type anon4679_anon2079_array is array (0 .. 11) of aliased stdint_h.uint8_t;
   type xcb_glx_get_queryiv_arb_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:3017
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:3018
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:3019
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:3020
      pad1 : aliased anon4679_anon1768_array;  -- /usr/include/xcb/glx.h:3021
      n : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:3022
      datum : aliased sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:3023
      pad2 : aliased anon4679_anon2079_array;  -- /usr/include/xcb/glx.h:3024
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_queryiv_arb_reply_t);  -- /usr/include/xcb/glx.h:3016

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_query_objectiv_arb_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_query_objectiv_arb_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:3031
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_query_objectiv_arb_cookie_t);  -- /usr/include/xcb/glx.h:3030

  --* Opcode for xcb_glx_get_query_objectiv_arb.  
  --*
  -- * @brief xcb_glx_get_query_objectiv_arb_request_t
  -- * 

  --*<   
   type xcb_glx_get_query_objectiv_arb_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:3041
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:3042
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:3043
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:3044
      id : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:3045
      pname : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:3046
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_query_objectiv_arb_request_t);  -- /usr/include/xcb/glx.h:3040

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_query_objectiv_arb_reply_t
  -- * 

  --*<   
   type anon4689_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type anon4689_anon2079_array is array (0 .. 11) of aliased stdint_h.uint8_t;
   type xcb_glx_get_query_objectiv_arb_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:3053
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:3054
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:3055
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:3056
      pad1 : aliased anon4689_anon1768_array;  -- /usr/include/xcb/glx.h:3057
      n : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:3058
      datum : aliased sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:3059
      pad2 : aliased anon4689_anon2079_array;  -- /usr/include/xcb/glx.h:3060
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_query_objectiv_arb_reply_t);  -- /usr/include/xcb/glx.h:3052

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_query_objectuiv_arb_cookie_t
  -- * 

  --*<   
   type xcb_glx_get_query_objectuiv_arb_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/glx.h:3067
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_query_objectuiv_arb_cookie_t);  -- /usr/include/xcb/glx.h:3066

  --* Opcode for xcb_glx_get_query_objectuiv_arb.  
  --*
  -- * @brief xcb_glx_get_query_objectuiv_arb_request_t
  -- * 

  --*<   
   type xcb_glx_get_query_objectuiv_arb_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:3077
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:3078
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:3079
      context_tag : aliased xcb_glx_context_tag_t;  -- /usr/include/xcb/glx.h:3080
      id : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:3081
      pname : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:3082
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_query_objectuiv_arb_request_t);  -- /usr/include/xcb/glx.h:3076

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_glx_get_query_objectuiv_arb_reply_t
  -- * 

  --*<   
   type anon4699_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type anon4699_anon2079_array is array (0 .. 11) of aliased stdint_h.uint8_t;
   type xcb_glx_get_query_objectuiv_arb_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:3089
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:3090
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:3091
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:3092
      pad1 : aliased anon4699_anon1768_array;  -- /usr/include/xcb/glx.h:3093
      n : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:3094
      datum : aliased stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:3095
      pad2 : aliased anon4699_anon2079_array;  -- /usr/include/xcb/glx.h:3096
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_glx_get_query_objectuiv_arb_reply_t);  -- /usr/include/xcb/glx.h:3088

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_glx_pixmap_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_glx_pixmap_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_glx_pixmap_next
  -- ** 
  -- ** @param xcb_glx_pixmap_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_glx_pixmap_next (arg1 : access xcb_glx_pixmap_iterator_t);  -- /usr/include/xcb/glx.h:3118
   pragma Import (C, xcb_glx_pixmap_next, "xcb_glx_pixmap_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_glx_pixmap_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_pixmap_end
  -- ** 
  -- ** @param xcb_glx_pixmap_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_pixmap_end (arg1 : xcb_glx_pixmap_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:3140
   pragma Import (C, xcb_glx_pixmap_end, "xcb_glx_pixmap_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_glx_context_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_glx_context_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_glx_context_next
  -- ** 
  -- ** @param xcb_glx_context_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_glx_context_next (arg1 : access xcb_glx_context_iterator_t);  -- /usr/include/xcb/glx.h:3161
   pragma Import (C, xcb_glx_context_next, "xcb_glx_context_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_glx_context_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_context_end
  -- ** 
  -- ** @param xcb_glx_context_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_context_end (arg1 : xcb_glx_context_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:3183
   pragma Import (C, xcb_glx_context_end, "xcb_glx_context_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_glx_pbuffer_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_glx_pbuffer_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_glx_pbuffer_next
  -- ** 
  -- ** @param xcb_glx_pbuffer_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_glx_pbuffer_next (arg1 : access xcb_glx_pbuffer_iterator_t);  -- /usr/include/xcb/glx.h:3204
   pragma Import (C, xcb_glx_pbuffer_next, "xcb_glx_pbuffer_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_glx_pbuffer_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_pbuffer_end
  -- ** 
  -- ** @param xcb_glx_pbuffer_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_pbuffer_end (arg1 : xcb_glx_pbuffer_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:3226
   pragma Import (C, xcb_glx_pbuffer_end, "xcb_glx_pbuffer_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_glx_window_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_glx_window_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_glx_window_next
  -- ** 
  -- ** @param xcb_glx_window_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_glx_window_next (arg1 : access xcb_glx_window_iterator_t);  -- /usr/include/xcb/glx.h:3247
   pragma Import (C, xcb_glx_window_next, "xcb_glx_window_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_glx_window_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_window_end
  -- ** 
  -- ** @param xcb_glx_window_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_window_end (arg1 : xcb_glx_window_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:3269
   pragma Import (C, xcb_glx_window_end, "xcb_glx_window_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_glx_fbconfig_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_glx_fbconfig_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_glx_fbconfig_next
  -- ** 
  -- ** @param xcb_glx_fbconfig_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_glx_fbconfig_next (arg1 : access xcb_glx_fbconfig_iterator_t);  -- /usr/include/xcb/glx.h:3290
   pragma Import (C, xcb_glx_fbconfig_next, "xcb_glx_fbconfig_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_glx_fbconfig_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_fbconfig_end
  -- ** 
  -- ** @param xcb_glx_fbconfig_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_fbconfig_end (arg1 : xcb_glx_fbconfig_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:3312
   pragma Import (C, xcb_glx_fbconfig_end, "xcb_glx_fbconfig_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_glx_drawable_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_glx_drawable_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_glx_drawable_next
  -- ** 
  -- ** @param xcb_glx_drawable_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_glx_drawable_next (arg1 : access xcb_glx_drawable_iterator_t);  -- /usr/include/xcb/glx.h:3333
   pragma Import (C, xcb_glx_drawable_next, "xcb_glx_drawable_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_glx_drawable_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_drawable_end
  -- ** 
  -- ** @param xcb_glx_drawable_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_drawable_end (arg1 : xcb_glx_drawable_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:3355
   pragma Import (C, xcb_glx_drawable_end, "xcb_glx_drawable_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_glx_float32_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_glx_float32_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_glx_float32_next
  -- ** 
  -- ** @param xcb_glx_float32_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_glx_float32_next (arg1 : access xcb_glx_float32_iterator_t);  -- /usr/include/xcb/glx.h:3376
   pragma Import (C, xcb_glx_float32_next, "xcb_glx_float32_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_glx_float32_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_float32_end
  -- ** 
  -- ** @param xcb_glx_float32_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_float32_end (arg1 : xcb_glx_float32_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:3398
   pragma Import (C, xcb_glx_float32_end, "xcb_glx_float32_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_glx_float64_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_glx_float64_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_glx_float64_next
  -- ** 
  -- ** @param xcb_glx_float64_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_glx_float64_next (arg1 : access xcb_glx_float64_iterator_t);  -- /usr/include/xcb/glx.h:3419
   pragma Import (C, xcb_glx_float64_next, "xcb_glx_float64_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_glx_float64_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_float64_end
  -- ** 
  -- ** @param xcb_glx_float64_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_float64_end (arg1 : xcb_glx_float64_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:3441
   pragma Import (C, xcb_glx_float64_end, "xcb_glx_float64_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_glx_bool32_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_glx_bool32_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_glx_bool32_next
  -- ** 
  -- ** @param xcb_glx_bool32_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_glx_bool32_next (arg1 : access xcb_glx_bool32_iterator_t);  -- /usr/include/xcb/glx.h:3462
   pragma Import (C, xcb_glx_bool32_next, "xcb_glx_bool32_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_glx_bool32_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_bool32_end
  -- ** 
  -- ** @param xcb_glx_bool32_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_bool32_end (arg1 : xcb_glx_bool32_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:3484
   pragma Import (C, xcb_glx_bool32_end, "xcb_glx_bool32_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_glx_context_tag_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_glx_context_tag_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_glx_context_tag_next
  -- ** 
  -- ** @param xcb_glx_context_tag_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_glx_context_tag_next (arg1 : access xcb_glx_context_tag_iterator_t);  -- /usr/include/xcb/glx.h:3505
   pragma Import (C, xcb_glx_context_tag_next, "xcb_glx_context_tag_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_glx_context_tag_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_context_tag_end
  -- ** 
  -- ** @param xcb_glx_context_tag_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_context_tag_end (arg1 : xcb_glx_context_tag_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:3527
   pragma Import (C, xcb_glx_context_tag_end, "xcb_glx_context_tag_end");

  --*<  
   function xcb_glx_render_sizeof (arg1 : System.Address; arg2 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/glx.h:3530
   pragma Import (C, xcb_glx_render_sizeof, "xcb_glx_render_sizeof");

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
  -- ** xcb_void_cookie_t xcb_glx_render_checked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               data_len
  -- ** @param const uint8_t         *data
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_render_checked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : access stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:3558
   pragma Import (C, xcb_glx_render_checked, "xcb_glx_render_checked");

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
  -- ** xcb_void_cookie_t xcb_glx_render
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               data_len
  -- ** @param const uint8_t         *data
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_render
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : access stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:3585
   pragma Import (C, xcb_glx_render, "xcb_glx_render");

  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_glx_render_large_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:3591
   pragma Import (C, xcb_glx_render_large_sizeof, "xcb_glx_render_large_sizeof");

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
  -- ** xcb_void_cookie_t xcb_glx_render_large_checked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint16_t               request_num
  -- ** @param uint16_t               request_total
  -- ** @param uint32_t               data_len
  -- ** @param const uint8_t         *data
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_render_large_checked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint32_t;
      arg6 : access stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:3620
   pragma Import (C, xcb_glx_render_large_checked, "xcb_glx_render_large_checked");

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
  -- ** xcb_void_cookie_t xcb_glx_render_large
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint16_t               request_num
  -- ** @param uint16_t               request_total
  -- ** @param uint32_t               data_len
  -- ** @param const uint8_t         *data
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_render_large
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint16_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint32_t;
      arg6 : access stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:3651
   pragma Import (C, xcb_glx_render_large, "xcb_glx_render_large");

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
  -- ** xcb_void_cookie_t xcb_glx_create_context_checked
  -- ** 
  -- ** @param xcb_connection_t  *c
  -- ** @param xcb_glx_context_t  context
  -- ** @param xcb_visualid_t     visual
  -- ** @param uint32_t           screen
  -- ** @param xcb_glx_context_t  share_list
  -- ** @param uint8_t            is_direct
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_create_context_checked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_t;
      arg3 : xcb_xproto_h.xcb_visualid_t;
      arg4 : stdint_h.uint32_t;
      arg5 : xcb_glx_context_t;
      arg6 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:3685
   pragma Import (C, xcb_glx_create_context_checked, "xcb_glx_create_context_checked");

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
  -- ** xcb_void_cookie_t xcb_glx_create_context
  -- ** 
  -- ** @param xcb_connection_t  *c
  -- ** @param xcb_glx_context_t  context
  -- ** @param xcb_visualid_t     visual
  -- ** @param uint32_t           screen
  -- ** @param xcb_glx_context_t  share_list
  -- ** @param uint8_t            is_direct
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_create_context
     (arg1 : System.Address;
      arg2 : xcb_glx_context_t;
      arg3 : xcb_xproto_h.xcb_visualid_t;
      arg4 : stdint_h.uint32_t;
      arg5 : xcb_glx_context_t;
      arg6 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:3716
   pragma Import (C, xcb_glx_create_context, "xcb_glx_create_context");

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
  -- ** xcb_void_cookie_t xcb_glx_destroy_context_checked
  -- ** 
  -- ** @param xcb_connection_t  *c
  -- ** @param xcb_glx_context_t  context
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_destroy_context_checked (arg1 : System.Address; arg2 : xcb_glx_context_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:3746
   pragma Import (C, xcb_glx_destroy_context_checked, "xcb_glx_destroy_context_checked");

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
  -- ** xcb_void_cookie_t xcb_glx_destroy_context
  -- ** 
  -- ** @param xcb_connection_t  *c
  -- ** @param xcb_glx_context_t  context
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_destroy_context (arg1 : System.Address; arg2 : xcb_glx_context_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:3769
   pragma Import (C, xcb_glx_destroy_context, "xcb_glx_destroy_context");

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
  -- ** xcb_glx_make_current_cookie_t xcb_glx_make_current
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_drawable_t     drawable
  -- ** @param xcb_glx_context_t      context
  -- ** @param xcb_glx_context_tag_t  old_context_tag
  -- ** @returns xcb_glx_make_current_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_make_current
     (arg1 : System.Address;
      arg2 : xcb_glx_drawable_t;
      arg3 : xcb_glx_context_t;
      arg4 : xcb_glx_context_tag_t) return xcb_glx_make_current_cookie_t;  -- /usr/include/xcb/glx.h:3794
   pragma Import (C, xcb_glx_make_current, "xcb_glx_make_current");

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
  -- ** xcb_glx_make_current_cookie_t xcb_glx_make_current_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_drawable_t     drawable
  -- ** @param xcb_glx_context_t      context
  -- ** @param xcb_glx_context_tag_t  old_context_tag
  -- ** @returns xcb_glx_make_current_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_make_current_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_drawable_t;
      arg3 : xcb_glx_context_t;
      arg4 : xcb_glx_context_tag_t) return xcb_glx_make_current_cookie_t;  -- /usr/include/xcb/glx.h:3824
   pragma Import (C, xcb_glx_make_current_unchecked, "xcb_glx_make_current_unchecked");

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
  -- * xcb_glx_make_current_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_make_current_reply_t * xcb_glx_make_current_reply
  -- ** 
  -- ** @param xcb_connection_t               *c
  -- ** @param xcb_glx_make_current_cookie_t   cookie
  -- ** @param xcb_generic_error_t           **e
  -- ** @returns xcb_glx_make_current_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_make_current_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_make_current_cookie_t;
      arg3 : System.Address) return access xcb_glx_make_current_reply_t;  -- /usr/include/xcb/glx.h:3856
   pragma Import (C, xcb_glx_make_current_reply, "xcb_glx_make_current_reply");

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
  -- ** xcb_glx_is_direct_cookie_t xcb_glx_is_direct
  -- ** 
  -- ** @param xcb_connection_t  *c
  -- ** @param xcb_glx_context_t  context
  -- ** @returns xcb_glx_is_direct_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_is_direct (arg1 : System.Address; arg2 : xcb_glx_context_t) return xcb_glx_is_direct_cookie_t;  -- /usr/include/xcb/glx.h:3880
   pragma Import (C, xcb_glx_is_direct, "xcb_glx_is_direct");

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
  -- ** xcb_glx_is_direct_cookie_t xcb_glx_is_direct_unchecked
  -- ** 
  -- ** @param xcb_connection_t  *c
  -- ** @param xcb_glx_context_t  context
  -- ** @returns xcb_glx_is_direct_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_is_direct_unchecked (arg1 : System.Address; arg2 : xcb_glx_context_t) return xcb_glx_is_direct_cookie_t;  -- /usr/include/xcb/glx.h:3906
   pragma Import (C, xcb_glx_is_direct_unchecked, "xcb_glx_is_direct_unchecked");

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
  -- * xcb_glx_is_direct_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_is_direct_reply_t * xcb_glx_is_direct_reply
  -- ** 
  -- ** @param xcb_connection_t            *c
  -- ** @param xcb_glx_is_direct_cookie_t   cookie
  -- ** @param xcb_generic_error_t        **e
  -- ** @returns xcb_glx_is_direct_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_is_direct_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_is_direct_cookie_t;
      arg3 : System.Address) return access xcb_glx_is_direct_reply_t;  -- /usr/include/xcb/glx.h:3936
   pragma Import (C, xcb_glx_is_direct_reply, "xcb_glx_is_direct_reply");

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
  -- ** xcb_glx_query_version_cookie_t xcb_glx_query_version
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          major_version
  -- ** @param uint32_t          minor_version
  -- ** @returns xcb_glx_query_version_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_query_version
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : stdint_h.uint32_t) return xcb_glx_query_version_cookie_t;  -- /usr/include/xcb/glx.h:3961
   pragma Import (C, xcb_glx_query_version, "xcb_glx_query_version");

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
  -- ** xcb_glx_query_version_cookie_t xcb_glx_query_version_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          major_version
  -- ** @param uint32_t          minor_version
  -- ** @returns xcb_glx_query_version_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_query_version_unchecked
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : stdint_h.uint32_t) return xcb_glx_query_version_cookie_t;  -- /usr/include/xcb/glx.h:3989
   pragma Import (C, xcb_glx_query_version_unchecked, "xcb_glx_query_version_unchecked");

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
  -- * xcb_glx_query_version_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_query_version_reply_t * xcb_glx_query_version_reply
  -- ** 
  -- ** @param xcb_connection_t                *c
  -- ** @param xcb_glx_query_version_cookie_t   cookie
  -- ** @param xcb_generic_error_t            **e
  -- ** @returns xcb_glx_query_version_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_query_version_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_query_version_cookie_t;
      arg3 : System.Address) return access xcb_glx_query_version_reply_t;  -- /usr/include/xcb/glx.h:4020
   pragma Import (C, xcb_glx_query_version_reply, "xcb_glx_query_version_reply");

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
  -- ** xcb_void_cookie_t xcb_glx_wait_gl_checked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_wait_gl_checked (arg1 : System.Address; arg2 : xcb_glx_context_tag_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:4047
   pragma Import (C, xcb_glx_wait_gl_checked, "xcb_glx_wait_gl_checked");

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
  -- ** xcb_void_cookie_t xcb_glx_wait_gl
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_wait_gl (arg1 : System.Address; arg2 : xcb_glx_context_tag_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:4070
   pragma Import (C, xcb_glx_wait_gl, "xcb_glx_wait_gl");

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
  -- ** xcb_void_cookie_t xcb_glx_wait_x_checked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_wait_x_checked (arg1 : System.Address; arg2 : xcb_glx_context_tag_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:4096
   pragma Import (C, xcb_glx_wait_x_checked, "xcb_glx_wait_x_checked");

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
  -- ** xcb_void_cookie_t xcb_glx_wait_x
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_wait_x (arg1 : System.Address; arg2 : xcb_glx_context_tag_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:4119
   pragma Import (C, xcb_glx_wait_x, "xcb_glx_wait_x");

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
  -- ** xcb_void_cookie_t xcb_glx_copy_context_checked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_t      src
  -- ** @param xcb_glx_context_t      dest
  -- ** @param uint32_t               mask
  -- ** @param xcb_glx_context_tag_t  src_context_tag
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_copy_context_checked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_t;
      arg3 : xcb_glx_context_t;
      arg4 : stdint_h.uint32_t;
      arg5 : xcb_glx_context_tag_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:4148
   pragma Import (C, xcb_glx_copy_context_checked, "xcb_glx_copy_context_checked");

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
  -- ** xcb_void_cookie_t xcb_glx_copy_context
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_t      src
  -- ** @param xcb_glx_context_t      dest
  -- ** @param uint32_t               mask
  -- ** @param xcb_glx_context_tag_t  src_context_tag
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_copy_context
     (arg1 : System.Address;
      arg2 : xcb_glx_context_t;
      arg3 : xcb_glx_context_t;
      arg4 : stdint_h.uint32_t;
      arg5 : xcb_glx_context_tag_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:4177
   pragma Import (C, xcb_glx_copy_context, "xcb_glx_copy_context");

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
  -- ** xcb_void_cookie_t xcb_glx_swap_buffers_checked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param xcb_glx_drawable_t     drawable
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_swap_buffers_checked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : xcb_glx_drawable_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:4207
   pragma Import (C, xcb_glx_swap_buffers_checked, "xcb_glx_swap_buffers_checked");

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
  -- ** xcb_void_cookie_t xcb_glx_swap_buffers
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param xcb_glx_drawable_t     drawable
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_swap_buffers
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : xcb_glx_drawable_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:4232
   pragma Import (C, xcb_glx_swap_buffers, "xcb_glx_swap_buffers");

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
  -- ** xcb_void_cookie_t xcb_glx_use_x_font_checked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param xcb_font_t             font
  -- ** @param uint32_t               first
  -- ** @param uint32_t               count
  -- ** @param uint32_t               list_base
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_use_x_font_checked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : xcb_xproto_h.xcb_font_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:4263
   pragma Import (C, xcb_glx_use_x_font_checked, "xcb_glx_use_x_font_checked");

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
  -- ** xcb_void_cookie_t xcb_glx_use_x_font
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param xcb_font_t             font
  -- ** @param uint32_t               first
  -- ** @param uint32_t               count
  -- ** @param uint32_t               list_base
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_use_x_font
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : xcb_xproto_h.xcb_font_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:4294
   pragma Import (C, xcb_glx_use_x_font, "xcb_glx_use_x_font");

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
  -- ** xcb_void_cookie_t xcb_glx_create_glx_pixmap_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          screen
  -- ** @param xcb_visualid_t    visual
  -- ** @param xcb_pixmap_t      pixmap
  -- ** @param xcb_glx_pixmap_t  glx_pixmap
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_create_glx_pixmap_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : xcb_xproto_h.xcb_visualid_t;
      arg4 : xcb_xproto_h.xcb_pixmap_t;
      arg5 : xcb_glx_pixmap_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:4327
   pragma Import (C, xcb_glx_create_glx_pixmap_checked, "xcb_glx_create_glx_pixmap_checked");

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
  -- ** xcb_void_cookie_t xcb_glx_create_glx_pixmap
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          screen
  -- ** @param xcb_visualid_t    visual
  -- ** @param xcb_pixmap_t      pixmap
  -- ** @param xcb_glx_pixmap_t  glx_pixmap
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_create_glx_pixmap
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : xcb_xproto_h.xcb_visualid_t;
      arg4 : xcb_xproto_h.xcb_pixmap_t;
      arg5 : xcb_glx_pixmap_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:4356
   pragma Import (C, xcb_glx_create_glx_pixmap, "xcb_glx_create_glx_pixmap");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_glx_get_visual_configs_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:4363
   pragma Import (C, xcb_glx_get_visual_configs_sizeof, "xcb_glx_get_visual_configs_sizeof");

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
  -- ** xcb_glx_get_visual_configs_cookie_t xcb_glx_get_visual_configs
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          screen
  -- ** @returns xcb_glx_get_visual_configs_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_visual_configs (arg1 : System.Address; arg2 : stdint_h.uint32_t) return xcb_glx_get_visual_configs_cookie_t;  -- /usr/include/xcb/glx.h:4385
   pragma Import (C, xcb_glx_get_visual_configs, "xcb_glx_get_visual_configs");

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
  -- ** xcb_glx_get_visual_configs_cookie_t xcb_glx_get_visual_configs_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          screen
  -- ** @returns xcb_glx_get_visual_configs_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_visual_configs_unchecked (arg1 : System.Address; arg2 : stdint_h.uint32_t) return xcb_glx_get_visual_configs_cookie_t;  -- /usr/include/xcb/glx.h:4411
   pragma Import (C, xcb_glx_get_visual_configs_unchecked, "xcb_glx_get_visual_configs_unchecked");

  --*<  
  --****************************************************************************
  -- **
  -- ** uint32_t * xcb_glx_get_visual_configs_property_list
  -- ** 
  -- ** @param const xcb_glx_get_visual_configs_reply_t *R
  -- ** @returns uint32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_visual_configs_property_list (arg1 : System.Address) return access stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:4425
   pragma Import (C, xcb_glx_get_visual_configs_property_list, "xcb_glx_get_visual_configs_property_list");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_get_visual_configs_property_list_length
  -- ** 
  -- ** @param const xcb_glx_get_visual_configs_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_visual_configs_property_list_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:4438
   pragma Import (C, xcb_glx_get_visual_configs_property_list_length, "xcb_glx_get_visual_configs_property_list_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_get_visual_configs_property_list_end
  -- ** 
  -- ** @param const xcb_glx_get_visual_configs_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_visual_configs_property_list_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:4451
   pragma Import (C, xcb_glx_get_visual_configs_property_list_end, "xcb_glx_get_visual_configs_property_list_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_get_visual_configs_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_visual_configs_reply_t * xcb_glx_get_visual_configs_reply
  -- ** 
  -- ** @param xcb_connection_t                     *c
  -- ** @param xcb_glx_get_visual_configs_cookie_t   cookie
  -- ** @param xcb_generic_error_t                 **e
  -- ** @returns xcb_glx_get_visual_configs_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_visual_configs_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_visual_configs_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_visual_configs_reply_t;  -- /usr/include/xcb/glx.h:4480
   pragma Import (C, xcb_glx_get_visual_configs_reply, "xcb_glx_get_visual_configs_reply");

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
  -- ** xcb_void_cookie_t xcb_glx_destroy_glx_pixmap_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_glx_pixmap_t  glx_pixmap
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_destroy_glx_pixmap_checked (arg1 : System.Address; arg2 : xcb_glx_pixmap_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:4507
   pragma Import (C, xcb_glx_destroy_glx_pixmap_checked, "xcb_glx_destroy_glx_pixmap_checked");

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
  -- ** xcb_void_cookie_t xcb_glx_destroy_glx_pixmap
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_glx_pixmap_t  glx_pixmap
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_destroy_glx_pixmap (arg1 : System.Address; arg2 : xcb_glx_pixmap_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:4530
   pragma Import (C, xcb_glx_destroy_glx_pixmap, "xcb_glx_destroy_glx_pixmap");

  --*<  
  --*<  
   function xcb_glx_vendor_private_sizeof (arg1 : System.Address; arg2 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/glx.h:4534
   pragma Import (C, xcb_glx_vendor_private_sizeof, "xcb_glx_vendor_private_sizeof");

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
  -- ** xcb_void_cookie_t xcb_glx_vendor_private_checked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param uint32_t               vendor_code
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               data_len
  -- ** @param const uint8_t         *data
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_vendor_private_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : xcb_glx_context_tag_t;
      arg4 : stdint_h.uint32_t;
      arg5 : access stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:4563
   pragma Import (C, xcb_glx_vendor_private_checked, "xcb_glx_vendor_private_checked");

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
  -- ** xcb_void_cookie_t xcb_glx_vendor_private
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param uint32_t               vendor_code
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               data_len
  -- ** @param const uint8_t         *data
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_vendor_private
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : xcb_glx_context_tag_t;
      arg4 : stdint_h.uint32_t;
      arg5 : access stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:4592
   pragma Import (C, xcb_glx_vendor_private, "xcb_glx_vendor_private");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_glx_vendor_private_with_reply_sizeof (arg1 : System.Address; arg2 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/glx.h:4599
   pragma Import (C, xcb_glx_vendor_private_with_reply_sizeof, "xcb_glx_vendor_private_with_reply_sizeof");

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
  -- ** xcb_glx_vendor_private_with_reply_cookie_t xcb_glx_vendor_private_with_reply
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param uint32_t               vendor_code
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               data_len
  -- ** @param const uint8_t         *data
  -- ** @returns xcb_glx_vendor_private_with_reply_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_vendor_private_with_reply
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : xcb_glx_context_tag_t;
      arg4 : stdint_h.uint32_t;
      arg5 : access stdint_h.uint8_t) return xcb_glx_vendor_private_with_reply_cookie_t;  -- /usr/include/xcb/glx.h:4625
   pragma Import (C, xcb_glx_vendor_private_with_reply, "xcb_glx_vendor_private_with_reply");

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
  -- ** xcb_glx_vendor_private_with_reply_cookie_t xcb_glx_vendor_private_with_reply_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param uint32_t               vendor_code
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               data_len
  -- ** @param const uint8_t         *data
  -- ** @returns xcb_glx_vendor_private_with_reply_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_vendor_private_with_reply_unchecked
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : xcb_glx_context_tag_t;
      arg4 : stdint_h.uint32_t;
      arg5 : access stdint_h.uint8_t) return xcb_glx_vendor_private_with_reply_cookie_t;  -- /usr/include/xcb/glx.h:4657
   pragma Import (C, xcb_glx_vendor_private_with_reply_unchecked, "xcb_glx_vendor_private_with_reply_unchecked");

  --*<  
  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** uint8_t * xcb_glx_vendor_private_with_reply_data_2
  -- ** 
  -- ** @param const xcb_glx_vendor_private_with_reply_reply_t *R
  -- ** @returns uint8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_vendor_private_with_reply_data_2 (arg1 : System.Address) return access stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:4674
   pragma Import (C, xcb_glx_vendor_private_with_reply_data_2, "xcb_glx_vendor_private_with_reply_data_2");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_vendor_private_with_reply_data_2_length
  -- ** 
  -- ** @param const xcb_glx_vendor_private_with_reply_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_vendor_private_with_reply_data_2_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:4687
   pragma Import (C, xcb_glx_vendor_private_with_reply_data_2_length, "xcb_glx_vendor_private_with_reply_data_2_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_vendor_private_with_reply_data_2_end
  -- ** 
  -- ** @param const xcb_glx_vendor_private_with_reply_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_vendor_private_with_reply_data_2_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:4700
   pragma Import (C, xcb_glx_vendor_private_with_reply_data_2_end, "xcb_glx_vendor_private_with_reply_data_2_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_vendor_private_with_reply_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_vendor_private_with_reply_reply_t * xcb_glx_vendor_private_with_reply_reply
  -- ** 
  -- ** @param xcb_connection_t                            *c
  -- ** @param xcb_glx_vendor_private_with_reply_cookie_t   cookie
  -- ** @param xcb_generic_error_t                        **e
  -- ** @returns xcb_glx_vendor_private_with_reply_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_vendor_private_with_reply_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_vendor_private_with_reply_cookie_t;
      arg3 : System.Address) return access xcb_glx_vendor_private_with_reply_reply_t;  -- /usr/include/xcb/glx.h:4729
   pragma Import (C, xcb_glx_vendor_private_with_reply_reply, "xcb_glx_vendor_private_with_reply_reply");

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
  -- ** xcb_glx_query_extensions_string_cookie_t xcb_glx_query_extensions_string
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          screen
  -- ** @returns xcb_glx_query_extensions_string_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_query_extensions_string (arg1 : System.Address; arg2 : stdint_h.uint32_t) return xcb_glx_query_extensions_string_cookie_t;  -- /usr/include/xcb/glx.h:4753
   pragma Import (C, xcb_glx_query_extensions_string, "xcb_glx_query_extensions_string");

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
  -- ** xcb_glx_query_extensions_string_cookie_t xcb_glx_query_extensions_string_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          screen
  -- ** @returns xcb_glx_query_extensions_string_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_query_extensions_string_unchecked (arg1 : System.Address; arg2 : stdint_h.uint32_t) return xcb_glx_query_extensions_string_cookie_t;  -- /usr/include/xcb/glx.h:4779
   pragma Import (C, xcb_glx_query_extensions_string_unchecked, "xcb_glx_query_extensions_string_unchecked");

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
  -- * xcb_glx_query_extensions_string_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_query_extensions_string_reply_t * xcb_glx_query_extensions_string_reply
  -- ** 
  -- ** @param xcb_connection_t                          *c
  -- ** @param xcb_glx_query_extensions_string_cookie_t   cookie
  -- ** @param xcb_generic_error_t                      **e
  -- ** @returns xcb_glx_query_extensions_string_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_query_extensions_string_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_query_extensions_string_cookie_t;
      arg3 : System.Address) return access xcb_glx_query_extensions_string_reply_t;  -- /usr/include/xcb/glx.h:4809
   pragma Import (C, xcb_glx_query_extensions_string_reply, "xcb_glx_query_extensions_string_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_query_server_string_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:4814
   pragma Import (C, xcb_glx_query_server_string_sizeof, "xcb_glx_query_server_string_sizeof");

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
  -- ** xcb_glx_query_server_string_cookie_t xcb_glx_query_server_string
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          screen
  -- ** @param uint32_t          name
  -- ** @returns xcb_glx_query_server_string_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_query_server_string
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : stdint_h.uint32_t) return xcb_glx_query_server_string_cookie_t;  -- /usr/include/xcb/glx.h:4837
   pragma Import (C, xcb_glx_query_server_string, "xcb_glx_query_server_string");

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
  -- ** xcb_glx_query_server_string_cookie_t xcb_glx_query_server_string_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          screen
  -- ** @param uint32_t          name
  -- ** @returns xcb_glx_query_server_string_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_query_server_string_unchecked
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : stdint_h.uint32_t) return xcb_glx_query_server_string_cookie_t;  -- /usr/include/xcb/glx.h:4865
   pragma Import (C, xcb_glx_query_server_string_unchecked, "xcb_glx_query_server_string_unchecked");

  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** char * xcb_glx_query_server_string_string
  -- ** 
  -- ** @param const xcb_glx_query_server_string_reply_t *R
  -- ** @returns char *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_query_server_string_string (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/glx.h:4880
   pragma Import (C, xcb_glx_query_server_string_string, "xcb_glx_query_server_string_string");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_query_server_string_string_length
  -- ** 
  -- ** @param const xcb_glx_query_server_string_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_query_server_string_string_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:4893
   pragma Import (C, xcb_glx_query_server_string_string_length, "xcb_glx_query_server_string_string_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_query_server_string_string_end
  -- ** 
  -- ** @param const xcb_glx_query_server_string_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_query_server_string_string_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:4906
   pragma Import (C, xcb_glx_query_server_string_string_end, "xcb_glx_query_server_string_string_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_query_server_string_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_query_server_string_reply_t * xcb_glx_query_server_string_reply
  -- ** 
  -- ** @param xcb_connection_t                      *c
  -- ** @param xcb_glx_query_server_string_cookie_t   cookie
  -- ** @param xcb_generic_error_t                  **e
  -- ** @returns xcb_glx_query_server_string_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_query_server_string_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_query_server_string_cookie_t;
      arg3 : System.Address) return access xcb_glx_query_server_string_reply_t;  -- /usr/include/xcb/glx.h:4935
   pragma Import (C, xcb_glx_query_server_string_reply, "xcb_glx_query_server_string_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_client_info_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:4940
   pragma Import (C, xcb_glx_client_info_sizeof, "xcb_glx_client_info_sizeof");

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
  -- ** xcb_void_cookie_t xcb_glx_client_info_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          major_version
  -- ** @param uint32_t          minor_version
  -- ** @param uint32_t          str_len
  -- ** @param const char       *string
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_client_info_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t;
      arg5 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:4968
   pragma Import (C, xcb_glx_client_info_checked, "xcb_glx_client_info_checked");

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
  -- ** xcb_void_cookie_t xcb_glx_client_info
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          major_version
  -- ** @param uint32_t          minor_version
  -- ** @param uint32_t          str_len
  -- ** @param const char       *string
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_client_info
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t;
      arg5 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:4997
   pragma Import (C, xcb_glx_client_info, "xcb_glx_client_info");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_glx_get_fb_configs_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:5004
   pragma Import (C, xcb_glx_get_fb_configs_sizeof, "xcb_glx_get_fb_configs_sizeof");

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
  -- ** xcb_glx_get_fb_configs_cookie_t xcb_glx_get_fb_configs
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          screen
  -- ** @returns xcb_glx_get_fb_configs_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_fb_configs (arg1 : System.Address; arg2 : stdint_h.uint32_t) return xcb_glx_get_fb_configs_cookie_t;  -- /usr/include/xcb/glx.h:5026
   pragma Import (C, xcb_glx_get_fb_configs, "xcb_glx_get_fb_configs");

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
  -- ** xcb_glx_get_fb_configs_cookie_t xcb_glx_get_fb_configs_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          screen
  -- ** @returns xcb_glx_get_fb_configs_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_fb_configs_unchecked (arg1 : System.Address; arg2 : stdint_h.uint32_t) return xcb_glx_get_fb_configs_cookie_t;  -- /usr/include/xcb/glx.h:5052
   pragma Import (C, xcb_glx_get_fb_configs_unchecked, "xcb_glx_get_fb_configs_unchecked");

  --*<  
  --****************************************************************************
  -- **
  -- ** uint32_t * xcb_glx_get_fb_configs_property_list
  -- ** 
  -- ** @param const xcb_glx_get_fb_configs_reply_t *R
  -- ** @returns uint32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_fb_configs_property_list (arg1 : System.Address) return access stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:5066
   pragma Import (C, xcb_glx_get_fb_configs_property_list, "xcb_glx_get_fb_configs_property_list");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_get_fb_configs_property_list_length
  -- ** 
  -- ** @param const xcb_glx_get_fb_configs_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_fb_configs_property_list_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:5079
   pragma Import (C, xcb_glx_get_fb_configs_property_list_length, "xcb_glx_get_fb_configs_property_list_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_get_fb_configs_property_list_end
  -- ** 
  -- ** @param const xcb_glx_get_fb_configs_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_fb_configs_property_list_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:5092
   pragma Import (C, xcb_glx_get_fb_configs_property_list_end, "xcb_glx_get_fb_configs_property_list_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_get_fb_configs_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_fb_configs_reply_t * xcb_glx_get_fb_configs_reply
  -- ** 
  -- ** @param xcb_connection_t                 *c
  -- ** @param xcb_glx_get_fb_configs_cookie_t   cookie
  -- ** @param xcb_generic_error_t             **e
  -- ** @returns xcb_glx_get_fb_configs_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_fb_configs_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_fb_configs_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_fb_configs_reply_t;  -- /usr/include/xcb/glx.h:5121
   pragma Import (C, xcb_glx_get_fb_configs_reply, "xcb_glx_get_fb_configs_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_create_pixmap_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:5126
   pragma Import (C, xcb_glx_create_pixmap_sizeof, "xcb_glx_create_pixmap_sizeof");

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
  -- ** xcb_void_cookie_t xcb_glx_create_pixmap_checked
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param uint32_t            screen
  -- ** @param xcb_glx_fbconfig_t  fbconfig
  -- ** @param xcb_pixmap_t        pixmap
  -- ** @param xcb_glx_pixmap_t    glx_pixmap
  -- ** @param uint32_t            num_attribs
  -- ** @param const uint32_t     *attribs
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_create_pixmap_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : xcb_glx_fbconfig_t;
      arg4 : xcb_xproto_h.xcb_pixmap_t;
      arg5 : xcb_glx_pixmap_t;
      arg6 : stdint_h.uint32_t;
      arg7 : access stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:5156
   pragma Import (C, xcb_glx_create_pixmap_checked, "xcb_glx_create_pixmap_checked");

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
  -- ** xcb_void_cookie_t xcb_glx_create_pixmap
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param uint32_t            screen
  -- ** @param xcb_glx_fbconfig_t  fbconfig
  -- ** @param xcb_pixmap_t        pixmap
  -- ** @param xcb_glx_pixmap_t    glx_pixmap
  -- ** @param uint32_t            num_attribs
  -- ** @param const uint32_t     *attribs
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_create_pixmap
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : xcb_glx_fbconfig_t;
      arg4 : xcb_xproto_h.xcb_pixmap_t;
      arg5 : xcb_glx_pixmap_t;
      arg6 : stdint_h.uint32_t;
      arg7 : access stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:5189
   pragma Import (C, xcb_glx_create_pixmap, "xcb_glx_create_pixmap");

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
  -- ** xcb_void_cookie_t xcb_glx_destroy_pixmap_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_glx_pixmap_t  glx_pixmap
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_destroy_pixmap_checked (arg1 : System.Address; arg2 : xcb_glx_pixmap_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:5220
   pragma Import (C, xcb_glx_destroy_pixmap_checked, "xcb_glx_destroy_pixmap_checked");

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
  -- ** xcb_void_cookie_t xcb_glx_destroy_pixmap
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_glx_pixmap_t  glx_pixmap
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_destroy_pixmap (arg1 : System.Address; arg2 : xcb_glx_pixmap_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:5243
   pragma Import (C, xcb_glx_destroy_pixmap, "xcb_glx_destroy_pixmap");

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
  -- ** xcb_void_cookie_t xcb_glx_create_new_context_checked
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_glx_context_t   context
  -- ** @param xcb_glx_fbconfig_t  fbconfig
  -- ** @param uint32_t            screen
  -- ** @param uint32_t            render_type
  -- ** @param xcb_glx_context_t   share_list
  -- ** @param uint8_t             is_direct
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_create_new_context_checked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_t;
      arg3 : xcb_glx_fbconfig_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : xcb_glx_context_t;
      arg7 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:5274
   pragma Import (C, xcb_glx_create_new_context_checked, "xcb_glx_create_new_context_checked");

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
  -- ** xcb_void_cookie_t xcb_glx_create_new_context
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_glx_context_t   context
  -- ** @param xcb_glx_fbconfig_t  fbconfig
  -- ** @param uint32_t            screen
  -- ** @param uint32_t            render_type
  -- ** @param xcb_glx_context_t   share_list
  -- ** @param uint8_t             is_direct
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_create_new_context
     (arg1 : System.Address;
      arg2 : xcb_glx_context_t;
      arg3 : xcb_glx_fbconfig_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : xcb_glx_context_t;
      arg7 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:5307
   pragma Import (C, xcb_glx_create_new_context, "xcb_glx_create_new_context");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_glx_query_context_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:5316
   pragma Import (C, xcb_glx_query_context_sizeof, "xcb_glx_query_context_sizeof");

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
  -- ** xcb_glx_query_context_cookie_t xcb_glx_query_context
  -- ** 
  -- ** @param xcb_connection_t  *c
  -- ** @param xcb_glx_context_t  context
  -- ** @returns xcb_glx_query_context_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_query_context (arg1 : System.Address; arg2 : xcb_glx_context_t) return xcb_glx_query_context_cookie_t;  -- /usr/include/xcb/glx.h:5338
   pragma Import (C, xcb_glx_query_context, "xcb_glx_query_context");

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
  -- ** xcb_glx_query_context_cookie_t xcb_glx_query_context_unchecked
  -- ** 
  -- ** @param xcb_connection_t  *c
  -- ** @param xcb_glx_context_t  context
  -- ** @returns xcb_glx_query_context_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_query_context_unchecked (arg1 : System.Address; arg2 : xcb_glx_context_t) return xcb_glx_query_context_cookie_t;  -- /usr/include/xcb/glx.h:5364
   pragma Import (C, xcb_glx_query_context_unchecked, "xcb_glx_query_context_unchecked");

  --*<  
  --****************************************************************************
  -- **
  -- ** uint32_t * xcb_glx_query_context_attribs
  -- ** 
  -- ** @param const xcb_glx_query_context_reply_t *R
  -- ** @returns uint32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_query_context_attribs (arg1 : System.Address) return access stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:5378
   pragma Import (C, xcb_glx_query_context_attribs, "xcb_glx_query_context_attribs");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_query_context_attribs_length
  -- ** 
  -- ** @param const xcb_glx_query_context_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_query_context_attribs_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:5391
   pragma Import (C, xcb_glx_query_context_attribs_length, "xcb_glx_query_context_attribs_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_query_context_attribs_end
  -- ** 
  -- ** @param const xcb_glx_query_context_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_query_context_attribs_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:5404
   pragma Import (C, xcb_glx_query_context_attribs_end, "xcb_glx_query_context_attribs_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_query_context_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_query_context_reply_t * xcb_glx_query_context_reply
  -- ** 
  -- ** @param xcb_connection_t                *c
  -- ** @param xcb_glx_query_context_cookie_t   cookie
  -- ** @param xcb_generic_error_t            **e
  -- ** @returns xcb_glx_query_context_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_query_context_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_query_context_cookie_t;
      arg3 : System.Address) return access xcb_glx_query_context_reply_t;  -- /usr/include/xcb/glx.h:5433
   pragma Import (C, xcb_glx_query_context_reply, "xcb_glx_query_context_reply");

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
  -- ** xcb_glx_make_context_current_cookie_t xcb_glx_make_context_current
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  old_context_tag
  -- ** @param xcb_glx_drawable_t     drawable
  -- ** @param xcb_glx_drawable_t     read_drawable
  -- ** @param xcb_glx_context_t      context
  -- ** @returns xcb_glx_make_context_current_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_make_context_current
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : xcb_glx_drawable_t;
      arg4 : xcb_glx_drawable_t;
      arg5 : xcb_glx_context_t) return xcb_glx_make_context_current_cookie_t;  -- /usr/include/xcb/glx.h:5460
   pragma Import (C, xcb_glx_make_context_current, "xcb_glx_make_context_current");

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
  -- ** xcb_glx_make_context_current_cookie_t xcb_glx_make_context_current_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  old_context_tag
  -- ** @param xcb_glx_drawable_t     drawable
  -- ** @param xcb_glx_drawable_t     read_drawable
  -- ** @param xcb_glx_context_t      context
  -- ** @returns xcb_glx_make_context_current_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_make_context_current_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : xcb_glx_drawable_t;
      arg4 : xcb_glx_drawable_t;
      arg5 : xcb_glx_context_t) return xcb_glx_make_context_current_cookie_t;  -- /usr/include/xcb/glx.h:5492
   pragma Import (C, xcb_glx_make_context_current_unchecked, "xcb_glx_make_context_current_unchecked");

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
  -- * xcb_glx_make_context_current_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_make_context_current_reply_t * xcb_glx_make_context_current_reply
  -- ** 
  -- ** @param xcb_connection_t                       *c
  -- ** @param xcb_glx_make_context_current_cookie_t   cookie
  -- ** @param xcb_generic_error_t                   **e
  -- ** @returns xcb_glx_make_context_current_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_make_context_current_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_make_context_current_cookie_t;
      arg3 : System.Address) return access xcb_glx_make_context_current_reply_t;  -- /usr/include/xcb/glx.h:5525
   pragma Import (C, xcb_glx_make_context_current_reply, "xcb_glx_make_context_current_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_create_pbuffer_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:5530
   pragma Import (C, xcb_glx_create_pbuffer_sizeof, "xcb_glx_create_pbuffer_sizeof");

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
  -- ** xcb_void_cookie_t xcb_glx_create_pbuffer_checked
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param uint32_t            screen
  -- ** @param xcb_glx_fbconfig_t  fbconfig
  -- ** @param xcb_glx_pbuffer_t   pbuffer
  -- ** @param uint32_t            num_attribs
  -- ** @param const uint32_t     *attribs
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_create_pbuffer_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : xcb_glx_fbconfig_t;
      arg4 : xcb_glx_pbuffer_t;
      arg5 : stdint_h.uint32_t;
      arg6 : access stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:5559
   pragma Import (C, xcb_glx_create_pbuffer_checked, "xcb_glx_create_pbuffer_checked");

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
  -- ** xcb_void_cookie_t xcb_glx_create_pbuffer
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param uint32_t            screen
  -- ** @param xcb_glx_fbconfig_t  fbconfig
  -- ** @param xcb_glx_pbuffer_t   pbuffer
  -- ** @param uint32_t            num_attribs
  -- ** @param const uint32_t     *attribs
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_create_pbuffer
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : xcb_glx_fbconfig_t;
      arg4 : xcb_glx_pbuffer_t;
      arg5 : stdint_h.uint32_t;
      arg6 : access stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:5590
   pragma Import (C, xcb_glx_create_pbuffer, "xcb_glx_create_pbuffer");

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
  -- ** xcb_void_cookie_t xcb_glx_destroy_pbuffer_checked
  -- ** 
  -- ** @param xcb_connection_t  *c
  -- ** @param xcb_glx_pbuffer_t  pbuffer
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_destroy_pbuffer_checked (arg1 : System.Address; arg2 : xcb_glx_pbuffer_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:5620
   pragma Import (C, xcb_glx_destroy_pbuffer_checked, "xcb_glx_destroy_pbuffer_checked");

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
  -- ** xcb_void_cookie_t xcb_glx_destroy_pbuffer
  -- ** 
  -- ** @param xcb_connection_t  *c
  -- ** @param xcb_glx_pbuffer_t  pbuffer
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_destroy_pbuffer (arg1 : System.Address; arg2 : xcb_glx_pbuffer_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:5643
   pragma Import (C, xcb_glx_destroy_pbuffer, "xcb_glx_destroy_pbuffer");

  --*<  
  --*<  
   function xcb_glx_get_drawable_attributes_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:5647
   pragma Import (C, xcb_glx_get_drawable_attributes_sizeof, "xcb_glx_get_drawable_attributes_sizeof");

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
  -- ** xcb_glx_get_drawable_attributes_cookie_t xcb_glx_get_drawable_attributes
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_glx_drawable_t  drawable
  -- ** @returns xcb_glx_get_drawable_attributes_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_drawable_attributes (arg1 : System.Address; arg2 : xcb_glx_drawable_t) return xcb_glx_get_drawable_attributes_cookie_t;  -- /usr/include/xcb/glx.h:5669
   pragma Import (C, xcb_glx_get_drawable_attributes, "xcb_glx_get_drawable_attributes");

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
  -- ** xcb_glx_get_drawable_attributes_cookie_t xcb_glx_get_drawable_attributes_unchecked
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_glx_drawable_t  drawable
  -- ** @returns xcb_glx_get_drawable_attributes_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_drawable_attributes_unchecked (arg1 : System.Address; arg2 : xcb_glx_drawable_t) return xcb_glx_get_drawable_attributes_cookie_t;  -- /usr/include/xcb/glx.h:5695
   pragma Import (C, xcb_glx_get_drawable_attributes_unchecked, "xcb_glx_get_drawable_attributes_unchecked");

  --*<  
  --****************************************************************************
  -- **
  -- ** uint32_t * xcb_glx_get_drawable_attributes_attribs
  -- ** 
  -- ** @param const xcb_glx_get_drawable_attributes_reply_t *R
  -- ** @returns uint32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_drawable_attributes_attribs (arg1 : System.Address) return access stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:5709
   pragma Import (C, xcb_glx_get_drawable_attributes_attribs, "xcb_glx_get_drawable_attributes_attribs");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_get_drawable_attributes_attribs_length
  -- ** 
  -- ** @param const xcb_glx_get_drawable_attributes_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_drawable_attributes_attribs_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:5722
   pragma Import (C, xcb_glx_get_drawable_attributes_attribs_length, "xcb_glx_get_drawable_attributes_attribs_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_get_drawable_attributes_attribs_end
  -- ** 
  -- ** @param const xcb_glx_get_drawable_attributes_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_drawable_attributes_attribs_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:5735
   pragma Import (C, xcb_glx_get_drawable_attributes_attribs_end, "xcb_glx_get_drawable_attributes_attribs_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_get_drawable_attributes_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_drawable_attributes_reply_t * xcb_glx_get_drawable_attributes_reply
  -- ** 
  -- ** @param xcb_connection_t                          *c
  -- ** @param xcb_glx_get_drawable_attributes_cookie_t   cookie
  -- ** @param xcb_generic_error_t                      **e
  -- ** @returns xcb_glx_get_drawable_attributes_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_drawable_attributes_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_drawable_attributes_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_drawable_attributes_reply_t;  -- /usr/include/xcb/glx.h:5764
   pragma Import (C, xcb_glx_get_drawable_attributes_reply, "xcb_glx_get_drawable_attributes_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_change_drawable_attributes_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:5769
   pragma Import (C, xcb_glx_change_drawable_attributes_sizeof, "xcb_glx_change_drawable_attributes_sizeof");

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
  -- ** xcb_void_cookie_t xcb_glx_change_drawable_attributes_checked
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_glx_drawable_t  drawable
  -- ** @param uint32_t            num_attribs
  -- ** @param const uint32_t     *attribs
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_change_drawable_attributes_checked
     (arg1 : System.Address;
      arg2 : xcb_glx_drawable_t;
      arg3 : stdint_h.uint32_t;
      arg4 : access stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:5796
   pragma Import (C, xcb_glx_change_drawable_attributes_checked, "xcb_glx_change_drawable_attributes_checked");

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
  -- ** xcb_void_cookie_t xcb_glx_change_drawable_attributes
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_glx_drawable_t  drawable
  -- ** @param uint32_t            num_attribs
  -- ** @param const uint32_t     *attribs
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_change_drawable_attributes
     (arg1 : System.Address;
      arg2 : xcb_glx_drawable_t;
      arg3 : stdint_h.uint32_t;
      arg4 : access stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:5823
   pragma Import (C, xcb_glx_change_drawable_attributes, "xcb_glx_change_drawable_attributes");

  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_glx_create_window_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:5829
   pragma Import (C, xcb_glx_create_window_sizeof, "xcb_glx_create_window_sizeof");

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
  -- ** xcb_void_cookie_t xcb_glx_create_window_checked
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param uint32_t            screen
  -- ** @param xcb_glx_fbconfig_t  fbconfig
  -- ** @param xcb_window_t        window
  -- ** @param xcb_glx_window_t    glx_window
  -- ** @param uint32_t            num_attribs
  -- ** @param const uint32_t     *attribs
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_create_window_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : xcb_glx_fbconfig_t;
      arg4 : xcb_xproto_h.xcb_window_t;
      arg5 : xcb_glx_window_t;
      arg6 : stdint_h.uint32_t;
      arg7 : access stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:5859
   pragma Import (C, xcb_glx_create_window_checked, "xcb_glx_create_window_checked");

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
  -- ** xcb_void_cookie_t xcb_glx_create_window
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param uint32_t            screen
  -- ** @param xcb_glx_fbconfig_t  fbconfig
  -- ** @param xcb_window_t        window
  -- ** @param xcb_glx_window_t    glx_window
  -- ** @param uint32_t            num_attribs
  -- ** @param const uint32_t     *attribs
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_create_window
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : xcb_glx_fbconfig_t;
      arg4 : xcb_xproto_h.xcb_window_t;
      arg5 : xcb_glx_window_t;
      arg6 : stdint_h.uint32_t;
      arg7 : access stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:5892
   pragma Import (C, xcb_glx_create_window, "xcb_glx_create_window");

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
  -- ** xcb_void_cookie_t xcb_glx_delete_window_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_glx_window_t  glxwindow
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_delete_window_checked (arg1 : System.Address; arg2 : xcb_glx_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:5923
   pragma Import (C, xcb_glx_delete_window_checked, "xcb_glx_delete_window_checked");

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
  -- ** xcb_void_cookie_t xcb_glx_delete_window
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_glx_window_t  glxwindow
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_delete_window (arg1 : System.Address; arg2 : xcb_glx_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:5946
   pragma Import (C, xcb_glx_delete_window, "xcb_glx_delete_window");

  --*<  
  --*<  
   function xcb_glx_set_client_info_arb_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:5950
   pragma Import (C, xcb_glx_set_client_info_arb_sizeof, "xcb_glx_set_client_info_arb_sizeof");

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
  -- ** xcb_void_cookie_t xcb_glx_set_client_info_arb_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          major_version
  -- ** @param uint32_t          minor_version
  -- ** @param uint32_t          num_versions
  -- ** @param uint32_t          gl_str_len
  -- ** @param uint32_t          glx_str_len
  -- ** @param const uint32_t   *gl_versions
  -- ** @param const char       *gl_extension_string
  -- ** @param const char       *glx_extension_string
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_set_client_info_arb_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : stdint_h.uint32_t;
      arg7 : access stdint_h.uint32_t;
      arg8 : Interfaces.C.Strings.chars_ptr;
      arg9 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:5982
   pragma Import (C, xcb_glx_set_client_info_arb_checked, "xcb_glx_set_client_info_arb_checked");

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
  -- ** xcb_void_cookie_t xcb_glx_set_client_info_arb
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          major_version
  -- ** @param uint32_t          minor_version
  -- ** @param uint32_t          num_versions
  -- ** @param uint32_t          gl_str_len
  -- ** @param uint32_t          glx_str_len
  -- ** @param const uint32_t   *gl_versions
  -- ** @param const char       *gl_extension_string
  -- ** @param const char       *glx_extension_string
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_set_client_info_arb
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : stdint_h.uint32_t;
      arg7 : access stdint_h.uint32_t;
      arg8 : Interfaces.C.Strings.chars_ptr;
      arg9 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:6019
   pragma Import (C, xcb_glx_set_client_info_arb, "xcb_glx_set_client_info_arb");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_glx_create_context_attribs_arb_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:6030
   pragma Import (C, xcb_glx_create_context_attribs_arb_sizeof, "xcb_glx_create_context_attribs_arb_sizeof");

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
  -- ** xcb_void_cookie_t xcb_glx_create_context_attribs_arb_checked
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_glx_context_t   context
  -- ** @param xcb_glx_fbconfig_t  fbconfig
  -- ** @param uint32_t            screen
  -- ** @param xcb_glx_context_t   share_list
  -- ** @param uint8_t             is_direct
  -- ** @param uint32_t            num_attribs
  -- ** @param const uint32_t     *attribs
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_create_context_attribs_arb_checked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_t;
      arg3 : xcb_glx_fbconfig_t;
      arg4 : stdint_h.uint32_t;
      arg5 : xcb_glx_context_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint32_t;
      arg8 : access stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:6061
   pragma Import (C, xcb_glx_create_context_attribs_arb_checked, "xcb_glx_create_context_attribs_arb_checked");

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
  -- ** xcb_void_cookie_t xcb_glx_create_context_attribs_arb
  -- ** 
  -- ** @param xcb_connection_t   *c
  -- ** @param xcb_glx_context_t   context
  -- ** @param xcb_glx_fbconfig_t  fbconfig
  -- ** @param uint32_t            screen
  -- ** @param xcb_glx_context_t   share_list
  -- ** @param uint8_t             is_direct
  -- ** @param uint32_t            num_attribs
  -- ** @param const uint32_t     *attribs
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_create_context_attribs_arb
     (arg1 : System.Address;
      arg2 : xcb_glx_context_t;
      arg3 : xcb_glx_fbconfig_t;
      arg4 : stdint_h.uint32_t;
      arg5 : xcb_glx_context_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint32_t;
      arg8 : access stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:6096
   pragma Import (C, xcb_glx_create_context_attribs_arb, "xcb_glx_create_context_attribs_arb");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_glx_set_client_info_2arb_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:6106
   pragma Import (C, xcb_glx_set_client_info_2arb_sizeof, "xcb_glx_set_client_info_2arb_sizeof");

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
  -- ** xcb_void_cookie_t xcb_glx_set_client_info_2arb_checked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          major_version
  -- ** @param uint32_t          minor_version
  -- ** @param uint32_t          num_versions
  -- ** @param uint32_t          gl_str_len
  -- ** @param uint32_t          glx_str_len
  -- ** @param const uint32_t   *gl_versions
  -- ** @param const char       *gl_extension_string
  -- ** @param const char       *glx_extension_string
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_set_client_info_2arb_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : stdint_h.uint32_t;
      arg7 : access stdint_h.uint32_t;
      arg8 : Interfaces.C.Strings.chars_ptr;
      arg9 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:6138
   pragma Import (C, xcb_glx_set_client_info_2arb_checked, "xcb_glx_set_client_info_2arb_checked");

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
  -- ** xcb_void_cookie_t xcb_glx_set_client_info_2arb
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          major_version
  -- ** @param uint32_t          minor_version
  -- ** @param uint32_t          num_versions
  -- ** @param uint32_t          gl_str_len
  -- ** @param uint32_t          glx_str_len
  -- ** @param const uint32_t   *gl_versions
  -- ** @param const char       *gl_extension_string
  -- ** @param const char       *glx_extension_string
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_set_client_info_2arb
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : stdint_h.uint32_t;
      arg7 : access stdint_h.uint32_t;
      arg8 : Interfaces.C.Strings.chars_ptr;
      arg9 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:6175
   pragma Import (C, xcb_glx_set_client_info_2arb, "xcb_glx_set_client_info_2arb");

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
  -- ** xcb_void_cookie_t xcb_glx_new_list_checked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               list
  -- ** @param uint32_t               mode
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_new_list_checked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:6210
   pragma Import (C, xcb_glx_new_list_checked, "xcb_glx_new_list_checked");

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
  -- ** xcb_void_cookie_t xcb_glx_new_list
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               list
  -- ** @param uint32_t               mode
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_new_list
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:6237
   pragma Import (C, xcb_glx_new_list, "xcb_glx_new_list");

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
  -- ** xcb_void_cookie_t xcb_glx_end_list_checked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_end_list_checked (arg1 : System.Address; arg2 : xcb_glx_context_tag_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:6265
   pragma Import (C, xcb_glx_end_list_checked, "xcb_glx_end_list_checked");

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
  -- ** xcb_void_cookie_t xcb_glx_end_list
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_end_list (arg1 : System.Address; arg2 : xcb_glx_context_tag_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:6288
   pragma Import (C, xcb_glx_end_list, "xcb_glx_end_list");

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
  -- ** xcb_void_cookie_t xcb_glx_delete_lists_checked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               list
  -- ** @param int32_t                range
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_delete_lists_checked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : sys_types_h.int32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:6316
   pragma Import (C, xcb_glx_delete_lists_checked, "xcb_glx_delete_lists_checked");

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
  -- ** xcb_void_cookie_t xcb_glx_delete_lists
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               list
  -- ** @param int32_t                range
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_delete_lists
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : sys_types_h.int32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:6343
   pragma Import (C, xcb_glx_delete_lists, "xcb_glx_delete_lists");

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
  -- ** xcb_glx_gen_lists_cookie_t xcb_glx_gen_lists
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param int32_t                range
  -- ** @returns xcb_glx_gen_lists_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_gen_lists
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : sys_types_h.int32_t) return xcb_glx_gen_lists_cookie_t;  -- /usr/include/xcb/glx.h:6369
   pragma Import (C, xcb_glx_gen_lists, "xcb_glx_gen_lists");

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
  -- ** xcb_glx_gen_lists_cookie_t xcb_glx_gen_lists_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param int32_t                range
  -- ** @returns xcb_glx_gen_lists_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_gen_lists_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : sys_types_h.int32_t) return xcb_glx_gen_lists_cookie_t;  -- /usr/include/xcb/glx.h:6397
   pragma Import (C, xcb_glx_gen_lists_unchecked, "xcb_glx_gen_lists_unchecked");

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
  -- * xcb_glx_gen_lists_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_gen_lists_reply_t * xcb_glx_gen_lists_reply
  -- ** 
  -- ** @param xcb_connection_t            *c
  -- ** @param xcb_glx_gen_lists_cookie_t   cookie
  -- ** @param xcb_generic_error_t        **e
  -- ** @returns xcb_glx_gen_lists_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_gen_lists_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_gen_lists_cookie_t;
      arg3 : System.Address) return access xcb_glx_gen_lists_reply_t;  -- /usr/include/xcb/glx.h:6428
   pragma Import (C, xcb_glx_gen_lists_reply, "xcb_glx_gen_lists_reply");

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
  -- ** xcb_void_cookie_t xcb_glx_feedback_buffer_checked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param int32_t                size
  -- ** @param int32_t                type
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_feedback_buffer_checked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : sys_types_h.int32_t;
      arg4 : sys_types_h.int32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:6457
   pragma Import (C, xcb_glx_feedback_buffer_checked, "xcb_glx_feedback_buffer_checked");

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
  -- ** xcb_void_cookie_t xcb_glx_feedback_buffer
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param int32_t                size
  -- ** @param int32_t                type
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_feedback_buffer
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : sys_types_h.int32_t;
      arg4 : sys_types_h.int32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:6484
   pragma Import (C, xcb_glx_feedback_buffer, "xcb_glx_feedback_buffer");

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
  -- ** xcb_void_cookie_t xcb_glx_select_buffer_checked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param int32_t                size
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_select_buffer_checked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : sys_types_h.int32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:6513
   pragma Import (C, xcb_glx_select_buffer_checked, "xcb_glx_select_buffer_checked");

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
  -- ** xcb_void_cookie_t xcb_glx_select_buffer
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param int32_t                size
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_select_buffer
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : sys_types_h.int32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:6538
   pragma Import (C, xcb_glx_select_buffer, "xcb_glx_select_buffer");

  --*<  
  --*<  
  --*<  
   function xcb_glx_render_mode_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:6543
   pragma Import (C, xcb_glx_render_mode_sizeof, "xcb_glx_render_mode_sizeof");

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
  -- ** xcb_glx_render_mode_cookie_t xcb_glx_render_mode
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               mode
  -- ** @returns xcb_glx_render_mode_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_render_mode
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t) return xcb_glx_render_mode_cookie_t;  -- /usr/include/xcb/glx.h:6566
   pragma Import (C, xcb_glx_render_mode, "xcb_glx_render_mode");

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
  -- ** xcb_glx_render_mode_cookie_t xcb_glx_render_mode_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               mode
  -- ** @returns xcb_glx_render_mode_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_render_mode_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t) return xcb_glx_render_mode_cookie_t;  -- /usr/include/xcb/glx.h:6594
   pragma Import (C, xcb_glx_render_mode_unchecked, "xcb_glx_render_mode_unchecked");

  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** uint32_t * xcb_glx_render_mode_data
  -- ** 
  -- ** @param const xcb_glx_render_mode_reply_t *R
  -- ** @returns uint32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_render_mode_data (arg1 : System.Address) return access stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:6609
   pragma Import (C, xcb_glx_render_mode_data, "xcb_glx_render_mode_data");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_render_mode_data_length
  -- ** 
  -- ** @param const xcb_glx_render_mode_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_render_mode_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:6622
   pragma Import (C, xcb_glx_render_mode_data_length, "xcb_glx_render_mode_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_render_mode_data_end
  -- ** 
  -- ** @param const xcb_glx_render_mode_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_render_mode_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:6635
   pragma Import (C, xcb_glx_render_mode_data_end, "xcb_glx_render_mode_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_render_mode_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_render_mode_reply_t * xcb_glx_render_mode_reply
  -- ** 
  -- ** @param xcb_connection_t              *c
  -- ** @param xcb_glx_render_mode_cookie_t   cookie
  -- ** @param xcb_generic_error_t          **e
  -- ** @returns xcb_glx_render_mode_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_render_mode_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_render_mode_cookie_t;
      arg3 : System.Address) return access xcb_glx_render_mode_reply_t;  -- /usr/include/xcb/glx.h:6664
   pragma Import (C, xcb_glx_render_mode_reply, "xcb_glx_render_mode_reply");

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
  -- ** xcb_glx_finish_cookie_t xcb_glx_finish
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @returns xcb_glx_finish_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_finish (arg1 : System.Address; arg2 : xcb_glx_context_tag_t) return xcb_glx_finish_cookie_t;  -- /usr/include/xcb/glx.h:6688
   pragma Import (C, xcb_glx_finish, "xcb_glx_finish");

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
  -- ** xcb_glx_finish_cookie_t xcb_glx_finish_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @returns xcb_glx_finish_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_finish_unchecked (arg1 : System.Address; arg2 : xcb_glx_context_tag_t) return xcb_glx_finish_cookie_t;  -- /usr/include/xcb/glx.h:6714
   pragma Import (C, xcb_glx_finish_unchecked, "xcb_glx_finish_unchecked");

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
  -- * xcb_glx_finish_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_finish_reply_t * xcb_glx_finish_reply
  -- ** 
  -- ** @param xcb_connection_t         *c
  -- ** @param xcb_glx_finish_cookie_t   cookie
  -- ** @param xcb_generic_error_t     **e
  -- ** @returns xcb_glx_finish_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_finish_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_finish_cookie_t;
      arg3 : System.Address) return access xcb_glx_finish_reply_t;  -- /usr/include/xcb/glx.h:6744
   pragma Import (C, xcb_glx_finish_reply, "xcb_glx_finish_reply");

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
  -- ** xcb_void_cookie_t xcb_glx_pixel_storef_checked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               pname
  -- ** @param xcb_glx_float32_t      datum
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_pixel_storef_checked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : xcb_glx_float32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:6773
   pragma Import (C, xcb_glx_pixel_storef_checked, "xcb_glx_pixel_storef_checked");

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
  -- ** xcb_void_cookie_t xcb_glx_pixel_storef
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               pname
  -- ** @param xcb_glx_float32_t      datum
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_pixel_storef
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : xcb_glx_float32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:6800
   pragma Import (C, xcb_glx_pixel_storef, "xcb_glx_pixel_storef");

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
  -- ** xcb_void_cookie_t xcb_glx_pixel_storei_checked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               pname
  -- ** @param int32_t                datum
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_pixel_storei_checked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : sys_types_h.int32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:6830
   pragma Import (C, xcb_glx_pixel_storei_checked, "xcb_glx_pixel_storei_checked");

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
  -- ** xcb_void_cookie_t xcb_glx_pixel_storei
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               pname
  -- ** @param int32_t                datum
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_pixel_storei
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : sys_types_h.int32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:6857
   pragma Import (C, xcb_glx_pixel_storei, "xcb_glx_pixel_storei");

  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_glx_read_pixels_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:6863
   pragma Import (C, xcb_glx_read_pixels_sizeof, "xcb_glx_read_pixels_sizeof");

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
  -- ** xcb_glx_read_pixels_cookie_t xcb_glx_read_pixels
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param int32_t                x
  -- ** @param int32_t                y
  -- ** @param int32_t                width
  -- ** @param int32_t                height
  -- ** @param uint32_t               format
  -- ** @param uint32_t               type
  -- ** @param uint8_t                swap_bytes
  -- ** @param uint8_t                lsb_first
  -- ** @returns xcb_glx_read_pixels_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_read_pixels
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : sys_types_h.int32_t;
      arg4 : sys_types_h.int32_t;
      arg5 : sys_types_h.int32_t;
      arg6 : sys_types_h.int32_t;
      arg7 : stdint_h.uint32_t;
      arg8 : stdint_h.uint32_t;
      arg9 : stdint_h.uint8_t;
      arg10 : stdint_h.uint8_t) return xcb_glx_read_pixels_cookie_t;  -- /usr/include/xcb/glx.h:6893
   pragma Import (C, xcb_glx_read_pixels, "xcb_glx_read_pixels");

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
  -- ** xcb_glx_read_pixels_cookie_t xcb_glx_read_pixels_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param int32_t                x
  -- ** @param int32_t                y
  -- ** @param int32_t                width
  -- ** @param int32_t                height
  -- ** @param uint32_t               format
  -- ** @param uint32_t               type
  -- ** @param uint8_t                swap_bytes
  -- ** @param uint8_t                lsb_first
  -- ** @returns xcb_glx_read_pixels_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_read_pixels_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : sys_types_h.int32_t;
      arg4 : sys_types_h.int32_t;
      arg5 : sys_types_h.int32_t;
      arg6 : sys_types_h.int32_t;
      arg7 : stdint_h.uint32_t;
      arg8 : stdint_h.uint32_t;
      arg9 : stdint_h.uint8_t;
      arg10 : stdint_h.uint8_t) return xcb_glx_read_pixels_cookie_t;  -- /usr/include/xcb/glx.h:6935
   pragma Import (C, xcb_glx_read_pixels_unchecked, "xcb_glx_read_pixels_unchecked");

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
  -- ** uint8_t * xcb_glx_read_pixels_data
  -- ** 
  -- ** @param const xcb_glx_read_pixels_reply_t *R
  -- ** @returns uint8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_read_pixels_data (arg1 : System.Address) return access stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:6957
   pragma Import (C, xcb_glx_read_pixels_data, "xcb_glx_read_pixels_data");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_read_pixels_data_length
  -- ** 
  -- ** @param const xcb_glx_read_pixels_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_read_pixels_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:6970
   pragma Import (C, xcb_glx_read_pixels_data_length, "xcb_glx_read_pixels_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_read_pixels_data_end
  -- ** 
  -- ** @param const xcb_glx_read_pixels_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_read_pixels_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:6983
   pragma Import (C, xcb_glx_read_pixels_data_end, "xcb_glx_read_pixels_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_read_pixels_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_read_pixels_reply_t * xcb_glx_read_pixels_reply
  -- ** 
  -- ** @param xcb_connection_t              *c
  -- ** @param xcb_glx_read_pixels_cookie_t   cookie
  -- ** @param xcb_generic_error_t          **e
  -- ** @returns xcb_glx_read_pixels_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_read_pixels_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_read_pixels_cookie_t;
      arg3 : System.Address) return access xcb_glx_read_pixels_reply_t;  -- /usr/include/xcb/glx.h:7012
   pragma Import (C, xcb_glx_read_pixels_reply, "xcb_glx_read_pixels_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_get_booleanv_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:7017
   pragma Import (C, xcb_glx_get_booleanv_sizeof, "xcb_glx_get_booleanv_sizeof");

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
  -- ** xcb_glx_get_booleanv_cookie_t xcb_glx_get_booleanv
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param int32_t                pname
  -- ** @returns xcb_glx_get_booleanv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_booleanv
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : sys_types_h.int32_t) return xcb_glx_get_booleanv_cookie_t;  -- /usr/include/xcb/glx.h:7040
   pragma Import (C, xcb_glx_get_booleanv, "xcb_glx_get_booleanv");

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
  -- ** xcb_glx_get_booleanv_cookie_t xcb_glx_get_booleanv_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param int32_t                pname
  -- ** @returns xcb_glx_get_booleanv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_booleanv_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : sys_types_h.int32_t) return xcb_glx_get_booleanv_cookie_t;  -- /usr/include/xcb/glx.h:7068
   pragma Import (C, xcb_glx_get_booleanv_unchecked, "xcb_glx_get_booleanv_unchecked");

  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** uint8_t * xcb_glx_get_booleanv_data
  -- ** 
  -- ** @param const xcb_glx_get_booleanv_reply_t *R
  -- ** @returns uint8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_booleanv_data (arg1 : System.Address) return access stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:7083
   pragma Import (C, xcb_glx_get_booleanv_data, "xcb_glx_get_booleanv_data");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_get_booleanv_data_length
  -- ** 
  -- ** @param const xcb_glx_get_booleanv_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_booleanv_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:7096
   pragma Import (C, xcb_glx_get_booleanv_data_length, "xcb_glx_get_booleanv_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_get_booleanv_data_end
  -- ** 
  -- ** @param const xcb_glx_get_booleanv_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_booleanv_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:7109
   pragma Import (C, xcb_glx_get_booleanv_data_end, "xcb_glx_get_booleanv_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_get_booleanv_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_booleanv_reply_t * xcb_glx_get_booleanv_reply
  -- ** 
  -- ** @param xcb_connection_t               *c
  -- ** @param xcb_glx_get_booleanv_cookie_t   cookie
  -- ** @param xcb_generic_error_t           **e
  -- ** @returns xcb_glx_get_booleanv_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_booleanv_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_booleanv_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_booleanv_reply_t;  -- /usr/include/xcb/glx.h:7138
   pragma Import (C, xcb_glx_get_booleanv_reply, "xcb_glx_get_booleanv_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_get_clip_plane_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:7143
   pragma Import (C, xcb_glx_get_clip_plane_sizeof, "xcb_glx_get_clip_plane_sizeof");

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
  -- ** xcb_glx_get_clip_plane_cookie_t xcb_glx_get_clip_plane
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param int32_t                plane
  -- ** @returns xcb_glx_get_clip_plane_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_clip_plane
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : sys_types_h.int32_t) return xcb_glx_get_clip_plane_cookie_t;  -- /usr/include/xcb/glx.h:7166
   pragma Import (C, xcb_glx_get_clip_plane, "xcb_glx_get_clip_plane");

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
  -- ** xcb_glx_get_clip_plane_cookie_t xcb_glx_get_clip_plane_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param int32_t                plane
  -- ** @returns xcb_glx_get_clip_plane_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_clip_plane_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : sys_types_h.int32_t) return xcb_glx_get_clip_plane_cookie_t;  -- /usr/include/xcb/glx.h:7194
   pragma Import (C, xcb_glx_get_clip_plane_unchecked, "xcb_glx_get_clip_plane_unchecked");

  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_glx_float64_t * xcb_glx_get_clip_plane_data
  -- ** 
  -- ** @param const xcb_glx_get_clip_plane_reply_t *R
  -- ** @returns xcb_glx_float64_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_clip_plane_data (arg1 : System.Address) return access xcb_glx_float64_t;  -- /usr/include/xcb/glx.h:7209
   pragma Import (C, xcb_glx_get_clip_plane_data, "xcb_glx_get_clip_plane_data");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_get_clip_plane_data_length
  -- ** 
  -- ** @param const xcb_glx_get_clip_plane_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_clip_plane_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:7222
   pragma Import (C, xcb_glx_get_clip_plane_data_length, "xcb_glx_get_clip_plane_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_get_clip_plane_data_end
  -- ** 
  -- ** @param const xcb_glx_get_clip_plane_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_clip_plane_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:7235
   pragma Import (C, xcb_glx_get_clip_plane_data_end, "xcb_glx_get_clip_plane_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_get_clip_plane_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_clip_plane_reply_t * xcb_glx_get_clip_plane_reply
  -- ** 
  -- ** @param xcb_connection_t                 *c
  -- ** @param xcb_glx_get_clip_plane_cookie_t   cookie
  -- ** @param xcb_generic_error_t             **e
  -- ** @returns xcb_glx_get_clip_plane_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_clip_plane_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_clip_plane_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_clip_plane_reply_t;  -- /usr/include/xcb/glx.h:7264
   pragma Import (C, xcb_glx_get_clip_plane_reply, "xcb_glx_get_clip_plane_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_get_doublev_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:7269
   pragma Import (C, xcb_glx_get_doublev_sizeof, "xcb_glx_get_doublev_sizeof");

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
  -- ** xcb_glx_get_doublev_cookie_t xcb_glx_get_doublev
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_doublev_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_doublev
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t) return xcb_glx_get_doublev_cookie_t;  -- /usr/include/xcb/glx.h:7292
   pragma Import (C, xcb_glx_get_doublev, "xcb_glx_get_doublev");

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
  -- ** xcb_glx_get_doublev_cookie_t xcb_glx_get_doublev_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_doublev_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_doublev_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t) return xcb_glx_get_doublev_cookie_t;  -- /usr/include/xcb/glx.h:7320
   pragma Import (C, xcb_glx_get_doublev_unchecked, "xcb_glx_get_doublev_unchecked");

  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_glx_float64_t * xcb_glx_get_doublev_data
  -- ** 
  -- ** @param const xcb_glx_get_doublev_reply_t *R
  -- ** @returns xcb_glx_float64_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_doublev_data (arg1 : System.Address) return access xcb_glx_float64_t;  -- /usr/include/xcb/glx.h:7335
   pragma Import (C, xcb_glx_get_doublev_data, "xcb_glx_get_doublev_data");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_get_doublev_data_length
  -- ** 
  -- ** @param const xcb_glx_get_doublev_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_doublev_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:7348
   pragma Import (C, xcb_glx_get_doublev_data_length, "xcb_glx_get_doublev_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_get_doublev_data_end
  -- ** 
  -- ** @param const xcb_glx_get_doublev_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_doublev_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:7361
   pragma Import (C, xcb_glx_get_doublev_data_end, "xcb_glx_get_doublev_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_get_doublev_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_doublev_reply_t * xcb_glx_get_doublev_reply
  -- ** 
  -- ** @param xcb_connection_t              *c
  -- ** @param xcb_glx_get_doublev_cookie_t   cookie
  -- ** @param xcb_generic_error_t          **e
  -- ** @returns xcb_glx_get_doublev_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_doublev_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_doublev_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_doublev_reply_t;  -- /usr/include/xcb/glx.h:7390
   pragma Import (C, xcb_glx_get_doublev_reply, "xcb_glx_get_doublev_reply");

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
  -- ** xcb_glx_get_error_cookie_t xcb_glx_get_error
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @returns xcb_glx_get_error_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_error (arg1 : System.Address; arg2 : xcb_glx_context_tag_t) return xcb_glx_get_error_cookie_t;  -- /usr/include/xcb/glx.h:7414
   pragma Import (C, xcb_glx_get_error, "xcb_glx_get_error");

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
  -- ** xcb_glx_get_error_cookie_t xcb_glx_get_error_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @returns xcb_glx_get_error_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_error_unchecked (arg1 : System.Address; arg2 : xcb_glx_context_tag_t) return xcb_glx_get_error_cookie_t;  -- /usr/include/xcb/glx.h:7440
   pragma Import (C, xcb_glx_get_error_unchecked, "xcb_glx_get_error_unchecked");

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
  -- * xcb_glx_get_error_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_error_reply_t * xcb_glx_get_error_reply
  -- ** 
  -- ** @param xcb_connection_t            *c
  -- ** @param xcb_glx_get_error_cookie_t   cookie
  -- ** @param xcb_generic_error_t        **e
  -- ** @returns xcb_glx_get_error_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_error_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_error_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_error_reply_t;  -- /usr/include/xcb/glx.h:7470
   pragma Import (C, xcb_glx_get_error_reply, "xcb_glx_get_error_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_get_floatv_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:7475
   pragma Import (C, xcb_glx_get_floatv_sizeof, "xcb_glx_get_floatv_sizeof");

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
  -- ** xcb_glx_get_floatv_cookie_t xcb_glx_get_floatv
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_floatv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_floatv
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t) return xcb_glx_get_floatv_cookie_t;  -- /usr/include/xcb/glx.h:7498
   pragma Import (C, xcb_glx_get_floatv, "xcb_glx_get_floatv");

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
  -- ** xcb_glx_get_floatv_cookie_t xcb_glx_get_floatv_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_floatv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_floatv_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t) return xcb_glx_get_floatv_cookie_t;  -- /usr/include/xcb/glx.h:7526
   pragma Import (C, xcb_glx_get_floatv_unchecked, "xcb_glx_get_floatv_unchecked");

  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_glx_float32_t * xcb_glx_get_floatv_data
  -- ** 
  -- ** @param const xcb_glx_get_floatv_reply_t *R
  -- ** @returns xcb_glx_float32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_floatv_data (arg1 : System.Address) return access xcb_glx_float32_t;  -- /usr/include/xcb/glx.h:7541
   pragma Import (C, xcb_glx_get_floatv_data, "xcb_glx_get_floatv_data");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_get_floatv_data_length
  -- ** 
  -- ** @param const xcb_glx_get_floatv_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_floatv_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:7554
   pragma Import (C, xcb_glx_get_floatv_data_length, "xcb_glx_get_floatv_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_get_floatv_data_end
  -- ** 
  -- ** @param const xcb_glx_get_floatv_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_floatv_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:7567
   pragma Import (C, xcb_glx_get_floatv_data_end, "xcb_glx_get_floatv_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_get_floatv_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_floatv_reply_t * xcb_glx_get_floatv_reply
  -- ** 
  -- ** @param xcb_connection_t             *c
  -- ** @param xcb_glx_get_floatv_cookie_t   cookie
  -- ** @param xcb_generic_error_t         **e
  -- ** @returns xcb_glx_get_floatv_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_floatv_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_floatv_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_floatv_reply_t;  -- /usr/include/xcb/glx.h:7596
   pragma Import (C, xcb_glx_get_floatv_reply, "xcb_glx_get_floatv_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_get_integerv_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:7601
   pragma Import (C, xcb_glx_get_integerv_sizeof, "xcb_glx_get_integerv_sizeof");

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
  -- ** xcb_glx_get_integerv_cookie_t xcb_glx_get_integerv
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_integerv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_integerv
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t) return xcb_glx_get_integerv_cookie_t;  -- /usr/include/xcb/glx.h:7624
   pragma Import (C, xcb_glx_get_integerv, "xcb_glx_get_integerv");

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
  -- ** xcb_glx_get_integerv_cookie_t xcb_glx_get_integerv_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_integerv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_integerv_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t) return xcb_glx_get_integerv_cookie_t;  -- /usr/include/xcb/glx.h:7652
   pragma Import (C, xcb_glx_get_integerv_unchecked, "xcb_glx_get_integerv_unchecked");

  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** int32_t * xcb_glx_get_integerv_data
  -- ** 
  -- ** @param const xcb_glx_get_integerv_reply_t *R
  -- ** @returns int32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_integerv_data (arg1 : System.Address) return access sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:7667
   pragma Import (C, xcb_glx_get_integerv_data, "xcb_glx_get_integerv_data");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_get_integerv_data_length
  -- ** 
  -- ** @param const xcb_glx_get_integerv_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_integerv_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:7680
   pragma Import (C, xcb_glx_get_integerv_data_length, "xcb_glx_get_integerv_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_get_integerv_data_end
  -- ** 
  -- ** @param const xcb_glx_get_integerv_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_integerv_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:7693
   pragma Import (C, xcb_glx_get_integerv_data_end, "xcb_glx_get_integerv_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_get_integerv_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_integerv_reply_t * xcb_glx_get_integerv_reply
  -- ** 
  -- ** @param xcb_connection_t               *c
  -- ** @param xcb_glx_get_integerv_cookie_t   cookie
  -- ** @param xcb_generic_error_t           **e
  -- ** @returns xcb_glx_get_integerv_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_integerv_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_integerv_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_integerv_reply_t;  -- /usr/include/xcb/glx.h:7722
   pragma Import (C, xcb_glx_get_integerv_reply, "xcb_glx_get_integerv_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_get_lightfv_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:7727
   pragma Import (C, xcb_glx_get_lightfv_sizeof, "xcb_glx_get_lightfv_sizeof");

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
  -- ** xcb_glx_get_lightfv_cookie_t xcb_glx_get_lightfv
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               light
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_lightfv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_lightfv
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_lightfv_cookie_t;  -- /usr/include/xcb/glx.h:7751
   pragma Import (C, xcb_glx_get_lightfv, "xcb_glx_get_lightfv");

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
  -- ** xcb_glx_get_lightfv_cookie_t xcb_glx_get_lightfv_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               light
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_lightfv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_lightfv_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_lightfv_cookie_t;  -- /usr/include/xcb/glx.h:7781
   pragma Import (C, xcb_glx_get_lightfv_unchecked, "xcb_glx_get_lightfv_unchecked");

  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_glx_float32_t * xcb_glx_get_lightfv_data
  -- ** 
  -- ** @param const xcb_glx_get_lightfv_reply_t *R
  -- ** @returns xcb_glx_float32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_lightfv_data (arg1 : System.Address) return access xcb_glx_float32_t;  -- /usr/include/xcb/glx.h:7797
   pragma Import (C, xcb_glx_get_lightfv_data, "xcb_glx_get_lightfv_data");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_get_lightfv_data_length
  -- ** 
  -- ** @param const xcb_glx_get_lightfv_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_lightfv_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:7810
   pragma Import (C, xcb_glx_get_lightfv_data_length, "xcb_glx_get_lightfv_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_get_lightfv_data_end
  -- ** 
  -- ** @param const xcb_glx_get_lightfv_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_lightfv_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:7823
   pragma Import (C, xcb_glx_get_lightfv_data_end, "xcb_glx_get_lightfv_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_get_lightfv_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_lightfv_reply_t * xcb_glx_get_lightfv_reply
  -- ** 
  -- ** @param xcb_connection_t              *c
  -- ** @param xcb_glx_get_lightfv_cookie_t   cookie
  -- ** @param xcb_generic_error_t          **e
  -- ** @returns xcb_glx_get_lightfv_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_lightfv_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_lightfv_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_lightfv_reply_t;  -- /usr/include/xcb/glx.h:7852
   pragma Import (C, xcb_glx_get_lightfv_reply, "xcb_glx_get_lightfv_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_get_lightiv_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:7857
   pragma Import (C, xcb_glx_get_lightiv_sizeof, "xcb_glx_get_lightiv_sizeof");

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
  -- ** xcb_glx_get_lightiv_cookie_t xcb_glx_get_lightiv
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               light
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_lightiv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_lightiv
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_lightiv_cookie_t;  -- /usr/include/xcb/glx.h:7881
   pragma Import (C, xcb_glx_get_lightiv, "xcb_glx_get_lightiv");

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
  -- ** xcb_glx_get_lightiv_cookie_t xcb_glx_get_lightiv_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               light
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_lightiv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_lightiv_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_lightiv_cookie_t;  -- /usr/include/xcb/glx.h:7911
   pragma Import (C, xcb_glx_get_lightiv_unchecked, "xcb_glx_get_lightiv_unchecked");

  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** int32_t * xcb_glx_get_lightiv_data
  -- ** 
  -- ** @param const xcb_glx_get_lightiv_reply_t *R
  -- ** @returns int32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_lightiv_data (arg1 : System.Address) return access sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:7927
   pragma Import (C, xcb_glx_get_lightiv_data, "xcb_glx_get_lightiv_data");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_get_lightiv_data_length
  -- ** 
  -- ** @param const xcb_glx_get_lightiv_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_lightiv_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:7940
   pragma Import (C, xcb_glx_get_lightiv_data_length, "xcb_glx_get_lightiv_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_get_lightiv_data_end
  -- ** 
  -- ** @param const xcb_glx_get_lightiv_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_lightiv_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:7953
   pragma Import (C, xcb_glx_get_lightiv_data_end, "xcb_glx_get_lightiv_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_get_lightiv_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_lightiv_reply_t * xcb_glx_get_lightiv_reply
  -- ** 
  -- ** @param xcb_connection_t              *c
  -- ** @param xcb_glx_get_lightiv_cookie_t   cookie
  -- ** @param xcb_generic_error_t          **e
  -- ** @returns xcb_glx_get_lightiv_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_lightiv_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_lightiv_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_lightiv_reply_t;  -- /usr/include/xcb/glx.h:7982
   pragma Import (C, xcb_glx_get_lightiv_reply, "xcb_glx_get_lightiv_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_get_mapdv_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:7987
   pragma Import (C, xcb_glx_get_mapdv_sizeof, "xcb_glx_get_mapdv_sizeof");

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
  -- ** xcb_glx_get_mapdv_cookie_t xcb_glx_get_mapdv
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param uint32_t               query
  -- ** @returns xcb_glx_get_mapdv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_mapdv
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_mapdv_cookie_t;  -- /usr/include/xcb/glx.h:8011
   pragma Import (C, xcb_glx_get_mapdv, "xcb_glx_get_mapdv");

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
  -- ** xcb_glx_get_mapdv_cookie_t xcb_glx_get_mapdv_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param uint32_t               query
  -- ** @returns xcb_glx_get_mapdv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_mapdv_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_mapdv_cookie_t;  -- /usr/include/xcb/glx.h:8041
   pragma Import (C, xcb_glx_get_mapdv_unchecked, "xcb_glx_get_mapdv_unchecked");

  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_glx_float64_t * xcb_glx_get_mapdv_data
  -- ** 
  -- ** @param const xcb_glx_get_mapdv_reply_t *R
  -- ** @returns xcb_glx_float64_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_mapdv_data (arg1 : System.Address) return access xcb_glx_float64_t;  -- /usr/include/xcb/glx.h:8057
   pragma Import (C, xcb_glx_get_mapdv_data, "xcb_glx_get_mapdv_data");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_get_mapdv_data_length
  -- ** 
  -- ** @param const xcb_glx_get_mapdv_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_mapdv_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:8070
   pragma Import (C, xcb_glx_get_mapdv_data_length, "xcb_glx_get_mapdv_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_get_mapdv_data_end
  -- ** 
  -- ** @param const xcb_glx_get_mapdv_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_mapdv_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:8083
   pragma Import (C, xcb_glx_get_mapdv_data_end, "xcb_glx_get_mapdv_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_get_mapdv_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_mapdv_reply_t * xcb_glx_get_mapdv_reply
  -- ** 
  -- ** @param xcb_connection_t            *c
  -- ** @param xcb_glx_get_mapdv_cookie_t   cookie
  -- ** @param xcb_generic_error_t        **e
  -- ** @returns xcb_glx_get_mapdv_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_mapdv_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_mapdv_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_mapdv_reply_t;  -- /usr/include/xcb/glx.h:8112
   pragma Import (C, xcb_glx_get_mapdv_reply, "xcb_glx_get_mapdv_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_get_mapfv_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:8117
   pragma Import (C, xcb_glx_get_mapfv_sizeof, "xcb_glx_get_mapfv_sizeof");

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
  -- ** xcb_glx_get_mapfv_cookie_t xcb_glx_get_mapfv
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param uint32_t               query
  -- ** @returns xcb_glx_get_mapfv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_mapfv
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_mapfv_cookie_t;  -- /usr/include/xcb/glx.h:8141
   pragma Import (C, xcb_glx_get_mapfv, "xcb_glx_get_mapfv");

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
  -- ** xcb_glx_get_mapfv_cookie_t xcb_glx_get_mapfv_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param uint32_t               query
  -- ** @returns xcb_glx_get_mapfv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_mapfv_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_mapfv_cookie_t;  -- /usr/include/xcb/glx.h:8171
   pragma Import (C, xcb_glx_get_mapfv_unchecked, "xcb_glx_get_mapfv_unchecked");

  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_glx_float32_t * xcb_glx_get_mapfv_data
  -- ** 
  -- ** @param const xcb_glx_get_mapfv_reply_t *R
  -- ** @returns xcb_glx_float32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_mapfv_data (arg1 : System.Address) return access xcb_glx_float32_t;  -- /usr/include/xcb/glx.h:8187
   pragma Import (C, xcb_glx_get_mapfv_data, "xcb_glx_get_mapfv_data");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_get_mapfv_data_length
  -- ** 
  -- ** @param const xcb_glx_get_mapfv_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_mapfv_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:8200
   pragma Import (C, xcb_glx_get_mapfv_data_length, "xcb_glx_get_mapfv_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_get_mapfv_data_end
  -- ** 
  -- ** @param const xcb_glx_get_mapfv_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_mapfv_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:8213
   pragma Import (C, xcb_glx_get_mapfv_data_end, "xcb_glx_get_mapfv_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_get_mapfv_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_mapfv_reply_t * xcb_glx_get_mapfv_reply
  -- ** 
  -- ** @param xcb_connection_t            *c
  -- ** @param xcb_glx_get_mapfv_cookie_t   cookie
  -- ** @param xcb_generic_error_t        **e
  -- ** @returns xcb_glx_get_mapfv_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_mapfv_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_mapfv_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_mapfv_reply_t;  -- /usr/include/xcb/glx.h:8242
   pragma Import (C, xcb_glx_get_mapfv_reply, "xcb_glx_get_mapfv_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_get_mapiv_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:8247
   pragma Import (C, xcb_glx_get_mapiv_sizeof, "xcb_glx_get_mapiv_sizeof");

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
  -- ** xcb_glx_get_mapiv_cookie_t xcb_glx_get_mapiv
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param uint32_t               query
  -- ** @returns xcb_glx_get_mapiv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_mapiv
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_mapiv_cookie_t;  -- /usr/include/xcb/glx.h:8271
   pragma Import (C, xcb_glx_get_mapiv, "xcb_glx_get_mapiv");

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
  -- ** xcb_glx_get_mapiv_cookie_t xcb_glx_get_mapiv_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param uint32_t               query
  -- ** @returns xcb_glx_get_mapiv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_mapiv_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_mapiv_cookie_t;  -- /usr/include/xcb/glx.h:8301
   pragma Import (C, xcb_glx_get_mapiv_unchecked, "xcb_glx_get_mapiv_unchecked");

  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** int32_t * xcb_glx_get_mapiv_data
  -- ** 
  -- ** @param const xcb_glx_get_mapiv_reply_t *R
  -- ** @returns int32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_mapiv_data (arg1 : System.Address) return access sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:8317
   pragma Import (C, xcb_glx_get_mapiv_data, "xcb_glx_get_mapiv_data");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_get_mapiv_data_length
  -- ** 
  -- ** @param const xcb_glx_get_mapiv_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_mapiv_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:8330
   pragma Import (C, xcb_glx_get_mapiv_data_length, "xcb_glx_get_mapiv_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_get_mapiv_data_end
  -- ** 
  -- ** @param const xcb_glx_get_mapiv_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_mapiv_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:8343
   pragma Import (C, xcb_glx_get_mapiv_data_end, "xcb_glx_get_mapiv_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_get_mapiv_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_mapiv_reply_t * xcb_glx_get_mapiv_reply
  -- ** 
  -- ** @param xcb_connection_t            *c
  -- ** @param xcb_glx_get_mapiv_cookie_t   cookie
  -- ** @param xcb_generic_error_t        **e
  -- ** @returns xcb_glx_get_mapiv_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_mapiv_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_mapiv_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_mapiv_reply_t;  -- /usr/include/xcb/glx.h:8372
   pragma Import (C, xcb_glx_get_mapiv_reply, "xcb_glx_get_mapiv_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_get_materialfv_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:8377
   pragma Import (C, xcb_glx_get_materialfv_sizeof, "xcb_glx_get_materialfv_sizeof");

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
  -- ** xcb_glx_get_materialfv_cookie_t xcb_glx_get_materialfv
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               face
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_materialfv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_materialfv
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_materialfv_cookie_t;  -- /usr/include/xcb/glx.h:8401
   pragma Import (C, xcb_glx_get_materialfv, "xcb_glx_get_materialfv");

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
  -- ** xcb_glx_get_materialfv_cookie_t xcb_glx_get_materialfv_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               face
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_materialfv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_materialfv_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_materialfv_cookie_t;  -- /usr/include/xcb/glx.h:8431
   pragma Import (C, xcb_glx_get_materialfv_unchecked, "xcb_glx_get_materialfv_unchecked");

  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_glx_float32_t * xcb_glx_get_materialfv_data
  -- ** 
  -- ** @param const xcb_glx_get_materialfv_reply_t *R
  -- ** @returns xcb_glx_float32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_materialfv_data (arg1 : System.Address) return access xcb_glx_float32_t;  -- /usr/include/xcb/glx.h:8447
   pragma Import (C, xcb_glx_get_materialfv_data, "xcb_glx_get_materialfv_data");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_get_materialfv_data_length
  -- ** 
  -- ** @param const xcb_glx_get_materialfv_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_materialfv_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:8460
   pragma Import (C, xcb_glx_get_materialfv_data_length, "xcb_glx_get_materialfv_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_get_materialfv_data_end
  -- ** 
  -- ** @param const xcb_glx_get_materialfv_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_materialfv_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:8473
   pragma Import (C, xcb_glx_get_materialfv_data_end, "xcb_glx_get_materialfv_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_get_materialfv_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_materialfv_reply_t * xcb_glx_get_materialfv_reply
  -- ** 
  -- ** @param xcb_connection_t                 *c
  -- ** @param xcb_glx_get_materialfv_cookie_t   cookie
  -- ** @param xcb_generic_error_t             **e
  -- ** @returns xcb_glx_get_materialfv_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_materialfv_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_materialfv_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_materialfv_reply_t;  -- /usr/include/xcb/glx.h:8502
   pragma Import (C, xcb_glx_get_materialfv_reply, "xcb_glx_get_materialfv_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_get_materialiv_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:8507
   pragma Import (C, xcb_glx_get_materialiv_sizeof, "xcb_glx_get_materialiv_sizeof");

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
  -- ** xcb_glx_get_materialiv_cookie_t xcb_glx_get_materialiv
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               face
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_materialiv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_materialiv
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_materialiv_cookie_t;  -- /usr/include/xcb/glx.h:8531
   pragma Import (C, xcb_glx_get_materialiv, "xcb_glx_get_materialiv");

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
  -- ** xcb_glx_get_materialiv_cookie_t xcb_glx_get_materialiv_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               face
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_materialiv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_materialiv_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_materialiv_cookie_t;  -- /usr/include/xcb/glx.h:8561
   pragma Import (C, xcb_glx_get_materialiv_unchecked, "xcb_glx_get_materialiv_unchecked");

  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** int32_t * xcb_glx_get_materialiv_data
  -- ** 
  -- ** @param const xcb_glx_get_materialiv_reply_t *R
  -- ** @returns int32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_materialiv_data (arg1 : System.Address) return access sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:8577
   pragma Import (C, xcb_glx_get_materialiv_data, "xcb_glx_get_materialiv_data");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_get_materialiv_data_length
  -- ** 
  -- ** @param const xcb_glx_get_materialiv_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_materialiv_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:8590
   pragma Import (C, xcb_glx_get_materialiv_data_length, "xcb_glx_get_materialiv_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_get_materialiv_data_end
  -- ** 
  -- ** @param const xcb_glx_get_materialiv_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_materialiv_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:8603
   pragma Import (C, xcb_glx_get_materialiv_data_end, "xcb_glx_get_materialiv_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_get_materialiv_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_materialiv_reply_t * xcb_glx_get_materialiv_reply
  -- ** 
  -- ** @param xcb_connection_t                 *c
  -- ** @param xcb_glx_get_materialiv_cookie_t   cookie
  -- ** @param xcb_generic_error_t             **e
  -- ** @returns xcb_glx_get_materialiv_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_materialiv_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_materialiv_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_materialiv_reply_t;  -- /usr/include/xcb/glx.h:8632
   pragma Import (C, xcb_glx_get_materialiv_reply, "xcb_glx_get_materialiv_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_get_pixel_mapfv_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:8637
   pragma Import (C, xcb_glx_get_pixel_mapfv_sizeof, "xcb_glx_get_pixel_mapfv_sizeof");

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
  -- ** xcb_glx_get_pixel_mapfv_cookie_t xcb_glx_get_pixel_mapfv
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               map
  -- ** @returns xcb_glx_get_pixel_mapfv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_pixel_mapfv
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t) return xcb_glx_get_pixel_mapfv_cookie_t;  -- /usr/include/xcb/glx.h:8660
   pragma Import (C, xcb_glx_get_pixel_mapfv, "xcb_glx_get_pixel_mapfv");

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
  -- ** xcb_glx_get_pixel_mapfv_cookie_t xcb_glx_get_pixel_mapfv_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               map
  -- ** @returns xcb_glx_get_pixel_mapfv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_pixel_mapfv_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t) return xcb_glx_get_pixel_mapfv_cookie_t;  -- /usr/include/xcb/glx.h:8688
   pragma Import (C, xcb_glx_get_pixel_mapfv_unchecked, "xcb_glx_get_pixel_mapfv_unchecked");

  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_glx_float32_t * xcb_glx_get_pixel_mapfv_data
  -- ** 
  -- ** @param const xcb_glx_get_pixel_mapfv_reply_t *R
  -- ** @returns xcb_glx_float32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_pixel_mapfv_data (arg1 : System.Address) return access xcb_glx_float32_t;  -- /usr/include/xcb/glx.h:8703
   pragma Import (C, xcb_glx_get_pixel_mapfv_data, "xcb_glx_get_pixel_mapfv_data");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_get_pixel_mapfv_data_length
  -- ** 
  -- ** @param const xcb_glx_get_pixel_mapfv_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_pixel_mapfv_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:8716
   pragma Import (C, xcb_glx_get_pixel_mapfv_data_length, "xcb_glx_get_pixel_mapfv_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_get_pixel_mapfv_data_end
  -- ** 
  -- ** @param const xcb_glx_get_pixel_mapfv_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_pixel_mapfv_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:8729
   pragma Import (C, xcb_glx_get_pixel_mapfv_data_end, "xcb_glx_get_pixel_mapfv_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_get_pixel_mapfv_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_pixel_mapfv_reply_t * xcb_glx_get_pixel_mapfv_reply
  -- ** 
  -- ** @param xcb_connection_t                  *c
  -- ** @param xcb_glx_get_pixel_mapfv_cookie_t   cookie
  -- ** @param xcb_generic_error_t              **e
  -- ** @returns xcb_glx_get_pixel_mapfv_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_pixel_mapfv_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_pixel_mapfv_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_pixel_mapfv_reply_t;  -- /usr/include/xcb/glx.h:8758
   pragma Import (C, xcb_glx_get_pixel_mapfv_reply, "xcb_glx_get_pixel_mapfv_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_get_pixel_mapuiv_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:8763
   pragma Import (C, xcb_glx_get_pixel_mapuiv_sizeof, "xcb_glx_get_pixel_mapuiv_sizeof");

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
  -- ** xcb_glx_get_pixel_mapuiv_cookie_t xcb_glx_get_pixel_mapuiv
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               map
  -- ** @returns xcb_glx_get_pixel_mapuiv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_pixel_mapuiv
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t) return xcb_glx_get_pixel_mapuiv_cookie_t;  -- /usr/include/xcb/glx.h:8786
   pragma Import (C, xcb_glx_get_pixel_mapuiv, "xcb_glx_get_pixel_mapuiv");

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
  -- ** xcb_glx_get_pixel_mapuiv_cookie_t xcb_glx_get_pixel_mapuiv_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               map
  -- ** @returns xcb_glx_get_pixel_mapuiv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_pixel_mapuiv_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t) return xcb_glx_get_pixel_mapuiv_cookie_t;  -- /usr/include/xcb/glx.h:8814
   pragma Import (C, xcb_glx_get_pixel_mapuiv_unchecked, "xcb_glx_get_pixel_mapuiv_unchecked");

  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** uint32_t * xcb_glx_get_pixel_mapuiv_data
  -- ** 
  -- ** @param const xcb_glx_get_pixel_mapuiv_reply_t *R
  -- ** @returns uint32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_pixel_mapuiv_data (arg1 : System.Address) return access stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:8829
   pragma Import (C, xcb_glx_get_pixel_mapuiv_data, "xcb_glx_get_pixel_mapuiv_data");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_get_pixel_mapuiv_data_length
  -- ** 
  -- ** @param const xcb_glx_get_pixel_mapuiv_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_pixel_mapuiv_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:8842
   pragma Import (C, xcb_glx_get_pixel_mapuiv_data_length, "xcb_glx_get_pixel_mapuiv_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_get_pixel_mapuiv_data_end
  -- ** 
  -- ** @param const xcb_glx_get_pixel_mapuiv_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_pixel_mapuiv_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:8855
   pragma Import (C, xcb_glx_get_pixel_mapuiv_data_end, "xcb_glx_get_pixel_mapuiv_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_get_pixel_mapuiv_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_pixel_mapuiv_reply_t * xcb_glx_get_pixel_mapuiv_reply
  -- ** 
  -- ** @param xcb_connection_t                   *c
  -- ** @param xcb_glx_get_pixel_mapuiv_cookie_t   cookie
  -- ** @param xcb_generic_error_t               **e
  -- ** @returns xcb_glx_get_pixel_mapuiv_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_pixel_mapuiv_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_pixel_mapuiv_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_pixel_mapuiv_reply_t;  -- /usr/include/xcb/glx.h:8884
   pragma Import (C, xcb_glx_get_pixel_mapuiv_reply, "xcb_glx_get_pixel_mapuiv_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_get_pixel_mapusv_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:8889
   pragma Import (C, xcb_glx_get_pixel_mapusv_sizeof, "xcb_glx_get_pixel_mapusv_sizeof");

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
  -- ** xcb_glx_get_pixel_mapusv_cookie_t xcb_glx_get_pixel_mapusv
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               map
  -- ** @returns xcb_glx_get_pixel_mapusv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_pixel_mapusv
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t) return xcb_glx_get_pixel_mapusv_cookie_t;  -- /usr/include/xcb/glx.h:8912
   pragma Import (C, xcb_glx_get_pixel_mapusv, "xcb_glx_get_pixel_mapusv");

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
  -- ** xcb_glx_get_pixel_mapusv_cookie_t xcb_glx_get_pixel_mapusv_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               map
  -- ** @returns xcb_glx_get_pixel_mapusv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_pixel_mapusv_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t) return xcb_glx_get_pixel_mapusv_cookie_t;  -- /usr/include/xcb/glx.h:8940
   pragma Import (C, xcb_glx_get_pixel_mapusv_unchecked, "xcb_glx_get_pixel_mapusv_unchecked");

  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** uint16_t * xcb_glx_get_pixel_mapusv_data
  -- ** 
  -- ** @param const xcb_glx_get_pixel_mapusv_reply_t *R
  -- ** @returns uint16_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_pixel_mapusv_data (arg1 : System.Address) return access stdint_h.uint16_t;  -- /usr/include/xcb/glx.h:8955
   pragma Import (C, xcb_glx_get_pixel_mapusv_data, "xcb_glx_get_pixel_mapusv_data");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_get_pixel_mapusv_data_length
  -- ** 
  -- ** @param const xcb_glx_get_pixel_mapusv_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_pixel_mapusv_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:8968
   pragma Import (C, xcb_glx_get_pixel_mapusv_data_length, "xcb_glx_get_pixel_mapusv_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_get_pixel_mapusv_data_end
  -- ** 
  -- ** @param const xcb_glx_get_pixel_mapusv_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_pixel_mapusv_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:8981
   pragma Import (C, xcb_glx_get_pixel_mapusv_data_end, "xcb_glx_get_pixel_mapusv_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_get_pixel_mapusv_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_pixel_mapusv_reply_t * xcb_glx_get_pixel_mapusv_reply
  -- ** 
  -- ** @param xcb_connection_t                   *c
  -- ** @param xcb_glx_get_pixel_mapusv_cookie_t   cookie
  -- ** @param xcb_generic_error_t               **e
  -- ** @returns xcb_glx_get_pixel_mapusv_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_pixel_mapusv_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_pixel_mapusv_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_pixel_mapusv_reply_t;  -- /usr/include/xcb/glx.h:9010
   pragma Import (C, xcb_glx_get_pixel_mapusv_reply, "xcb_glx_get_pixel_mapusv_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_get_polygon_stipple_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:9015
   pragma Import (C, xcb_glx_get_polygon_stipple_sizeof, "xcb_glx_get_polygon_stipple_sizeof");

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
  -- ** xcb_glx_get_polygon_stipple_cookie_t xcb_glx_get_polygon_stipple
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint8_t                lsb_first
  -- ** @returns xcb_glx_get_polygon_stipple_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_polygon_stipple
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint8_t) return xcb_glx_get_polygon_stipple_cookie_t;  -- /usr/include/xcb/glx.h:9038
   pragma Import (C, xcb_glx_get_polygon_stipple, "xcb_glx_get_polygon_stipple");

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
  -- ** xcb_glx_get_polygon_stipple_cookie_t xcb_glx_get_polygon_stipple_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint8_t                lsb_first
  -- ** @returns xcb_glx_get_polygon_stipple_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_polygon_stipple_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint8_t) return xcb_glx_get_polygon_stipple_cookie_t;  -- /usr/include/xcb/glx.h:9066
   pragma Import (C, xcb_glx_get_polygon_stipple_unchecked, "xcb_glx_get_polygon_stipple_unchecked");

  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** uint8_t * xcb_glx_get_polygon_stipple_data
  -- ** 
  -- ** @param const xcb_glx_get_polygon_stipple_reply_t *R
  -- ** @returns uint8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_polygon_stipple_data (arg1 : System.Address) return access stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:9081
   pragma Import (C, xcb_glx_get_polygon_stipple_data, "xcb_glx_get_polygon_stipple_data");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_get_polygon_stipple_data_length
  -- ** 
  -- ** @param const xcb_glx_get_polygon_stipple_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_polygon_stipple_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:9094
   pragma Import (C, xcb_glx_get_polygon_stipple_data_length, "xcb_glx_get_polygon_stipple_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_get_polygon_stipple_data_end
  -- ** 
  -- ** @param const xcb_glx_get_polygon_stipple_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_polygon_stipple_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:9107
   pragma Import (C, xcb_glx_get_polygon_stipple_data_end, "xcb_glx_get_polygon_stipple_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_get_polygon_stipple_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_polygon_stipple_reply_t * xcb_glx_get_polygon_stipple_reply
  -- ** 
  -- ** @param xcb_connection_t                      *c
  -- ** @param xcb_glx_get_polygon_stipple_cookie_t   cookie
  -- ** @param xcb_generic_error_t                  **e
  -- ** @returns xcb_glx_get_polygon_stipple_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_polygon_stipple_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_polygon_stipple_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_polygon_stipple_reply_t;  -- /usr/include/xcb/glx.h:9136
   pragma Import (C, xcb_glx_get_polygon_stipple_reply, "xcb_glx_get_polygon_stipple_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_get_string_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:9141
   pragma Import (C, xcb_glx_get_string_sizeof, "xcb_glx_get_string_sizeof");

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
  -- ** xcb_glx_get_string_cookie_t xcb_glx_get_string
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               name
  -- ** @returns xcb_glx_get_string_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_string
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t) return xcb_glx_get_string_cookie_t;  -- /usr/include/xcb/glx.h:9164
   pragma Import (C, xcb_glx_get_string, "xcb_glx_get_string");

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
  -- ** xcb_glx_get_string_cookie_t xcb_glx_get_string_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               name
  -- ** @returns xcb_glx_get_string_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_string_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t) return xcb_glx_get_string_cookie_t;  -- /usr/include/xcb/glx.h:9192
   pragma Import (C, xcb_glx_get_string_unchecked, "xcb_glx_get_string_unchecked");

  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** char * xcb_glx_get_string_string
  -- ** 
  -- ** @param const xcb_glx_get_string_reply_t *R
  -- ** @returns char *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_string_string (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/glx.h:9207
   pragma Import (C, xcb_glx_get_string_string, "xcb_glx_get_string_string");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_get_string_string_length
  -- ** 
  -- ** @param const xcb_glx_get_string_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_string_string_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:9220
   pragma Import (C, xcb_glx_get_string_string_length, "xcb_glx_get_string_string_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_get_string_string_end
  -- ** 
  -- ** @param const xcb_glx_get_string_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_string_string_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:9233
   pragma Import (C, xcb_glx_get_string_string_end, "xcb_glx_get_string_string_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_get_string_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_string_reply_t * xcb_glx_get_string_reply
  -- ** 
  -- ** @param xcb_connection_t             *c
  -- ** @param xcb_glx_get_string_cookie_t   cookie
  -- ** @param xcb_generic_error_t         **e
  -- ** @returns xcb_glx_get_string_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_string_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_string_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_string_reply_t;  -- /usr/include/xcb/glx.h:9262
   pragma Import (C, xcb_glx_get_string_reply, "xcb_glx_get_string_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_get_tex_envfv_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:9267
   pragma Import (C, xcb_glx_get_tex_envfv_sizeof, "xcb_glx_get_tex_envfv_sizeof");

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
  -- ** xcb_glx_get_tex_envfv_cookie_t xcb_glx_get_tex_envfv
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_tex_envfv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_envfv
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_tex_envfv_cookie_t;  -- /usr/include/xcb/glx.h:9291
   pragma Import (C, xcb_glx_get_tex_envfv, "xcb_glx_get_tex_envfv");

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
  -- ** xcb_glx_get_tex_envfv_cookie_t xcb_glx_get_tex_envfv_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_tex_envfv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_envfv_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_tex_envfv_cookie_t;  -- /usr/include/xcb/glx.h:9321
   pragma Import (C, xcb_glx_get_tex_envfv_unchecked, "xcb_glx_get_tex_envfv_unchecked");

  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_glx_float32_t * xcb_glx_get_tex_envfv_data
  -- ** 
  -- ** @param const xcb_glx_get_tex_envfv_reply_t *R
  -- ** @returns xcb_glx_float32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_envfv_data (arg1 : System.Address) return access xcb_glx_float32_t;  -- /usr/include/xcb/glx.h:9337
   pragma Import (C, xcb_glx_get_tex_envfv_data, "xcb_glx_get_tex_envfv_data");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_get_tex_envfv_data_length
  -- ** 
  -- ** @param const xcb_glx_get_tex_envfv_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_envfv_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:9350
   pragma Import (C, xcb_glx_get_tex_envfv_data_length, "xcb_glx_get_tex_envfv_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_get_tex_envfv_data_end
  -- ** 
  -- ** @param const xcb_glx_get_tex_envfv_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_envfv_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:9363
   pragma Import (C, xcb_glx_get_tex_envfv_data_end, "xcb_glx_get_tex_envfv_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_get_tex_envfv_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_tex_envfv_reply_t * xcb_glx_get_tex_envfv_reply
  -- ** 
  -- ** @param xcb_connection_t                *c
  -- ** @param xcb_glx_get_tex_envfv_cookie_t   cookie
  -- ** @param xcb_generic_error_t            **e
  -- ** @returns xcb_glx_get_tex_envfv_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_envfv_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_tex_envfv_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_tex_envfv_reply_t;  -- /usr/include/xcb/glx.h:9392
   pragma Import (C, xcb_glx_get_tex_envfv_reply, "xcb_glx_get_tex_envfv_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_get_tex_enviv_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:9397
   pragma Import (C, xcb_glx_get_tex_enviv_sizeof, "xcb_glx_get_tex_enviv_sizeof");

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
  -- ** xcb_glx_get_tex_enviv_cookie_t xcb_glx_get_tex_enviv
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_tex_enviv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_enviv
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_tex_enviv_cookie_t;  -- /usr/include/xcb/glx.h:9421
   pragma Import (C, xcb_glx_get_tex_enviv, "xcb_glx_get_tex_enviv");

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
  -- ** xcb_glx_get_tex_enviv_cookie_t xcb_glx_get_tex_enviv_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_tex_enviv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_enviv_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_tex_enviv_cookie_t;  -- /usr/include/xcb/glx.h:9451
   pragma Import (C, xcb_glx_get_tex_enviv_unchecked, "xcb_glx_get_tex_enviv_unchecked");

  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** int32_t * xcb_glx_get_tex_enviv_data
  -- ** 
  -- ** @param const xcb_glx_get_tex_enviv_reply_t *R
  -- ** @returns int32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_enviv_data (arg1 : System.Address) return access sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:9467
   pragma Import (C, xcb_glx_get_tex_enviv_data, "xcb_glx_get_tex_enviv_data");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_get_tex_enviv_data_length
  -- ** 
  -- ** @param const xcb_glx_get_tex_enviv_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_enviv_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:9480
   pragma Import (C, xcb_glx_get_tex_enviv_data_length, "xcb_glx_get_tex_enviv_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_get_tex_enviv_data_end
  -- ** 
  -- ** @param const xcb_glx_get_tex_enviv_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_enviv_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:9493
   pragma Import (C, xcb_glx_get_tex_enviv_data_end, "xcb_glx_get_tex_enviv_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_get_tex_enviv_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_tex_enviv_reply_t * xcb_glx_get_tex_enviv_reply
  -- ** 
  -- ** @param xcb_connection_t                *c
  -- ** @param xcb_glx_get_tex_enviv_cookie_t   cookie
  -- ** @param xcb_generic_error_t            **e
  -- ** @returns xcb_glx_get_tex_enviv_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_enviv_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_tex_enviv_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_tex_enviv_reply_t;  -- /usr/include/xcb/glx.h:9522
   pragma Import (C, xcb_glx_get_tex_enviv_reply, "xcb_glx_get_tex_enviv_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_get_tex_gendv_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:9527
   pragma Import (C, xcb_glx_get_tex_gendv_sizeof, "xcb_glx_get_tex_gendv_sizeof");

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
  -- ** xcb_glx_get_tex_gendv_cookie_t xcb_glx_get_tex_gendv
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               coord
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_tex_gendv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_gendv
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_tex_gendv_cookie_t;  -- /usr/include/xcb/glx.h:9551
   pragma Import (C, xcb_glx_get_tex_gendv, "xcb_glx_get_tex_gendv");

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
  -- ** xcb_glx_get_tex_gendv_cookie_t xcb_glx_get_tex_gendv_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               coord
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_tex_gendv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_gendv_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_tex_gendv_cookie_t;  -- /usr/include/xcb/glx.h:9581
   pragma Import (C, xcb_glx_get_tex_gendv_unchecked, "xcb_glx_get_tex_gendv_unchecked");

  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_glx_float64_t * xcb_glx_get_tex_gendv_data
  -- ** 
  -- ** @param const xcb_glx_get_tex_gendv_reply_t *R
  -- ** @returns xcb_glx_float64_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_gendv_data (arg1 : System.Address) return access xcb_glx_float64_t;  -- /usr/include/xcb/glx.h:9597
   pragma Import (C, xcb_glx_get_tex_gendv_data, "xcb_glx_get_tex_gendv_data");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_get_tex_gendv_data_length
  -- ** 
  -- ** @param const xcb_glx_get_tex_gendv_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_gendv_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:9610
   pragma Import (C, xcb_glx_get_tex_gendv_data_length, "xcb_glx_get_tex_gendv_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_get_tex_gendv_data_end
  -- ** 
  -- ** @param const xcb_glx_get_tex_gendv_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_gendv_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:9623
   pragma Import (C, xcb_glx_get_tex_gendv_data_end, "xcb_glx_get_tex_gendv_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_get_tex_gendv_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_tex_gendv_reply_t * xcb_glx_get_tex_gendv_reply
  -- ** 
  -- ** @param xcb_connection_t                *c
  -- ** @param xcb_glx_get_tex_gendv_cookie_t   cookie
  -- ** @param xcb_generic_error_t            **e
  -- ** @returns xcb_glx_get_tex_gendv_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_gendv_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_tex_gendv_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_tex_gendv_reply_t;  -- /usr/include/xcb/glx.h:9652
   pragma Import (C, xcb_glx_get_tex_gendv_reply, "xcb_glx_get_tex_gendv_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_get_tex_genfv_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:9657
   pragma Import (C, xcb_glx_get_tex_genfv_sizeof, "xcb_glx_get_tex_genfv_sizeof");

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
  -- ** xcb_glx_get_tex_genfv_cookie_t xcb_glx_get_tex_genfv
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               coord
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_tex_genfv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_genfv
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_tex_genfv_cookie_t;  -- /usr/include/xcb/glx.h:9681
   pragma Import (C, xcb_glx_get_tex_genfv, "xcb_glx_get_tex_genfv");

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
  -- ** xcb_glx_get_tex_genfv_cookie_t xcb_glx_get_tex_genfv_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               coord
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_tex_genfv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_genfv_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_tex_genfv_cookie_t;  -- /usr/include/xcb/glx.h:9711
   pragma Import (C, xcb_glx_get_tex_genfv_unchecked, "xcb_glx_get_tex_genfv_unchecked");

  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_glx_float32_t * xcb_glx_get_tex_genfv_data
  -- ** 
  -- ** @param const xcb_glx_get_tex_genfv_reply_t *R
  -- ** @returns xcb_glx_float32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_genfv_data (arg1 : System.Address) return access xcb_glx_float32_t;  -- /usr/include/xcb/glx.h:9727
   pragma Import (C, xcb_glx_get_tex_genfv_data, "xcb_glx_get_tex_genfv_data");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_get_tex_genfv_data_length
  -- ** 
  -- ** @param const xcb_glx_get_tex_genfv_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_genfv_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:9740
   pragma Import (C, xcb_glx_get_tex_genfv_data_length, "xcb_glx_get_tex_genfv_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_get_tex_genfv_data_end
  -- ** 
  -- ** @param const xcb_glx_get_tex_genfv_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_genfv_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:9753
   pragma Import (C, xcb_glx_get_tex_genfv_data_end, "xcb_glx_get_tex_genfv_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_get_tex_genfv_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_tex_genfv_reply_t * xcb_glx_get_tex_genfv_reply
  -- ** 
  -- ** @param xcb_connection_t                *c
  -- ** @param xcb_glx_get_tex_genfv_cookie_t   cookie
  -- ** @param xcb_generic_error_t            **e
  -- ** @returns xcb_glx_get_tex_genfv_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_genfv_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_tex_genfv_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_tex_genfv_reply_t;  -- /usr/include/xcb/glx.h:9782
   pragma Import (C, xcb_glx_get_tex_genfv_reply, "xcb_glx_get_tex_genfv_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_get_tex_geniv_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:9787
   pragma Import (C, xcb_glx_get_tex_geniv_sizeof, "xcb_glx_get_tex_geniv_sizeof");

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
  -- ** xcb_glx_get_tex_geniv_cookie_t xcb_glx_get_tex_geniv
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               coord
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_tex_geniv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_geniv
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_tex_geniv_cookie_t;  -- /usr/include/xcb/glx.h:9811
   pragma Import (C, xcb_glx_get_tex_geniv, "xcb_glx_get_tex_geniv");

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
  -- ** xcb_glx_get_tex_geniv_cookie_t xcb_glx_get_tex_geniv_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               coord
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_tex_geniv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_geniv_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_tex_geniv_cookie_t;  -- /usr/include/xcb/glx.h:9841
   pragma Import (C, xcb_glx_get_tex_geniv_unchecked, "xcb_glx_get_tex_geniv_unchecked");

  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** int32_t * xcb_glx_get_tex_geniv_data
  -- ** 
  -- ** @param const xcb_glx_get_tex_geniv_reply_t *R
  -- ** @returns int32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_geniv_data (arg1 : System.Address) return access sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:9857
   pragma Import (C, xcb_glx_get_tex_geniv_data, "xcb_glx_get_tex_geniv_data");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_get_tex_geniv_data_length
  -- ** 
  -- ** @param const xcb_glx_get_tex_geniv_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_geniv_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:9870
   pragma Import (C, xcb_glx_get_tex_geniv_data_length, "xcb_glx_get_tex_geniv_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_get_tex_geniv_data_end
  -- ** 
  -- ** @param const xcb_glx_get_tex_geniv_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_geniv_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:9883
   pragma Import (C, xcb_glx_get_tex_geniv_data_end, "xcb_glx_get_tex_geniv_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_get_tex_geniv_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_tex_geniv_reply_t * xcb_glx_get_tex_geniv_reply
  -- ** 
  -- ** @param xcb_connection_t                *c
  -- ** @param xcb_glx_get_tex_geniv_cookie_t   cookie
  -- ** @param xcb_generic_error_t            **e
  -- ** @returns xcb_glx_get_tex_geniv_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_geniv_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_tex_geniv_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_tex_geniv_reply_t;  -- /usr/include/xcb/glx.h:9912
   pragma Import (C, xcb_glx_get_tex_geniv_reply, "xcb_glx_get_tex_geniv_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_get_tex_image_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:9917
   pragma Import (C, xcb_glx_get_tex_image_sizeof, "xcb_glx_get_tex_image_sizeof");

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
  -- ** xcb_glx_get_tex_image_cookie_t xcb_glx_get_tex_image
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param int32_t                level
  -- ** @param uint32_t               format
  -- ** @param uint32_t               type
  -- ** @param uint8_t                swap_bytes
  -- ** @returns xcb_glx_get_tex_image_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_image
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : sys_types_h.int32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : stdint_h.uint32_t;
      arg7 : stdint_h.uint8_t) return xcb_glx_get_tex_image_cookie_t;  -- /usr/include/xcb/glx.h:9944
   pragma Import (C, xcb_glx_get_tex_image, "xcb_glx_get_tex_image");

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
  -- ** xcb_glx_get_tex_image_cookie_t xcb_glx_get_tex_image_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param int32_t                level
  -- ** @param uint32_t               format
  -- ** @param uint32_t               type
  -- ** @param uint8_t                swap_bytes
  -- ** @returns xcb_glx_get_tex_image_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_image_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : sys_types_h.int32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : stdint_h.uint32_t;
      arg7 : stdint_h.uint8_t) return xcb_glx_get_tex_image_cookie_t;  -- /usr/include/xcb/glx.h:9980
   pragma Import (C, xcb_glx_get_tex_image_unchecked, "xcb_glx_get_tex_image_unchecked");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** uint8_t * xcb_glx_get_tex_image_data
  -- ** 
  -- ** @param const xcb_glx_get_tex_image_reply_t *R
  -- ** @returns uint8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_image_data (arg1 : System.Address) return access stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:9999
   pragma Import (C, xcb_glx_get_tex_image_data, "xcb_glx_get_tex_image_data");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_get_tex_image_data_length
  -- ** 
  -- ** @param const xcb_glx_get_tex_image_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_image_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:10012
   pragma Import (C, xcb_glx_get_tex_image_data_length, "xcb_glx_get_tex_image_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_get_tex_image_data_end
  -- ** 
  -- ** @param const xcb_glx_get_tex_image_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_image_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:10025
   pragma Import (C, xcb_glx_get_tex_image_data_end, "xcb_glx_get_tex_image_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_get_tex_image_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_tex_image_reply_t * xcb_glx_get_tex_image_reply
  -- ** 
  -- ** @param xcb_connection_t                *c
  -- ** @param xcb_glx_get_tex_image_cookie_t   cookie
  -- ** @param xcb_generic_error_t            **e
  -- ** @returns xcb_glx_get_tex_image_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_image_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_tex_image_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_tex_image_reply_t;  -- /usr/include/xcb/glx.h:10054
   pragma Import (C, xcb_glx_get_tex_image_reply, "xcb_glx_get_tex_image_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_get_tex_parameterfv_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:10059
   pragma Import (C, xcb_glx_get_tex_parameterfv_sizeof, "xcb_glx_get_tex_parameterfv_sizeof");

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
  -- ** xcb_glx_get_tex_parameterfv_cookie_t xcb_glx_get_tex_parameterfv
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_tex_parameterfv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_parameterfv
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_tex_parameterfv_cookie_t;  -- /usr/include/xcb/glx.h:10083
   pragma Import (C, xcb_glx_get_tex_parameterfv, "xcb_glx_get_tex_parameterfv");

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
  -- ** xcb_glx_get_tex_parameterfv_cookie_t xcb_glx_get_tex_parameterfv_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_tex_parameterfv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_parameterfv_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_tex_parameterfv_cookie_t;  -- /usr/include/xcb/glx.h:10113
   pragma Import (C, xcb_glx_get_tex_parameterfv_unchecked, "xcb_glx_get_tex_parameterfv_unchecked");

  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_glx_float32_t * xcb_glx_get_tex_parameterfv_data
  -- ** 
  -- ** @param const xcb_glx_get_tex_parameterfv_reply_t *R
  -- ** @returns xcb_glx_float32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_parameterfv_data (arg1 : System.Address) return access xcb_glx_float32_t;  -- /usr/include/xcb/glx.h:10129
   pragma Import (C, xcb_glx_get_tex_parameterfv_data, "xcb_glx_get_tex_parameterfv_data");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_get_tex_parameterfv_data_length
  -- ** 
  -- ** @param const xcb_glx_get_tex_parameterfv_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_parameterfv_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:10142
   pragma Import (C, xcb_glx_get_tex_parameterfv_data_length, "xcb_glx_get_tex_parameterfv_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_get_tex_parameterfv_data_end
  -- ** 
  -- ** @param const xcb_glx_get_tex_parameterfv_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_parameterfv_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:10155
   pragma Import (C, xcb_glx_get_tex_parameterfv_data_end, "xcb_glx_get_tex_parameterfv_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_get_tex_parameterfv_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_tex_parameterfv_reply_t * xcb_glx_get_tex_parameterfv_reply
  -- ** 
  -- ** @param xcb_connection_t                      *c
  -- ** @param xcb_glx_get_tex_parameterfv_cookie_t   cookie
  -- ** @param xcb_generic_error_t                  **e
  -- ** @returns xcb_glx_get_tex_parameterfv_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_parameterfv_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_tex_parameterfv_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_tex_parameterfv_reply_t;  -- /usr/include/xcb/glx.h:10184
   pragma Import (C, xcb_glx_get_tex_parameterfv_reply, "xcb_glx_get_tex_parameterfv_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_get_tex_parameteriv_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:10189
   pragma Import (C, xcb_glx_get_tex_parameteriv_sizeof, "xcb_glx_get_tex_parameteriv_sizeof");

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
  -- ** xcb_glx_get_tex_parameteriv_cookie_t xcb_glx_get_tex_parameteriv
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_tex_parameteriv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_parameteriv
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_tex_parameteriv_cookie_t;  -- /usr/include/xcb/glx.h:10213
   pragma Import (C, xcb_glx_get_tex_parameteriv, "xcb_glx_get_tex_parameteriv");

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
  -- ** xcb_glx_get_tex_parameteriv_cookie_t xcb_glx_get_tex_parameteriv_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_tex_parameteriv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_parameteriv_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_tex_parameteriv_cookie_t;  -- /usr/include/xcb/glx.h:10243
   pragma Import (C, xcb_glx_get_tex_parameteriv_unchecked, "xcb_glx_get_tex_parameteriv_unchecked");

  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** int32_t * xcb_glx_get_tex_parameteriv_data
  -- ** 
  -- ** @param const xcb_glx_get_tex_parameteriv_reply_t *R
  -- ** @returns int32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_parameteriv_data (arg1 : System.Address) return access sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:10259
   pragma Import (C, xcb_glx_get_tex_parameteriv_data, "xcb_glx_get_tex_parameteriv_data");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_get_tex_parameteriv_data_length
  -- ** 
  -- ** @param const xcb_glx_get_tex_parameteriv_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_parameteriv_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:10272
   pragma Import (C, xcb_glx_get_tex_parameteriv_data_length, "xcb_glx_get_tex_parameteriv_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_get_tex_parameteriv_data_end
  -- ** 
  -- ** @param const xcb_glx_get_tex_parameteriv_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_parameteriv_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:10285
   pragma Import (C, xcb_glx_get_tex_parameteriv_data_end, "xcb_glx_get_tex_parameteriv_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_get_tex_parameteriv_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_tex_parameteriv_reply_t * xcb_glx_get_tex_parameteriv_reply
  -- ** 
  -- ** @param xcb_connection_t                      *c
  -- ** @param xcb_glx_get_tex_parameteriv_cookie_t   cookie
  -- ** @param xcb_generic_error_t                  **e
  -- ** @returns xcb_glx_get_tex_parameteriv_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_parameteriv_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_tex_parameteriv_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_tex_parameteriv_reply_t;  -- /usr/include/xcb/glx.h:10314
   pragma Import (C, xcb_glx_get_tex_parameteriv_reply, "xcb_glx_get_tex_parameteriv_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_get_tex_level_parameterfv_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:10319
   pragma Import (C, xcb_glx_get_tex_level_parameterfv_sizeof, "xcb_glx_get_tex_level_parameterfv_sizeof");

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
  -- ** xcb_glx_get_tex_level_parameterfv_cookie_t xcb_glx_get_tex_level_parameterfv
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param int32_t                level
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_tex_level_parameterfv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_level_parameterfv
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : sys_types_h.int32_t;
      arg5 : stdint_h.uint32_t) return xcb_glx_get_tex_level_parameterfv_cookie_t;  -- /usr/include/xcb/glx.h:10344
   pragma Import (C, xcb_glx_get_tex_level_parameterfv, "xcb_glx_get_tex_level_parameterfv");

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
  -- ** xcb_glx_get_tex_level_parameterfv_cookie_t xcb_glx_get_tex_level_parameterfv_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param int32_t                level
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_tex_level_parameterfv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_level_parameterfv_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : sys_types_h.int32_t;
      arg5 : stdint_h.uint32_t) return xcb_glx_get_tex_level_parameterfv_cookie_t;  -- /usr/include/xcb/glx.h:10376
   pragma Import (C, xcb_glx_get_tex_level_parameterfv_unchecked, "xcb_glx_get_tex_level_parameterfv_unchecked");

  --*<  
  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_glx_float32_t * xcb_glx_get_tex_level_parameterfv_data
  -- ** 
  -- ** @param const xcb_glx_get_tex_level_parameterfv_reply_t *R
  -- ** @returns xcb_glx_float32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_level_parameterfv_data (arg1 : System.Address) return access xcb_glx_float32_t;  -- /usr/include/xcb/glx.h:10393
   pragma Import (C, xcb_glx_get_tex_level_parameterfv_data, "xcb_glx_get_tex_level_parameterfv_data");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_get_tex_level_parameterfv_data_length
  -- ** 
  -- ** @param const xcb_glx_get_tex_level_parameterfv_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_level_parameterfv_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:10406
   pragma Import (C, xcb_glx_get_tex_level_parameterfv_data_length, "xcb_glx_get_tex_level_parameterfv_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_get_tex_level_parameterfv_data_end
  -- ** 
  -- ** @param const xcb_glx_get_tex_level_parameterfv_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_level_parameterfv_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:10419
   pragma Import (C, xcb_glx_get_tex_level_parameterfv_data_end, "xcb_glx_get_tex_level_parameterfv_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_get_tex_level_parameterfv_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_tex_level_parameterfv_reply_t * xcb_glx_get_tex_level_parameterfv_reply
  -- ** 
  -- ** @param xcb_connection_t                            *c
  -- ** @param xcb_glx_get_tex_level_parameterfv_cookie_t   cookie
  -- ** @param xcb_generic_error_t                        **e
  -- ** @returns xcb_glx_get_tex_level_parameterfv_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_level_parameterfv_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_tex_level_parameterfv_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_tex_level_parameterfv_reply_t;  -- /usr/include/xcb/glx.h:10448
   pragma Import (C, xcb_glx_get_tex_level_parameterfv_reply, "xcb_glx_get_tex_level_parameterfv_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_get_tex_level_parameteriv_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:10453
   pragma Import (C, xcb_glx_get_tex_level_parameteriv_sizeof, "xcb_glx_get_tex_level_parameteriv_sizeof");

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
  -- ** xcb_glx_get_tex_level_parameteriv_cookie_t xcb_glx_get_tex_level_parameteriv
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param int32_t                level
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_tex_level_parameteriv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_level_parameteriv
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : sys_types_h.int32_t;
      arg5 : stdint_h.uint32_t) return xcb_glx_get_tex_level_parameteriv_cookie_t;  -- /usr/include/xcb/glx.h:10478
   pragma Import (C, xcb_glx_get_tex_level_parameteriv, "xcb_glx_get_tex_level_parameteriv");

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
  -- ** xcb_glx_get_tex_level_parameteriv_cookie_t xcb_glx_get_tex_level_parameteriv_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param int32_t                level
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_tex_level_parameteriv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_level_parameteriv_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : sys_types_h.int32_t;
      arg5 : stdint_h.uint32_t) return xcb_glx_get_tex_level_parameteriv_cookie_t;  -- /usr/include/xcb/glx.h:10510
   pragma Import (C, xcb_glx_get_tex_level_parameteriv_unchecked, "xcb_glx_get_tex_level_parameteriv_unchecked");

  --*<  
  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** int32_t * xcb_glx_get_tex_level_parameteriv_data
  -- ** 
  -- ** @param const xcb_glx_get_tex_level_parameteriv_reply_t *R
  -- ** @returns int32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_level_parameteriv_data (arg1 : System.Address) return access sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:10527
   pragma Import (C, xcb_glx_get_tex_level_parameteriv_data, "xcb_glx_get_tex_level_parameteriv_data");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_get_tex_level_parameteriv_data_length
  -- ** 
  -- ** @param const xcb_glx_get_tex_level_parameteriv_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_level_parameteriv_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:10540
   pragma Import (C, xcb_glx_get_tex_level_parameteriv_data_length, "xcb_glx_get_tex_level_parameteriv_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_get_tex_level_parameteriv_data_end
  -- ** 
  -- ** @param const xcb_glx_get_tex_level_parameteriv_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_level_parameteriv_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:10553
   pragma Import (C, xcb_glx_get_tex_level_parameteriv_data_end, "xcb_glx_get_tex_level_parameteriv_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_get_tex_level_parameteriv_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_tex_level_parameteriv_reply_t * xcb_glx_get_tex_level_parameteriv_reply
  -- ** 
  -- ** @param xcb_connection_t                            *c
  -- ** @param xcb_glx_get_tex_level_parameteriv_cookie_t   cookie
  -- ** @param xcb_generic_error_t                        **e
  -- ** @returns xcb_glx_get_tex_level_parameteriv_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_tex_level_parameteriv_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_tex_level_parameteriv_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_tex_level_parameteriv_reply_t;  -- /usr/include/xcb/glx.h:10582
   pragma Import (C, xcb_glx_get_tex_level_parameteriv_reply, "xcb_glx_get_tex_level_parameteriv_reply");

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
  -- ** xcb_glx_is_list_cookie_t xcb_glx_is_list
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               list
  -- ** @returns xcb_glx_is_list_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_is_list
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t) return xcb_glx_is_list_cookie_t;  -- /usr/include/xcb/glx.h:10607
   pragma Import (C, xcb_glx_is_list, "xcb_glx_is_list");

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
  -- ** xcb_glx_is_list_cookie_t xcb_glx_is_list_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               list
  -- ** @returns xcb_glx_is_list_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_is_list_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t) return xcb_glx_is_list_cookie_t;  -- /usr/include/xcb/glx.h:10635
   pragma Import (C, xcb_glx_is_list_unchecked, "xcb_glx_is_list_unchecked");

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
  -- * xcb_glx_is_list_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_is_list_reply_t * xcb_glx_is_list_reply
  -- ** 
  -- ** @param xcb_connection_t          *c
  -- ** @param xcb_glx_is_list_cookie_t   cookie
  -- ** @param xcb_generic_error_t      **e
  -- ** @returns xcb_glx_is_list_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_is_list_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_is_list_cookie_t;
      arg3 : System.Address) return access xcb_glx_is_list_reply_t;  -- /usr/include/xcb/glx.h:10666
   pragma Import (C, xcb_glx_is_list_reply, "xcb_glx_is_list_reply");

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
  -- ** xcb_void_cookie_t xcb_glx_flush_checked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_flush_checked (arg1 : System.Address; arg2 : xcb_glx_context_tag_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:10693
   pragma Import (C, xcb_glx_flush_checked, "xcb_glx_flush_checked");

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
  -- ** xcb_void_cookie_t xcb_glx_flush
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_flush (arg1 : System.Address; arg2 : xcb_glx_context_tag_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:10716
   pragma Import (C, xcb_glx_flush, "xcb_glx_flush");

  --*<  
  --*<  
   function xcb_glx_are_textures_resident_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:10720
   pragma Import (C, xcb_glx_are_textures_resident_sizeof, "xcb_glx_are_textures_resident_sizeof");

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
  -- ** xcb_glx_are_textures_resident_cookie_t xcb_glx_are_textures_resident
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param int32_t                n
  -- ** @param const uint32_t        *textures
  -- ** @returns xcb_glx_are_textures_resident_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_are_textures_resident
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : sys_types_h.int32_t;
      arg4 : access stdint_h.uint32_t) return xcb_glx_are_textures_resident_cookie_t;  -- /usr/include/xcb/glx.h:10744
   pragma Import (C, xcb_glx_are_textures_resident, "xcb_glx_are_textures_resident");

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
  -- ** xcb_glx_are_textures_resident_cookie_t xcb_glx_are_textures_resident_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param int32_t                n
  -- ** @param const uint32_t        *textures
  -- ** @returns xcb_glx_are_textures_resident_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_are_textures_resident_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : sys_types_h.int32_t;
      arg4 : access stdint_h.uint32_t) return xcb_glx_are_textures_resident_cookie_t;  -- /usr/include/xcb/glx.h:10774
   pragma Import (C, xcb_glx_are_textures_resident_unchecked, "xcb_glx_are_textures_resident_unchecked");

  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** uint8_t * xcb_glx_are_textures_resident_data
  -- ** 
  -- ** @param const xcb_glx_are_textures_resident_reply_t *R
  -- ** @returns uint8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_are_textures_resident_data (arg1 : System.Address) return access stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:10790
   pragma Import (C, xcb_glx_are_textures_resident_data, "xcb_glx_are_textures_resident_data");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_are_textures_resident_data_length
  -- ** 
  -- ** @param const xcb_glx_are_textures_resident_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_are_textures_resident_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:10803
   pragma Import (C, xcb_glx_are_textures_resident_data_length, "xcb_glx_are_textures_resident_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_are_textures_resident_data_end
  -- ** 
  -- ** @param const xcb_glx_are_textures_resident_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_are_textures_resident_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:10816
   pragma Import (C, xcb_glx_are_textures_resident_data_end, "xcb_glx_are_textures_resident_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_are_textures_resident_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_are_textures_resident_reply_t * xcb_glx_are_textures_resident_reply
  -- ** 
  -- ** @param xcb_connection_t                        *c
  -- ** @param xcb_glx_are_textures_resident_cookie_t   cookie
  -- ** @param xcb_generic_error_t                    **e
  -- ** @returns xcb_glx_are_textures_resident_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_are_textures_resident_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_are_textures_resident_cookie_t;
      arg3 : System.Address) return access xcb_glx_are_textures_resident_reply_t;  -- /usr/include/xcb/glx.h:10845
   pragma Import (C, xcb_glx_are_textures_resident_reply, "xcb_glx_are_textures_resident_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_delete_textures_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:10850
   pragma Import (C, xcb_glx_delete_textures_sizeof, "xcb_glx_delete_textures_sizeof");

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
  -- ** xcb_void_cookie_t xcb_glx_delete_textures_checked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param int32_t                n
  -- ** @param const uint32_t        *textures
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_delete_textures_checked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : sys_types_h.int32_t;
      arg4 : access stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:10877
   pragma Import (C, xcb_glx_delete_textures_checked, "xcb_glx_delete_textures_checked");

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
  -- ** xcb_void_cookie_t xcb_glx_delete_textures
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param int32_t                n
  -- ** @param const uint32_t        *textures
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_delete_textures
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : sys_types_h.int32_t;
      arg4 : access stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:10904
   pragma Import (C, xcb_glx_delete_textures, "xcb_glx_delete_textures");

  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_glx_gen_textures_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:10910
   pragma Import (C, xcb_glx_gen_textures_sizeof, "xcb_glx_gen_textures_sizeof");

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
  -- ** xcb_glx_gen_textures_cookie_t xcb_glx_gen_textures
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param int32_t                n
  -- ** @returns xcb_glx_gen_textures_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_gen_textures
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : sys_types_h.int32_t) return xcb_glx_gen_textures_cookie_t;  -- /usr/include/xcb/glx.h:10933
   pragma Import (C, xcb_glx_gen_textures, "xcb_glx_gen_textures");

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
  -- ** xcb_glx_gen_textures_cookie_t xcb_glx_gen_textures_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param int32_t                n
  -- ** @returns xcb_glx_gen_textures_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_gen_textures_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : sys_types_h.int32_t) return xcb_glx_gen_textures_cookie_t;  -- /usr/include/xcb/glx.h:10961
   pragma Import (C, xcb_glx_gen_textures_unchecked, "xcb_glx_gen_textures_unchecked");

  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** uint32_t * xcb_glx_gen_textures_data
  -- ** 
  -- ** @param const xcb_glx_gen_textures_reply_t *R
  -- ** @returns uint32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_gen_textures_data (arg1 : System.Address) return access stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:10976
   pragma Import (C, xcb_glx_gen_textures_data, "xcb_glx_gen_textures_data");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_gen_textures_data_length
  -- ** 
  -- ** @param const xcb_glx_gen_textures_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_gen_textures_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:10989
   pragma Import (C, xcb_glx_gen_textures_data_length, "xcb_glx_gen_textures_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_gen_textures_data_end
  -- ** 
  -- ** @param const xcb_glx_gen_textures_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_gen_textures_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:11002
   pragma Import (C, xcb_glx_gen_textures_data_end, "xcb_glx_gen_textures_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_gen_textures_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_gen_textures_reply_t * xcb_glx_gen_textures_reply
  -- ** 
  -- ** @param xcb_connection_t               *c
  -- ** @param xcb_glx_gen_textures_cookie_t   cookie
  -- ** @param xcb_generic_error_t           **e
  -- ** @returns xcb_glx_gen_textures_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_gen_textures_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_gen_textures_cookie_t;
      arg3 : System.Address) return access xcb_glx_gen_textures_reply_t;  -- /usr/include/xcb/glx.h:11031
   pragma Import (C, xcb_glx_gen_textures_reply, "xcb_glx_gen_textures_reply");

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
  -- ** xcb_glx_is_texture_cookie_t xcb_glx_is_texture
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               texture
  -- ** @returns xcb_glx_is_texture_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_is_texture
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t) return xcb_glx_is_texture_cookie_t;  -- /usr/include/xcb/glx.h:11056
   pragma Import (C, xcb_glx_is_texture, "xcb_glx_is_texture");

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
  -- ** xcb_glx_is_texture_cookie_t xcb_glx_is_texture_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               texture
  -- ** @returns xcb_glx_is_texture_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_is_texture_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t) return xcb_glx_is_texture_cookie_t;  -- /usr/include/xcb/glx.h:11084
   pragma Import (C, xcb_glx_is_texture_unchecked, "xcb_glx_is_texture_unchecked");

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
  -- * xcb_glx_is_texture_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_is_texture_reply_t * xcb_glx_is_texture_reply
  -- ** 
  -- ** @param xcb_connection_t             *c
  -- ** @param xcb_glx_is_texture_cookie_t   cookie
  -- ** @param xcb_generic_error_t         **e
  -- ** @returns xcb_glx_is_texture_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_is_texture_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_is_texture_cookie_t;
      arg3 : System.Address) return access xcb_glx_is_texture_reply_t;  -- /usr/include/xcb/glx.h:11115
   pragma Import (C, xcb_glx_is_texture_reply, "xcb_glx_is_texture_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_get_color_table_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:11120
   pragma Import (C, xcb_glx_get_color_table_sizeof, "xcb_glx_get_color_table_sizeof");

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
  -- ** xcb_glx_get_color_table_cookie_t xcb_glx_get_color_table
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param uint32_t               format
  -- ** @param uint32_t               type
  -- ** @param uint8_t                swap_bytes
  -- ** @returns xcb_glx_get_color_table_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_color_table
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : stdint_h.uint8_t) return xcb_glx_get_color_table_cookie_t;  -- /usr/include/xcb/glx.h:11146
   pragma Import (C, xcb_glx_get_color_table, "xcb_glx_get_color_table");

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
  -- ** xcb_glx_get_color_table_cookie_t xcb_glx_get_color_table_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param uint32_t               format
  -- ** @param uint32_t               type
  -- ** @param uint8_t                swap_bytes
  -- ** @returns xcb_glx_get_color_table_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_color_table_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : stdint_h.uint8_t) return xcb_glx_get_color_table_cookie_t;  -- /usr/include/xcb/glx.h:11180
   pragma Import (C, xcb_glx_get_color_table_unchecked, "xcb_glx_get_color_table_unchecked");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** uint8_t * xcb_glx_get_color_table_data
  -- ** 
  -- ** @param const xcb_glx_get_color_table_reply_t *R
  -- ** @returns uint8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_color_table_data (arg1 : System.Address) return access stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:11198
   pragma Import (C, xcb_glx_get_color_table_data, "xcb_glx_get_color_table_data");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_get_color_table_data_length
  -- ** 
  -- ** @param const xcb_glx_get_color_table_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_color_table_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:11211
   pragma Import (C, xcb_glx_get_color_table_data_length, "xcb_glx_get_color_table_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_get_color_table_data_end
  -- ** 
  -- ** @param const xcb_glx_get_color_table_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_color_table_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:11224
   pragma Import (C, xcb_glx_get_color_table_data_end, "xcb_glx_get_color_table_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_get_color_table_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_color_table_reply_t * xcb_glx_get_color_table_reply
  -- ** 
  -- ** @param xcb_connection_t                  *c
  -- ** @param xcb_glx_get_color_table_cookie_t   cookie
  -- ** @param xcb_generic_error_t              **e
  -- ** @returns xcb_glx_get_color_table_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_color_table_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_color_table_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_color_table_reply_t;  -- /usr/include/xcb/glx.h:11253
   pragma Import (C, xcb_glx_get_color_table_reply, "xcb_glx_get_color_table_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_get_color_table_parameterfv_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:11258
   pragma Import (C, xcb_glx_get_color_table_parameterfv_sizeof, "xcb_glx_get_color_table_parameterfv_sizeof");

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
  -- ** xcb_glx_get_color_table_parameterfv_cookie_t xcb_glx_get_color_table_parameterfv
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_color_table_parameterfv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_color_table_parameterfv
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_color_table_parameterfv_cookie_t;  -- /usr/include/xcb/glx.h:11282
   pragma Import (C, xcb_glx_get_color_table_parameterfv, "xcb_glx_get_color_table_parameterfv");

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
  -- ** xcb_glx_get_color_table_parameterfv_cookie_t xcb_glx_get_color_table_parameterfv_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_color_table_parameterfv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_color_table_parameterfv_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_color_table_parameterfv_cookie_t;  -- /usr/include/xcb/glx.h:11312
   pragma Import (C, xcb_glx_get_color_table_parameterfv_unchecked, "xcb_glx_get_color_table_parameterfv_unchecked");

  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_glx_float32_t * xcb_glx_get_color_table_parameterfv_data
  -- ** 
  -- ** @param const xcb_glx_get_color_table_parameterfv_reply_t *R
  -- ** @returns xcb_glx_float32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_color_table_parameterfv_data (arg1 : System.Address) return access xcb_glx_float32_t;  -- /usr/include/xcb/glx.h:11328
   pragma Import (C, xcb_glx_get_color_table_parameterfv_data, "xcb_glx_get_color_table_parameterfv_data");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_get_color_table_parameterfv_data_length
  -- ** 
  -- ** @param const xcb_glx_get_color_table_parameterfv_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_color_table_parameterfv_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:11341
   pragma Import (C, xcb_glx_get_color_table_parameterfv_data_length, "xcb_glx_get_color_table_parameterfv_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_get_color_table_parameterfv_data_end
  -- ** 
  -- ** @param const xcb_glx_get_color_table_parameterfv_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_color_table_parameterfv_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:11354
   pragma Import (C, xcb_glx_get_color_table_parameterfv_data_end, "xcb_glx_get_color_table_parameterfv_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_get_color_table_parameterfv_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_color_table_parameterfv_reply_t * xcb_glx_get_color_table_parameterfv_reply
  -- ** 
  -- ** @param xcb_connection_t                              *c
  -- ** @param xcb_glx_get_color_table_parameterfv_cookie_t   cookie
  -- ** @param xcb_generic_error_t                          **e
  -- ** @returns xcb_glx_get_color_table_parameterfv_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_color_table_parameterfv_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_color_table_parameterfv_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_color_table_parameterfv_reply_t;  -- /usr/include/xcb/glx.h:11383
   pragma Import (C, xcb_glx_get_color_table_parameterfv_reply, "xcb_glx_get_color_table_parameterfv_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_get_color_table_parameteriv_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:11388
   pragma Import (C, xcb_glx_get_color_table_parameteriv_sizeof, "xcb_glx_get_color_table_parameteriv_sizeof");

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
  -- ** xcb_glx_get_color_table_parameteriv_cookie_t xcb_glx_get_color_table_parameteriv
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_color_table_parameteriv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_color_table_parameteriv
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_color_table_parameteriv_cookie_t;  -- /usr/include/xcb/glx.h:11412
   pragma Import (C, xcb_glx_get_color_table_parameteriv, "xcb_glx_get_color_table_parameteriv");

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
  -- ** xcb_glx_get_color_table_parameteriv_cookie_t xcb_glx_get_color_table_parameteriv_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_color_table_parameteriv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_color_table_parameteriv_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_color_table_parameteriv_cookie_t;  -- /usr/include/xcb/glx.h:11442
   pragma Import (C, xcb_glx_get_color_table_parameteriv_unchecked, "xcb_glx_get_color_table_parameteriv_unchecked");

  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** int32_t * xcb_glx_get_color_table_parameteriv_data
  -- ** 
  -- ** @param const xcb_glx_get_color_table_parameteriv_reply_t *R
  -- ** @returns int32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_color_table_parameteriv_data (arg1 : System.Address) return access sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:11458
   pragma Import (C, xcb_glx_get_color_table_parameteriv_data, "xcb_glx_get_color_table_parameteriv_data");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_get_color_table_parameteriv_data_length
  -- ** 
  -- ** @param const xcb_glx_get_color_table_parameteriv_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_color_table_parameteriv_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:11471
   pragma Import (C, xcb_glx_get_color_table_parameteriv_data_length, "xcb_glx_get_color_table_parameteriv_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_get_color_table_parameteriv_data_end
  -- ** 
  -- ** @param const xcb_glx_get_color_table_parameteriv_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_color_table_parameteriv_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:11484
   pragma Import (C, xcb_glx_get_color_table_parameteriv_data_end, "xcb_glx_get_color_table_parameteriv_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_get_color_table_parameteriv_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_color_table_parameteriv_reply_t * xcb_glx_get_color_table_parameteriv_reply
  -- ** 
  -- ** @param xcb_connection_t                              *c
  -- ** @param xcb_glx_get_color_table_parameteriv_cookie_t   cookie
  -- ** @param xcb_generic_error_t                          **e
  -- ** @returns xcb_glx_get_color_table_parameteriv_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_color_table_parameteriv_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_color_table_parameteriv_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_color_table_parameteriv_reply_t;  -- /usr/include/xcb/glx.h:11513
   pragma Import (C, xcb_glx_get_color_table_parameteriv_reply, "xcb_glx_get_color_table_parameteriv_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_get_convolution_filter_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:11518
   pragma Import (C, xcb_glx_get_convolution_filter_sizeof, "xcb_glx_get_convolution_filter_sizeof");

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
  -- ** xcb_glx_get_convolution_filter_cookie_t xcb_glx_get_convolution_filter
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param uint32_t               format
  -- ** @param uint32_t               type
  -- ** @param uint8_t                swap_bytes
  -- ** @returns xcb_glx_get_convolution_filter_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_convolution_filter
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : stdint_h.uint8_t) return xcb_glx_get_convolution_filter_cookie_t;  -- /usr/include/xcb/glx.h:11544
   pragma Import (C, xcb_glx_get_convolution_filter, "xcb_glx_get_convolution_filter");

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
  -- ** xcb_glx_get_convolution_filter_cookie_t xcb_glx_get_convolution_filter_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param uint32_t               format
  -- ** @param uint32_t               type
  -- ** @param uint8_t                swap_bytes
  -- ** @returns xcb_glx_get_convolution_filter_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_convolution_filter_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : stdint_h.uint8_t) return xcb_glx_get_convolution_filter_cookie_t;  -- /usr/include/xcb/glx.h:11578
   pragma Import (C, xcb_glx_get_convolution_filter_unchecked, "xcb_glx_get_convolution_filter_unchecked");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** uint8_t * xcb_glx_get_convolution_filter_data
  -- ** 
  -- ** @param const xcb_glx_get_convolution_filter_reply_t *R
  -- ** @returns uint8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_convolution_filter_data (arg1 : System.Address) return access stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:11596
   pragma Import (C, xcb_glx_get_convolution_filter_data, "xcb_glx_get_convolution_filter_data");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_get_convolution_filter_data_length
  -- ** 
  -- ** @param const xcb_glx_get_convolution_filter_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_convolution_filter_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:11609
   pragma Import (C, xcb_glx_get_convolution_filter_data_length, "xcb_glx_get_convolution_filter_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_get_convolution_filter_data_end
  -- ** 
  -- ** @param const xcb_glx_get_convolution_filter_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_convolution_filter_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:11622
   pragma Import (C, xcb_glx_get_convolution_filter_data_end, "xcb_glx_get_convolution_filter_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_get_convolution_filter_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_convolution_filter_reply_t * xcb_glx_get_convolution_filter_reply
  -- ** 
  -- ** @param xcb_connection_t                         *c
  -- ** @param xcb_glx_get_convolution_filter_cookie_t   cookie
  -- ** @param xcb_generic_error_t                     **e
  -- ** @returns xcb_glx_get_convolution_filter_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_convolution_filter_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_convolution_filter_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_convolution_filter_reply_t;  -- /usr/include/xcb/glx.h:11651
   pragma Import (C, xcb_glx_get_convolution_filter_reply, "xcb_glx_get_convolution_filter_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_get_convolution_parameterfv_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:11656
   pragma Import (C, xcb_glx_get_convolution_parameterfv_sizeof, "xcb_glx_get_convolution_parameterfv_sizeof");

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
  -- ** xcb_glx_get_convolution_parameterfv_cookie_t xcb_glx_get_convolution_parameterfv
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_convolution_parameterfv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_convolution_parameterfv
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_convolution_parameterfv_cookie_t;  -- /usr/include/xcb/glx.h:11680
   pragma Import (C, xcb_glx_get_convolution_parameterfv, "xcb_glx_get_convolution_parameterfv");

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
  -- ** xcb_glx_get_convolution_parameterfv_cookie_t xcb_glx_get_convolution_parameterfv_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_convolution_parameterfv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_convolution_parameterfv_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_convolution_parameterfv_cookie_t;  -- /usr/include/xcb/glx.h:11710
   pragma Import (C, xcb_glx_get_convolution_parameterfv_unchecked, "xcb_glx_get_convolution_parameterfv_unchecked");

  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_glx_float32_t * xcb_glx_get_convolution_parameterfv_data
  -- ** 
  -- ** @param const xcb_glx_get_convolution_parameterfv_reply_t *R
  -- ** @returns xcb_glx_float32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_convolution_parameterfv_data (arg1 : System.Address) return access xcb_glx_float32_t;  -- /usr/include/xcb/glx.h:11726
   pragma Import (C, xcb_glx_get_convolution_parameterfv_data, "xcb_glx_get_convolution_parameterfv_data");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_get_convolution_parameterfv_data_length
  -- ** 
  -- ** @param const xcb_glx_get_convolution_parameterfv_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_convolution_parameterfv_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:11739
   pragma Import (C, xcb_glx_get_convolution_parameterfv_data_length, "xcb_glx_get_convolution_parameterfv_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_get_convolution_parameterfv_data_end
  -- ** 
  -- ** @param const xcb_glx_get_convolution_parameterfv_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_convolution_parameterfv_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:11752
   pragma Import (C, xcb_glx_get_convolution_parameterfv_data_end, "xcb_glx_get_convolution_parameterfv_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_get_convolution_parameterfv_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_convolution_parameterfv_reply_t * xcb_glx_get_convolution_parameterfv_reply
  -- ** 
  -- ** @param xcb_connection_t                              *c
  -- ** @param xcb_glx_get_convolution_parameterfv_cookie_t   cookie
  -- ** @param xcb_generic_error_t                          **e
  -- ** @returns xcb_glx_get_convolution_parameterfv_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_convolution_parameterfv_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_convolution_parameterfv_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_convolution_parameterfv_reply_t;  -- /usr/include/xcb/glx.h:11781
   pragma Import (C, xcb_glx_get_convolution_parameterfv_reply, "xcb_glx_get_convolution_parameterfv_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_get_convolution_parameteriv_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:11786
   pragma Import (C, xcb_glx_get_convolution_parameteriv_sizeof, "xcb_glx_get_convolution_parameteriv_sizeof");

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
  -- ** xcb_glx_get_convolution_parameteriv_cookie_t xcb_glx_get_convolution_parameteriv
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_convolution_parameteriv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_convolution_parameteriv
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_convolution_parameteriv_cookie_t;  -- /usr/include/xcb/glx.h:11810
   pragma Import (C, xcb_glx_get_convolution_parameteriv, "xcb_glx_get_convolution_parameteriv");

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
  -- ** xcb_glx_get_convolution_parameteriv_cookie_t xcb_glx_get_convolution_parameteriv_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_convolution_parameteriv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_convolution_parameteriv_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_convolution_parameteriv_cookie_t;  -- /usr/include/xcb/glx.h:11840
   pragma Import (C, xcb_glx_get_convolution_parameteriv_unchecked, "xcb_glx_get_convolution_parameteriv_unchecked");

  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** int32_t * xcb_glx_get_convolution_parameteriv_data
  -- ** 
  -- ** @param const xcb_glx_get_convolution_parameteriv_reply_t *R
  -- ** @returns int32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_convolution_parameteriv_data (arg1 : System.Address) return access sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:11856
   pragma Import (C, xcb_glx_get_convolution_parameteriv_data, "xcb_glx_get_convolution_parameteriv_data");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_get_convolution_parameteriv_data_length
  -- ** 
  -- ** @param const xcb_glx_get_convolution_parameteriv_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_convolution_parameteriv_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:11869
   pragma Import (C, xcb_glx_get_convolution_parameteriv_data_length, "xcb_glx_get_convolution_parameteriv_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_get_convolution_parameteriv_data_end
  -- ** 
  -- ** @param const xcb_glx_get_convolution_parameteriv_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_convolution_parameteriv_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:11882
   pragma Import (C, xcb_glx_get_convolution_parameteriv_data_end, "xcb_glx_get_convolution_parameteriv_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_get_convolution_parameteriv_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_convolution_parameteriv_reply_t * xcb_glx_get_convolution_parameteriv_reply
  -- ** 
  -- ** @param xcb_connection_t                              *c
  -- ** @param xcb_glx_get_convolution_parameteriv_cookie_t   cookie
  -- ** @param xcb_generic_error_t                          **e
  -- ** @returns xcb_glx_get_convolution_parameteriv_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_convolution_parameteriv_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_convolution_parameteriv_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_convolution_parameteriv_reply_t;  -- /usr/include/xcb/glx.h:11911
   pragma Import (C, xcb_glx_get_convolution_parameteriv_reply, "xcb_glx_get_convolution_parameteriv_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_get_separable_filter_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:11916
   pragma Import (C, xcb_glx_get_separable_filter_sizeof, "xcb_glx_get_separable_filter_sizeof");

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
  -- ** xcb_glx_get_separable_filter_cookie_t xcb_glx_get_separable_filter
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param uint32_t               format
  -- ** @param uint32_t               type
  -- ** @param uint8_t                swap_bytes
  -- ** @returns xcb_glx_get_separable_filter_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_separable_filter
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : stdint_h.uint8_t) return xcb_glx_get_separable_filter_cookie_t;  -- /usr/include/xcb/glx.h:11942
   pragma Import (C, xcb_glx_get_separable_filter, "xcb_glx_get_separable_filter");

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
  -- ** xcb_glx_get_separable_filter_cookie_t xcb_glx_get_separable_filter_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param uint32_t               format
  -- ** @param uint32_t               type
  -- ** @param uint8_t                swap_bytes
  -- ** @returns xcb_glx_get_separable_filter_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_separable_filter_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : stdint_h.uint8_t) return xcb_glx_get_separable_filter_cookie_t;  -- /usr/include/xcb/glx.h:11976
   pragma Import (C, xcb_glx_get_separable_filter_unchecked, "xcb_glx_get_separable_filter_unchecked");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** uint8_t * xcb_glx_get_separable_filter_rows_and_cols
  -- ** 
  -- ** @param const xcb_glx_get_separable_filter_reply_t *R
  -- ** @returns uint8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_separable_filter_rows_and_cols (arg1 : System.Address) return access stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:11994
   pragma Import (C, xcb_glx_get_separable_filter_rows_and_cols, "xcb_glx_get_separable_filter_rows_and_cols");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_get_separable_filter_rows_and_cols_length
  -- ** 
  -- ** @param const xcb_glx_get_separable_filter_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_separable_filter_rows_and_cols_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:12007
   pragma Import (C, xcb_glx_get_separable_filter_rows_and_cols_length, "xcb_glx_get_separable_filter_rows_and_cols_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_get_separable_filter_rows_and_cols_end
  -- ** 
  -- ** @param const xcb_glx_get_separable_filter_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_separable_filter_rows_and_cols_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:12020
   pragma Import (C, xcb_glx_get_separable_filter_rows_and_cols_end, "xcb_glx_get_separable_filter_rows_and_cols_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_get_separable_filter_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_separable_filter_reply_t * xcb_glx_get_separable_filter_reply
  -- ** 
  -- ** @param xcb_connection_t                       *c
  -- ** @param xcb_glx_get_separable_filter_cookie_t   cookie
  -- ** @param xcb_generic_error_t                   **e
  -- ** @returns xcb_glx_get_separable_filter_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_separable_filter_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_separable_filter_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_separable_filter_reply_t;  -- /usr/include/xcb/glx.h:12049
   pragma Import (C, xcb_glx_get_separable_filter_reply, "xcb_glx_get_separable_filter_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_get_histogram_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:12054
   pragma Import (C, xcb_glx_get_histogram_sizeof, "xcb_glx_get_histogram_sizeof");

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
  -- ** xcb_glx_get_histogram_cookie_t xcb_glx_get_histogram
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param uint32_t               format
  -- ** @param uint32_t               type
  -- ** @param uint8_t                swap_bytes
  -- ** @param uint8_t                reset
  -- ** @returns xcb_glx_get_histogram_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_histogram
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t) return xcb_glx_get_histogram_cookie_t;  -- /usr/include/xcb/glx.h:12081
   pragma Import (C, xcb_glx_get_histogram, "xcb_glx_get_histogram");

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
  -- ** xcb_glx_get_histogram_cookie_t xcb_glx_get_histogram_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param uint32_t               format
  -- ** @param uint32_t               type
  -- ** @param uint8_t                swap_bytes
  -- ** @param uint8_t                reset
  -- ** @returns xcb_glx_get_histogram_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_histogram_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t) return xcb_glx_get_histogram_cookie_t;  -- /usr/include/xcb/glx.h:12117
   pragma Import (C, xcb_glx_get_histogram_unchecked, "xcb_glx_get_histogram_unchecked");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** uint8_t * xcb_glx_get_histogram_data
  -- ** 
  -- ** @param const xcb_glx_get_histogram_reply_t *R
  -- ** @returns uint8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_histogram_data (arg1 : System.Address) return access stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:12136
   pragma Import (C, xcb_glx_get_histogram_data, "xcb_glx_get_histogram_data");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_get_histogram_data_length
  -- ** 
  -- ** @param const xcb_glx_get_histogram_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_histogram_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:12149
   pragma Import (C, xcb_glx_get_histogram_data_length, "xcb_glx_get_histogram_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_get_histogram_data_end
  -- ** 
  -- ** @param const xcb_glx_get_histogram_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_histogram_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:12162
   pragma Import (C, xcb_glx_get_histogram_data_end, "xcb_glx_get_histogram_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_get_histogram_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_histogram_reply_t * xcb_glx_get_histogram_reply
  -- ** 
  -- ** @param xcb_connection_t                *c
  -- ** @param xcb_glx_get_histogram_cookie_t   cookie
  -- ** @param xcb_generic_error_t            **e
  -- ** @returns xcb_glx_get_histogram_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_histogram_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_histogram_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_histogram_reply_t;  -- /usr/include/xcb/glx.h:12191
   pragma Import (C, xcb_glx_get_histogram_reply, "xcb_glx_get_histogram_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_get_histogram_parameterfv_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:12196
   pragma Import (C, xcb_glx_get_histogram_parameterfv_sizeof, "xcb_glx_get_histogram_parameterfv_sizeof");

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
  -- ** xcb_glx_get_histogram_parameterfv_cookie_t xcb_glx_get_histogram_parameterfv
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_histogram_parameterfv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_histogram_parameterfv
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_histogram_parameterfv_cookie_t;  -- /usr/include/xcb/glx.h:12220
   pragma Import (C, xcb_glx_get_histogram_parameterfv, "xcb_glx_get_histogram_parameterfv");

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
  -- ** xcb_glx_get_histogram_parameterfv_cookie_t xcb_glx_get_histogram_parameterfv_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_histogram_parameterfv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_histogram_parameterfv_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_histogram_parameterfv_cookie_t;  -- /usr/include/xcb/glx.h:12250
   pragma Import (C, xcb_glx_get_histogram_parameterfv_unchecked, "xcb_glx_get_histogram_parameterfv_unchecked");

  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_glx_float32_t * xcb_glx_get_histogram_parameterfv_data
  -- ** 
  -- ** @param const xcb_glx_get_histogram_parameterfv_reply_t *R
  -- ** @returns xcb_glx_float32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_histogram_parameterfv_data (arg1 : System.Address) return access xcb_glx_float32_t;  -- /usr/include/xcb/glx.h:12266
   pragma Import (C, xcb_glx_get_histogram_parameterfv_data, "xcb_glx_get_histogram_parameterfv_data");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_get_histogram_parameterfv_data_length
  -- ** 
  -- ** @param const xcb_glx_get_histogram_parameterfv_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_histogram_parameterfv_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:12279
   pragma Import (C, xcb_glx_get_histogram_parameterfv_data_length, "xcb_glx_get_histogram_parameterfv_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_get_histogram_parameterfv_data_end
  -- ** 
  -- ** @param const xcb_glx_get_histogram_parameterfv_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_histogram_parameterfv_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:12292
   pragma Import (C, xcb_glx_get_histogram_parameterfv_data_end, "xcb_glx_get_histogram_parameterfv_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_get_histogram_parameterfv_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_histogram_parameterfv_reply_t * xcb_glx_get_histogram_parameterfv_reply
  -- ** 
  -- ** @param xcb_connection_t                            *c
  -- ** @param xcb_glx_get_histogram_parameterfv_cookie_t   cookie
  -- ** @param xcb_generic_error_t                        **e
  -- ** @returns xcb_glx_get_histogram_parameterfv_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_histogram_parameterfv_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_histogram_parameterfv_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_histogram_parameterfv_reply_t;  -- /usr/include/xcb/glx.h:12321
   pragma Import (C, xcb_glx_get_histogram_parameterfv_reply, "xcb_glx_get_histogram_parameterfv_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_get_histogram_parameteriv_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:12326
   pragma Import (C, xcb_glx_get_histogram_parameteriv_sizeof, "xcb_glx_get_histogram_parameteriv_sizeof");

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
  -- ** xcb_glx_get_histogram_parameteriv_cookie_t xcb_glx_get_histogram_parameteriv
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_histogram_parameteriv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_histogram_parameteriv
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_histogram_parameteriv_cookie_t;  -- /usr/include/xcb/glx.h:12350
   pragma Import (C, xcb_glx_get_histogram_parameteriv, "xcb_glx_get_histogram_parameteriv");

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
  -- ** xcb_glx_get_histogram_parameteriv_cookie_t xcb_glx_get_histogram_parameteriv_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_histogram_parameteriv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_histogram_parameteriv_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_histogram_parameteriv_cookie_t;  -- /usr/include/xcb/glx.h:12380
   pragma Import (C, xcb_glx_get_histogram_parameteriv_unchecked, "xcb_glx_get_histogram_parameteriv_unchecked");

  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** int32_t * xcb_glx_get_histogram_parameteriv_data
  -- ** 
  -- ** @param const xcb_glx_get_histogram_parameteriv_reply_t *R
  -- ** @returns int32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_histogram_parameteriv_data (arg1 : System.Address) return access sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:12396
   pragma Import (C, xcb_glx_get_histogram_parameteriv_data, "xcb_glx_get_histogram_parameteriv_data");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_get_histogram_parameteriv_data_length
  -- ** 
  -- ** @param const xcb_glx_get_histogram_parameteriv_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_histogram_parameteriv_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:12409
   pragma Import (C, xcb_glx_get_histogram_parameteriv_data_length, "xcb_glx_get_histogram_parameteriv_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_get_histogram_parameteriv_data_end
  -- ** 
  -- ** @param const xcb_glx_get_histogram_parameteriv_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_histogram_parameteriv_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:12422
   pragma Import (C, xcb_glx_get_histogram_parameteriv_data_end, "xcb_glx_get_histogram_parameteriv_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_get_histogram_parameteriv_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_histogram_parameteriv_reply_t * xcb_glx_get_histogram_parameteriv_reply
  -- ** 
  -- ** @param xcb_connection_t                            *c
  -- ** @param xcb_glx_get_histogram_parameteriv_cookie_t   cookie
  -- ** @param xcb_generic_error_t                        **e
  -- ** @returns xcb_glx_get_histogram_parameteriv_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_histogram_parameteriv_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_histogram_parameteriv_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_histogram_parameteriv_reply_t;  -- /usr/include/xcb/glx.h:12451
   pragma Import (C, xcb_glx_get_histogram_parameteriv_reply, "xcb_glx_get_histogram_parameteriv_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_get_minmax_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:12456
   pragma Import (C, xcb_glx_get_minmax_sizeof, "xcb_glx_get_minmax_sizeof");

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
  -- ** xcb_glx_get_minmax_cookie_t xcb_glx_get_minmax
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param uint32_t               format
  -- ** @param uint32_t               type
  -- ** @param uint8_t                swap_bytes
  -- ** @param uint8_t                reset
  -- ** @returns xcb_glx_get_minmax_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_minmax
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t) return xcb_glx_get_minmax_cookie_t;  -- /usr/include/xcb/glx.h:12483
   pragma Import (C, xcb_glx_get_minmax, "xcb_glx_get_minmax");

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
  -- ** xcb_glx_get_minmax_cookie_t xcb_glx_get_minmax_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param uint32_t               format
  -- ** @param uint32_t               type
  -- ** @param uint8_t                swap_bytes
  -- ** @param uint8_t                reset
  -- ** @returns xcb_glx_get_minmax_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_minmax_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t) return xcb_glx_get_minmax_cookie_t;  -- /usr/include/xcb/glx.h:12519
   pragma Import (C, xcb_glx_get_minmax_unchecked, "xcb_glx_get_minmax_unchecked");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** uint8_t * xcb_glx_get_minmax_data
  -- ** 
  -- ** @param const xcb_glx_get_minmax_reply_t *R
  -- ** @returns uint8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_minmax_data (arg1 : System.Address) return access stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:12538
   pragma Import (C, xcb_glx_get_minmax_data, "xcb_glx_get_minmax_data");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_get_minmax_data_length
  -- ** 
  -- ** @param const xcb_glx_get_minmax_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_minmax_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:12551
   pragma Import (C, xcb_glx_get_minmax_data_length, "xcb_glx_get_minmax_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_get_minmax_data_end
  -- ** 
  -- ** @param const xcb_glx_get_minmax_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_minmax_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:12564
   pragma Import (C, xcb_glx_get_minmax_data_end, "xcb_glx_get_minmax_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_get_minmax_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_minmax_reply_t * xcb_glx_get_minmax_reply
  -- ** 
  -- ** @param xcb_connection_t             *c
  -- ** @param xcb_glx_get_minmax_cookie_t   cookie
  -- ** @param xcb_generic_error_t         **e
  -- ** @returns xcb_glx_get_minmax_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_minmax_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_minmax_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_minmax_reply_t;  -- /usr/include/xcb/glx.h:12593
   pragma Import (C, xcb_glx_get_minmax_reply, "xcb_glx_get_minmax_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_get_minmax_parameterfv_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:12598
   pragma Import (C, xcb_glx_get_minmax_parameterfv_sizeof, "xcb_glx_get_minmax_parameterfv_sizeof");

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
  -- ** xcb_glx_get_minmax_parameterfv_cookie_t xcb_glx_get_minmax_parameterfv
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_minmax_parameterfv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_minmax_parameterfv
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_minmax_parameterfv_cookie_t;  -- /usr/include/xcb/glx.h:12622
   pragma Import (C, xcb_glx_get_minmax_parameterfv, "xcb_glx_get_minmax_parameterfv");

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
  -- ** xcb_glx_get_minmax_parameterfv_cookie_t xcb_glx_get_minmax_parameterfv_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_minmax_parameterfv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_minmax_parameterfv_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_minmax_parameterfv_cookie_t;  -- /usr/include/xcb/glx.h:12652
   pragma Import (C, xcb_glx_get_minmax_parameterfv_unchecked, "xcb_glx_get_minmax_parameterfv_unchecked");

  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_glx_float32_t * xcb_glx_get_minmax_parameterfv_data
  -- ** 
  -- ** @param const xcb_glx_get_minmax_parameterfv_reply_t *R
  -- ** @returns xcb_glx_float32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_minmax_parameterfv_data (arg1 : System.Address) return access xcb_glx_float32_t;  -- /usr/include/xcb/glx.h:12668
   pragma Import (C, xcb_glx_get_minmax_parameterfv_data, "xcb_glx_get_minmax_parameterfv_data");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_get_minmax_parameterfv_data_length
  -- ** 
  -- ** @param const xcb_glx_get_minmax_parameterfv_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_minmax_parameterfv_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:12681
   pragma Import (C, xcb_glx_get_minmax_parameterfv_data_length, "xcb_glx_get_minmax_parameterfv_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_get_minmax_parameterfv_data_end
  -- ** 
  -- ** @param const xcb_glx_get_minmax_parameterfv_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_minmax_parameterfv_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:12694
   pragma Import (C, xcb_glx_get_minmax_parameterfv_data_end, "xcb_glx_get_minmax_parameterfv_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_get_minmax_parameterfv_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_minmax_parameterfv_reply_t * xcb_glx_get_minmax_parameterfv_reply
  -- ** 
  -- ** @param xcb_connection_t                         *c
  -- ** @param xcb_glx_get_minmax_parameterfv_cookie_t   cookie
  -- ** @param xcb_generic_error_t                     **e
  -- ** @returns xcb_glx_get_minmax_parameterfv_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_minmax_parameterfv_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_minmax_parameterfv_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_minmax_parameterfv_reply_t;  -- /usr/include/xcb/glx.h:12723
   pragma Import (C, xcb_glx_get_minmax_parameterfv_reply, "xcb_glx_get_minmax_parameterfv_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_get_minmax_parameteriv_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:12728
   pragma Import (C, xcb_glx_get_minmax_parameteriv_sizeof, "xcb_glx_get_minmax_parameteriv_sizeof");

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
  -- ** xcb_glx_get_minmax_parameteriv_cookie_t xcb_glx_get_minmax_parameteriv
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_minmax_parameteriv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_minmax_parameteriv
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_minmax_parameteriv_cookie_t;  -- /usr/include/xcb/glx.h:12752
   pragma Import (C, xcb_glx_get_minmax_parameteriv, "xcb_glx_get_minmax_parameteriv");

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
  -- ** xcb_glx_get_minmax_parameteriv_cookie_t xcb_glx_get_minmax_parameteriv_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_minmax_parameteriv_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_minmax_parameteriv_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_minmax_parameteriv_cookie_t;  -- /usr/include/xcb/glx.h:12782
   pragma Import (C, xcb_glx_get_minmax_parameteriv_unchecked, "xcb_glx_get_minmax_parameteriv_unchecked");

  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** int32_t * xcb_glx_get_minmax_parameteriv_data
  -- ** 
  -- ** @param const xcb_glx_get_minmax_parameteriv_reply_t *R
  -- ** @returns int32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_minmax_parameteriv_data (arg1 : System.Address) return access sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:12798
   pragma Import (C, xcb_glx_get_minmax_parameteriv_data, "xcb_glx_get_minmax_parameteriv_data");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_get_minmax_parameteriv_data_length
  -- ** 
  -- ** @param const xcb_glx_get_minmax_parameteriv_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_minmax_parameteriv_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:12811
   pragma Import (C, xcb_glx_get_minmax_parameteriv_data_length, "xcb_glx_get_minmax_parameteriv_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_get_minmax_parameteriv_data_end
  -- ** 
  -- ** @param const xcb_glx_get_minmax_parameteriv_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_minmax_parameteriv_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:12824
   pragma Import (C, xcb_glx_get_minmax_parameteriv_data_end, "xcb_glx_get_minmax_parameteriv_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_get_minmax_parameteriv_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_minmax_parameteriv_reply_t * xcb_glx_get_minmax_parameteriv_reply
  -- ** 
  -- ** @param xcb_connection_t                         *c
  -- ** @param xcb_glx_get_minmax_parameteriv_cookie_t   cookie
  -- ** @param xcb_generic_error_t                     **e
  -- ** @returns xcb_glx_get_minmax_parameteriv_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_minmax_parameteriv_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_minmax_parameteriv_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_minmax_parameteriv_reply_t;  -- /usr/include/xcb/glx.h:12853
   pragma Import (C, xcb_glx_get_minmax_parameteriv_reply, "xcb_glx_get_minmax_parameteriv_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_get_compressed_tex_image_arb_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:12858
   pragma Import (C, xcb_glx_get_compressed_tex_image_arb_sizeof, "xcb_glx_get_compressed_tex_image_arb_sizeof");

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
  -- ** xcb_glx_get_compressed_tex_image_arb_cookie_t xcb_glx_get_compressed_tex_image_arb
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param int32_t                level
  -- ** @returns xcb_glx_get_compressed_tex_image_arb_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_compressed_tex_image_arb
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : sys_types_h.int32_t) return xcb_glx_get_compressed_tex_image_arb_cookie_t;  -- /usr/include/xcb/glx.h:12882
   pragma Import (C, xcb_glx_get_compressed_tex_image_arb, "xcb_glx_get_compressed_tex_image_arb");

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
  -- ** xcb_glx_get_compressed_tex_image_arb_cookie_t xcb_glx_get_compressed_tex_image_arb_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param int32_t                level
  -- ** @returns xcb_glx_get_compressed_tex_image_arb_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_compressed_tex_image_arb_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : sys_types_h.int32_t) return xcb_glx_get_compressed_tex_image_arb_cookie_t;  -- /usr/include/xcb/glx.h:12912
   pragma Import (C, xcb_glx_get_compressed_tex_image_arb_unchecked, "xcb_glx_get_compressed_tex_image_arb_unchecked");

  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** uint8_t * xcb_glx_get_compressed_tex_image_arb_data
  -- ** 
  -- ** @param const xcb_glx_get_compressed_tex_image_arb_reply_t *R
  -- ** @returns uint8_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_compressed_tex_image_arb_data (arg1 : System.Address) return access stdint_h.uint8_t;  -- /usr/include/xcb/glx.h:12928
   pragma Import (C, xcb_glx_get_compressed_tex_image_arb_data, "xcb_glx_get_compressed_tex_image_arb_data");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_get_compressed_tex_image_arb_data_length
  -- ** 
  -- ** @param const xcb_glx_get_compressed_tex_image_arb_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_compressed_tex_image_arb_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:12941
   pragma Import (C, xcb_glx_get_compressed_tex_image_arb_data_length, "xcb_glx_get_compressed_tex_image_arb_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_get_compressed_tex_image_arb_data_end
  -- ** 
  -- ** @param const xcb_glx_get_compressed_tex_image_arb_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_compressed_tex_image_arb_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:12954
   pragma Import (C, xcb_glx_get_compressed_tex_image_arb_data_end, "xcb_glx_get_compressed_tex_image_arb_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_get_compressed_tex_image_arb_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_compressed_tex_image_arb_reply_t * xcb_glx_get_compressed_tex_image_arb_reply
  -- ** 
  -- ** @param xcb_connection_t                               *c
  -- ** @param xcb_glx_get_compressed_tex_image_arb_cookie_t   cookie
  -- ** @param xcb_generic_error_t                           **e
  -- ** @returns xcb_glx_get_compressed_tex_image_arb_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_compressed_tex_image_arb_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_compressed_tex_image_arb_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_compressed_tex_image_arb_reply_t;  -- /usr/include/xcb/glx.h:12983
   pragma Import (C, xcb_glx_get_compressed_tex_image_arb_reply, "xcb_glx_get_compressed_tex_image_arb_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_delete_queries_arb_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:12988
   pragma Import (C, xcb_glx_delete_queries_arb_sizeof, "xcb_glx_delete_queries_arb_sizeof");

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
  -- ** xcb_void_cookie_t xcb_glx_delete_queries_arb_checked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param int32_t                n
  -- ** @param const uint32_t        *ids
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_delete_queries_arb_checked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : sys_types_h.int32_t;
      arg4 : access stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:13015
   pragma Import (C, xcb_glx_delete_queries_arb_checked, "xcb_glx_delete_queries_arb_checked");

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
  -- ** xcb_void_cookie_t xcb_glx_delete_queries_arb
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param int32_t                n
  -- ** @param const uint32_t        *ids
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_delete_queries_arb
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : sys_types_h.int32_t;
      arg4 : access stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/glx.h:13042
   pragma Import (C, xcb_glx_delete_queries_arb, "xcb_glx_delete_queries_arb");

  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_glx_gen_queries_arb_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:13048
   pragma Import (C, xcb_glx_gen_queries_arb_sizeof, "xcb_glx_gen_queries_arb_sizeof");

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
  -- ** xcb_glx_gen_queries_arb_cookie_t xcb_glx_gen_queries_arb
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param int32_t                n
  -- ** @returns xcb_glx_gen_queries_arb_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_gen_queries_arb
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : sys_types_h.int32_t) return xcb_glx_gen_queries_arb_cookie_t;  -- /usr/include/xcb/glx.h:13071
   pragma Import (C, xcb_glx_gen_queries_arb, "xcb_glx_gen_queries_arb");

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
  -- ** xcb_glx_gen_queries_arb_cookie_t xcb_glx_gen_queries_arb_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param int32_t                n
  -- ** @returns xcb_glx_gen_queries_arb_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_gen_queries_arb_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : sys_types_h.int32_t) return xcb_glx_gen_queries_arb_cookie_t;  -- /usr/include/xcb/glx.h:13099
   pragma Import (C, xcb_glx_gen_queries_arb_unchecked, "xcb_glx_gen_queries_arb_unchecked");

  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** uint32_t * xcb_glx_gen_queries_arb_data
  -- ** 
  -- ** @param const xcb_glx_gen_queries_arb_reply_t *R
  -- ** @returns uint32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_gen_queries_arb_data (arg1 : System.Address) return access stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:13114
   pragma Import (C, xcb_glx_gen_queries_arb_data, "xcb_glx_gen_queries_arb_data");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_gen_queries_arb_data_length
  -- ** 
  -- ** @param const xcb_glx_gen_queries_arb_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_gen_queries_arb_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:13127
   pragma Import (C, xcb_glx_gen_queries_arb_data_length, "xcb_glx_gen_queries_arb_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_gen_queries_arb_data_end
  -- ** 
  -- ** @param const xcb_glx_gen_queries_arb_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_gen_queries_arb_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:13140
   pragma Import (C, xcb_glx_gen_queries_arb_data_end, "xcb_glx_gen_queries_arb_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_gen_queries_arb_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_gen_queries_arb_reply_t * xcb_glx_gen_queries_arb_reply
  -- ** 
  -- ** @param xcb_connection_t                  *c
  -- ** @param xcb_glx_gen_queries_arb_cookie_t   cookie
  -- ** @param xcb_generic_error_t              **e
  -- ** @returns xcb_glx_gen_queries_arb_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_gen_queries_arb_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_gen_queries_arb_cookie_t;
      arg3 : System.Address) return access xcb_glx_gen_queries_arb_reply_t;  -- /usr/include/xcb/glx.h:13169
   pragma Import (C, xcb_glx_gen_queries_arb_reply, "xcb_glx_gen_queries_arb_reply");

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
  -- ** xcb_glx_is_query_arb_cookie_t xcb_glx_is_query_arb
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               id
  -- ** @returns xcb_glx_is_query_arb_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_is_query_arb
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t) return xcb_glx_is_query_arb_cookie_t;  -- /usr/include/xcb/glx.h:13194
   pragma Import (C, xcb_glx_is_query_arb, "xcb_glx_is_query_arb");

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
  -- ** xcb_glx_is_query_arb_cookie_t xcb_glx_is_query_arb_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               id
  -- ** @returns xcb_glx_is_query_arb_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_is_query_arb_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t) return xcb_glx_is_query_arb_cookie_t;  -- /usr/include/xcb/glx.h:13222
   pragma Import (C, xcb_glx_is_query_arb_unchecked, "xcb_glx_is_query_arb_unchecked");

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
  -- * xcb_glx_is_query_arb_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_is_query_arb_reply_t * xcb_glx_is_query_arb_reply
  -- ** 
  -- ** @param xcb_connection_t               *c
  -- ** @param xcb_glx_is_query_arb_cookie_t   cookie
  -- ** @param xcb_generic_error_t           **e
  -- ** @returns xcb_glx_is_query_arb_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_is_query_arb_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_is_query_arb_cookie_t;
      arg3 : System.Address) return access xcb_glx_is_query_arb_reply_t;  -- /usr/include/xcb/glx.h:13253
   pragma Import (C, xcb_glx_is_query_arb_reply, "xcb_glx_is_query_arb_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_get_queryiv_arb_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:13258
   pragma Import (C, xcb_glx_get_queryiv_arb_sizeof, "xcb_glx_get_queryiv_arb_sizeof");

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
  -- ** xcb_glx_get_queryiv_arb_cookie_t xcb_glx_get_queryiv_arb
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_queryiv_arb_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_queryiv_arb
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_queryiv_arb_cookie_t;  -- /usr/include/xcb/glx.h:13282
   pragma Import (C, xcb_glx_get_queryiv_arb, "xcb_glx_get_queryiv_arb");

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
  -- ** xcb_glx_get_queryiv_arb_cookie_t xcb_glx_get_queryiv_arb_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               target
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_queryiv_arb_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_queryiv_arb_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_queryiv_arb_cookie_t;  -- /usr/include/xcb/glx.h:13312
   pragma Import (C, xcb_glx_get_queryiv_arb_unchecked, "xcb_glx_get_queryiv_arb_unchecked");

  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** int32_t * xcb_glx_get_queryiv_arb_data
  -- ** 
  -- ** @param const xcb_glx_get_queryiv_arb_reply_t *R
  -- ** @returns int32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_queryiv_arb_data (arg1 : System.Address) return access sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:13328
   pragma Import (C, xcb_glx_get_queryiv_arb_data, "xcb_glx_get_queryiv_arb_data");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_get_queryiv_arb_data_length
  -- ** 
  -- ** @param const xcb_glx_get_queryiv_arb_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_queryiv_arb_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:13341
   pragma Import (C, xcb_glx_get_queryiv_arb_data_length, "xcb_glx_get_queryiv_arb_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_get_queryiv_arb_data_end
  -- ** 
  -- ** @param const xcb_glx_get_queryiv_arb_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_queryiv_arb_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:13354
   pragma Import (C, xcb_glx_get_queryiv_arb_data_end, "xcb_glx_get_queryiv_arb_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_get_queryiv_arb_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_queryiv_arb_reply_t * xcb_glx_get_queryiv_arb_reply
  -- ** 
  -- ** @param xcb_connection_t                  *c
  -- ** @param xcb_glx_get_queryiv_arb_cookie_t   cookie
  -- ** @param xcb_generic_error_t              **e
  -- ** @returns xcb_glx_get_queryiv_arb_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_queryiv_arb_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_queryiv_arb_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_queryiv_arb_reply_t;  -- /usr/include/xcb/glx.h:13383
   pragma Import (C, xcb_glx_get_queryiv_arb_reply, "xcb_glx_get_queryiv_arb_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_get_query_objectiv_arb_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:13388
   pragma Import (C, xcb_glx_get_query_objectiv_arb_sizeof, "xcb_glx_get_query_objectiv_arb_sizeof");

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
  -- ** xcb_glx_get_query_objectiv_arb_cookie_t xcb_glx_get_query_objectiv_arb
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               id
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_query_objectiv_arb_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_query_objectiv_arb
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_query_objectiv_arb_cookie_t;  -- /usr/include/xcb/glx.h:13412
   pragma Import (C, xcb_glx_get_query_objectiv_arb, "xcb_glx_get_query_objectiv_arb");

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
  -- ** xcb_glx_get_query_objectiv_arb_cookie_t xcb_glx_get_query_objectiv_arb_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               id
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_query_objectiv_arb_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_query_objectiv_arb_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_query_objectiv_arb_cookie_t;  -- /usr/include/xcb/glx.h:13442
   pragma Import (C, xcb_glx_get_query_objectiv_arb_unchecked, "xcb_glx_get_query_objectiv_arb_unchecked");

  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** int32_t * xcb_glx_get_query_objectiv_arb_data
  -- ** 
  -- ** @param const xcb_glx_get_query_objectiv_arb_reply_t *R
  -- ** @returns int32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_query_objectiv_arb_data (arg1 : System.Address) return access sys_types_h.int32_t;  -- /usr/include/xcb/glx.h:13458
   pragma Import (C, xcb_glx_get_query_objectiv_arb_data, "xcb_glx_get_query_objectiv_arb_data");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_get_query_objectiv_arb_data_length
  -- ** 
  -- ** @param const xcb_glx_get_query_objectiv_arb_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_query_objectiv_arb_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:13471
   pragma Import (C, xcb_glx_get_query_objectiv_arb_data_length, "xcb_glx_get_query_objectiv_arb_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_get_query_objectiv_arb_data_end
  -- ** 
  -- ** @param const xcb_glx_get_query_objectiv_arb_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_query_objectiv_arb_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:13484
   pragma Import (C, xcb_glx_get_query_objectiv_arb_data_end, "xcb_glx_get_query_objectiv_arb_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_get_query_objectiv_arb_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_query_objectiv_arb_reply_t * xcb_glx_get_query_objectiv_arb_reply
  -- ** 
  -- ** @param xcb_connection_t                         *c
  -- ** @param xcb_glx_get_query_objectiv_arb_cookie_t   cookie
  -- ** @param xcb_generic_error_t                     **e
  -- ** @returns xcb_glx_get_query_objectiv_arb_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_query_objectiv_arb_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_query_objectiv_arb_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_query_objectiv_arb_reply_t;  -- /usr/include/xcb/glx.h:13513
   pragma Import (C, xcb_glx_get_query_objectiv_arb_reply, "xcb_glx_get_query_objectiv_arb_reply");

  --*<  
  --*<  
  --*<  
   function xcb_glx_get_query_objectuiv_arb_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:13518
   pragma Import (C, xcb_glx_get_query_objectuiv_arb_sizeof, "xcb_glx_get_query_objectuiv_arb_sizeof");

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
  -- ** xcb_glx_get_query_objectuiv_arb_cookie_t xcb_glx_get_query_objectuiv_arb
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               id
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_query_objectuiv_arb_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_query_objectuiv_arb
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_query_objectuiv_arb_cookie_t;  -- /usr/include/xcb/glx.h:13542
   pragma Import (C, xcb_glx_get_query_objectuiv_arb, "xcb_glx_get_query_objectuiv_arb");

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
  -- ** xcb_glx_get_query_objectuiv_arb_cookie_t xcb_glx_get_query_objectuiv_arb_unchecked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_glx_context_tag_t  context_tag
  -- ** @param uint32_t               id
  -- ** @param uint32_t               pname
  -- ** @returns xcb_glx_get_query_objectuiv_arb_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_query_objectuiv_arb_unchecked
     (arg1 : System.Address;
      arg2 : xcb_glx_context_tag_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_glx_get_query_objectuiv_arb_cookie_t;  -- /usr/include/xcb/glx.h:13572
   pragma Import (C, xcb_glx_get_query_objectuiv_arb_unchecked, "xcb_glx_get_query_objectuiv_arb_unchecked");

  --*<  
  --*<  
  --*<  
  --****************************************************************************
  -- **
  -- ** uint32_t * xcb_glx_get_query_objectuiv_arb_data
  -- ** 
  -- ** @param const xcb_glx_get_query_objectuiv_arb_reply_t *R
  -- ** @returns uint32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_query_objectuiv_arb_data (arg1 : System.Address) return access stdint_h.uint32_t;  -- /usr/include/xcb/glx.h:13588
   pragma Import (C, xcb_glx_get_query_objectuiv_arb_data, "xcb_glx_get_query_objectuiv_arb_data");

  --****************************************************************************
  -- **
  -- ** int xcb_glx_get_query_objectuiv_arb_data_length
  -- ** 
  -- ** @param const xcb_glx_get_query_objectuiv_arb_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_query_objectuiv_arb_data_length (arg1 : System.Address) return int;  -- /usr/include/xcb/glx.h:13601
   pragma Import (C, xcb_glx_get_query_objectuiv_arb_data_length, "xcb_glx_get_query_objectuiv_arb_data_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_glx_get_query_objectuiv_arb_data_end
  -- ** 
  -- ** @param const xcb_glx_get_query_objectuiv_arb_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_query_objectuiv_arb_data_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/glx.h:13614
   pragma Import (C, xcb_glx_get_query_objectuiv_arb_data_end, "xcb_glx_get_query_objectuiv_arb_data_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_glx_get_query_objectuiv_arb_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_glx_get_query_objectuiv_arb_reply_t * xcb_glx_get_query_objectuiv_arb_reply
  -- ** 
  -- ** @param xcb_connection_t                          *c
  -- ** @param xcb_glx_get_query_objectuiv_arb_cookie_t   cookie
  -- ** @param xcb_generic_error_t                      **e
  -- ** @returns xcb_glx_get_query_objectuiv_arb_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_glx_get_query_objectuiv_arb_reply
     (arg1 : System.Address;
      arg2 : xcb_glx_get_query_objectuiv_arb_cookie_t;
      arg3 : System.Address) return access xcb_glx_get_query_objectuiv_arb_reply_t;  -- /usr/include/xcb/glx.h:13643
   pragma Import (C, xcb_glx_get_query_objectuiv_arb_reply, "xcb_glx_get_query_objectuiv_arb_reply");

  --*<  
  --*<  
  --*
  -- * @}
  --  

end xcb_glx_h;
