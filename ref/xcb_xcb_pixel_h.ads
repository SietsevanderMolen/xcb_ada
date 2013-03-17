with Interfaces.C; use Interfaces.C;
limited with xcb_xcb_image_h;
with stdint_h;

package xcb_xcb_pixel_h is

  -- Copyright (C) 2007 Bart Massey
  -- *
  -- * Permission is hereby granted, free of charge, to any person obtaining a
  -- * copy of this software and associated documentation files (the "Software"),
  -- * to deal in the Software without restriction, including without limitation
  -- * the rights to use, copy, modify, merge, publish, distribute, sublicense,
  -- * and/or sell copies of the Software, and to permit persons to whom the
  -- * Software is furnished to do so, subject to the following conditions:
  -- * 
  -- * The above copyright notice and this permission notice shall be included in
  -- * all copies or substantial portions of the Software.
  -- * 
  -- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  -- * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  -- * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  -- * AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
  -- * ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
  -- * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
  -- * 
  -- * Except as contained in this notice, the names of the authors or their
  -- * institutions shall not be used in advertising or otherwise to promote the
  -- * sale, use or other dealings in this Software without prior written
  -- * authorization from the authors.
  --  

  --*
  -- * XCB Image fast pixel ops.
  -- *
  -- * Fast inline versions of xcb_image_get_pixel() and
  -- * xcb_image_put_pixel() for various common cases.
  -- * The naming convention is xcb_image_put_pixel_FUB()
  -- * where F is the format and is either XY for bitmaps
  -- * or Z for pixmaps, U is the bitmap unit size or pixmap
  -- * bits-per-pixel, and B is the endianness (if needed)
  -- * and is either M for most-significant-first or L for
  -- * least-significant-first.  Note that no checking
  -- * is done on the arguments to these routines---caller beware.
  -- * Also note that the pixel type is chosen to be appropriate
  -- * to the unit; bitmaps use int and pixmaps use the appropriate
  -- * size of unsigned.
  -- * @ingroup xcb__image_t
  --  

   procedure xcb_image_put_pixel_XY32M
     (image : access xcb_xcb_image_h.xcb_image_t;
      x : stdint_h.uint32_t;
      y : stdint_h.uint32_t;
      pixel : int);  -- /usr/include/xcb/xcb_pixel.h:55
   pragma Import (C, xcb_image_put_pixel_XY32M, "xcb_image_put_pixel_XY32M");

   procedure xcb_image_put_pixel_XY32L
     (image : access xcb_xcb_image_h.xcb_image_t;
      x : stdint_h.uint32_t;
      y : stdint_h.uint32_t;
      pixel : int);  -- /usr/include/xcb/xcb_pixel.h:70
   pragma Import (C, xcb_image_put_pixel_XY32L, "xcb_image_put_pixel_XY32L");

   function xcb_image_get_pixel_XY32M
     (image : access xcb_xcb_image_h.xcb_image_t;
      x : stdint_h.uint32_t;
      y : stdint_h.uint32_t) return int;  -- /usr/include/xcb/xcb_pixel.h:83
   pragma Import (C, xcb_image_get_pixel_XY32M, "xcb_image_get_pixel_XY32M");

   function xcb_image_get_pixel_XY32L
     (image : access xcb_xcb_image_h.xcb_image_t;
      x : stdint_h.uint32_t;
      y : stdint_h.uint32_t) return int;  -- /usr/include/xcb/xcb_pixel.h:95
   pragma Import (C, xcb_image_get_pixel_XY32L, "xcb_image_get_pixel_XY32L");

   procedure xcb_image_put_pixel_Z8
     (image : access xcb_xcb_image_h.xcb_image_t;
      x : stdint_h.uint32_t;
      y : stdint_h.uint32_t;
      pixel : stdint_h.uint8_t);  -- /usr/include/xcb/xcb_pixel.h:105
   pragma Import (C, xcb_image_put_pixel_Z8, "xcb_image_put_pixel_Z8");

   function xcb_image_get_pixel_Z8
     (image : access xcb_xcb_image_h.xcb_image_t;
      x : stdint_h.uint32_t;
      y : stdint_h.uint32_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_pixel.h:114
   pragma Import (C, xcb_image_get_pixel_Z8, "xcb_image_get_pixel_Z8");

   procedure xcb_image_put_pixel_Z32M
     (image : access xcb_xcb_image_h.xcb_image_t;
      x : stdint_h.uint32_t;
      y : stdint_h.uint32_t;
      pixel : stdint_h.uint32_t);  -- /usr/include/xcb/xcb_pixel.h:122
   pragma Import (C, xcb_image_put_pixel_Z32M, "xcb_image_put_pixel_Z32M");

   procedure xcb_image_put_pixel_Z32L
     (image : access xcb_xcb_image_h.xcb_image_t;
      x : stdint_h.uint32_t;
      y : stdint_h.uint32_t;
      pixel : stdint_h.uint32_t);  -- /usr/include/xcb/xcb_pixel.h:135
   pragma Import (C, xcb_image_put_pixel_Z32L, "xcb_image_put_pixel_Z32L");

   function xcb_image_get_pixel_Z32M
     (image : access xcb_xcb_image_h.xcb_image_t;
      x : stdint_h.uint32_t;
      y : stdint_h.uint32_t) return stdint_h.uint32_t;  -- /usr/include/xcb/xcb_pixel.h:148
   pragma Import (C, xcb_image_get_pixel_Z32M, "xcb_image_get_pixel_Z32M");

   function xcb_image_get_pixel_Z32L
     (image : access xcb_xcb_image_h.xcb_image_t;
      x : stdint_h.uint32_t;
      y : stdint_h.uint32_t) return stdint_h.uint32_t;  -- /usr/include/xcb/xcb_pixel.h:160
   pragma Import (C, xcb_image_get_pixel_Z32L, "xcb_image_get_pixel_Z32L");

end xcb_xcb_pixel_h;
