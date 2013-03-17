with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with stddef_h;
limited with xcb_xcb_h;
with stdint_h;
with System;
limited with bits_uio_h;

package xcb_xcbext_h is

  -- * Copyright (C) 2001-2004 Bart Massey and Jamey Sharp.
  -- * All Rights Reserved.
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

  -- xcb_ext.c  
   type xcb_extension_t is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/xcbext.h:40
      global_id : aliased int;  -- /usr/include/xcb/xcbext.h:41
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_extension_t);  -- /usr/include/xcb/xcbext.h:39

  -- xcb_out.c  
   type xcb_protocol_request_t is record
      count : aliased stddef_h.size_t;  -- /usr/include/xcb/xcbext.h:48
      ext : access xcb_xcb_h.xcb_extension_t;  -- /usr/include/xcb/xcbext.h:49
      opcode : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xcbext.h:50
      isvoid : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xcbext.h:51
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_protocol_request_t);  -- /usr/include/xcb/xcbext.h:52

   subtype xcb_send_request_flags_t is unsigned;
   XCB_REQUEST_CHECKED : constant xcb_send_request_flags_t := 1;
   XCB_REQUEST_RAW : constant xcb_send_request_flags_t := 2;
   XCB_REQUEST_DISCARD_REPLY : constant xcb_send_request_flags_t := 4;  -- /usr/include/xcb/xcbext.h:54

   function xcb_send_request
     (arg1 : System.Address;
      arg2 : int;
      arg3 : access bits_uio_h.iovec;
      arg4 : access constant xcb_protocol_request_t) return unsigned;  -- /usr/include/xcb/xcbext.h:60
   pragma Import (C, xcb_send_request, "xcb_send_request");

  -- xcb_take_socket allows external code to ask XCB for permission to
  -- * take over the write side of the socket and send raw data with
  -- * xcb_writev. xcb_take_socket provides the sequence number of the last
  -- * request XCB sent. The caller of xcb_take_socket must supply a
  -- * callback which XCB can call when it wants the write side of the
  -- * socket back to make a request. This callback synchronizes with the
  -- * external socket owner and flushes any output queues if appropriate.
  -- * If you are sending requests which won't cause a reply, please note the
  -- * comment for xcb_writev which explains some sequence number wrap issues.
  -- *  

   function xcb_take_socket
     (arg1 : System.Address;
      arg2 : access procedure (arg1 : System.Address);
      arg3 : System.Address;
      arg4 : int;
      arg5 : access stdint_h.uint64_t) return int;  -- /usr/include/xcb/xcbext.h:72
   pragma Import (C, xcb_take_socket, "xcb_take_socket");

  -- You must own the write-side of the socket (you've called
  -- * xcb_take_socket, and haven't returned from return_socket yet) to call
  -- * xcb_writev. Also, the iovec must have at least 1 byte of data in it.
  -- * You have to make sure that xcb can detect sequence number wraps correctly.
  -- * This means that the first request you send after xcb_take_socket must cause a
  -- * reply (e.g. just insert a GetInputFocus request). After every (1 << 16) - 1
  -- * requests without a reply, you have to insert a request which will cause a
  -- * reply. You can again use GetInputFocus for this. You do not have to wait for
  -- * any of the GetInputFocus replies, but can instead handle them via
  -- * xcb_discard_reply().  

   function xcb_writev
     (arg1 : System.Address;
      arg2 : access bits_uio_h.iovec;
      arg3 : int;
      arg4 : stdint_h.uint64_t) return int;  -- /usr/include/xcb/xcbext.h:84
   pragma Import (C, xcb_writev, "xcb_writev");

  -- xcb_in.c  
   function xcb_wait_for_reply
     (arg1 : System.Address;
      arg2 : unsigned;
      arg3 : System.Address) return System.Address;  -- /usr/include/xcb/xcbext.h:89
   pragma Import (C, xcb_wait_for_reply, "xcb_wait_for_reply");

   function xcb_poll_for_reply
     (arg1 : System.Address;
      arg2 : unsigned;
      arg3 : System.Address;
      arg4 : System.Address) return int;  -- /usr/include/xcb/xcbext.h:90
   pragma Import (C, xcb_poll_for_reply, "xcb_poll_for_reply");

  -- xcb_util.c  
   function xcb_popcount (arg1 : stdint_h.uint32_t) return int;  -- /usr/include/xcb/xcbext.h:95
   pragma Import (C, xcb_popcount, "xcb_popcount");

   function xcb_sumof (arg1 : access stdint_h.uint8_t; arg2 : int) return int;  -- /usr/include/xcb/xcbext.h:96
   pragma Import (C, xcb_sumof, "xcb_sumof");

end xcb_xcbext_h;
