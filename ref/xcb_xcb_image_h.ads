with Interfaces.C; use Interfaces.C;
with stdint_h;
with xcb_xproto_h;
with System;
with xcb_shm_h;
with sys_types_h;
with xcb_xcb_h;

package xcb_xcb_image_h is

   type xcb_image_t is record
      width : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xcb_image.h:94
      height : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xcb_image.h:95
      format : aliased xcb_xproto_h.xcb_image_format_t;  -- /usr/include/xcb/xcb_image.h:96
      scanline_pad : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xcb_image.h:97
      depth : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xcb_image.h:100
      bpp : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xcb_image.h:105
      unit : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xcb_image.h:111
      plane_mask : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_image.h:117
      byte_order : aliased xcb_xproto_h.xcb_image_order_t;  -- /usr/include/xcb/xcb_image.h:127
      bit_order : aliased xcb_xproto_h.xcb_image_order_t;  -- /usr/include/xcb/xcb_image.h:135
      stride : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_image.h:140
      size : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_image.h:145
      base : System.Address;  -- /usr/include/xcb/xcb_image.h:150
      data : access stdint_h.uint8_t;  -- /usr/include/xcb/xcb_image.h:154
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_image_t);  -- /usr/include/xcb/xcb_image.h:92

   type xcb_shm_segment_info_t is record
      shmseg : aliased xcb_shm_h.xcb_shm_seg_t;  -- /usr/include/xcb/xcb_image.h:166
      shmid : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_image.h:167
      shmaddr : access stdint_h.uint8_t;  -- /usr/include/xcb/xcb_image.h:168
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_shm_segment_info_t);  -- /usr/include/xcb/xcb_image.h:164

   procedure xcb_image_annotate (arg1 : access xcb_image_t);  -- /usr/include/xcb/xcb_image.h:182
   pragma Import (C, xcb_image_annotate, "xcb_image_annotate");

   function xcb_image_create
     (arg1 : stdint_h.uint16_t;
      arg2 : stdint_h.uint16_t;
      arg3 : xcb_xproto_h.xcb_image_format_t;
      arg4 : stdint_h.uint8_t;
      arg5 : stdint_h.uint8_t;
      arg6 : stdint_h.uint8_t;
      arg7 : stdint_h.uint8_t;
      arg8 : xcb_xproto_h.xcb_image_order_t;
      arg9 : xcb_xproto_h.xcb_image_order_t;
      arg10 : System.Address;
      arg11 : stdint_h.uint32_t;
      arg12 : access stdint_h.uint8_t) return access xcb_image_t;  -- /usr/include/xcb/xcb_image.h:215
   pragma Import (C, xcb_image_create, "xcb_image_create");

   function xcb_image_create_native
     (arg1 : System.Address;
      arg2 : stdint_h.uint16_t;
      arg3 : stdint_h.uint16_t;
      arg4 : xcb_xproto_h.xcb_image_format_t;
      arg5 : stdint_h.uint8_t;
      arg6 : System.Address;
      arg7 : stdint_h.uint32_t;
      arg8 : access stdint_h.uint8_t) return access xcb_image_t;  -- /usr/include/xcb/xcb_image.h:256
   pragma Import (C, xcb_image_create_native, "xcb_image_create_native");

   procedure xcb_image_destroy (arg1 : access xcb_image_t);  -- /usr/include/xcb/xcb_image.h:276
   pragma Import (C, xcb_image_destroy, "xcb_image_destroy");

   function xcb_image_get
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_drawable_t;
      arg3 : sys_types_h.int16_t;
      arg4 : sys_types_h.int16_t;
      arg5 : stdint_h.uint16_t;
      arg6 : stdint_h.uint16_t;
      arg7 : stdint_h.uint32_t;
      arg8 : xcb_xproto_h.xcb_image_format_t) return access xcb_image_t;  -- /usr/include/xcb/xcb_image.h:307
   pragma Import (C, xcb_image_get, "xcb_image_get");

   function xcb_image_put
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_drawable_t;
      arg3 : xcb_xproto_h.xcb_gcontext_t;
      arg4 : access xcb_image_t;
      arg5 : sys_types_h.int16_t;
      arg6 : sys_types_h.int16_t;
      arg7 : stdint_h.uint8_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_image.h:347
   pragma Import (C, xcb_image_put, "xcb_image_put");

   function xcb_image_native
     (arg1 : System.Address;
      arg2 : access xcb_image_t;
      arg3 : int) return access xcb_image_t;  -- /usr/include/xcb/xcb_image.h:379
   pragma Import (C, xcb_image_native, "xcb_image_native");

   procedure xcb_image_put_pixel
     (arg1 : access xcb_image_t;
      arg2 : stdint_h.uint32_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t);  -- /usr/include/xcb/xcb_image.h:398
   pragma Import (C, xcb_image_put_pixel, "xcb_image_put_pixel");

   function xcb_image_get_pixel
     (arg1 : access xcb_image_t;
      arg2 : stdint_h.uint32_t;
      arg3 : stdint_h.uint32_t) return stdint_h.uint32_t;  -- /usr/include/xcb/xcb_image.h:417
   pragma Import (C, xcb_image_get_pixel, "xcb_image_get_pixel");

   function xcb_image_convert (arg1 : access xcb_image_t; arg2 : access xcb_image_t) return access xcb_image_t;  -- /usr/include/xcb/xcb_image.h:442
   pragma Import (C, xcb_image_convert, "xcb_image_convert");

   function xcb_image_subimage
     (arg1 : access xcb_image_t;
      arg2 : stdint_h.uint32_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : System.Address;
      arg7 : stdint_h.uint32_t;
      arg8 : access stdint_h.uint8_t) return access xcb_image_t;  -- /usr/include/xcb/xcb_image.h:468
   pragma Import (C, xcb_image_subimage, "xcb_image_subimage");

   function xcb_image_shm_put
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_drawable_t;
      arg3 : xcb_xproto_h.xcb_gcontext_t;
      arg4 : access xcb_image_t;
      arg5 : xcb_shm_segment_info_t;
      arg6 : sys_types_h.int16_t;
      arg7 : sys_types_h.int16_t;
      arg8 : sys_types_h.int16_t;
      arg9 : sys_types_h.int16_t;
      arg10 : stdint_h.uint16_t;
      arg11 : stdint_h.uint16_t;
      arg12 : stdint_h.uint8_t) return access xcb_image_t;  -- /usr/include/xcb/xcb_image.h:521
   pragma Import (C, xcb_image_shm_put, "xcb_image_shm_put");

   function xcb_image_shm_get
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_drawable_t;
      arg3 : access xcb_image_t;
      arg4 : xcb_shm_segment_info_t;
      arg5 : sys_types_h.int16_t;
      arg6 : sys_types_h.int16_t;
      arg7 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/xcb_image.h:558
   pragma Import (C, xcb_image_shm_get, "xcb_image_shm_get");

   function xcb_image_create_from_bitmap_data
     (arg1 : access stdint_h.uint8_t;
      arg2 : stdint_h.uint32_t;
      arg3 : stdint_h.uint32_t) return access xcb_image_t;  -- /usr/include/xcb/xcb_image.h:580
   pragma Import (C, xcb_image_create_from_bitmap_data, "xcb_image_create_from_bitmap_data");

   function xcb_create_pixmap_from_bitmap_data
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_drawable_t;
      arg3 : access stdint_h.uint8_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : stdint_h.uint32_t;
      arg7 : stdint_h.uint32_t;
      arg8 : stdint_h.uint32_t;
      arg9 : access xcb_xproto_h.xcb_gcontext_t) return xcb_xproto_h.xcb_pixmap_t;  -- /usr/include/xcb/xcb_image.h:609
   pragma Import (C, xcb_create_pixmap_from_bitmap_data, "xcb_create_pixmap_from_bitmap_data");

end xcb_xcb_image_h;
