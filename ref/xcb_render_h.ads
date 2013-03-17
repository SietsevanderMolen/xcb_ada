with Interfaces.C; use Interfaces.C;
with xcb_xcb_h;
with stdint_h;
with sys_types_h;
with xcb_xproto_h;
with System;
with Interfaces.C.Strings;

package xcb_render_h is

   --  unsupported macro: XCB_RENDER_MAJOR_VERSION 0
   --  unsupported macro: XCB_RENDER_MINOR_VERSION 11
   --  unsupported macro: XCB_RENDER_PICT_FORMAT 0
   --  unsupported macro: XCB_RENDER_PICTURE 1
   --  unsupported macro: XCB_RENDER_PICT_OP 2
   --  unsupported macro: XCB_RENDER_GLYPH_SET 3
   --  unsupported macro: XCB_RENDER_GLYPH 4
   --  unsupported macro: XCB_RENDER_QUERY_VERSION 0
   --  unsupported macro: XCB_RENDER_QUERY_PICT_FORMATS 1
   --  unsupported macro: XCB_RENDER_QUERY_PICT_INDEX_VALUES 2
   --  unsupported macro: XCB_RENDER_CREATE_PICTURE 4
   --  unsupported macro: XCB_RENDER_CHANGE_PICTURE 5
   --  unsupported macro: XCB_RENDER_SET_PICTURE_CLIP_RECTANGLES 6
   --  unsupported macro: XCB_RENDER_FREE_PICTURE 7
   --  unsupported macro: XCB_RENDER_COMPOSITE 8
   --  unsupported macro: XCB_RENDER_TRAPEZOIDS 10
   --  unsupported macro: XCB_RENDER_TRIANGLES 11
   --  unsupported macro: XCB_RENDER_TRI_STRIP 12
   --  unsupported macro: XCB_RENDER_TRI_FAN 13
   --  unsupported macro: XCB_RENDER_CREATE_GLYPH_SET 17
   --  unsupported macro: XCB_RENDER_REFERENCE_GLYPH_SET 18
   --  unsupported macro: XCB_RENDER_FREE_GLYPH_SET 19
   --  unsupported macro: XCB_RENDER_ADD_GLYPHS 20
   --  unsupported macro: XCB_RENDER_FREE_GLYPHS 22
   --  unsupported macro: XCB_RENDER_COMPOSITE_GLYPHS_8 23
   --  unsupported macro: XCB_RENDER_COMPOSITE_GLYPHS_16 24
   --  unsupported macro: XCB_RENDER_COMPOSITE_GLYPHS_32 25
   --  unsupported macro: XCB_RENDER_FILL_RECTANGLES 26
   --  unsupported macro: XCB_RENDER_CREATE_CURSOR 27
   --  unsupported macro: XCB_RENDER_SET_PICTURE_TRANSFORM 28
   --  unsupported macro: XCB_RENDER_QUERY_FILTERS 29
   --  unsupported macro: XCB_RENDER_SET_PICTURE_FILTER 30
   --  unsupported macro: XCB_RENDER_CREATE_ANIM_CURSOR 31
   --  unsupported macro: XCB_RENDER_ADD_TRAPS 32
   --  unsupported macro: XCB_RENDER_CREATE_SOLID_FILL 33
   --  unsupported macro: XCB_RENDER_CREATE_LINEAR_GRADIENT 34
   --  unsupported macro: XCB_RENDER_CREATE_RADIAL_GRADIENT 35
   --  unsupported macro: XCB_RENDER_CREATE_CONICAL_GRADIENT 36
  -- * This file generated automatically from render.xml by c_client.py.
  -- * Edit at your peril.
  --  

  --*
  -- * @defgroup XCB_Render_API XCB Render API
  -- * @brief Render XCB Protocol Implementation.
  -- * @{
  -- * 

   xcb_render_id : aliased xcb_xcb_h.xcb_extension_t;  -- /usr/include/xcb/render.h:25
   pragma Import (C, xcb_render_id, "xcb_render_id");

   type xcb_render_pict_type_t is 
     (XCB_RENDER_PICT_TYPE_INDEXED,
      XCB_RENDER_PICT_TYPE_DIRECT);
   pragma Convention (C, xcb_render_pict_type_t);  -- /usr/include/xcb/render.h:27

   type xcb_render_picture_enum_t is 
     (XCB_RENDER_PICTURE_NONE);
   pragma Convention (C, xcb_render_picture_enum_t);  -- /usr/include/xcb/render.h:32

   subtype xcb_render_pict_op_t is unsigned;
   XCB_RENDER_PICT_OP_CLEAR : constant xcb_render_pict_op_t := 0;
   XCB_RENDER_PICT_OP_SRC : constant xcb_render_pict_op_t := 1;
   XCB_RENDER_PICT_OP_DST : constant xcb_render_pict_op_t := 2;
   XCB_RENDER_PICT_OP_OVER : constant xcb_render_pict_op_t := 3;
   XCB_RENDER_PICT_OP_OVER_REVERSE : constant xcb_render_pict_op_t := 4;
   XCB_RENDER_PICT_OP_IN : constant xcb_render_pict_op_t := 5;
   XCB_RENDER_PICT_OP_IN_REVERSE : constant xcb_render_pict_op_t := 6;
   XCB_RENDER_PICT_OP_OUT : constant xcb_render_pict_op_t := 7;
   XCB_RENDER_PICT_OP_OUT_REVERSE : constant xcb_render_pict_op_t := 8;
   XCB_RENDER_PICT_OP_ATOP : constant xcb_render_pict_op_t := 9;
   XCB_RENDER_PICT_OP_ATOP_REVERSE : constant xcb_render_pict_op_t := 10;
   XCB_RENDER_PICT_OP_XOR : constant xcb_render_pict_op_t := 11;
   XCB_RENDER_PICT_OP_ADD : constant xcb_render_pict_op_t := 12;
   XCB_RENDER_PICT_OP_SATURATE : constant xcb_render_pict_op_t := 13;
   XCB_RENDER_PICT_OP_DISJOINT_CLEAR : constant xcb_render_pict_op_t := 16;
   XCB_RENDER_PICT_OP_DISJOINT_SRC : constant xcb_render_pict_op_t := 17;
   XCB_RENDER_PICT_OP_DISJOINT_DST : constant xcb_render_pict_op_t := 18;
   XCB_RENDER_PICT_OP_DISJOINT_OVER : constant xcb_render_pict_op_t := 19;
   XCB_RENDER_PICT_OP_DISJOINT_OVER_REVERSE : constant xcb_render_pict_op_t := 20;
   XCB_RENDER_PICT_OP_DISJOINT_IN : constant xcb_render_pict_op_t := 21;
   XCB_RENDER_PICT_OP_DISJOINT_IN_REVERSE : constant xcb_render_pict_op_t := 22;
   XCB_RENDER_PICT_OP_DISJOINT_OUT : constant xcb_render_pict_op_t := 23;
   XCB_RENDER_PICT_OP_DISJOINT_OUT_REVERSE : constant xcb_render_pict_op_t := 24;
   XCB_RENDER_PICT_OP_DISJOINT_ATOP : constant xcb_render_pict_op_t := 25;
   XCB_RENDER_PICT_OP_DISJOINT_ATOP_REVERSE : constant xcb_render_pict_op_t := 26;
   XCB_RENDER_PICT_OP_DISJOINT_XOR : constant xcb_render_pict_op_t := 27;
   XCB_RENDER_PICT_OP_CONJOINT_CLEAR : constant xcb_render_pict_op_t := 32;
   XCB_RENDER_PICT_OP_CONJOINT_SRC : constant xcb_render_pict_op_t := 33;
   XCB_RENDER_PICT_OP_CONJOINT_DST : constant xcb_render_pict_op_t := 34;
   XCB_RENDER_PICT_OP_CONJOINT_OVER : constant xcb_render_pict_op_t := 35;
   XCB_RENDER_PICT_OP_CONJOINT_OVER_REVERSE : constant xcb_render_pict_op_t := 36;
   XCB_RENDER_PICT_OP_CONJOINT_IN : constant xcb_render_pict_op_t := 37;
   XCB_RENDER_PICT_OP_CONJOINT_IN_REVERSE : constant xcb_render_pict_op_t := 38;
   XCB_RENDER_PICT_OP_CONJOINT_OUT : constant xcb_render_pict_op_t := 39;
   XCB_RENDER_PICT_OP_CONJOINT_OUT_REVERSE : constant xcb_render_pict_op_t := 40;
   XCB_RENDER_PICT_OP_CONJOINT_ATOP : constant xcb_render_pict_op_t := 41;
   XCB_RENDER_PICT_OP_CONJOINT_ATOP_REVERSE : constant xcb_render_pict_op_t := 42;
   XCB_RENDER_PICT_OP_CONJOINT_XOR : constant xcb_render_pict_op_t := 43;
   XCB_RENDER_PICT_OP_MULTIPLY : constant xcb_render_pict_op_t := 48;
   XCB_RENDER_PICT_OP_SCREEN : constant xcb_render_pict_op_t := 49;
   XCB_RENDER_PICT_OP_OVERLAY : constant xcb_render_pict_op_t := 50;
   XCB_RENDER_PICT_OP_DARKEN : constant xcb_render_pict_op_t := 51;
   XCB_RENDER_PICT_OP_LIGHTEN : constant xcb_render_pict_op_t := 52;
   XCB_RENDER_PICT_OP_COLOR_DODGE : constant xcb_render_pict_op_t := 53;
   XCB_RENDER_PICT_OP_COLOR_BURN : constant xcb_render_pict_op_t := 54;
   XCB_RENDER_PICT_OP_HARD_LIGHT : constant xcb_render_pict_op_t := 55;
   XCB_RENDER_PICT_OP_SOFT_LIGHT : constant xcb_render_pict_op_t := 56;
   XCB_RENDER_PICT_OP_DIFFERENCE : constant xcb_render_pict_op_t := 57;
   XCB_RENDER_PICT_OP_EXCLUSION : constant xcb_render_pict_op_t := 58;
   XCB_RENDER_PICT_OP_HSL_HUE : constant xcb_render_pict_op_t := 59;
   XCB_RENDER_PICT_OP_HSL_SATURATION : constant xcb_render_pict_op_t := 60;
   XCB_RENDER_PICT_OP_HSL_COLOR : constant xcb_render_pict_op_t := 61;
   XCB_RENDER_PICT_OP_HSL_LUMINOSITY : constant xcb_render_pict_op_t := 62;  -- /usr/include/xcb/render.h:36

   type xcb_render_poly_edge_t is 
     (XCB_RENDER_POLY_EDGE_SHARP,
      XCB_RENDER_POLY_EDGE_SMOOTH);
   pragma Convention (C, xcb_render_poly_edge_t);  -- /usr/include/xcb/render.h:92

   type xcb_render_poly_mode_t is 
     (XCB_RENDER_POLY_MODE_PRECISE,
      XCB_RENDER_POLY_MODE_IMPRECISE);
   pragma Convention (C, xcb_render_poly_mode_t);  -- /usr/include/xcb/render.h:97

   subtype xcb_render_cp_t is unsigned;
   XCB_RENDER_CP_REPEAT : constant xcb_render_cp_t := 1;
   XCB_RENDER_CP_ALPHA_MAP : constant xcb_render_cp_t := 2;
   XCB_RENDER_CP_ALPHA_X_ORIGIN : constant xcb_render_cp_t := 4;
   XCB_RENDER_CP_ALPHA_Y_ORIGIN : constant xcb_render_cp_t := 8;
   XCB_RENDER_CP_CLIP_X_ORIGIN : constant xcb_render_cp_t := 16;
   XCB_RENDER_CP_CLIP_Y_ORIGIN : constant xcb_render_cp_t := 32;
   XCB_RENDER_CP_CLIP_MASK : constant xcb_render_cp_t := 64;
   XCB_RENDER_CP_GRAPHICS_EXPOSURE : constant xcb_render_cp_t := 128;
   XCB_RENDER_CP_SUBWINDOW_MODE : constant xcb_render_cp_t := 256;
   XCB_RENDER_CP_POLY_EDGE : constant xcb_render_cp_t := 512;
   XCB_RENDER_CP_POLY_MODE : constant xcb_render_cp_t := 1024;
   XCB_RENDER_CP_DITHER : constant xcb_render_cp_t := 2048;
   XCB_RENDER_CP_COMPONENT_ALPHA : constant xcb_render_cp_t := 4096;  -- /usr/include/xcb/render.h:102

   type xcb_render_sub_pixel_t is 
     (XCB_RENDER_SUB_PIXEL_UNKNOWN,
      XCB_RENDER_SUB_PIXEL_HORIZONTAL_RGB,
      XCB_RENDER_SUB_PIXEL_HORIZONTAL_BGR,
      XCB_RENDER_SUB_PIXEL_VERTICAL_RGB,
      XCB_RENDER_SUB_PIXEL_VERTICAL_BGR,
      XCB_RENDER_SUB_PIXEL_NONE);
   pragma Convention (C, xcb_render_sub_pixel_t);  -- /usr/include/xcb/render.h:118

   type xcb_render_repeat_t is 
     (XCB_RENDER_REPEAT_NONE,
      XCB_RENDER_REPEAT_NORMAL,
      XCB_RENDER_REPEAT_PAD,
      XCB_RENDER_REPEAT_REFLECT);
   pragma Convention (C, xcb_render_repeat_t);  -- /usr/include/xcb/render.h:127

   subtype xcb_render_glyph_t is stdint_h.uint32_t;  -- /usr/include/xcb/render.h:134

  --*
  -- * @brief xcb_render_glyph_iterator_t
  -- * 

  --*<   
   type xcb_render_glyph_iterator_t is record
      data : access xcb_render_glyph_t;  -- /usr/include/xcb/render.h:140
      c_rem : aliased int;  -- /usr/include/xcb/render.h:141
      index : aliased int;  -- /usr/include/xcb/render.h:142
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_glyph_iterator_t);  -- /usr/include/xcb/render.h:139

  --*<   
  --*<   
   subtype xcb_render_glyphset_t is stdint_h.uint32_t;  -- /usr/include/xcb/render.h:145

  --*
  -- * @brief xcb_render_glyphset_iterator_t
  -- * 

  --*<   
   type xcb_render_glyphset_iterator_t is record
      data : access xcb_render_glyphset_t;  -- /usr/include/xcb/render.h:151
      c_rem : aliased int;  -- /usr/include/xcb/render.h:152
      index : aliased int;  -- /usr/include/xcb/render.h:153
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_glyphset_iterator_t);  -- /usr/include/xcb/render.h:150

  --*<   
  --*<   
   subtype xcb_render_picture_t is stdint_h.uint32_t;  -- /usr/include/xcb/render.h:156

  --*
  -- * @brief xcb_render_picture_iterator_t
  -- * 

  --*<   
   type xcb_render_picture_iterator_t is record
      data : access xcb_render_picture_t;  -- /usr/include/xcb/render.h:162
      c_rem : aliased int;  -- /usr/include/xcb/render.h:163
      index : aliased int;  -- /usr/include/xcb/render.h:164
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_picture_iterator_t);  -- /usr/include/xcb/render.h:161

  --*<   
  --*<   
   subtype xcb_render_pictformat_t is stdint_h.uint32_t;  -- /usr/include/xcb/render.h:167

  --*
  -- * @brief xcb_render_pictformat_iterator_t
  -- * 

  --*<   
   type xcb_render_pictformat_iterator_t is record
      data : access xcb_render_pictformat_t;  -- /usr/include/xcb/render.h:173
      c_rem : aliased int;  -- /usr/include/xcb/render.h:174
      index : aliased int;  -- /usr/include/xcb/render.h:175
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_pictformat_iterator_t);  -- /usr/include/xcb/render.h:172

  --*<   
  --*<   
   subtype xcb_render_fixed_t is sys_types_h.int32_t;  -- /usr/include/xcb/render.h:178

  --*
  -- * @brief xcb_render_fixed_iterator_t
  -- * 

  --*<   
   type xcb_render_fixed_iterator_t is record
      data : access xcb_render_fixed_t;  -- /usr/include/xcb/render.h:184
      c_rem : aliased int;  -- /usr/include/xcb/render.h:185
      index : aliased int;  -- /usr/include/xcb/render.h:186
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_fixed_iterator_t);  -- /usr/include/xcb/render.h:183

  --*<   
  --*<   
  --* Opcode for xcb_render_pict_format.  
  --*
  -- * @brief xcb_render_pict_format_error_t
  -- * 

  --*<   
   type xcb_render_pict_format_error_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:196
      error_code : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:197
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:198
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_pict_format_error_t);  -- /usr/include/xcb/render.h:195

  --*<   
  --*<   
  --* Opcode for xcb_render_picture.  
  --*
  -- * @brief xcb_render_picture_error_t
  -- * 

  --*<   
   type xcb_render_picture_error_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:208
      error_code : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:209
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:210
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_picture_error_t);  -- /usr/include/xcb/render.h:207

  --*<   
  --*<   
  --* Opcode for xcb_render_pict_op.  
  --*
  -- * @brief xcb_render_pict_op_error_t
  -- * 

  --*<   
   type xcb_render_pict_op_error_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:220
      error_code : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:221
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:222
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_pict_op_error_t);  -- /usr/include/xcb/render.h:219

  --*<   
  --*<   
  --* Opcode for xcb_render_glyph_set.  
  --*
  -- * @brief xcb_render_glyph_set_error_t
  -- * 

  --*<   
   type xcb_render_glyph_set_error_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:232
      error_code : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:233
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:234
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_glyph_set_error_t);  -- /usr/include/xcb/render.h:231

  --*<   
  --*<   
  --* Opcode for xcb_render_glyph.  
  --*
  -- * @brief xcb_render_glyph_error_t
  -- * 

  --*<   
   type xcb_render_glyph_error_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:244
      error_code : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:245
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:246
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_glyph_error_t);  -- /usr/include/xcb/render.h:243

  --*<   
  --*<   
  --*
  -- * @brief xcb_render_directformat_t
  -- * 

  --*<   
   type xcb_render_directformat_t is record
      red_shift : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:253
      red_mask : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:254
      green_shift : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:255
      green_mask : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:256
      blue_shift : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:257
      blue_mask : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:258
      alpha_shift : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:259
      alpha_mask : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:260
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_directformat_t);  -- /usr/include/xcb/render.h:252

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_render_directformat_iterator_t
  -- * 

  --*<   
   type xcb_render_directformat_iterator_t is record
      data : access xcb_render_directformat_t;  -- /usr/include/xcb/render.h:267
      c_rem : aliased int;  -- /usr/include/xcb/render.h:268
      index : aliased int;  -- /usr/include/xcb/render.h:269
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_directformat_iterator_t);  -- /usr/include/xcb/render.h:266

  --*<   
  --*<   
  --*
  -- * @brief xcb_render_pictforminfo_t
  -- * 

  --*<   
   type anon4007_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_render_pictforminfo_t is record
      id : aliased xcb_render_pictformat_t;  -- /usr/include/xcb/render.h:276
      c_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:277
      depth : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:278
      pad0 : aliased anon4007_anon1795_array;  -- /usr/include/xcb/render.h:279
      direct : aliased xcb_render_directformat_t;  -- /usr/include/xcb/render.h:280
      colormap : aliased xcb_xproto_h.xcb_colormap_t;  -- /usr/include/xcb/render.h:281
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_pictforminfo_t);  -- /usr/include/xcb/render.h:275

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_render_pictforminfo_iterator_t
  -- * 

  --*<   
   type xcb_render_pictforminfo_iterator_t is record
      data : access xcb_render_pictforminfo_t;  -- /usr/include/xcb/render.h:288
      c_rem : aliased int;  -- /usr/include/xcb/render.h:289
      index : aliased int;  -- /usr/include/xcb/render.h:290
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_pictforminfo_iterator_t);  -- /usr/include/xcb/render.h:287

  --*<   
  --*<   
  --*
  -- * @brief xcb_render_pictvisual_t
  -- * 

  --*<   
   type xcb_render_pictvisual_t is record
      visual : aliased xcb_xproto_h.xcb_visualid_t;  -- /usr/include/xcb/render.h:297
      format : aliased xcb_render_pictformat_t;  -- /usr/include/xcb/render.h:298
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_pictvisual_t);  -- /usr/include/xcb/render.h:296

  --*<   
  --*
  -- * @brief xcb_render_pictvisual_iterator_t
  -- * 

  --*<   
   type xcb_render_pictvisual_iterator_t is record
      data : access xcb_render_pictvisual_t;  -- /usr/include/xcb/render.h:305
      c_rem : aliased int;  -- /usr/include/xcb/render.h:306
      index : aliased int;  -- /usr/include/xcb/render.h:307
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_pictvisual_iterator_t);  -- /usr/include/xcb/render.h:304

  --*<   
  --*<   
  --*
  -- * @brief xcb_render_pictdepth_t
  -- * 

  --*<   
   type anon4021_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type xcb_render_pictdepth_t is record
      depth : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:314
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:315
      num_visuals : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:316
      pad1 : aliased anon4021_anon1768_array;  -- /usr/include/xcb/render.h:317
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_pictdepth_t);  -- /usr/include/xcb/render.h:313

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_render_pictdepth_iterator_t
  -- * 

  --*<   
   type xcb_render_pictdepth_iterator_t is record
      data : access xcb_render_pictdepth_t;  -- /usr/include/xcb/render.h:324
      c_rem : aliased int;  -- /usr/include/xcb/render.h:325
      index : aliased int;  -- /usr/include/xcb/render.h:326
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_pictdepth_iterator_t);  -- /usr/include/xcb/render.h:323

  --*<   
  --*<   
  --*
  -- * @brief xcb_render_pictscreen_t
  -- * 

  --*<   
   type xcb_render_pictscreen_t is record
      num_depths : aliased stdint_h.uint32_t;  -- /usr/include/xcb/render.h:333
      fallback : aliased xcb_render_pictformat_t;  -- /usr/include/xcb/render.h:334
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_pictscreen_t);  -- /usr/include/xcb/render.h:332

  --*<   
  --*
  -- * @brief xcb_render_pictscreen_iterator_t
  -- * 

  --*<   
   type xcb_render_pictscreen_iterator_t is record
      data : access xcb_render_pictscreen_t;  -- /usr/include/xcb/render.h:341
      c_rem : aliased int;  -- /usr/include/xcb/render.h:342
      index : aliased int;  -- /usr/include/xcb/render.h:343
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_pictscreen_iterator_t);  -- /usr/include/xcb/render.h:340

  --*<   
  --*<   
  --*
  -- * @brief xcb_render_indexvalue_t
  -- * 

  --*<   
   type xcb_render_indexvalue_t is record
      pixel : aliased stdint_h.uint32_t;  -- /usr/include/xcb/render.h:350
      red : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:351
      green : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:352
      blue : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:353
      alpha : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:354
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_indexvalue_t);  -- /usr/include/xcb/render.h:349

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_render_indexvalue_iterator_t
  -- * 

  --*<   
   type xcb_render_indexvalue_iterator_t is record
      data : access xcb_render_indexvalue_t;  -- /usr/include/xcb/render.h:361
      c_rem : aliased int;  -- /usr/include/xcb/render.h:362
      index : aliased int;  -- /usr/include/xcb/render.h:363
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_indexvalue_iterator_t);  -- /usr/include/xcb/render.h:360

  --*<   
  --*<   
  --*
  -- * @brief xcb_render_color_t
  -- * 

  --*<   
   type xcb_render_color_t is record
      red : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:370
      green : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:371
      blue : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:372
      alpha : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:373
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_color_t);  -- /usr/include/xcb/render.h:369

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_render_color_iterator_t
  -- * 

  --*<   
   type xcb_render_color_iterator_t is record
      data : access xcb_render_color_t;  -- /usr/include/xcb/render.h:380
      c_rem : aliased int;  -- /usr/include/xcb/render.h:381
      index : aliased int;  -- /usr/include/xcb/render.h:382
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_color_iterator_t);  -- /usr/include/xcb/render.h:379

  --*<   
  --*<   
  --*
  -- * @brief xcb_render_pointfix_t
  -- * 

  --*<   
   type xcb_render_pointfix_t is record
      x : aliased xcb_render_fixed_t;  -- /usr/include/xcb/render.h:389
      y : aliased xcb_render_fixed_t;  -- /usr/include/xcb/render.h:390
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_pointfix_t);  -- /usr/include/xcb/render.h:388

  --*<   
  --*
  -- * @brief xcb_render_pointfix_iterator_t
  -- * 

  --*<   
   type xcb_render_pointfix_iterator_t is record
      data : access xcb_render_pointfix_t;  -- /usr/include/xcb/render.h:397
      c_rem : aliased int;  -- /usr/include/xcb/render.h:398
      index : aliased int;  -- /usr/include/xcb/render.h:399
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_pointfix_iterator_t);  -- /usr/include/xcb/render.h:396

  --*<   
  --*<   
  --*
  -- * @brief xcb_render_linefix_t
  -- * 

  --*<   
   type xcb_render_linefix_t is record
      p1 : aliased xcb_render_pointfix_t;  -- /usr/include/xcb/render.h:406
      p2 : aliased xcb_render_pointfix_t;  -- /usr/include/xcb/render.h:407
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_linefix_t);  -- /usr/include/xcb/render.h:405

  --*<   
  --*
  -- * @brief xcb_render_linefix_iterator_t
  -- * 

  --*<   
   type xcb_render_linefix_iterator_t is record
      data : access xcb_render_linefix_t;  -- /usr/include/xcb/render.h:414
      c_rem : aliased int;  -- /usr/include/xcb/render.h:415
      index : aliased int;  -- /usr/include/xcb/render.h:416
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_linefix_iterator_t);  -- /usr/include/xcb/render.h:413

  --*<   
  --*<   
  --*
  -- * @brief xcb_render_triangle_t
  -- * 

  --*<   
   type xcb_render_triangle_t is record
      p1 : aliased xcb_render_pointfix_t;  -- /usr/include/xcb/render.h:423
      p2 : aliased xcb_render_pointfix_t;  -- /usr/include/xcb/render.h:424
      p3 : aliased xcb_render_pointfix_t;  -- /usr/include/xcb/render.h:425
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_triangle_t);  -- /usr/include/xcb/render.h:422

  --*<   
  --*<   
  --*
  -- * @brief xcb_render_triangle_iterator_t
  -- * 

  --*<   
   type xcb_render_triangle_iterator_t is record
      data : access xcb_render_triangle_t;  -- /usr/include/xcb/render.h:432
      c_rem : aliased int;  -- /usr/include/xcb/render.h:433
      index : aliased int;  -- /usr/include/xcb/render.h:434
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_triangle_iterator_t);  -- /usr/include/xcb/render.h:431

  --*<   
  --*<   
  --*
  -- * @brief xcb_render_trapezoid_t
  -- * 

  --*<   
   type xcb_render_trapezoid_t is record
      top : aliased xcb_render_fixed_t;  -- /usr/include/xcb/render.h:441
      bottom : aliased xcb_render_fixed_t;  -- /usr/include/xcb/render.h:442
      left : aliased xcb_render_linefix_t;  -- /usr/include/xcb/render.h:443
      right : aliased xcb_render_linefix_t;  -- /usr/include/xcb/render.h:444
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_trapezoid_t);  -- /usr/include/xcb/render.h:440

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_render_trapezoid_iterator_t
  -- * 

  --*<   
   type xcb_render_trapezoid_iterator_t is record
      data : access xcb_render_trapezoid_t;  -- /usr/include/xcb/render.h:451
      c_rem : aliased int;  -- /usr/include/xcb/render.h:452
      index : aliased int;  -- /usr/include/xcb/render.h:453
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_trapezoid_iterator_t);  -- /usr/include/xcb/render.h:450

  --*<   
  --*<   
  --*
  -- * @brief xcb_render_glyphinfo_t
  -- * 

  --*<   
   type xcb_render_glyphinfo_t is record
      width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:460
      height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:461
      x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/render.h:462
      y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/render.h:463
      x_off : aliased sys_types_h.int16_t;  -- /usr/include/xcb/render.h:464
      y_off : aliased sys_types_h.int16_t;  -- /usr/include/xcb/render.h:465
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_glyphinfo_t);  -- /usr/include/xcb/render.h:459

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_render_glyphinfo_iterator_t
  -- * 

  --*<   
   type xcb_render_glyphinfo_iterator_t is record
      data : access xcb_render_glyphinfo_t;  -- /usr/include/xcb/render.h:472
      c_rem : aliased int;  -- /usr/include/xcb/render.h:473
      index : aliased int;  -- /usr/include/xcb/render.h:474
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_glyphinfo_iterator_t);  -- /usr/include/xcb/render.h:471

  --*<   
  --*<   
  --*
  -- * @brief xcb_render_query_version_cookie_t
  -- * 

  --*<   
   type xcb_render_query_version_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/render.h:481
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_query_version_cookie_t);  -- /usr/include/xcb/render.h:480

  --* Opcode for xcb_render_query_version.  
  --*
  -- * @brief xcb_render_query_version_request_t
  -- * 

  --*<   
   type xcb_render_query_version_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:491
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:492
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:493
      client_major_version : aliased stdint_h.uint32_t;  -- /usr/include/xcb/render.h:494
      client_minor_version : aliased stdint_h.uint32_t;  -- /usr/include/xcb/render.h:495
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_query_version_request_t);  -- /usr/include/xcb/render.h:490

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_render_query_version_reply_t
  -- * 

  --*<   
   type anon4081_anon4083_array is array (0 .. 15) of aliased stdint_h.uint8_t;
   type xcb_render_query_version_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:502
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:503
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:504
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/render.h:505
      major_version : aliased stdint_h.uint32_t;  -- /usr/include/xcb/render.h:506
      minor_version : aliased stdint_h.uint32_t;  -- /usr/include/xcb/render.h:507
      pad1 : aliased anon4081_anon4083_array;  -- /usr/include/xcb/render.h:508
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_query_version_reply_t);  -- /usr/include/xcb/render.h:501

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_render_query_pict_formats_cookie_t
  -- * 

  --*<   
   type xcb_render_query_pict_formats_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/render.h:515
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_query_pict_formats_cookie_t);  -- /usr/include/xcb/render.h:514

  --* Opcode for xcb_render_query_pict_formats.  
  --*
  -- * @brief xcb_render_query_pict_formats_request_t
  -- * 

  --*<   
   type xcb_render_query_pict_formats_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:525
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:526
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:527
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_query_pict_formats_request_t);  -- /usr/include/xcb/render.h:524

  --*<   
  --*<   
  --*
  -- * @brief xcb_render_query_pict_formats_reply_t
  -- * 

  --*<   
   type anon4090_anon1768_array is array (0 .. 3) of aliased stdint_h.uint8_t;
   type xcb_render_query_pict_formats_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:534
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:535
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:536
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/render.h:537
      num_formats : aliased stdint_h.uint32_t;  -- /usr/include/xcb/render.h:538
      num_screens : aliased stdint_h.uint32_t;  -- /usr/include/xcb/render.h:539
      num_depths : aliased stdint_h.uint32_t;  -- /usr/include/xcb/render.h:540
      num_visuals : aliased stdint_h.uint32_t;  -- /usr/include/xcb/render.h:541
      num_subpixel : aliased stdint_h.uint32_t;  -- /usr/include/xcb/render.h:542
      pad1 : aliased anon4090_anon1768_array;  -- /usr/include/xcb/render.h:543
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_query_pict_formats_reply_t);  -- /usr/include/xcb/render.h:533

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
  -- * @brief xcb_render_query_pict_index_values_cookie_t
  -- * 

  --*<   
   type xcb_render_query_pict_index_values_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/render.h:550
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_query_pict_index_values_cookie_t);  -- /usr/include/xcb/render.h:549

  --* Opcode for xcb_render_query_pict_index_values.  
  --*
  -- * @brief xcb_render_query_pict_index_values_request_t
  -- * 

  --*<   
   type xcb_render_query_pict_index_values_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:560
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:561
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:562
      format : aliased xcb_render_pictformat_t;  -- /usr/include/xcb/render.h:563
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_query_pict_index_values_request_t);  -- /usr/include/xcb/render.h:559

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_render_query_pict_index_values_reply_t
  -- * 

  --*<   
   type anon4098_anon1939_array is array (0 .. 19) of aliased stdint_h.uint8_t;
   type xcb_render_query_pict_index_values_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:570
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:571
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:572
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/render.h:573
      num_values : aliased stdint_h.uint32_t;  -- /usr/include/xcb/render.h:574
      pad1 : aliased anon4098_anon1939_array;  -- /usr/include/xcb/render.h:575
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_query_pict_index_values_reply_t);  -- /usr/include/xcb/render.h:569

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_render_create_picture.  
  --*
  -- * @brief xcb_render_create_picture_request_t
  -- * 

  --*<   
   type xcb_render_create_picture_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:585
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:586
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:587
      pid : aliased xcb_render_picture_t;  -- /usr/include/xcb/render.h:588
      drawable : aliased xcb_xproto_h.xcb_drawable_t;  -- /usr/include/xcb/render.h:589
      format : aliased xcb_render_pictformat_t;  -- /usr/include/xcb/render.h:590
      value_mask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/render.h:591
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_create_picture_request_t);  -- /usr/include/xcb/render.h:584

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_render_change_picture.  
  --*
  -- * @brief xcb_render_change_picture_request_t
  -- * 

  --*<   
   type xcb_render_change_picture_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:601
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:602
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:603
      picture : aliased xcb_render_picture_t;  -- /usr/include/xcb/render.h:604
      value_mask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/render.h:605
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_change_picture_request_t);  -- /usr/include/xcb/render.h:600

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_render_set_picture_clip_rectangles.  
  --*
  -- * @brief xcb_render_set_picture_clip_rectangles_request_t
  -- * 

  --*<   
   type xcb_render_set_picture_clip_rectangles_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:615
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:616
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:617
      picture : aliased xcb_render_picture_t;  -- /usr/include/xcb/render.h:618
      clip_x_origin : aliased sys_types_h.int16_t;  -- /usr/include/xcb/render.h:619
      clip_y_origin : aliased sys_types_h.int16_t;  -- /usr/include/xcb/render.h:620
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_set_picture_clip_rectangles_request_t);  -- /usr/include/xcb/render.h:614

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_render_free_picture.  
  --*
  -- * @brief xcb_render_free_picture_request_t
  -- * 

  --*<   
   type xcb_render_free_picture_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:630
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:631
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:632
      picture : aliased xcb_render_picture_t;  -- /usr/include/xcb/render.h:633
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_free_picture_request_t);  -- /usr/include/xcb/render.h:629

  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_render_composite.  
  --*
  -- * @brief xcb_render_composite_request_t
  -- * 

  --*<   
   type anon4110_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_render_composite_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:643
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:644
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:645
      op : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:646
      pad0 : aliased anon4110_anon1853_array;  -- /usr/include/xcb/render.h:647
      src : aliased xcb_render_picture_t;  -- /usr/include/xcb/render.h:648
      mask : aliased xcb_render_picture_t;  -- /usr/include/xcb/render.h:649
      dst : aliased xcb_render_picture_t;  -- /usr/include/xcb/render.h:650
      src_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/render.h:651
      src_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/render.h:652
      mask_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/render.h:653
      mask_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/render.h:654
      dst_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/render.h:655
      dst_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/render.h:656
      width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:657
      height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:658
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_composite_request_t);  -- /usr/include/xcb/render.h:642

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_render_trapezoids.  
  --*
  -- * @brief xcb_render_trapezoids_request_t
  -- * 

  --*<   
   type anon4114_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_render_trapezoids_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:668
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:669
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:670
      op : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:671
      pad0 : aliased anon4114_anon1853_array;  -- /usr/include/xcb/render.h:672
      src : aliased xcb_render_picture_t;  -- /usr/include/xcb/render.h:673
      dst : aliased xcb_render_picture_t;  -- /usr/include/xcb/render.h:674
      mask_format : aliased xcb_render_pictformat_t;  -- /usr/include/xcb/render.h:675
      src_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/render.h:676
      src_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/render.h:677
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_trapezoids_request_t);  -- /usr/include/xcb/render.h:667

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_render_triangles.  
  --*
  -- * @brief xcb_render_triangles_request_t
  -- * 

  --*<   
   type anon4118_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_render_triangles_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:687
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:688
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:689
      op : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:690
      pad0 : aliased anon4118_anon1853_array;  -- /usr/include/xcb/render.h:691
      src : aliased xcb_render_picture_t;  -- /usr/include/xcb/render.h:692
      dst : aliased xcb_render_picture_t;  -- /usr/include/xcb/render.h:693
      mask_format : aliased xcb_render_pictformat_t;  -- /usr/include/xcb/render.h:694
      src_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/render.h:695
      src_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/render.h:696
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_triangles_request_t);  -- /usr/include/xcb/render.h:686

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_render_tri_strip.  
  --*
  -- * @brief xcb_render_tri_strip_request_t
  -- * 

  --*<   
   type anon4122_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_render_tri_strip_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:706
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:707
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:708
      op : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:709
      pad0 : aliased anon4122_anon1853_array;  -- /usr/include/xcb/render.h:710
      src : aliased xcb_render_picture_t;  -- /usr/include/xcb/render.h:711
      dst : aliased xcb_render_picture_t;  -- /usr/include/xcb/render.h:712
      mask_format : aliased xcb_render_pictformat_t;  -- /usr/include/xcb/render.h:713
      src_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/render.h:714
      src_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/render.h:715
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_tri_strip_request_t);  -- /usr/include/xcb/render.h:705

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_render_tri_fan.  
  --*
  -- * @brief xcb_render_tri_fan_request_t
  -- * 

  --*<   
   type anon4126_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_render_tri_fan_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:725
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:726
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:727
      op : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:728
      pad0 : aliased anon4126_anon1853_array;  -- /usr/include/xcb/render.h:729
      src : aliased xcb_render_picture_t;  -- /usr/include/xcb/render.h:730
      dst : aliased xcb_render_picture_t;  -- /usr/include/xcb/render.h:731
      mask_format : aliased xcb_render_pictformat_t;  -- /usr/include/xcb/render.h:732
      src_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/render.h:733
      src_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/render.h:734
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_tri_fan_request_t);  -- /usr/include/xcb/render.h:724

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_render_create_glyph_set.  
  --*
  -- * @brief xcb_render_create_glyph_set_request_t
  -- * 

  --*<   
   type xcb_render_create_glyph_set_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:744
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:745
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:746
      gsid : aliased xcb_render_glyphset_t;  -- /usr/include/xcb/render.h:747
      format : aliased xcb_render_pictformat_t;  -- /usr/include/xcb/render.h:748
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_create_glyph_set_request_t);  -- /usr/include/xcb/render.h:743

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_render_reference_glyph_set.  
  --*
  -- * @brief xcb_render_reference_glyph_set_request_t
  -- * 

  --*<   
   type xcb_render_reference_glyph_set_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:758
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:759
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:760
      gsid : aliased xcb_render_glyphset_t;  -- /usr/include/xcb/render.h:761
      existing : aliased xcb_render_glyphset_t;  -- /usr/include/xcb/render.h:762
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_reference_glyph_set_request_t);  -- /usr/include/xcb/render.h:757

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_render_free_glyph_set.  
  --*
  -- * @brief xcb_render_free_glyph_set_request_t
  -- * 

  --*<   
   type xcb_render_free_glyph_set_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:772
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:773
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:774
      glyphset : aliased xcb_render_glyphset_t;  -- /usr/include/xcb/render.h:775
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_free_glyph_set_request_t);  -- /usr/include/xcb/render.h:771

  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_render_add_glyphs.  
  --*
  -- * @brief xcb_render_add_glyphs_request_t
  -- * 

  --*<   
   type xcb_render_add_glyphs_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:785
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:786
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:787
      glyphset : aliased xcb_render_glyphset_t;  -- /usr/include/xcb/render.h:788
      glyphs_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/render.h:789
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_add_glyphs_request_t);  -- /usr/include/xcb/render.h:784

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_render_free_glyphs.  
  --*
  -- * @brief xcb_render_free_glyphs_request_t
  -- * 

  --*<   
   type xcb_render_free_glyphs_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:799
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:800
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:801
      glyphset : aliased xcb_render_glyphset_t;  -- /usr/include/xcb/render.h:802
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_free_glyphs_request_t);  -- /usr/include/xcb/render.h:798

  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_render_composite_glyphs_8.  
  --*
  -- * @brief xcb_render_composite_glyphs_8_request_t
  -- * 

  --*<   
   type anon4140_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_render_composite_glyphs_8_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:812
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:813
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:814
      op : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:815
      pad0 : aliased anon4140_anon1853_array;  -- /usr/include/xcb/render.h:816
      src : aliased xcb_render_picture_t;  -- /usr/include/xcb/render.h:817
      dst : aliased xcb_render_picture_t;  -- /usr/include/xcb/render.h:818
      mask_format : aliased xcb_render_pictformat_t;  -- /usr/include/xcb/render.h:819
      glyphset : aliased xcb_render_glyphset_t;  -- /usr/include/xcb/render.h:820
      src_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/render.h:821
      src_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/render.h:822
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_composite_glyphs_8_request_t);  -- /usr/include/xcb/render.h:811

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_render_composite_glyphs_16.  
  --*
  -- * @brief xcb_render_composite_glyphs_16_request_t
  -- * 

  --*<   
   type anon4144_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_render_composite_glyphs_16_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:832
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:833
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:834
      op : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:835
      pad0 : aliased anon4144_anon1853_array;  -- /usr/include/xcb/render.h:836
      src : aliased xcb_render_picture_t;  -- /usr/include/xcb/render.h:837
      dst : aliased xcb_render_picture_t;  -- /usr/include/xcb/render.h:838
      mask_format : aliased xcb_render_pictformat_t;  -- /usr/include/xcb/render.h:839
      glyphset : aliased xcb_render_glyphset_t;  -- /usr/include/xcb/render.h:840
      src_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/render.h:841
      src_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/render.h:842
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_composite_glyphs_16_request_t);  -- /usr/include/xcb/render.h:831

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_render_composite_glyphs_32.  
  --*
  -- * @brief xcb_render_composite_glyphs_32_request_t
  -- * 

  --*<   
   type anon4148_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_render_composite_glyphs_32_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:852
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:853
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:854
      op : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:855
      pad0 : aliased anon4148_anon1853_array;  -- /usr/include/xcb/render.h:856
      src : aliased xcb_render_picture_t;  -- /usr/include/xcb/render.h:857
      dst : aliased xcb_render_picture_t;  -- /usr/include/xcb/render.h:858
      mask_format : aliased xcb_render_pictformat_t;  -- /usr/include/xcb/render.h:859
      glyphset : aliased xcb_render_glyphset_t;  -- /usr/include/xcb/render.h:860
      src_x : aliased sys_types_h.int16_t;  -- /usr/include/xcb/render.h:861
      src_y : aliased sys_types_h.int16_t;  -- /usr/include/xcb/render.h:862
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_composite_glyphs_32_request_t);  -- /usr/include/xcb/render.h:851

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_render_fill_rectangles.  
  --*
  -- * @brief xcb_render_fill_rectangles_request_t
  -- * 

  --*<   
   type anon4152_anon1853_array is array (0 .. 2) of aliased stdint_h.uint8_t;
   type xcb_render_fill_rectangles_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:872
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:873
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:874
      op : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:875
      pad0 : aliased anon4152_anon1853_array;  -- /usr/include/xcb/render.h:876
      dst : aliased xcb_render_picture_t;  -- /usr/include/xcb/render.h:877
      color : aliased xcb_render_color_t;  -- /usr/include/xcb/render.h:878
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_fill_rectangles_request_t);  -- /usr/include/xcb/render.h:871

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_render_create_cursor.  
  --*
  -- * @brief xcb_render_create_cursor_request_t
  -- * 

  --*<   
   type xcb_render_create_cursor_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:888
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:889
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:890
      cid : aliased xcb_xproto_h.xcb_cursor_t;  -- /usr/include/xcb/render.h:891
      source : aliased xcb_render_picture_t;  -- /usr/include/xcb/render.h:892
      x : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:893
      y : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:894
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_create_cursor_request_t);  -- /usr/include/xcb/render.h:887

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_render_transform_t
  -- * 

  --*<   
   type xcb_render_transform_t is record
      matrix11 : aliased xcb_render_fixed_t;  -- /usr/include/xcb/render.h:901
      matrix12 : aliased xcb_render_fixed_t;  -- /usr/include/xcb/render.h:902
      matrix13 : aliased xcb_render_fixed_t;  -- /usr/include/xcb/render.h:903
      matrix21 : aliased xcb_render_fixed_t;  -- /usr/include/xcb/render.h:904
      matrix22 : aliased xcb_render_fixed_t;  -- /usr/include/xcb/render.h:905
      matrix23 : aliased xcb_render_fixed_t;  -- /usr/include/xcb/render.h:906
      matrix31 : aliased xcb_render_fixed_t;  -- /usr/include/xcb/render.h:907
      matrix32 : aliased xcb_render_fixed_t;  -- /usr/include/xcb/render.h:908
      matrix33 : aliased xcb_render_fixed_t;  -- /usr/include/xcb/render.h:909
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_transform_t);  -- /usr/include/xcb/render.h:900

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_render_transform_iterator_t
  -- * 

  --*<   
   type xcb_render_transform_iterator_t is record
      data : access xcb_render_transform_t;  -- /usr/include/xcb/render.h:916
      c_rem : aliased int;  -- /usr/include/xcb/render.h:917
      index : aliased int;  -- /usr/include/xcb/render.h:918
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_transform_iterator_t);  -- /usr/include/xcb/render.h:915

  --*<   
  --*<   
  --* Opcode for xcb_render_set_picture_transform.  
  --*
  -- * @brief xcb_render_set_picture_transform_request_t
  -- * 

  --*<   
   type xcb_render_set_picture_transform_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:928
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:929
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:930
      picture : aliased xcb_render_picture_t;  -- /usr/include/xcb/render.h:931
      transform : aliased xcb_render_transform_t;  -- /usr/include/xcb/render.h:932
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_set_picture_transform_request_t);  -- /usr/include/xcb/render.h:927

  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_render_query_filters_cookie_t
  -- * 

  --*<   
   type xcb_render_query_filters_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/render.h:939
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_query_filters_cookie_t);  -- /usr/include/xcb/render.h:938

  --* Opcode for xcb_render_query_filters.  
  --*
  -- * @brief xcb_render_query_filters_request_t
  -- * 

  --*<   
   type xcb_render_query_filters_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:949
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:950
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:951
      drawable : aliased xcb_xproto_h.xcb_drawable_t;  -- /usr/include/xcb/render.h:952
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_query_filters_request_t);  -- /usr/include/xcb/render.h:948

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_render_query_filters_reply_t
  -- * 

  --*<   
   type anon4170_anon4083_array is array (0 .. 15) of aliased stdint_h.uint8_t;
   type xcb_render_query_filters_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:959
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:960
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:961
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/render.h:962
      num_aliases : aliased stdint_h.uint32_t;  -- /usr/include/xcb/render.h:963
      num_filters : aliased stdint_h.uint32_t;  -- /usr/include/xcb/render.h:964
      pad1 : aliased anon4170_anon4083_array;  -- /usr/include/xcb/render.h:965
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_query_filters_reply_t);  -- /usr/include/xcb/render.h:958

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_render_set_picture_filter.  
  --*
  -- * @brief xcb_render_set_picture_filter_request_t
  -- * 

  --*<   
   type anon4174_anon1795_array is array (0 .. 1) of aliased stdint_h.uint8_t;
   type xcb_render_set_picture_filter_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:975
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:976
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:977
      picture : aliased xcb_render_picture_t;  -- /usr/include/xcb/render.h:978
      filter_len : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:979
      pad0 : aliased anon4174_anon1795_array;  -- /usr/include/xcb/render.h:980
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_set_picture_filter_request_t);  -- /usr/include/xcb/render.h:974

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_render_animcursorelt_t
  -- * 

  --*<   
   type xcb_render_animcursorelt_t is record
      cursor : aliased xcb_xproto_h.xcb_cursor_t;  -- /usr/include/xcb/render.h:987
      c_delay : aliased stdint_h.uint32_t;  -- /usr/include/xcb/render.h:988
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_animcursorelt_t);  -- /usr/include/xcb/render.h:986

  --*<   
  --*
  -- * @brief xcb_render_animcursorelt_iterator_t
  -- * 

  --*<   
   type xcb_render_animcursorelt_iterator_t is record
      data : access xcb_render_animcursorelt_t;  -- /usr/include/xcb/render.h:995
      c_rem : aliased int;  -- /usr/include/xcb/render.h:996
      index : aliased int;  -- /usr/include/xcb/render.h:997
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_animcursorelt_iterator_t);  -- /usr/include/xcb/render.h:994

  --*<   
  --*<   
  --* Opcode for xcb_render_create_anim_cursor.  
  --*
  -- * @brief xcb_render_create_anim_cursor_request_t
  -- * 

  --*<   
   type xcb_render_create_anim_cursor_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:1007
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:1008
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:1009
      cid : aliased xcb_xproto_h.xcb_cursor_t;  -- /usr/include/xcb/render.h:1010
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_create_anim_cursor_request_t);  -- /usr/include/xcb/render.h:1006

  --*<   
  --*<   
  --*<   
  --*
  -- * @brief xcb_render_spanfix_t
  -- * 

  --*<   
   type xcb_render_spanfix_t is record
      l : aliased xcb_render_fixed_t;  -- /usr/include/xcb/render.h:1017
      r : aliased xcb_render_fixed_t;  -- /usr/include/xcb/render.h:1018
      y : aliased xcb_render_fixed_t;  -- /usr/include/xcb/render.h:1019
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_spanfix_t);  -- /usr/include/xcb/render.h:1016

  --*<   
  --*<   
  --*
  -- * @brief xcb_render_spanfix_iterator_t
  -- * 

  --*<   
   type xcb_render_spanfix_iterator_t is record
      data : access xcb_render_spanfix_t;  -- /usr/include/xcb/render.h:1026
      c_rem : aliased int;  -- /usr/include/xcb/render.h:1027
      index : aliased int;  -- /usr/include/xcb/render.h:1028
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_spanfix_iterator_t);  -- /usr/include/xcb/render.h:1025

  --*<   
  --*<   
  --*
  -- * @brief xcb_render_trap_t
  -- * 

  --*<   
   type xcb_render_trap_t is record
      top : aliased xcb_render_spanfix_t;  -- /usr/include/xcb/render.h:1035
      bot : aliased xcb_render_spanfix_t;  -- /usr/include/xcb/render.h:1036
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_trap_t);  -- /usr/include/xcb/render.h:1034

  --*<   
  --*
  -- * @brief xcb_render_trap_iterator_t
  -- * 

  --*<   
   type xcb_render_trap_iterator_t is record
      data : access xcb_render_trap_t;  -- /usr/include/xcb/render.h:1043
      c_rem : aliased int;  -- /usr/include/xcb/render.h:1044
      index : aliased int;  -- /usr/include/xcb/render.h:1045
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_trap_iterator_t);  -- /usr/include/xcb/render.h:1042

  --*<   
  --*<   
  --* Opcode for xcb_render_add_traps.  
  --*
  -- * @brief xcb_render_add_traps_request_t
  -- * 

  --*<   
   type xcb_render_add_traps_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:1055
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:1056
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:1057
      picture : aliased xcb_render_picture_t;  -- /usr/include/xcb/render.h:1058
      x_off : aliased sys_types_h.int16_t;  -- /usr/include/xcb/render.h:1059
      y_off : aliased sys_types_h.int16_t;  -- /usr/include/xcb/render.h:1060
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_add_traps_request_t);  -- /usr/include/xcb/render.h:1054

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_render_create_solid_fill.  
  --*
  -- * @brief xcb_render_create_solid_fill_request_t
  -- * 

  --*<   
   type xcb_render_create_solid_fill_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:1070
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:1071
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:1072
      picture : aliased xcb_render_picture_t;  -- /usr/include/xcb/render.h:1073
      color : aliased xcb_render_color_t;  -- /usr/include/xcb/render.h:1074
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_create_solid_fill_request_t);  -- /usr/include/xcb/render.h:1069

  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_render_create_linear_gradient.  
  --*
  -- * @brief xcb_render_create_linear_gradient_request_t
  -- * 

  --*<   
   type xcb_render_create_linear_gradient_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:1084
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:1085
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:1086
      picture : aliased xcb_render_picture_t;  -- /usr/include/xcb/render.h:1087
      p1 : aliased xcb_render_pointfix_t;  -- /usr/include/xcb/render.h:1088
      p2 : aliased xcb_render_pointfix_t;  -- /usr/include/xcb/render.h:1089
      num_stops : aliased stdint_h.uint32_t;  -- /usr/include/xcb/render.h:1090
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_create_linear_gradient_request_t);  -- /usr/include/xcb/render.h:1083

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_render_create_radial_gradient.  
  --*
  -- * @brief xcb_render_create_radial_gradient_request_t
  -- * 

  --*<   
   type xcb_render_create_radial_gradient_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:1100
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:1101
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:1102
      picture : aliased xcb_render_picture_t;  -- /usr/include/xcb/render.h:1103
      inner : aliased xcb_render_pointfix_t;  -- /usr/include/xcb/render.h:1104
      outer : aliased xcb_render_pointfix_t;  -- /usr/include/xcb/render.h:1105
      inner_radius : aliased xcb_render_fixed_t;  -- /usr/include/xcb/render.h:1106
      outer_radius : aliased xcb_render_fixed_t;  -- /usr/include/xcb/render.h:1107
      num_stops : aliased stdint_h.uint32_t;  -- /usr/include/xcb/render.h:1108
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_create_radial_gradient_request_t);  -- /usr/include/xcb/render.h:1099

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --* Opcode for xcb_render_create_conical_gradient.  
  --*
  -- * @brief xcb_render_create_conical_gradient_request_t
  -- * 

  --*<   
   type xcb_render_create_conical_gradient_request_t is record
      major_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:1118
      minor_opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/render.h:1119
      length : aliased stdint_h.uint16_t;  -- /usr/include/xcb/render.h:1120
      picture : aliased xcb_render_picture_t;  -- /usr/include/xcb/render.h:1121
      center : aliased xcb_render_pointfix_t;  -- /usr/include/xcb/render.h:1122
      angle : aliased xcb_render_fixed_t;  -- /usr/include/xcb/render.h:1123
      num_stops : aliased stdint_h.uint32_t;  -- /usr/include/xcb/render.h:1124
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_render_create_conical_gradient_request_t);  -- /usr/include/xcb/render.h:1117

  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*<   
  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_render_glyph_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_render_glyph_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_render_glyph_next
  -- ** 
  -- ** @param xcb_render_glyph_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_render_glyph_next (arg1 : access xcb_render_glyph_iterator_t);  -- /usr/include/xcb/render.h:1146
   pragma Import (C, xcb_render_glyph_next, "xcb_render_glyph_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_render_glyph_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_render_glyph_end
  -- ** 
  -- ** @param xcb_render_glyph_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_glyph_end (arg1 : xcb_render_glyph_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/render.h:1168
   pragma Import (C, xcb_render_glyph_end, "xcb_render_glyph_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_render_glyphset_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_render_glyphset_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_render_glyphset_next
  -- ** 
  -- ** @param xcb_render_glyphset_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_render_glyphset_next (arg1 : access xcb_render_glyphset_iterator_t);  -- /usr/include/xcb/render.h:1189
   pragma Import (C, xcb_render_glyphset_next, "xcb_render_glyphset_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_render_glyphset_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_render_glyphset_end
  -- ** 
  -- ** @param xcb_render_glyphset_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_glyphset_end (arg1 : xcb_render_glyphset_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/render.h:1211
   pragma Import (C, xcb_render_glyphset_end, "xcb_render_glyphset_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_render_picture_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_render_picture_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_render_picture_next
  -- ** 
  -- ** @param xcb_render_picture_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_render_picture_next (arg1 : access xcb_render_picture_iterator_t);  -- /usr/include/xcb/render.h:1232
   pragma Import (C, xcb_render_picture_next, "xcb_render_picture_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_render_picture_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_render_picture_end
  -- ** 
  -- ** @param xcb_render_picture_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_picture_end (arg1 : xcb_render_picture_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/render.h:1254
   pragma Import (C, xcb_render_picture_end, "xcb_render_picture_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_render_pictformat_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_render_pictformat_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_render_pictformat_next
  -- ** 
  -- ** @param xcb_render_pictformat_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_render_pictformat_next (arg1 : access xcb_render_pictformat_iterator_t);  -- /usr/include/xcb/render.h:1275
   pragma Import (C, xcb_render_pictformat_next, "xcb_render_pictformat_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_render_pictformat_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_render_pictformat_end
  -- ** 
  -- ** @param xcb_render_pictformat_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_pictformat_end (arg1 : xcb_render_pictformat_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/render.h:1297
   pragma Import (C, xcb_render_pictformat_end, "xcb_render_pictformat_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_render_fixed_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_render_fixed_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_render_fixed_next
  -- ** 
  -- ** @param xcb_render_fixed_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_render_fixed_next (arg1 : access xcb_render_fixed_iterator_t);  -- /usr/include/xcb/render.h:1318
   pragma Import (C, xcb_render_fixed_next, "xcb_render_fixed_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_render_fixed_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_render_fixed_end
  -- ** 
  -- ** @param xcb_render_fixed_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_fixed_end (arg1 : xcb_render_fixed_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/render.h:1340
   pragma Import (C, xcb_render_fixed_end, "xcb_render_fixed_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_render_directformat_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_render_directformat_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_render_directformat_next
  -- ** 
  -- ** @param xcb_render_directformat_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_render_directformat_next (arg1 : access xcb_render_directformat_iterator_t);  -- /usr/include/xcb/render.h:1361
   pragma Import (C, xcb_render_directformat_next, "xcb_render_directformat_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_render_directformat_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_render_directformat_end
  -- ** 
  -- ** @param xcb_render_directformat_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_directformat_end (arg1 : xcb_render_directformat_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/render.h:1383
   pragma Import (C, xcb_render_directformat_end, "xcb_render_directformat_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_render_pictforminfo_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_render_pictforminfo_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_render_pictforminfo_next
  -- ** 
  -- ** @param xcb_render_pictforminfo_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_render_pictforminfo_next (arg1 : access xcb_render_pictforminfo_iterator_t);  -- /usr/include/xcb/render.h:1404
   pragma Import (C, xcb_render_pictforminfo_next, "xcb_render_pictforminfo_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_render_pictforminfo_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_render_pictforminfo_end
  -- ** 
  -- ** @param xcb_render_pictforminfo_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_pictforminfo_end (arg1 : xcb_render_pictforminfo_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/render.h:1426
   pragma Import (C, xcb_render_pictforminfo_end, "xcb_render_pictforminfo_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_render_pictvisual_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_render_pictvisual_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_render_pictvisual_next
  -- ** 
  -- ** @param xcb_render_pictvisual_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_render_pictvisual_next (arg1 : access xcb_render_pictvisual_iterator_t);  -- /usr/include/xcb/render.h:1447
   pragma Import (C, xcb_render_pictvisual_next, "xcb_render_pictvisual_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_render_pictvisual_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_render_pictvisual_end
  -- ** 
  -- ** @param xcb_render_pictvisual_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_pictvisual_end (arg1 : xcb_render_pictvisual_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/render.h:1469
   pragma Import (C, xcb_render_pictvisual_end, "xcb_render_pictvisual_end");

  --*<  
   function xcb_render_pictdepth_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/render.h:1472
   pragma Import (C, xcb_render_pictdepth_sizeof, "xcb_render_pictdepth_sizeof");

  --****************************************************************************
  -- **
  -- ** xcb_render_pictvisual_t * xcb_render_pictdepth_visuals
  -- ** 
  -- ** @param const xcb_render_pictdepth_t *R
  -- ** @returns xcb_render_pictvisual_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_pictdepth_visuals (arg1 : System.Address) return access xcb_render_pictvisual_t;  -- /usr/include/xcb/render.h:1485
   pragma Import (C, xcb_render_pictdepth_visuals, "xcb_render_pictdepth_visuals");

  --****************************************************************************
  -- **
  -- ** int xcb_render_pictdepth_visuals_length
  -- ** 
  -- ** @param const xcb_render_pictdepth_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_pictdepth_visuals_length (arg1 : System.Address) return int;  -- /usr/include/xcb/render.h:1498
   pragma Import (C, xcb_render_pictdepth_visuals_length, "xcb_render_pictdepth_visuals_length");

  --****************************************************************************
  -- **
  -- ** xcb_render_pictvisual_iterator_t xcb_render_pictdepth_visuals_iterator
  -- ** 
  -- ** @param const xcb_render_pictdepth_t *R
  -- ** @returns xcb_render_pictvisual_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_pictdepth_visuals_iterator (arg1 : System.Address) return xcb_render_pictvisual_iterator_t;  -- /usr/include/xcb/render.h:1511
   pragma Import (C, xcb_render_pictdepth_visuals_iterator, "xcb_render_pictdepth_visuals_iterator");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_render_pictdepth_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_render_pictdepth_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_render_pictdepth_next
  -- ** 
  -- ** @param xcb_render_pictdepth_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_render_pictdepth_next (arg1 : access xcb_render_pictdepth_iterator_t);  -- /usr/include/xcb/render.h:1532
   pragma Import (C, xcb_render_pictdepth_next, "xcb_render_pictdepth_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_render_pictdepth_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_render_pictdepth_end
  -- ** 
  -- ** @param xcb_render_pictdepth_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_pictdepth_end (arg1 : xcb_render_pictdepth_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/render.h:1554
   pragma Import (C, xcb_render_pictdepth_end, "xcb_render_pictdepth_end");

  --*<  
   function xcb_render_pictscreen_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/render.h:1557
   pragma Import (C, xcb_render_pictscreen_sizeof, "xcb_render_pictscreen_sizeof");

  --****************************************************************************
  -- **
  -- ** int xcb_render_pictscreen_depths_length
  -- ** 
  -- ** @param const xcb_render_pictscreen_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_pictscreen_depths_length (arg1 : System.Address) return int;  -- /usr/include/xcb/render.h:1570
   pragma Import (C, xcb_render_pictscreen_depths_length, "xcb_render_pictscreen_depths_length");

  --****************************************************************************
  -- **
  -- ** xcb_render_pictdepth_iterator_t xcb_render_pictscreen_depths_iterator
  -- ** 
  -- ** @param const xcb_render_pictscreen_t *R
  -- ** @returns xcb_render_pictdepth_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_pictscreen_depths_iterator (arg1 : System.Address) return xcb_render_pictdepth_iterator_t;  -- /usr/include/xcb/render.h:1583
   pragma Import (C, xcb_render_pictscreen_depths_iterator, "xcb_render_pictscreen_depths_iterator");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_render_pictscreen_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_render_pictscreen_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_render_pictscreen_next
  -- ** 
  -- ** @param xcb_render_pictscreen_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_render_pictscreen_next (arg1 : access xcb_render_pictscreen_iterator_t);  -- /usr/include/xcb/render.h:1604
   pragma Import (C, xcb_render_pictscreen_next, "xcb_render_pictscreen_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_render_pictscreen_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_render_pictscreen_end
  -- ** 
  -- ** @param xcb_render_pictscreen_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_pictscreen_end (arg1 : xcb_render_pictscreen_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/render.h:1626
   pragma Import (C, xcb_render_pictscreen_end, "xcb_render_pictscreen_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_render_indexvalue_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_render_indexvalue_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_render_indexvalue_next
  -- ** 
  -- ** @param xcb_render_indexvalue_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_render_indexvalue_next (arg1 : access xcb_render_indexvalue_iterator_t);  -- /usr/include/xcb/render.h:1647
   pragma Import (C, xcb_render_indexvalue_next, "xcb_render_indexvalue_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_render_indexvalue_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_render_indexvalue_end
  -- ** 
  -- ** @param xcb_render_indexvalue_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_indexvalue_end (arg1 : xcb_render_indexvalue_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/render.h:1669
   pragma Import (C, xcb_render_indexvalue_end, "xcb_render_indexvalue_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_render_color_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_render_color_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_render_color_next
  -- ** 
  -- ** @param xcb_render_color_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_render_color_next (arg1 : access xcb_render_color_iterator_t);  -- /usr/include/xcb/render.h:1690
   pragma Import (C, xcb_render_color_next, "xcb_render_color_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_render_color_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_render_color_end
  -- ** 
  -- ** @param xcb_render_color_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_color_end (arg1 : xcb_render_color_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/render.h:1712
   pragma Import (C, xcb_render_color_end, "xcb_render_color_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_render_pointfix_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_render_pointfix_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_render_pointfix_next
  -- ** 
  -- ** @param xcb_render_pointfix_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_render_pointfix_next (arg1 : access xcb_render_pointfix_iterator_t);  -- /usr/include/xcb/render.h:1733
   pragma Import (C, xcb_render_pointfix_next, "xcb_render_pointfix_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_render_pointfix_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_render_pointfix_end
  -- ** 
  -- ** @param xcb_render_pointfix_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_pointfix_end (arg1 : xcb_render_pointfix_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/render.h:1755
   pragma Import (C, xcb_render_pointfix_end, "xcb_render_pointfix_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_render_linefix_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_render_linefix_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_render_linefix_next
  -- ** 
  -- ** @param xcb_render_linefix_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_render_linefix_next (arg1 : access xcb_render_linefix_iterator_t);  -- /usr/include/xcb/render.h:1776
   pragma Import (C, xcb_render_linefix_next, "xcb_render_linefix_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_render_linefix_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_render_linefix_end
  -- ** 
  -- ** @param xcb_render_linefix_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_linefix_end (arg1 : xcb_render_linefix_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/render.h:1798
   pragma Import (C, xcb_render_linefix_end, "xcb_render_linefix_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_render_triangle_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_render_triangle_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_render_triangle_next
  -- ** 
  -- ** @param xcb_render_triangle_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_render_triangle_next (arg1 : access xcb_render_triangle_iterator_t);  -- /usr/include/xcb/render.h:1819
   pragma Import (C, xcb_render_triangle_next, "xcb_render_triangle_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_render_triangle_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_render_triangle_end
  -- ** 
  -- ** @param xcb_render_triangle_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_triangle_end (arg1 : xcb_render_triangle_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/render.h:1841
   pragma Import (C, xcb_render_triangle_end, "xcb_render_triangle_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_render_trapezoid_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_render_trapezoid_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_render_trapezoid_next
  -- ** 
  -- ** @param xcb_render_trapezoid_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_render_trapezoid_next (arg1 : access xcb_render_trapezoid_iterator_t);  -- /usr/include/xcb/render.h:1862
   pragma Import (C, xcb_render_trapezoid_next, "xcb_render_trapezoid_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_render_trapezoid_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_render_trapezoid_end
  -- ** 
  -- ** @param xcb_render_trapezoid_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_trapezoid_end (arg1 : xcb_render_trapezoid_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/render.h:1884
   pragma Import (C, xcb_render_trapezoid_end, "xcb_render_trapezoid_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_render_glyphinfo_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_render_glyphinfo_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_render_glyphinfo_next
  -- ** 
  -- ** @param xcb_render_glyphinfo_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_render_glyphinfo_next (arg1 : access xcb_render_glyphinfo_iterator_t);  -- /usr/include/xcb/render.h:1905
   pragma Import (C, xcb_render_glyphinfo_next, "xcb_render_glyphinfo_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_render_glyphinfo_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_render_glyphinfo_end
  -- ** 
  -- ** @param xcb_render_glyphinfo_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_glyphinfo_end (arg1 : xcb_render_glyphinfo_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/render.h:1927
   pragma Import (C, xcb_render_glyphinfo_end, "xcb_render_glyphinfo_end");

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
  -- ** xcb_render_query_version_cookie_t xcb_render_query_version
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          client_major_version
  -- ** @param uint32_t          client_minor_version
  -- ** @returns xcb_render_query_version_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_query_version
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : stdint_h.uint32_t) return xcb_render_query_version_cookie_t;  -- /usr/include/xcb/render.h:1950
   pragma Import (C, xcb_render_query_version, "xcb_render_query_version");

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
  -- ** xcb_render_query_version_cookie_t xcb_render_query_version_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param uint32_t          client_major_version
  -- ** @param uint32_t          client_minor_version
  -- ** @returns xcb_render_query_version_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_query_version_unchecked
     (arg1 : System.Address;
      arg2 : stdint_h.uint32_t;
      arg3 : stdint_h.uint32_t) return xcb_render_query_version_cookie_t;  -- /usr/include/xcb/render.h:1978
   pragma Import (C, xcb_render_query_version_unchecked, "xcb_render_query_version_unchecked");

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
  -- * xcb_render_query_version_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_render_query_version_reply_t * xcb_render_query_version_reply
  -- ** 
  -- ** @param xcb_connection_t                   *c
  -- ** @param xcb_render_query_version_cookie_t   cookie
  -- ** @param xcb_generic_error_t               **e
  -- ** @returns xcb_render_query_version_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_query_version_reply
     (arg1 : System.Address;
      arg2 : xcb_render_query_version_cookie_t;
      arg3 : System.Address) return access xcb_render_query_version_reply_t;  -- /usr/include/xcb/render.h:2009
   pragma Import (C, xcb_render_query_version_reply, "xcb_render_query_version_reply");

  --*<  
  --*<  
  --*<  
   function xcb_render_query_pict_formats_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/render.h:2014
   pragma Import (C, xcb_render_query_pict_formats_sizeof, "xcb_render_query_pict_formats_sizeof");

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
  -- ** xcb_render_query_pict_formats_cookie_t xcb_render_query_pict_formats
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_render_query_pict_formats_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_query_pict_formats (arg1 : System.Address) return xcb_render_query_pict_formats_cookie_t;  -- /usr/include/xcb/render.h:2035
   pragma Import (C, xcb_render_query_pict_formats, "xcb_render_query_pict_formats");

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
  -- ** xcb_render_query_pict_formats_cookie_t xcb_render_query_pict_formats_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @returns xcb_render_query_pict_formats_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_query_pict_formats_unchecked (arg1 : System.Address) return xcb_render_query_pict_formats_cookie_t;  -- /usr/include/xcb/render.h:2059
   pragma Import (C, xcb_render_query_pict_formats_unchecked, "xcb_render_query_pict_formats_unchecked");

  --****************************************************************************
  -- **
  -- ** xcb_render_pictforminfo_t * xcb_render_query_pict_formats_formats
  -- ** 
  -- ** @param const xcb_render_query_pict_formats_reply_t *R
  -- ** @returns xcb_render_pictforminfo_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_query_pict_formats_formats (arg1 : System.Address) return access xcb_render_pictforminfo_t;  -- /usr/include/xcb/render.h:2072
   pragma Import (C, xcb_render_query_pict_formats_formats, "xcb_render_query_pict_formats_formats");

  --****************************************************************************
  -- **
  -- ** int xcb_render_query_pict_formats_formats_length
  -- ** 
  -- ** @param const xcb_render_query_pict_formats_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_query_pict_formats_formats_length (arg1 : System.Address) return int;  -- /usr/include/xcb/render.h:2085
   pragma Import (C, xcb_render_query_pict_formats_formats_length, "xcb_render_query_pict_formats_formats_length");

  --****************************************************************************
  -- **
  -- ** xcb_render_pictforminfo_iterator_t xcb_render_query_pict_formats_formats_iterator
  -- ** 
  -- ** @param const xcb_render_query_pict_formats_reply_t *R
  -- ** @returns xcb_render_pictforminfo_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_query_pict_formats_formats_iterator (arg1 : System.Address) return xcb_render_pictforminfo_iterator_t;  -- /usr/include/xcb/render.h:2098
   pragma Import (C, xcb_render_query_pict_formats_formats_iterator, "xcb_render_query_pict_formats_formats_iterator");

  --****************************************************************************
  -- **
  -- ** int xcb_render_query_pict_formats_screens_length
  -- ** 
  -- ** @param const xcb_render_query_pict_formats_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_query_pict_formats_screens_length (arg1 : System.Address) return int;  -- /usr/include/xcb/render.h:2111
   pragma Import (C, xcb_render_query_pict_formats_screens_length, "xcb_render_query_pict_formats_screens_length");

  --****************************************************************************
  -- **
  -- ** xcb_render_pictscreen_iterator_t xcb_render_query_pict_formats_screens_iterator
  -- ** 
  -- ** @param const xcb_render_query_pict_formats_reply_t *R
  -- ** @returns xcb_render_pictscreen_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_query_pict_formats_screens_iterator (arg1 : System.Address) return xcb_render_pictscreen_iterator_t;  -- /usr/include/xcb/render.h:2124
   pragma Import (C, xcb_render_query_pict_formats_screens_iterator, "xcb_render_query_pict_formats_screens_iterator");

  --****************************************************************************
  -- **
  -- ** uint32_t * xcb_render_query_pict_formats_subpixels
  -- ** 
  -- ** @param const xcb_render_query_pict_formats_reply_t *R
  -- ** @returns uint32_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_query_pict_formats_subpixels (arg1 : System.Address) return access stdint_h.uint32_t;  -- /usr/include/xcb/render.h:2137
   pragma Import (C, xcb_render_query_pict_formats_subpixels, "xcb_render_query_pict_formats_subpixels");

  --****************************************************************************
  -- **
  -- ** int xcb_render_query_pict_formats_subpixels_length
  -- ** 
  -- ** @param const xcb_render_query_pict_formats_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_query_pict_formats_subpixels_length (arg1 : System.Address) return int;  -- /usr/include/xcb/render.h:2150
   pragma Import (C, xcb_render_query_pict_formats_subpixels_length, "xcb_render_query_pict_formats_subpixels_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_render_query_pict_formats_subpixels_end
  -- ** 
  -- ** @param const xcb_render_query_pict_formats_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_query_pict_formats_subpixels_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/render.h:2163
   pragma Import (C, xcb_render_query_pict_formats_subpixels_end, "xcb_render_query_pict_formats_subpixels_end");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_render_query_pict_formats_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_render_query_pict_formats_reply_t * xcb_render_query_pict_formats_reply
  -- ** 
  -- ** @param xcb_connection_t                        *c
  -- ** @param xcb_render_query_pict_formats_cookie_t   cookie
  -- ** @param xcb_generic_error_t                    **e
  -- ** @returns xcb_render_query_pict_formats_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_query_pict_formats_reply
     (arg1 : System.Address;
      arg2 : xcb_render_query_pict_formats_cookie_t;
      arg3 : System.Address) return access xcb_render_query_pict_formats_reply_t;  -- /usr/include/xcb/render.h:2192
   pragma Import (C, xcb_render_query_pict_formats_reply, "xcb_render_query_pict_formats_reply");

  --*<  
  --*<  
  --*<  
   function xcb_render_query_pict_index_values_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/render.h:2197
   pragma Import (C, xcb_render_query_pict_index_values_sizeof, "xcb_render_query_pict_index_values_sizeof");

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
  -- ** xcb_render_query_pict_index_values_cookie_t xcb_render_query_pict_index_values
  -- ** 
  -- ** @param xcb_connection_t        *c
  -- ** @param xcb_render_pictformat_t  format
  -- ** @returns xcb_render_query_pict_index_values_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_query_pict_index_values (arg1 : System.Address; arg2 : xcb_render_pictformat_t) return xcb_render_query_pict_index_values_cookie_t;  -- /usr/include/xcb/render.h:2219
   pragma Import (C, xcb_render_query_pict_index_values, "xcb_render_query_pict_index_values");

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
  -- ** xcb_render_query_pict_index_values_cookie_t xcb_render_query_pict_index_values_unchecked
  -- ** 
  -- ** @param xcb_connection_t        *c
  -- ** @param xcb_render_pictformat_t  format
  -- ** @returns xcb_render_query_pict_index_values_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_query_pict_index_values_unchecked (arg1 : System.Address; arg2 : xcb_render_pictformat_t) return xcb_render_query_pict_index_values_cookie_t;  -- /usr/include/xcb/render.h:2245
   pragma Import (C, xcb_render_query_pict_index_values_unchecked, "xcb_render_query_pict_index_values_unchecked");

  --*<  
  --****************************************************************************
  -- **
  -- ** xcb_render_indexvalue_t * xcb_render_query_pict_index_values_values
  -- ** 
  -- ** @param const xcb_render_query_pict_index_values_reply_t *R
  -- ** @returns xcb_render_indexvalue_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_query_pict_index_values_values (arg1 : System.Address) return access xcb_render_indexvalue_t;  -- /usr/include/xcb/render.h:2259
   pragma Import (C, xcb_render_query_pict_index_values_values, "xcb_render_query_pict_index_values_values");

  --****************************************************************************
  -- **
  -- ** int xcb_render_query_pict_index_values_values_length
  -- ** 
  -- ** @param const xcb_render_query_pict_index_values_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_query_pict_index_values_values_length (arg1 : System.Address) return int;  -- /usr/include/xcb/render.h:2272
   pragma Import (C, xcb_render_query_pict_index_values_values_length, "xcb_render_query_pict_index_values_values_length");

  --****************************************************************************
  -- **
  -- ** xcb_render_indexvalue_iterator_t xcb_render_query_pict_index_values_values_iterator
  -- ** 
  -- ** @param const xcb_render_query_pict_index_values_reply_t *R
  -- ** @returns xcb_render_indexvalue_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_query_pict_index_values_values_iterator (arg1 : System.Address) return xcb_render_indexvalue_iterator_t;  -- /usr/include/xcb/render.h:2285
   pragma Import (C, xcb_render_query_pict_index_values_values_iterator, "xcb_render_query_pict_index_values_values_iterator");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_render_query_pict_index_values_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_render_query_pict_index_values_reply_t * xcb_render_query_pict_index_values_reply
  -- ** 
  -- ** @param xcb_connection_t                             *c
  -- ** @param xcb_render_query_pict_index_values_cookie_t   cookie
  -- ** @param xcb_generic_error_t                         **e
  -- ** @returns xcb_render_query_pict_index_values_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_query_pict_index_values_reply
     (arg1 : System.Address;
      arg2 : xcb_render_query_pict_index_values_cookie_t;
      arg3 : System.Address) return access xcb_render_query_pict_index_values_reply_t;  -- /usr/include/xcb/render.h:2314
   pragma Import (C, xcb_render_query_pict_index_values_reply, "xcb_render_query_pict_index_values_reply");

  --*<  
  --*<  
  --*<  
   function xcb_render_create_picture_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/render.h:2319
   pragma Import (C, xcb_render_create_picture_sizeof, "xcb_render_create_picture_sizeof");

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
  -- ** xcb_void_cookie_t xcb_render_create_picture_checked
  -- ** 
  -- ** @param xcb_connection_t        *c
  -- ** @param xcb_render_picture_t     pid
  -- ** @param xcb_drawable_t           drawable
  -- ** @param xcb_render_pictformat_t  format
  -- ** @param uint32_t                 value_mask
  -- ** @param const uint32_t          *value_list
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_create_picture_checked
     (arg1 : System.Address;
      arg2 : xcb_render_picture_t;
      arg3 : xcb_xproto_h.xcb_drawable_t;
      arg4 : xcb_render_pictformat_t;
      arg5 : stdint_h.uint32_t;
      arg6 : access stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:2348
   pragma Import (C, xcb_render_create_picture_checked, "xcb_render_create_picture_checked");

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
  -- ** xcb_void_cookie_t xcb_render_create_picture
  -- ** 
  -- ** @param xcb_connection_t        *c
  -- ** @param xcb_render_picture_t     pid
  -- ** @param xcb_drawable_t           drawable
  -- ** @param xcb_render_pictformat_t  format
  -- ** @param uint32_t                 value_mask
  -- ** @param const uint32_t          *value_list
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_create_picture
     (arg1 : System.Address;
      arg2 : xcb_render_picture_t;
      arg3 : xcb_xproto_h.xcb_drawable_t;
      arg4 : xcb_render_pictformat_t;
      arg5 : stdint_h.uint32_t;
      arg6 : access stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:2379
   pragma Import (C, xcb_render_create_picture, "xcb_render_create_picture");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_render_change_picture_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/render.h:2387
   pragma Import (C, xcb_render_change_picture_sizeof, "xcb_render_change_picture_sizeof");

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
  -- ** xcb_void_cookie_t xcb_render_change_picture_checked
  -- ** 
  -- ** @param xcb_connection_t     *c
  -- ** @param xcb_render_picture_t  picture
  -- ** @param uint32_t              value_mask
  -- ** @param const uint32_t       *value_list
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_change_picture_checked
     (arg1 : System.Address;
      arg2 : xcb_render_picture_t;
      arg3 : stdint_h.uint32_t;
      arg4 : access stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:2414
   pragma Import (C, xcb_render_change_picture_checked, "xcb_render_change_picture_checked");

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
  -- ** xcb_void_cookie_t xcb_render_change_picture
  -- ** 
  -- ** @param xcb_connection_t     *c
  -- ** @param xcb_render_picture_t  picture
  -- ** @param uint32_t              value_mask
  -- ** @param const uint32_t       *value_list
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_change_picture
     (arg1 : System.Address;
      arg2 : xcb_render_picture_t;
      arg3 : stdint_h.uint32_t;
      arg4 : access stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:2441
   pragma Import (C, xcb_render_change_picture, "xcb_render_change_picture");

  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_render_set_picture_clip_rectangles_sizeof (arg1 : System.Address; arg2 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/render.h:2447
   pragma Import (C, xcb_render_set_picture_clip_rectangles_sizeof, "xcb_render_set_picture_clip_rectangles_sizeof");

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
  -- ** xcb_void_cookie_t xcb_render_set_picture_clip_rectangles_checked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_render_picture_t   picture
  -- ** @param int16_t                clip_x_origin
  -- ** @param int16_t                clip_y_origin
  -- ** @param uint32_t               rectangles_len
  -- ** @param const xcb_rectangle_t *rectangles
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_set_picture_clip_rectangles_checked
     (arg1 : System.Address;
      arg2 : xcb_render_picture_t;
      arg3 : sys_types_h.int16_t;
      arg4 : sys_types_h.int16_t;
      arg5 : stdint_h.uint32_t;
      arg6 : access constant xcb_xproto_h.xcb_rectangle_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:2477
   pragma Import (C, xcb_render_set_picture_clip_rectangles_checked, "xcb_render_set_picture_clip_rectangles_checked");

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
  -- ** xcb_void_cookie_t xcb_render_set_picture_clip_rectangles
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_render_picture_t   picture
  -- ** @param int16_t                clip_x_origin
  -- ** @param int16_t                clip_y_origin
  -- ** @param uint32_t               rectangles_len
  -- ** @param const xcb_rectangle_t *rectangles
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_set_picture_clip_rectangles
     (arg1 : System.Address;
      arg2 : xcb_render_picture_t;
      arg3 : sys_types_h.int16_t;
      arg4 : sys_types_h.int16_t;
      arg5 : stdint_h.uint32_t;
      arg6 : access constant xcb_xproto_h.xcb_rectangle_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:2508
   pragma Import (C, xcb_render_set_picture_clip_rectangles, "xcb_render_set_picture_clip_rectangles");

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
  -- ** xcb_void_cookie_t xcb_render_free_picture_checked
  -- ** 
  -- ** @param xcb_connection_t     *c
  -- ** @param xcb_render_picture_t  picture
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_free_picture_checked (arg1 : System.Address; arg2 : xcb_render_picture_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:2538
   pragma Import (C, xcb_render_free_picture_checked, "xcb_render_free_picture_checked");

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
  -- ** xcb_void_cookie_t xcb_render_free_picture
  -- ** 
  -- ** @param xcb_connection_t     *c
  -- ** @param xcb_render_picture_t  picture
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_free_picture (arg1 : System.Address; arg2 : xcb_render_picture_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:2561
   pragma Import (C, xcb_render_free_picture, "xcb_render_free_picture");

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
  -- ** xcb_void_cookie_t xcb_render_composite_checked
  -- ** 
  -- ** @param xcb_connection_t     *c
  -- ** @param uint8_t               op
  -- ** @param xcb_render_picture_t  src
  -- ** @param xcb_render_picture_t  mask
  -- ** @param xcb_render_picture_t  dst
  -- ** @param int16_t               src_x
  -- ** @param int16_t               src_y
  -- ** @param int16_t               mask_x
  -- ** @param int16_t               mask_y
  -- ** @param int16_t               dst_x
  -- ** @param int16_t               dst_y
  -- ** @param uint16_t              width
  -- ** @param uint16_t              height
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_composite_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_render_picture_t;
      arg4 : xcb_render_picture_t;
      arg5 : xcb_render_picture_t;
      arg6 : sys_types_h.int16_t;
      arg7 : sys_types_h.int16_t;
      arg8 : sys_types_h.int16_t;
      arg9 : sys_types_h.int16_t;
      arg10 : sys_types_h.int16_t;
      arg11 : sys_types_h.int16_t;
      arg12 : stdint_h.uint16_t;
      arg13 : stdint_h.uint16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:2598
   pragma Import (C, xcb_render_composite_checked, "xcb_render_composite_checked");

  --*<  
  --*<  
  --*<  
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
  -- ** xcb_void_cookie_t xcb_render_composite
  -- ** 
  -- ** @param xcb_connection_t     *c
  -- ** @param uint8_t               op
  -- ** @param xcb_render_picture_t  src
  -- ** @param xcb_render_picture_t  mask
  -- ** @param xcb_render_picture_t  dst
  -- ** @param int16_t               src_x
  -- ** @param int16_t               src_y
  -- ** @param int16_t               mask_x
  -- ** @param int16_t               mask_y
  -- ** @param int16_t               dst_x
  -- ** @param int16_t               dst_y
  -- ** @param uint16_t              width
  -- ** @param uint16_t              height
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_composite
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_render_picture_t;
      arg4 : xcb_render_picture_t;
      arg5 : xcb_render_picture_t;
      arg6 : sys_types_h.int16_t;
      arg7 : sys_types_h.int16_t;
      arg8 : sys_types_h.int16_t;
      arg9 : sys_types_h.int16_t;
      arg10 : sys_types_h.int16_t;
      arg11 : sys_types_h.int16_t;
      arg12 : stdint_h.uint16_t;
      arg13 : stdint_h.uint16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:2643
   pragma Import (C, xcb_render_composite, "xcb_render_composite");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_render_trapezoids_sizeof (arg1 : System.Address; arg2 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/render.h:2658
   pragma Import (C, xcb_render_trapezoids_sizeof, "xcb_render_trapezoids_sizeof");

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
  -- ** xcb_void_cookie_t xcb_render_trapezoids_checked
  -- ** 
  -- ** @param xcb_connection_t             *c
  -- ** @param uint8_t                       op
  -- ** @param xcb_render_picture_t          src
  -- ** @param xcb_render_picture_t          dst
  -- ** @param xcb_render_pictformat_t       mask_format
  -- ** @param int16_t                       src_x
  -- ** @param int16_t                       src_y
  -- ** @param uint32_t                      traps_len
  -- ** @param const xcb_render_trapezoid_t *traps
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_trapezoids_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_render_picture_t;
      arg4 : xcb_render_picture_t;
      arg5 : xcb_render_pictformat_t;
      arg6 : sys_types_h.int16_t;
      arg7 : sys_types_h.int16_t;
      arg8 : stdint_h.uint32_t;
      arg9 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:2691
   pragma Import (C, xcb_render_trapezoids_checked, "xcb_render_trapezoids_checked");

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
  -- ** xcb_void_cookie_t xcb_render_trapezoids
  -- ** 
  -- ** @param xcb_connection_t             *c
  -- ** @param uint8_t                       op
  -- ** @param xcb_render_picture_t          src
  -- ** @param xcb_render_picture_t          dst
  -- ** @param xcb_render_pictformat_t       mask_format
  -- ** @param int16_t                       src_x
  -- ** @param int16_t                       src_y
  -- ** @param uint32_t                      traps_len
  -- ** @param const xcb_render_trapezoid_t *traps
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_trapezoids
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_render_picture_t;
      arg4 : xcb_render_picture_t;
      arg5 : xcb_render_pictformat_t;
      arg6 : sys_types_h.int16_t;
      arg7 : sys_types_h.int16_t;
      arg8 : stdint_h.uint32_t;
      arg9 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:2728
   pragma Import (C, xcb_render_trapezoids, "xcb_render_trapezoids");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_render_triangles_sizeof (arg1 : System.Address; arg2 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/render.h:2739
   pragma Import (C, xcb_render_triangles_sizeof, "xcb_render_triangles_sizeof");

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
  -- ** xcb_void_cookie_t xcb_render_triangles_checked
  -- ** 
  -- ** @param xcb_connection_t            *c
  -- ** @param uint8_t                      op
  -- ** @param xcb_render_picture_t         src
  -- ** @param xcb_render_picture_t         dst
  -- ** @param xcb_render_pictformat_t      mask_format
  -- ** @param int16_t                      src_x
  -- ** @param int16_t                      src_y
  -- ** @param uint32_t                     triangles_len
  -- ** @param const xcb_render_triangle_t *triangles
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_triangles_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_render_picture_t;
      arg4 : xcb_render_picture_t;
      arg5 : xcb_render_pictformat_t;
      arg6 : sys_types_h.int16_t;
      arg7 : sys_types_h.int16_t;
      arg8 : stdint_h.uint32_t;
      arg9 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:2772
   pragma Import (C, xcb_render_triangles_checked, "xcb_render_triangles_checked");

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
  -- ** xcb_void_cookie_t xcb_render_triangles
  -- ** 
  -- ** @param xcb_connection_t            *c
  -- ** @param uint8_t                      op
  -- ** @param xcb_render_picture_t         src
  -- ** @param xcb_render_picture_t         dst
  -- ** @param xcb_render_pictformat_t      mask_format
  -- ** @param int16_t                      src_x
  -- ** @param int16_t                      src_y
  -- ** @param uint32_t                     triangles_len
  -- ** @param const xcb_render_triangle_t *triangles
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_triangles
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_render_picture_t;
      arg4 : xcb_render_picture_t;
      arg5 : xcb_render_pictformat_t;
      arg6 : sys_types_h.int16_t;
      arg7 : sys_types_h.int16_t;
      arg8 : stdint_h.uint32_t;
      arg9 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:2809
   pragma Import (C, xcb_render_triangles, "xcb_render_triangles");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_render_tri_strip_sizeof (arg1 : System.Address; arg2 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/render.h:2820
   pragma Import (C, xcb_render_tri_strip_sizeof, "xcb_render_tri_strip_sizeof");

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
  -- ** xcb_void_cookie_t xcb_render_tri_strip_checked
  -- ** 
  -- ** @param xcb_connection_t            *c
  -- ** @param uint8_t                      op
  -- ** @param xcb_render_picture_t         src
  -- ** @param xcb_render_picture_t         dst
  -- ** @param xcb_render_pictformat_t      mask_format
  -- ** @param int16_t                      src_x
  -- ** @param int16_t                      src_y
  -- ** @param uint32_t                     points_len
  -- ** @param const xcb_render_pointfix_t *points
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_tri_strip_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_render_picture_t;
      arg4 : xcb_render_picture_t;
      arg5 : xcb_render_pictformat_t;
      arg6 : sys_types_h.int16_t;
      arg7 : sys_types_h.int16_t;
      arg8 : stdint_h.uint32_t;
      arg9 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:2853
   pragma Import (C, xcb_render_tri_strip_checked, "xcb_render_tri_strip_checked");

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
  -- ** xcb_void_cookie_t xcb_render_tri_strip
  -- ** 
  -- ** @param xcb_connection_t            *c
  -- ** @param uint8_t                      op
  -- ** @param xcb_render_picture_t         src
  -- ** @param xcb_render_picture_t         dst
  -- ** @param xcb_render_pictformat_t      mask_format
  -- ** @param int16_t                      src_x
  -- ** @param int16_t                      src_y
  -- ** @param uint32_t                     points_len
  -- ** @param const xcb_render_pointfix_t *points
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_tri_strip
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_render_picture_t;
      arg4 : xcb_render_picture_t;
      arg5 : xcb_render_pictformat_t;
      arg6 : sys_types_h.int16_t;
      arg7 : sys_types_h.int16_t;
      arg8 : stdint_h.uint32_t;
      arg9 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:2890
   pragma Import (C, xcb_render_tri_strip, "xcb_render_tri_strip");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_render_tri_fan_sizeof (arg1 : System.Address; arg2 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/render.h:2901
   pragma Import (C, xcb_render_tri_fan_sizeof, "xcb_render_tri_fan_sizeof");

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
  -- ** xcb_void_cookie_t xcb_render_tri_fan_checked
  -- ** 
  -- ** @param xcb_connection_t            *c
  -- ** @param uint8_t                      op
  -- ** @param xcb_render_picture_t         src
  -- ** @param xcb_render_picture_t         dst
  -- ** @param xcb_render_pictformat_t      mask_format
  -- ** @param int16_t                      src_x
  -- ** @param int16_t                      src_y
  -- ** @param uint32_t                     points_len
  -- ** @param const xcb_render_pointfix_t *points
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_tri_fan_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_render_picture_t;
      arg4 : xcb_render_picture_t;
      arg5 : xcb_render_pictformat_t;
      arg6 : sys_types_h.int16_t;
      arg7 : sys_types_h.int16_t;
      arg8 : stdint_h.uint32_t;
      arg9 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:2934
   pragma Import (C, xcb_render_tri_fan_checked, "xcb_render_tri_fan_checked");

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
  -- ** xcb_void_cookie_t xcb_render_tri_fan
  -- ** 
  -- ** @param xcb_connection_t            *c
  -- ** @param uint8_t                      op
  -- ** @param xcb_render_picture_t         src
  -- ** @param xcb_render_picture_t         dst
  -- ** @param xcb_render_pictformat_t      mask_format
  -- ** @param int16_t                      src_x
  -- ** @param int16_t                      src_y
  -- ** @param uint32_t                     points_len
  -- ** @param const xcb_render_pointfix_t *points
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_tri_fan
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_render_picture_t;
      arg4 : xcb_render_picture_t;
      arg5 : xcb_render_pictformat_t;
      arg6 : sys_types_h.int16_t;
      arg7 : sys_types_h.int16_t;
      arg8 : stdint_h.uint32_t;
      arg9 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:2971
   pragma Import (C, xcb_render_tri_fan, "xcb_render_tri_fan");

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
  -- ** xcb_void_cookie_t xcb_render_create_glyph_set_checked
  -- ** 
  -- ** @param xcb_connection_t        *c
  -- ** @param xcb_render_glyphset_t    gsid
  -- ** @param xcb_render_pictformat_t  format
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_create_glyph_set_checked
     (arg1 : System.Address;
      arg2 : xcb_render_glyphset_t;
      arg3 : xcb_render_pictformat_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:3005
   pragma Import (C, xcb_render_create_glyph_set_checked, "xcb_render_create_glyph_set_checked");

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
  -- ** xcb_void_cookie_t xcb_render_create_glyph_set
  -- ** 
  -- ** @param xcb_connection_t        *c
  -- ** @param xcb_render_glyphset_t    gsid
  -- ** @param xcb_render_pictformat_t  format
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_create_glyph_set
     (arg1 : System.Address;
      arg2 : xcb_render_glyphset_t;
      arg3 : xcb_render_pictformat_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:3030
   pragma Import (C, xcb_render_create_glyph_set, "xcb_render_create_glyph_set");

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
  -- ** xcb_void_cookie_t xcb_render_reference_glyph_set_checked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_render_glyphset_t  gsid
  -- ** @param xcb_render_glyphset_t  existing
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_reference_glyph_set_checked
     (arg1 : System.Address;
      arg2 : xcb_render_glyphset_t;
      arg3 : xcb_render_glyphset_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:3058
   pragma Import (C, xcb_render_reference_glyph_set_checked, "xcb_render_reference_glyph_set_checked");

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
  -- ** xcb_void_cookie_t xcb_render_reference_glyph_set
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_render_glyphset_t  gsid
  -- ** @param xcb_render_glyphset_t  existing
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_reference_glyph_set
     (arg1 : System.Address;
      arg2 : xcb_render_glyphset_t;
      arg3 : xcb_render_glyphset_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:3083
   pragma Import (C, xcb_render_reference_glyph_set, "xcb_render_reference_glyph_set");

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
  -- ** xcb_void_cookie_t xcb_render_free_glyph_set_checked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_render_glyphset_t  glyphset
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_free_glyph_set_checked (arg1 : System.Address; arg2 : xcb_render_glyphset_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:3110
   pragma Import (C, xcb_render_free_glyph_set_checked, "xcb_render_free_glyph_set_checked");

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
  -- ** xcb_void_cookie_t xcb_render_free_glyph_set
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param xcb_render_glyphset_t  glyphset
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_free_glyph_set (arg1 : System.Address; arg2 : xcb_render_glyphset_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:3133
   pragma Import (C, xcb_render_free_glyph_set, "xcb_render_free_glyph_set");

  --*<  
  --*<  
   function xcb_render_add_glyphs_sizeof (arg1 : System.Address; arg2 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/render.h:3137
   pragma Import (C, xcb_render_add_glyphs_sizeof, "xcb_render_add_glyphs_sizeof");

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
  -- ** xcb_void_cookie_t xcb_render_add_glyphs_checked
  -- ** 
  -- ** @param xcb_connection_t             *c
  -- ** @param xcb_render_glyphset_t         glyphset
  -- ** @param uint32_t                      glyphs_len
  -- ** @param const uint32_t               *glyphids
  -- ** @param const xcb_render_glyphinfo_t *glyphs
  -- ** @param uint32_t                      data_len
  -- ** @param const uint8_t                *data
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_add_glyphs_checked
     (arg1 : System.Address;
      arg2 : xcb_render_glyphset_t;
      arg3 : stdint_h.uint32_t;
      arg4 : access stdint_h.uint32_t;
      arg5 : System.Address;
      arg6 : stdint_h.uint32_t;
      arg7 : access stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:3168
   pragma Import (C, xcb_render_add_glyphs_checked, "xcb_render_add_glyphs_checked");

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
  -- ** xcb_void_cookie_t xcb_render_add_glyphs
  -- ** 
  -- ** @param xcb_connection_t             *c
  -- ** @param xcb_render_glyphset_t         glyphset
  -- ** @param uint32_t                      glyphs_len
  -- ** @param const uint32_t               *glyphids
  -- ** @param const xcb_render_glyphinfo_t *glyphs
  -- ** @param uint32_t                      data_len
  -- ** @param const uint8_t                *data
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_add_glyphs
     (arg1 : System.Address;
      arg2 : xcb_render_glyphset_t;
      arg3 : stdint_h.uint32_t;
      arg4 : access stdint_h.uint32_t;
      arg5 : System.Address;
      arg6 : stdint_h.uint32_t;
      arg7 : access stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:3201
   pragma Import (C, xcb_render_add_glyphs, "xcb_render_add_glyphs");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_render_free_glyphs_sizeof (arg1 : System.Address; arg2 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/render.h:3210
   pragma Import (C, xcb_render_free_glyphs_sizeof, "xcb_render_free_glyphs_sizeof");

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
  -- ** xcb_void_cookie_t xcb_render_free_glyphs_checked
  -- ** 
  -- ** @param xcb_connection_t         *c
  -- ** @param xcb_render_glyphset_t     glyphset
  -- ** @param uint32_t                  glyphs_len
  -- ** @param const xcb_render_glyph_t *glyphs
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_free_glyphs_checked
     (arg1 : System.Address;
      arg2 : xcb_render_glyphset_t;
      arg3 : stdint_h.uint32_t;
      arg4 : access xcb_render_glyph_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:3238
   pragma Import (C, xcb_render_free_glyphs_checked, "xcb_render_free_glyphs_checked");

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
  -- ** xcb_void_cookie_t xcb_render_free_glyphs
  -- ** 
  -- ** @param xcb_connection_t         *c
  -- ** @param xcb_render_glyphset_t     glyphset
  -- ** @param uint32_t                  glyphs_len
  -- ** @param const xcb_render_glyph_t *glyphs
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_free_glyphs
     (arg1 : System.Address;
      arg2 : xcb_render_glyphset_t;
      arg3 : stdint_h.uint32_t;
      arg4 : access xcb_render_glyph_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:3265
   pragma Import (C, xcb_render_free_glyphs, "xcb_render_free_glyphs");

  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_render_composite_glyphs_8_sizeof (arg1 : System.Address; arg2 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/render.h:3271
   pragma Import (C, xcb_render_composite_glyphs_8_sizeof, "xcb_render_composite_glyphs_8_sizeof");

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
  -- ** xcb_void_cookie_t xcb_render_composite_glyphs_8_checked
  -- ** 
  -- ** @param xcb_connection_t        *c
  -- ** @param uint8_t                  op
  -- ** @param xcb_render_picture_t     src
  -- ** @param xcb_render_picture_t     dst
  -- ** @param xcb_render_pictformat_t  mask_format
  -- ** @param xcb_render_glyphset_t    glyphset
  -- ** @param int16_t                  src_x
  -- ** @param int16_t                  src_y
  -- ** @param uint32_t                 glyphcmds_len
  -- ** @param const uint8_t           *glyphcmds
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_composite_glyphs_8_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_render_picture_t;
      arg4 : xcb_render_picture_t;
      arg5 : xcb_render_pictformat_t;
      arg6 : xcb_render_glyphset_t;
      arg7 : sys_types_h.int16_t;
      arg8 : sys_types_h.int16_t;
      arg9 : stdint_h.uint32_t;
      arg10 : access stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:3305
   pragma Import (C, xcb_render_composite_glyphs_8_checked, "xcb_render_composite_glyphs_8_checked");

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
  -- ** xcb_void_cookie_t xcb_render_composite_glyphs_8
  -- ** 
  -- ** @param xcb_connection_t        *c
  -- ** @param uint8_t                  op
  -- ** @param xcb_render_picture_t     src
  -- ** @param xcb_render_picture_t     dst
  -- ** @param xcb_render_pictformat_t  mask_format
  -- ** @param xcb_render_glyphset_t    glyphset
  -- ** @param int16_t                  src_x
  -- ** @param int16_t                  src_y
  -- ** @param uint32_t                 glyphcmds_len
  -- ** @param const uint8_t           *glyphcmds
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_composite_glyphs_8
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_render_picture_t;
      arg4 : xcb_render_picture_t;
      arg5 : xcb_render_pictformat_t;
      arg6 : xcb_render_glyphset_t;
      arg7 : sys_types_h.int16_t;
      arg8 : sys_types_h.int16_t;
      arg9 : stdint_h.uint32_t;
      arg10 : access stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:3344
   pragma Import (C, xcb_render_composite_glyphs_8, "xcb_render_composite_glyphs_8");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_render_composite_glyphs_16_sizeof (arg1 : System.Address; arg2 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/render.h:3356
   pragma Import (C, xcb_render_composite_glyphs_16_sizeof, "xcb_render_composite_glyphs_16_sizeof");

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
  -- ** xcb_void_cookie_t xcb_render_composite_glyphs_16_checked
  -- ** 
  -- ** @param xcb_connection_t        *c
  -- ** @param uint8_t                  op
  -- ** @param xcb_render_picture_t     src
  -- ** @param xcb_render_picture_t     dst
  -- ** @param xcb_render_pictformat_t  mask_format
  -- ** @param xcb_render_glyphset_t    glyphset
  -- ** @param int16_t                  src_x
  -- ** @param int16_t                  src_y
  -- ** @param uint32_t                 glyphcmds_len
  -- ** @param const uint8_t           *glyphcmds
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_composite_glyphs_16_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_render_picture_t;
      arg4 : xcb_render_picture_t;
      arg5 : xcb_render_pictformat_t;
      arg6 : xcb_render_glyphset_t;
      arg7 : sys_types_h.int16_t;
      arg8 : sys_types_h.int16_t;
      arg9 : stdint_h.uint32_t;
      arg10 : access stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:3390
   pragma Import (C, xcb_render_composite_glyphs_16_checked, "xcb_render_composite_glyphs_16_checked");

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
  -- ** xcb_void_cookie_t xcb_render_composite_glyphs_16
  -- ** 
  -- ** @param xcb_connection_t        *c
  -- ** @param uint8_t                  op
  -- ** @param xcb_render_picture_t     src
  -- ** @param xcb_render_picture_t     dst
  -- ** @param xcb_render_pictformat_t  mask_format
  -- ** @param xcb_render_glyphset_t    glyphset
  -- ** @param int16_t                  src_x
  -- ** @param int16_t                  src_y
  -- ** @param uint32_t                 glyphcmds_len
  -- ** @param const uint8_t           *glyphcmds
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_composite_glyphs_16
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_render_picture_t;
      arg4 : xcb_render_picture_t;
      arg5 : xcb_render_pictformat_t;
      arg6 : xcb_render_glyphset_t;
      arg7 : sys_types_h.int16_t;
      arg8 : sys_types_h.int16_t;
      arg9 : stdint_h.uint32_t;
      arg10 : access stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:3429
   pragma Import (C, xcb_render_composite_glyphs_16, "xcb_render_composite_glyphs_16");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_render_composite_glyphs_32_sizeof (arg1 : System.Address; arg2 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/render.h:3441
   pragma Import (C, xcb_render_composite_glyphs_32_sizeof, "xcb_render_composite_glyphs_32_sizeof");

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
  -- ** xcb_void_cookie_t xcb_render_composite_glyphs_32_checked
  -- ** 
  -- ** @param xcb_connection_t        *c
  -- ** @param uint8_t                  op
  -- ** @param xcb_render_picture_t     src
  -- ** @param xcb_render_picture_t     dst
  -- ** @param xcb_render_pictformat_t  mask_format
  -- ** @param xcb_render_glyphset_t    glyphset
  -- ** @param int16_t                  src_x
  -- ** @param int16_t                  src_y
  -- ** @param uint32_t                 glyphcmds_len
  -- ** @param const uint8_t           *glyphcmds
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_composite_glyphs_32_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_render_picture_t;
      arg4 : xcb_render_picture_t;
      arg5 : xcb_render_pictformat_t;
      arg6 : xcb_render_glyphset_t;
      arg7 : sys_types_h.int16_t;
      arg8 : sys_types_h.int16_t;
      arg9 : stdint_h.uint32_t;
      arg10 : access stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:3475
   pragma Import (C, xcb_render_composite_glyphs_32_checked, "xcb_render_composite_glyphs_32_checked");

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
  -- ** xcb_void_cookie_t xcb_render_composite_glyphs_32
  -- ** 
  -- ** @param xcb_connection_t        *c
  -- ** @param uint8_t                  op
  -- ** @param xcb_render_picture_t     src
  -- ** @param xcb_render_picture_t     dst
  -- ** @param xcb_render_pictformat_t  mask_format
  -- ** @param xcb_render_glyphset_t    glyphset
  -- ** @param int16_t                  src_x
  -- ** @param int16_t                  src_y
  -- ** @param uint32_t                 glyphcmds_len
  -- ** @param const uint8_t           *glyphcmds
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_composite_glyphs_32
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_render_picture_t;
      arg4 : xcb_render_picture_t;
      arg5 : xcb_render_pictformat_t;
      arg6 : xcb_render_glyphset_t;
      arg7 : sys_types_h.int16_t;
      arg8 : sys_types_h.int16_t;
      arg9 : stdint_h.uint32_t;
      arg10 : access stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:3514
   pragma Import (C, xcb_render_composite_glyphs_32, "xcb_render_composite_glyphs_32");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_render_fill_rectangles_sizeof (arg1 : System.Address; arg2 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/render.h:3526
   pragma Import (C, xcb_render_fill_rectangles_sizeof, "xcb_render_fill_rectangles_sizeof");

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
  -- ** xcb_void_cookie_t xcb_render_fill_rectangles_checked
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param uint8_t                op
  -- ** @param xcb_render_picture_t   dst
  -- ** @param xcb_render_color_t     color
  -- ** @param uint32_t               rects_len
  -- ** @param const xcb_rectangle_t *rects
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_fill_rectangles_checked
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_render_picture_t;
      arg4 : xcb_render_color_t;
      arg5 : stdint_h.uint32_t;
      arg6 : access constant xcb_xproto_h.xcb_rectangle_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:3556
   pragma Import (C, xcb_render_fill_rectangles_checked, "xcb_render_fill_rectangles_checked");

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
  -- ** xcb_void_cookie_t xcb_render_fill_rectangles
  -- ** 
  -- ** @param xcb_connection_t      *c
  -- ** @param uint8_t                op
  -- ** @param xcb_render_picture_t   dst
  -- ** @param xcb_render_color_t     color
  -- ** @param uint32_t               rects_len
  -- ** @param const xcb_rectangle_t *rects
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_fill_rectangles
     (arg1 : System.Address;
      arg2 : stdint_h.uint8_t;
      arg3 : xcb_render_picture_t;
      arg4 : xcb_render_color_t;
      arg5 : stdint_h.uint32_t;
      arg6 : access constant xcb_xproto_h.xcb_rectangle_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:3587
   pragma Import (C, xcb_render_fill_rectangles, "xcb_render_fill_rectangles");

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
  -- ** xcb_void_cookie_t xcb_render_create_cursor_checked
  -- ** 
  -- ** @param xcb_connection_t     *c
  -- ** @param xcb_cursor_t          cid
  -- ** @param xcb_render_picture_t  source
  -- ** @param uint16_t              x
  -- ** @param uint16_t              y
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_create_cursor_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_cursor_t;
      arg3 : xcb_render_picture_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:3620
   pragma Import (C, xcb_render_create_cursor_checked, "xcb_render_create_cursor_checked");

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
  -- ** xcb_void_cookie_t xcb_render_create_cursor
  -- ** 
  -- ** @param xcb_connection_t     *c
  -- ** @param xcb_cursor_t          cid
  -- ** @param xcb_render_picture_t  source
  -- ** @param uint16_t              x
  -- ** @param uint16_t              y
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_create_cursor
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_cursor_t;
      arg3 : xcb_render_picture_t;
      arg4 : stdint_h.uint16_t;
      arg5 : stdint_h.uint16_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:3649
   pragma Import (C, xcb_render_create_cursor, "xcb_render_create_cursor");

  --*<  
  --*<  
  --*<  
  --*<  
  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_render_transform_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_render_transform_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_render_transform_next
  -- ** 
  -- ** @param xcb_render_transform_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_render_transform_next (arg1 : access xcb_render_transform_iterator_t);  -- /usr/include/xcb/render.h:3674
   pragma Import (C, xcb_render_transform_next, "xcb_render_transform_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_render_transform_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_render_transform_end
  -- ** 
  -- ** @param xcb_render_transform_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_transform_end (arg1 : xcb_render_transform_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/render.h:3696
   pragma Import (C, xcb_render_transform_end, "xcb_render_transform_end");

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
  -- ** xcb_void_cookie_t xcb_render_set_picture_transform_checked
  -- ** 
  -- ** @param xcb_connection_t       *c
  -- ** @param xcb_render_picture_t    picture
  -- ** @param xcb_render_transform_t  transform
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_set_picture_transform_checked
     (arg1 : System.Address;
      arg2 : xcb_render_picture_t;
      arg3 : xcb_render_transform_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:3722
   pragma Import (C, xcb_render_set_picture_transform_checked, "xcb_render_set_picture_transform_checked");

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
  -- ** xcb_void_cookie_t xcb_render_set_picture_transform
  -- ** 
  -- ** @param xcb_connection_t       *c
  -- ** @param xcb_render_picture_t    picture
  -- ** @param xcb_render_transform_t  transform
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_set_picture_transform
     (arg1 : System.Address;
      arg2 : xcb_render_picture_t;
      arg3 : xcb_render_transform_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:3747
   pragma Import (C, xcb_render_set_picture_transform, "xcb_render_set_picture_transform");

  --*<  
  --*<  
  --*<  
   function xcb_render_query_filters_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/render.h:3752
   pragma Import (C, xcb_render_query_filters_sizeof, "xcb_render_query_filters_sizeof");

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
  -- ** xcb_render_query_filters_cookie_t xcb_render_query_filters
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    drawable
  -- ** @returns xcb_render_query_filters_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_query_filters (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_drawable_t) return xcb_render_query_filters_cookie_t;  -- /usr/include/xcb/render.h:3774
   pragma Import (C, xcb_render_query_filters, "xcb_render_query_filters");

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
  -- ** xcb_render_query_filters_cookie_t xcb_render_query_filters_unchecked
  -- ** 
  -- ** @param xcb_connection_t *c
  -- ** @param xcb_drawable_t    drawable
  -- ** @returns xcb_render_query_filters_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_query_filters_unchecked (arg1 : System.Address; arg2 : xcb_xproto_h.xcb_drawable_t) return xcb_render_query_filters_cookie_t;  -- /usr/include/xcb/render.h:3800
   pragma Import (C, xcb_render_query_filters_unchecked, "xcb_render_query_filters_unchecked");

  --*<  
  --****************************************************************************
  -- **
  -- ** uint16_t * xcb_render_query_filters_aliases
  -- ** 
  -- ** @param const xcb_render_query_filters_reply_t *R
  -- ** @returns uint16_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_query_filters_aliases (arg1 : System.Address) return access stdint_h.uint16_t;  -- /usr/include/xcb/render.h:3814
   pragma Import (C, xcb_render_query_filters_aliases, "xcb_render_query_filters_aliases");

  --****************************************************************************
  -- **
  -- ** int xcb_render_query_filters_aliases_length
  -- ** 
  -- ** @param const xcb_render_query_filters_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_query_filters_aliases_length (arg1 : System.Address) return int;  -- /usr/include/xcb/render.h:3827
   pragma Import (C, xcb_render_query_filters_aliases_length, "xcb_render_query_filters_aliases_length");

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_render_query_filters_aliases_end
  -- ** 
  -- ** @param const xcb_render_query_filters_reply_t *R
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_query_filters_aliases_end (arg1 : System.Address) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/render.h:3840
   pragma Import (C, xcb_render_query_filters_aliases_end, "xcb_render_query_filters_aliases_end");

  --****************************************************************************
  -- **
  -- ** int xcb_render_query_filters_filters_length
  -- ** 
  -- ** @param const xcb_render_query_filters_reply_t *R
  -- ** @returns int
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_query_filters_filters_length (arg1 : System.Address) return int;  -- /usr/include/xcb/render.h:3853
   pragma Import (C, xcb_render_query_filters_filters_length, "xcb_render_query_filters_filters_length");

  --****************************************************************************
  -- **
  -- ** xcb_str_iterator_t xcb_render_query_filters_filters_iterator
  -- ** 
  -- ** @param const xcb_render_query_filters_reply_t *R
  -- ** @returns xcb_str_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_query_filters_filters_iterator (arg1 : System.Address) return xcb_xproto_h.xcb_str_iterator_t;  -- /usr/include/xcb/render.h:3866
   pragma Import (C, xcb_render_query_filters_filters_iterator, "xcb_render_query_filters_filters_iterator");

  --*
  -- * Return the reply
  -- * @param c      The connection
  -- * @param cookie The cookie
  -- * @param e      The xcb_generic_error_t supplied
  -- *
  -- * Returns the reply of the request asked by
  -- * 
  -- * The parameter @p e supplied to this function must be NULL if
  -- * xcb_render_query_filters_unchecked(). is used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * The returned value must be freed by the caller using free().
  --  

  --****************************************************************************
  -- **
  -- ** xcb_render_query_filters_reply_t * xcb_render_query_filters_reply
  -- ** 
  -- ** @param xcb_connection_t                   *c
  -- ** @param xcb_render_query_filters_cookie_t   cookie
  -- ** @param xcb_generic_error_t               **e
  -- ** @returns xcb_render_query_filters_reply_t *
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_query_filters_reply
     (arg1 : System.Address;
      arg2 : xcb_render_query_filters_cookie_t;
      arg3 : System.Address) return access xcb_render_query_filters_reply_t;  -- /usr/include/xcb/render.h:3895
   pragma Import (C, xcb_render_query_filters_reply, "xcb_render_query_filters_reply");

  --*<  
  --*<  
  --*<  
   function xcb_render_set_picture_filter_sizeof (arg1 : System.Address; arg2 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/render.h:3900
   pragma Import (C, xcb_render_set_picture_filter_sizeof, "xcb_render_set_picture_filter_sizeof");

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
  -- ** xcb_void_cookie_t xcb_render_set_picture_filter_checked
  -- ** 
  -- ** @param xcb_connection_t         *c
  -- ** @param xcb_render_picture_t      picture
  -- ** @param uint16_t                  filter_len
  -- ** @param const char               *filter
  -- ** @param uint32_t                  values_len
  -- ** @param const xcb_render_fixed_t *values
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_set_picture_filter_checked
     (arg1 : System.Address;
      arg2 : xcb_render_picture_t;
      arg3 : stdint_h.uint16_t;
      arg4 : Interfaces.C.Strings.chars_ptr;
      arg5 : stdint_h.uint32_t;
      arg6 : access xcb_render_fixed_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:3930
   pragma Import (C, xcb_render_set_picture_filter_checked, "xcb_render_set_picture_filter_checked");

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
  -- ** xcb_void_cookie_t xcb_render_set_picture_filter
  -- ** 
  -- ** @param xcb_connection_t         *c
  -- ** @param xcb_render_picture_t      picture
  -- ** @param uint16_t                  filter_len
  -- ** @param const char               *filter
  -- ** @param uint32_t                  values_len
  -- ** @param const xcb_render_fixed_t *values
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_set_picture_filter
     (arg1 : System.Address;
      arg2 : xcb_render_picture_t;
      arg3 : stdint_h.uint16_t;
      arg4 : Interfaces.C.Strings.chars_ptr;
      arg5 : stdint_h.uint32_t;
      arg6 : access xcb_render_fixed_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:3961
   pragma Import (C, xcb_render_set_picture_filter, "xcb_render_set_picture_filter");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_render_animcursorelt_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_render_animcursorelt_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_render_animcursorelt_next
  -- ** 
  -- ** @param xcb_render_animcursorelt_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_render_animcursorelt_next (arg1 : access xcb_render_animcursorelt_iterator_t);  -- /usr/include/xcb/render.h:3987
   pragma Import (C, xcb_render_animcursorelt_next, "xcb_render_animcursorelt_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_render_animcursorelt_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_render_animcursorelt_end
  -- ** 
  -- ** @param xcb_render_animcursorelt_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_animcursorelt_end (arg1 : xcb_render_animcursorelt_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/render.h:4009
   pragma Import (C, xcb_render_animcursorelt_end, "xcb_render_animcursorelt_end");

  --*<  
   function xcb_render_create_anim_cursor_sizeof (arg1 : System.Address; arg2 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/render.h:4012
   pragma Import (C, xcb_render_create_anim_cursor_sizeof, "xcb_render_create_anim_cursor_sizeof");

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
  -- ** xcb_void_cookie_t xcb_render_create_anim_cursor_checked
  -- ** 
  -- ** @param xcb_connection_t                 *c
  -- ** @param xcb_cursor_t                      cid
  -- ** @param uint32_t                          cursors_len
  -- ** @param const xcb_render_animcursorelt_t *cursors
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_create_anim_cursor_checked
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_cursor_t;
      arg3 : stdint_h.uint32_t;
      arg4 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:4040
   pragma Import (C, xcb_render_create_anim_cursor_checked, "xcb_render_create_anim_cursor_checked");

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
  -- ** xcb_void_cookie_t xcb_render_create_anim_cursor
  -- ** 
  -- ** @param xcb_connection_t                 *c
  -- ** @param xcb_cursor_t                      cid
  -- ** @param uint32_t                          cursors_len
  -- ** @param const xcb_render_animcursorelt_t *cursors
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_create_anim_cursor
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_cursor_t;
      arg3 : stdint_h.uint32_t;
      arg4 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:4067
   pragma Import (C, xcb_render_create_anim_cursor, "xcb_render_create_anim_cursor");

  --*<  
  --*<  
  --*<  
  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_render_spanfix_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_render_spanfix_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_render_spanfix_next
  -- ** 
  -- ** @param xcb_render_spanfix_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_render_spanfix_next (arg1 : access xcb_render_spanfix_iterator_t);  -- /usr/include/xcb/render.h:4091
   pragma Import (C, xcb_render_spanfix_next, "xcb_render_spanfix_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_render_spanfix_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_render_spanfix_end
  -- ** 
  -- ** @param xcb_render_spanfix_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_spanfix_end (arg1 : xcb_render_spanfix_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/render.h:4113
   pragma Import (C, xcb_render_spanfix_end, "xcb_render_spanfix_end");

  --*
  -- * Get the next element of the iterator
  -- * @param i Pointer to a xcb_render_trap_iterator_t
  -- *
  -- * Get the next element in the iterator. The member rem is
  -- * decreased by one. The member data points to the next
  -- * element. The member index is increased by sizeof(xcb_render_trap_t)
  --  

  --****************************************************************************
  -- **
  -- ** void xcb_render_trap_next
  -- ** 
  -- ** @param xcb_render_trap_iterator_t *i
  -- ** @returns void
  -- **
  -- **************************************************************************** 

  --*<  
   procedure xcb_render_trap_next (arg1 : access xcb_render_trap_iterator_t);  -- /usr/include/xcb/render.h:4134
   pragma Import (C, xcb_render_trap_next, "xcb_render_trap_next");

  --*
  -- * Return the iterator pointing to the last element
  -- * @param i An xcb_render_trap_iterator_t
  -- * @return  The iterator pointing to the last element
  -- *
  -- * Set the current element in the iterator to the last element.
  -- * The member rem is set to 0. The member data points to the
  -- * last element.
  --  

  --****************************************************************************
  -- **
  -- ** xcb_generic_iterator_t xcb_render_trap_end
  -- ** 
  -- ** @param xcb_render_trap_iterator_t i
  -- ** @returns xcb_generic_iterator_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_trap_end (arg1 : xcb_render_trap_iterator_t) return xcb_xcb_h.xcb_generic_iterator_t;  -- /usr/include/xcb/render.h:4156
   pragma Import (C, xcb_render_trap_end, "xcb_render_trap_end");

  --*<  
   function xcb_render_add_traps_sizeof (arg1 : System.Address; arg2 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/render.h:4159
   pragma Import (C, xcb_render_add_traps_sizeof, "xcb_render_add_traps_sizeof");

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
  -- ** xcb_void_cookie_t xcb_render_add_traps_checked
  -- ** 
  -- ** @param xcb_connection_t        *c
  -- ** @param xcb_render_picture_t     picture
  -- ** @param int16_t                  x_off
  -- ** @param int16_t                  y_off
  -- ** @param uint32_t                 traps_len
  -- ** @param const xcb_render_trap_t *traps
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_add_traps_checked
     (arg1 : System.Address;
      arg2 : xcb_render_picture_t;
      arg3 : sys_types_h.int16_t;
      arg4 : sys_types_h.int16_t;
      arg5 : stdint_h.uint32_t;
      arg6 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:4189
   pragma Import (C, xcb_render_add_traps_checked, "xcb_render_add_traps_checked");

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
  -- ** xcb_void_cookie_t xcb_render_add_traps
  -- ** 
  -- ** @param xcb_connection_t        *c
  -- ** @param xcb_render_picture_t     picture
  -- ** @param int16_t                  x_off
  -- ** @param int16_t                  y_off
  -- ** @param uint32_t                 traps_len
  -- ** @param const xcb_render_trap_t *traps
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_add_traps
     (arg1 : System.Address;
      arg2 : xcb_render_picture_t;
      arg3 : sys_types_h.int16_t;
      arg4 : sys_types_h.int16_t;
      arg5 : stdint_h.uint32_t;
      arg6 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:4220
   pragma Import (C, xcb_render_add_traps, "xcb_render_add_traps");

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
  -- ** xcb_void_cookie_t xcb_render_create_solid_fill_checked
  -- ** 
  -- ** @param xcb_connection_t     *c
  -- ** @param xcb_render_picture_t  picture
  -- ** @param xcb_render_color_t    color
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_create_solid_fill_checked
     (arg1 : System.Address;
      arg2 : xcb_render_picture_t;
      arg3 : xcb_render_color_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:4251
   pragma Import (C, xcb_render_create_solid_fill_checked, "xcb_render_create_solid_fill_checked");

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
  -- ** xcb_void_cookie_t xcb_render_create_solid_fill
  -- ** 
  -- ** @param xcb_connection_t     *c
  -- ** @param xcb_render_picture_t  picture
  -- ** @param xcb_render_color_t    color
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_create_solid_fill
     (arg1 : System.Address;
      arg2 : xcb_render_picture_t;
      arg3 : xcb_render_color_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:4276
   pragma Import (C, xcb_render_create_solid_fill, "xcb_render_create_solid_fill");

  --*<  
  --*<  
  --*<  
   function xcb_render_create_linear_gradient_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/render.h:4281
   pragma Import (C, xcb_render_create_linear_gradient_sizeof, "xcb_render_create_linear_gradient_sizeof");

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
  -- ** xcb_void_cookie_t xcb_render_create_linear_gradient_checked
  -- ** 
  -- ** @param xcb_connection_t         *c
  -- ** @param xcb_render_picture_t      picture
  -- ** @param xcb_render_pointfix_t     p1
  -- ** @param xcb_render_pointfix_t     p2
  -- ** @param uint32_t                  num_stops
  -- ** @param const xcb_render_fixed_t *stops
  -- ** @param const xcb_render_color_t *colors
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_create_linear_gradient_checked
     (arg1 : System.Address;
      arg2 : xcb_render_picture_t;
      arg3 : xcb_render_pointfix_t;
      arg4 : xcb_render_pointfix_t;
      arg5 : stdint_h.uint32_t;
      arg6 : access xcb_render_fixed_t;
      arg7 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:4311
   pragma Import (C, xcb_render_create_linear_gradient_checked, "xcb_render_create_linear_gradient_checked");

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
  -- ** xcb_void_cookie_t xcb_render_create_linear_gradient
  -- ** 
  -- ** @param xcb_connection_t         *c
  -- ** @param xcb_render_picture_t      picture
  -- ** @param xcb_render_pointfix_t     p1
  -- ** @param xcb_render_pointfix_t     p2
  -- ** @param uint32_t                  num_stops
  -- ** @param const xcb_render_fixed_t *stops
  -- ** @param const xcb_render_color_t *colors
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_create_linear_gradient
     (arg1 : System.Address;
      arg2 : xcb_render_picture_t;
      arg3 : xcb_render_pointfix_t;
      arg4 : xcb_render_pointfix_t;
      arg5 : stdint_h.uint32_t;
      arg6 : access xcb_render_fixed_t;
      arg7 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:4344
   pragma Import (C, xcb_render_create_linear_gradient, "xcb_render_create_linear_gradient");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_render_create_radial_gradient_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/render.h:4353
   pragma Import (C, xcb_render_create_radial_gradient_sizeof, "xcb_render_create_radial_gradient_sizeof");

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
  -- ** xcb_void_cookie_t xcb_render_create_radial_gradient_checked
  -- ** 
  -- ** @param xcb_connection_t         *c
  -- ** @param xcb_render_picture_t      picture
  -- ** @param xcb_render_pointfix_t     inner
  -- ** @param xcb_render_pointfix_t     outer
  -- ** @param xcb_render_fixed_t        inner_radius
  -- ** @param xcb_render_fixed_t        outer_radius
  -- ** @param uint32_t                  num_stops
  -- ** @param const xcb_render_fixed_t *stops
  -- ** @param const xcb_render_color_t *colors
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_create_radial_gradient_checked
     (arg1 : System.Address;
      arg2 : xcb_render_picture_t;
      arg3 : xcb_render_pointfix_t;
      arg4 : xcb_render_pointfix_t;
      arg5 : xcb_render_fixed_t;
      arg6 : xcb_render_fixed_t;
      arg7 : stdint_h.uint32_t;
      arg8 : access xcb_render_fixed_t;
      arg9 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:4385
   pragma Import (C, xcb_render_create_radial_gradient_checked, "xcb_render_create_radial_gradient_checked");

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
  -- ** xcb_void_cookie_t xcb_render_create_radial_gradient
  -- ** 
  -- ** @param xcb_connection_t         *c
  -- ** @param xcb_render_picture_t      picture
  -- ** @param xcb_render_pointfix_t     inner
  -- ** @param xcb_render_pointfix_t     outer
  -- ** @param xcb_render_fixed_t        inner_radius
  -- ** @param xcb_render_fixed_t        outer_radius
  -- ** @param uint32_t                  num_stops
  -- ** @param const xcb_render_fixed_t *stops
  -- ** @param const xcb_render_color_t *colors
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_create_radial_gradient
     (arg1 : System.Address;
      arg2 : xcb_render_picture_t;
      arg3 : xcb_render_pointfix_t;
      arg4 : xcb_render_pointfix_t;
      arg5 : xcb_render_fixed_t;
      arg6 : xcb_render_fixed_t;
      arg7 : stdint_h.uint32_t;
      arg8 : access xcb_render_fixed_t;
      arg9 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:4422
   pragma Import (C, xcb_render_create_radial_gradient, "xcb_render_create_radial_gradient");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
   function xcb_render_create_conical_gradient_sizeof (arg1 : System.Address) return int;  -- /usr/include/xcb/render.h:4433
   pragma Import (C, xcb_render_create_conical_gradient_sizeof, "xcb_render_create_conical_gradient_sizeof");

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
  -- ** xcb_void_cookie_t xcb_render_create_conical_gradient_checked
  -- ** 
  -- ** @param xcb_connection_t         *c
  -- ** @param xcb_render_picture_t      picture
  -- ** @param xcb_render_pointfix_t     center
  -- ** @param xcb_render_fixed_t        angle
  -- ** @param uint32_t                  num_stops
  -- ** @param const xcb_render_fixed_t *stops
  -- ** @param const xcb_render_color_t *colors
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_create_conical_gradient_checked
     (arg1 : System.Address;
      arg2 : xcb_render_picture_t;
      arg3 : xcb_render_pointfix_t;
      arg4 : xcb_render_fixed_t;
      arg5 : stdint_h.uint32_t;
      arg6 : access xcb_render_fixed_t;
      arg7 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:4463
   pragma Import (C, xcb_render_create_conical_gradient_checked, "xcb_render_create_conical_gradient_checked");

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
  -- ** xcb_void_cookie_t xcb_render_create_conical_gradient
  -- ** 
  -- ** @param xcb_connection_t         *c
  -- ** @param xcb_render_picture_t      picture
  -- ** @param xcb_render_pointfix_t     center
  -- ** @param xcb_render_fixed_t        angle
  -- ** @param uint32_t                  num_stops
  -- ** @param const xcb_render_fixed_t *stops
  -- ** @param const xcb_render_color_t *colors
  -- ** @returns xcb_void_cookie_t
  -- **
  -- **************************************************************************** 

  --*<  
   function xcb_render_create_conical_gradient
     (arg1 : System.Address;
      arg2 : xcb_render_picture_t;
      arg3 : xcb_render_pointfix_t;
      arg4 : xcb_render_fixed_t;
      arg5 : stdint_h.uint32_t;
      arg6 : access xcb_render_fixed_t;
      arg7 : System.Address) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/render.h:4496
   pragma Import (C, xcb_render_create_conical_gradient, "xcb_render_create_conical_gradient");

  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*<  
  --*
  -- * @}
  --  

end xcb_render_h;
