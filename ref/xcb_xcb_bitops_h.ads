with Interfaces.C; use Interfaces.C;
with stdint_h;

package xcb_xcb_bitops_h is

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
  -- * @defgroup xcb__bitops XCB Bit Operations
  -- *
  -- * Inline functions for common bit ops used in XCB and elsewhere.
  -- *
  -- * @{
  --  

  --*
  -- * Create a low-order bitmask.
  -- * @param n Mask size.
  -- * @return Mask.
  -- *
  -- * Create a bitmask with the lower @p n bits set and the
  -- * rest of the word clear.
  -- * @ingroup xcb__bitops
  --  

   function xcb_mask (n : stdint_h.uint32_t) return stdint_h.uint32_t;  -- /usr/include/xcb/xcb_bitops.h:52
   pragma Import (C, xcb_mask, "xcb_mask");

  --*
  -- * Population count.
  -- * @param n Integer representing a bitset.
  -- * @return Number of 1 bits in the bitset.
  -- *
  -- * This is a reasonably fast algorithm for counting the bits
  -- * in a 32-bit word.  Currently a classic binary
  -- * divide-and-conquer popcount: popcount_2() from
  -- * http://en.wikipedia.org/wiki/Hamming_weight.
  -- * @ingroup xcb__bitops
  --  

  -- 15 ops, 3 long immediates, 14 stages, 9 alu ops, 9 alu stages  
   function xcb_popcount (x : stdint_h.uint32_t) return stdint_h.uint32_t;  -- /usr/include/xcb/xcb_bitops.h:73
   pragma Import (C, xcb_popcount, "xcb_popcount");

  --*
  -- * Round up to the next power-of-two unit size.
  -- * @param base Number to be rounded up.
  -- * @param pad Multiple to be rounded to; must be a power of two.
  -- * @return Rounded-up number.
  -- *
  -- * Rounds @p base up to a multiple of @p pad, where @p pad
  -- * is a power of two.  The more general case is handled by
  -- * xcb_roundup().
  -- * @ingroup xcb__bitops
  --  

   function xcb_roundup_2 (base : stdint_h.uint32_t; pad : stdint_h.uint32_t) return stdint_h.uint32_t;  -- /usr/include/xcb/xcb_bitops.h:98
   pragma Import (C, xcb_roundup_2, "xcb_roundup_2");

  --*
  -- * Round down to the next power-of-two unit size.
  -- * @param base Number to be rounded down.
  -- * @param pad Multiple to be rounded to; must be a power of two.
  -- * @return Rounded-down number.
  -- *
  -- * Rounds @p base down to a multiple of @p pad, where @p pad
  -- * is a power of two.  The more general case is handled by
  -- * xcb_rounddown().
  -- * @ingroup xcb__bitops
  --  

   function xcb_rounddown_2 (base : stdint_h.uint32_t; pad : stdint_h.uint32_t) return stdint_h.uint32_t;  -- /usr/include/xcb/xcb_bitops.h:115
   pragma Import (C, xcb_rounddown_2, "xcb_rounddown_2");

  --*
  -- * Round up to the next unit size.
  -- * @param base Number to be rounded up.
  -- * @param pad Multiple to be rounded to.
  -- * @return Rounded-up number.
  -- *
  -- * This is a general routine for rounding @p base up
  -- * to a multiple of @p pad.  If you know that @p pad
  -- * is a power of two, you should probably call xcb_roundup_2()
  -- * instead.
  -- * @ingroup xcb__bitops
  --  

   function xcb_roundup (base : stdint_h.uint32_t; pad : stdint_h.uint32_t) return stdint_h.uint32_t;  -- /usr/include/xcb/xcb_bitops.h:133
   pragma Import (C, xcb_roundup, "xcb_roundup");

  -- faster if pad is a power of two  
  --*
  -- * Round down to the next unit size.
  -- * @param base Number to be rounded down.
  -- * @param pad Multiple to be rounded to.
  -- * @return Rounded-down number.
  -- *
  -- * This is a general routine for rounding @p base down
  -- * to a multiple of @p pad.  If you know that @p pad
  -- * is a power of two, you should probably call xcb_rounddown_2()
  -- * instead.
  -- * @ingroup xcb__bitops
  --  

   function xcb_rounddown (base : stdint_h.uint32_t; pad : stdint_h.uint32_t) return stdint_h.uint32_t;  -- /usr/include/xcb/xcb_bitops.h:156
   pragma Import (C, xcb_rounddown, "xcb_rounddown");

  -- faster if pad is a power of two  
  --*
  -- * Reverse bits of word.
  -- * @param x Target word.
  -- * @param n Number of low-order bits to reverse.
  -- * @return Word with low @p n bits reversed, all others 0.
  -- *
  -- * Reverses the bottom @p n bits of @p x.
  -- * @ingroup xcb__bitops
  --  

   function xcb_bit_reverse (x : stdint_h.uint32_t; n : stdint_h.uint8_t) return stdint_h.uint32_t;  -- /usr/include/xcb/xcb_bitops.h:175
   pragma Import (C, xcb_bit_reverse, "xcb_bit_reverse");

  --*
  -- * Host byte order.
  -- * @return The byte order of the host.
  -- *
  -- * Tests the host's byte order and returns either
  -- * XCB_IMAGE_ORDER_MSB_FIRST or XCB_IMAGE_ORDER_LSB_FIRST
  -- * as appropriate.
  -- * @ingroup xcb__bitops
  --  

   function xcb_host_byte_order return int;  -- /usr/include/xcb/xcb_bitops.h:200
   pragma Import (C, xcb_host_byte_order, "xcb_host_byte_order");

end xcb_xcb_bitops_h;
