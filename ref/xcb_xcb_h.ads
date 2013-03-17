with Interfaces.C; use Interfaces.C;
with System;
with stdint_h;
with Interfaces.C.Strings;
limited with xcb_xproto_h;

package xcb_xcb_h is

   --  unsupported macro: X_PROTOCOL 11
   --  unsupported macro: X_PROTOCOL_REVISION 0
   --  unsupported macro: X_TCP_PORT 6000
   --  unsupported macro: XCB_CONN_ERROR 1
   --  unsupported macro: XCB_CONN_CLOSED_EXT_NOTSUPPORTED 2
   --  unsupported macro: XCB_CONN_CLOSED_MEM_INSUFFICIENT 3
   --  unsupported macro: XCB_CONN_CLOSED_REQ_LEN_EXCEED 4
   --  unsupported macro: XCB_CONN_CLOSED_PARSE_ERR 5
   --  unsupported macro: XCB_CONN_CLOSED_INVALID_SCREEN 6
   --  arg-macro: function XCB_TYPE_PAD (T, I)
   --    return -(I) and (sizeof(T) > 4 ? 3 : sizeof(T) - 1);
   --  unsupported macro: XCB_NONE 0L
   --  unsupported macro: XCB_COPY_FROM_PARENT 0L
   --  unsupported macro: XCB_CURRENT_TIME 0L
   --  unsupported macro: XCB_NO_SYMBOL 0L
  -- * Copyright (C) 2001-2006 Bart Massey, Jamey Sharp, and Josh Triplett.
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

  --*
  -- * @file xcb.h
  --  

  --*
  -- * @defgroup XCB_Core_API XCB Core API
  -- * @brief Core API of the XCB library.
  -- *
  -- * @{
  --  

  -- Pre-defined constants  
  --* Current protocol version  
  --* Current minor version  
  --* X_TCP_PORT + display number = server port for TCP transport  
  --* xcb connection errors because of socket, pipe and other stream errors.  
  --* xcb connection shutdown because of extension not supported  
  --* malloc(), calloc() and realloc() error upon failure, for eg ENOMEM  
  --* Connection closed, exceeding request length that server accepts.  
  --* Connection closed, error during parsing display string.  
  --* Connection closed because the server does not have a screen matching the display.  
  -- Opaque structures  
  --*
  -- * @brief XCB Connection structure.
  -- *
  -- * A structure that contain all data that  XCB needs to communicate with an X server.
  --  

  --*< Opaque structure containing all data that  XCB needs to communicate with an X server.  
   --  skipped empty struct xcb_connection_t

  -- Other types  
  --*
  -- * @brief Generic iterator.
  -- *
  -- * A generic iterator structure.
  --  

  --*< Data of the current iterator  
  --*< remaining elements  
  --*< index of the current iterator  
   type xcb_generic_iterator_t is record
      data : System.Address;  -- /usr/include/xcb/xcb.h:110
      c_rem : aliased int;  -- /usr/include/xcb/xcb.h:111
      index : aliased int;  -- /usr/include/xcb/xcb.h:112
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_generic_iterator_t);  -- /usr/include/xcb/xcb.h:113

  --*
  -- * @brief Generic reply.
  -- *
  -- * A generic reply structure.
  --  

  --*< Type of the response  
  --*< Padding  
  --*< Sequence number  
  --*< Length of the response  
   type xcb_generic_reply_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xcb.h:121
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xcb.h:122
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xcb.h:123
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb.h:124
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_generic_reply_t);  -- /usr/include/xcb/xcb.h:125

  --*
  -- * @brief Generic event.
  -- *
  -- * A generic event structure.
  --  

  --*< Type of the response  
  --*< Padding  
  --*< Sequence number  
  --*< Padding  
  --*< full sequence  
   type xcb_generic_event_t_pad_array is array (0 .. 6) of aliased stdint_h.uint32_t;
   type xcb_generic_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xcb.h:133
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xcb.h:134
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xcb.h:135
      pad : aliased xcb_generic_event_t_pad_array;  -- /usr/include/xcb/xcb.h:136
      full_sequence : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb.h:137
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_generic_event_t);  -- /usr/include/xcb/xcb.h:138

  --*
  -- * @brief GE event
  -- *
  -- * An event as sent by the XGE extension. The length field specifies the
  -- * number of 4-byte blocks trailing the struct.
  --  

  --*< Type of the response  
  --*< Padding  
  --*< Sequence number  
  --*< Padding  
  --*< full sequence  
   type xcb_ge_event_t_pad_array is array (0 .. 4) of aliased stdint_h.uint32_t;
   type xcb_ge_event_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xcb.h:147
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xcb.h:148
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xcb.h:149
      length : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb.h:150
      event_type : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xcb.h:151
      pad1 : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xcb.h:152
      pad : aliased xcb_ge_event_t_pad_array;  -- /usr/include/xcb/xcb.h:153
      full_sequence : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb.h:154
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_ge_event_t);  -- /usr/include/xcb/xcb.h:155

  --*
  -- * @brief Generic error.
  -- *
  -- * A generic error structure.
  --  

  --*< Type of the response  
  --*< Error code  
  --*< Sequence number  
  --* < Resource ID for requests with side effects only  
  --* < Minor opcode of the failed request  
  --* < Major opcode of the failed request  
  --*< Padding  
  --*< full sequence  
   type xcb_generic_error_t_pad_array is array (0 .. 4) of aliased stdint_h.uint32_t;
   type xcb_generic_error_t is record
      response_type : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xcb.h:163
      error_code : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xcb.h:164
      sequence : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xcb.h:165
      resource_id : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb.h:166
      minor_code : aliased stdint_h.uint16_t;  -- /usr/include/xcb/xcb.h:167
      major_code : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xcb.h:168
      pad0 : aliased stdint_h.uint8_t;  -- /usr/include/xcb/xcb.h:169
      pad : aliased xcb_generic_error_t_pad_array;  -- /usr/include/xcb/xcb.h:170
      full_sequence : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb.h:171
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_generic_error_t);  -- /usr/include/xcb/xcb.h:172

  --*
  -- * @brief Generic cookie.
  -- *
  -- * A generic cookie structure.
  --  

  --*< Sequence number  
   type xcb_void_cookie_t is record
      sequence : aliased unsigned;  -- /usr/include/xcb/xcb.h:180
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_void_cookie_t);  -- /usr/include/xcb/xcb.h:181

  -- Include the generated xproto header.  
  --* XCB_NONE is the universal null resource or null atom parameter value for many core X requests  
  --* XCB_COPY_FROM_PARENT can be used for many xcb_create_window parameters  
  --* XCB_CURRENT_TIME can be used in most requests that take an xcb_timestamp_t  
  --* XCB_NO_SYMBOL fills in unused entries in xcb_keysym_t tables  
  -- xcb_auth.c  
  --*
  -- * @brief Container for authorization information.
  -- *
  -- * A container for authorization information to be sent to the X server.
  --  

  --*< Length of the string name (as returned by strlen).  
   type xcb_auth_info_t is record
      namelen : aliased int;  -- /usr/include/xcb/xcb.h:209
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/xcb.h:210
      datalen : aliased int;  -- /usr/include/xcb/xcb.h:211
      data : Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/xcb.h:212
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_auth_info_t);  -- /usr/include/xcb/xcb.h:208

  --*< String containing the authentication protocol name, such as "MIT-MAGIC-COOKIE-1" or "XDM-AUTHORIZATION-1".  
  --*< Length of the data member.  
  --*< Data interpreted in a protocol-specific manner.  
  -- xcb_out.c  
  --*
  -- * @brief Forces any buffered output to be written to the server.
  -- * @param c: The connection to the X server.
  -- * @return > @c 0 on success, <= @c 0 otherwise.
  -- *
  -- * Forces any buffered output to be written to the server. Blocks
  -- * until the write is complete.
  --  

   function xcb_flush (arg1 : System.Address) return int;  -- /usr/include/xcb/xcb.h:226
   pragma Import (C, xcb_flush, "xcb_flush");

  --*
  -- * @brief Returns the maximum request length that this server accepts.
  -- * @param c: The connection to the X server.
  -- * @return The maximum request length field.
  -- *
  -- * In the absence of the BIG-REQUESTS extension, returns the
  -- * maximum request length field from the connection setup data, which
  -- * may be as much as 65535. If the server supports BIG-REQUESTS, then
  -- * the maximum request length field from the reply to the
  -- * BigRequestsEnable request will be returned instead.
  -- *
  -- * Note that this length is measured in four-byte units, making the
  -- * theoretical maximum lengths roughly 256kB without BIG-REQUESTS and
  -- * 16GB with.
  --  

   function xcb_get_maximum_request_length (arg1 : System.Address) return stdint_h.uint32_t;  -- /usr/include/xcb/xcb.h:243
   pragma Import (C, xcb_get_maximum_request_length, "xcb_get_maximum_request_length");

  --*
  -- * @brief Prefetch the maximum request length without blocking.
  -- * @param c: The connection to the X server.
  -- *
  -- * Without blocking, does as much work as possible toward computing
  -- * the maximum request length accepted by the X server.
  -- *
  -- * Invoking this function may cause a call to xcb_big_requests_enable,
  -- * but will not block waiting for the reply.
  -- * xcb_get_maximum_request_length will return the prefetched data
  -- * after possibly blocking while the reply is retrieved.
  -- *
  -- * Note that in order for this function to be fully non-blocking, the
  -- * application must previously have called
  -- * xcb_prefetch_extension_data(c, &xcb_big_requests_id) and the reply
  -- * must have already arrived.
  --  

   procedure xcb_prefetch_maximum_request_length (arg1 : System.Address);  -- /usr/include/xcb/xcb.h:262
   pragma Import (C, xcb_prefetch_maximum_request_length, "xcb_prefetch_maximum_request_length");

  -- xcb_in.c  
  --*
  -- * @brief Returns the next event or error from the server.
  -- * @param c: The connection to the X server.
  -- * @return The next event from the server.
  -- *
  -- * Returns the next event or error from the server, or returns null in
  -- * the event of an I/O error. Blocks until either an event or error
  -- * arrive, or an I/O error occurs.
  --  

   function xcb_wait_for_event (arg1 : System.Address) return access xcb_generic_event_t;  -- /usr/include/xcb/xcb.h:276
   pragma Import (C, xcb_wait_for_event, "xcb_wait_for_event");

  --*
  -- * @brief Returns the next event or error from the server.
  -- * @param c: The connection to the X server.
  -- * error status of the operation.
  -- * @return The next event from the server.
  -- *
  -- * Returns the next event or error from the server, if one is
  -- * available, or returns @c NULL otherwise. If no event is available, that
  -- * might be because an I/O error like connection close occurred while
  -- * attempting to read the next event, in which case the connection is
  -- * shut down when this function returns.
  --  

   function xcb_poll_for_event (arg1 : System.Address) return access xcb_generic_event_t;  -- /usr/include/xcb/xcb.h:290
   pragma Import (C, xcb_poll_for_event, "xcb_poll_for_event");

  --*
  -- * @brief Returns the next event without reading from the connection.
  -- * @param c: The connection to the X server.
  -- * @return The next already queued event from the server.
  -- *
  -- * This is a version of xcb_poll_for_event that only examines the
  -- * event queue for new events. The function doesn't try to read new
  -- * events from the connection if no queued events are found.
  -- *
  -- * This function is useful for callers that know in advance that all
  -- * interesting events have already been read from the connection. For
  -- * example, callers might use xcb_wait_for_reply and be interested
  -- * only of events that preceded a specific reply.
  --  

   function xcb_poll_for_queued_event (arg1 : System.Address) return access xcb_generic_event_t;  -- /usr/include/xcb/xcb.h:306
   pragma Import (C, xcb_poll_for_queued_event, "xcb_poll_for_queued_event");

  --*
  -- * @brief Return the error for a request, or NULL if none can ever arrive.
  -- * @param c: The connection to the X server.
  -- * @param cookie: The request cookie.
  -- * @return The error for the request, or NULL if none can ever arrive.
  -- *
  -- * The xcb_void_cookie_t cookie supplied to this function must have resulted
  -- * from a call to xcb_[request_name]_checked().  This function will block
  -- * until one of two conditions happens.  If an error is received, it will be
  -- * returned.  If a reply to a subsequent request has already arrived, no error
  -- * can arrive for this request, so this function will return NULL.
  -- *
  -- * Note that this function will perform a sync if needed to ensure that the
  -- * sequence number will advance beyond that provided in cookie; this is a
  -- * convenience to avoid races in determining whether the sync is needed.
  --  

   function xcb_request_check (arg1 : System.Address; arg2 : xcb_void_cookie_t) return access xcb_generic_error_t;  -- /usr/include/xcb/xcb.h:324
   pragma Import (C, xcb_request_check, "xcb_request_check");

  --*
  -- * @brief Discards the reply for a request.
  -- * @param c: The connection to the X server.
  -- * @param sequence: The request sequence number from a cookie.
  -- *
  -- * Discards the reply for a request. Additionally, any error generated
  -- * by the request is also discarded (unless it was an _unchecked request
  -- * and the error has already arrived).
  -- *
  -- * This function will not block even if the reply is not yet available.
  -- *
  -- * Note that the sequence really does have to come from an xcb cookie;
  -- * this function is not designed to operate on socket-handoff replies.
  --  

   procedure xcb_discard_reply (arg1 : System.Address; arg2 : unsigned);  -- /usr/include/xcb/xcb.h:340
   pragma Import (C, xcb_discard_reply, "xcb_discard_reply");

  -- xcb_ext.c  
  --*
  -- * @typedef typedef struct xcb_extension_t xcb_extension_t
  --  

  --*< Opaque structure used as key for xcb_get_extension_data_t.  
   --  skipped empty struct xcb_extension_t

  --*
  -- * @brief Caches reply information from QueryExtension requests.
  -- * @param c: The connection.
  -- * @param ext: The extension data.
  -- * @return A pointer to the xcb_query_extension_reply_t for the extension.
  -- *
  -- * This function is the primary interface to the "extension cache",
  -- * which caches reply information from QueryExtension
  -- * requests. Invoking this function may cause a call to
  -- * xcb_query_extension to retrieve extension information from the
  -- * server, and may block until extension data is received from the
  -- * server.
  -- *
  -- * The result must not be freed. This storage is managed by the cache
  -- * itself.
  --  

   function xcb_get_extension_data (arg1 : System.Address; arg2 : System.Address) return access constant xcb_xproto_h.xcb_query_extension_reply_t;  -- /usr/include/xcb/xcb.h:366
   pragma Import (C, xcb_get_extension_data, "xcb_get_extension_data");

  --*
  -- * @brief Prefetch of extension data into the extension cache
  -- * @param c: The connection.
  -- * @param ext: The extension data.
  -- *
  -- * This function allows a "prefetch" of extension data into the
  -- * extension cache. Invoking the function may cause a call to
  -- * xcb_query_extension, but will not block waiting for the
  -- * reply. xcb_get_extension_data will return the prefetched data after
  -- * possibly blocking while it is retrieved.
  --  

   procedure xcb_prefetch_extension_data (arg1 : System.Address; arg2 : System.Address);  -- /usr/include/xcb/xcb.h:379
   pragma Import (C, xcb_prefetch_extension_data, "xcb_prefetch_extension_data");

  -- xcb_conn.c  
  --*
  -- * @brief Access the data returned by the server.
  -- * @param c: The connection.
  -- * @return A pointer to an xcb_setup_t structure.
  -- *
  -- * Accessor for the data returned by the server when the xcb_connection_t
  -- * was initialized. This data includes
  -- * - the server's required format for images,
  -- * - a list of available visuals,
  -- * - a list of available screens,
  -- * - the server's maximum request length (in the absence of the
  -- * BIG-REQUESTS extension),
  -- * - and other assorted information.
  -- *
  -- * See the X protocol specification for more details.
  -- *
  -- * The result must not be freed.
  --  

   function xcb_get_setup (arg1 : System.Address) return access constant xcb_xproto_h.xcb_setup_t;  -- /usr/include/xcb/xcb.h:402
   pragma Import (C, xcb_get_setup, "xcb_get_setup");

  --*
  -- * @brief Access the file descriptor of the connection.
  -- * @param c: The connection.
  -- * @return The file descriptor.
  -- *
  -- * Accessor for the file descriptor that was passed to the
  -- * xcb_connect_to_fd call that returned @p c.
  --  

   function xcb_get_file_descriptor (arg1 : System.Address) return int;  -- /usr/include/xcb/xcb.h:412
   pragma Import (C, xcb_get_file_descriptor, "xcb_get_file_descriptor");

  --*
  -- * @brief Test whether the connection has shut down due to a fatal error.
  -- * @param c: The connection.
  -- * @return > 0 if the connection is in an error state; 0 otherwise.
  -- *
  -- * Some errors that occur in the context of an xcb_connection_t
  -- * are unrecoverable. When such an error occurs, the
  -- * connection is shut down and further operations on the
  -- * xcb_connection_t have no effect.
  -- *
  -- * @return XCB_CONN_ERROR, because of socket errors, pipe errors or other stream errors.
  -- * @return XCB_CONN_CLOSED_EXT_NOTSUPPORTED, when extension not supported.
  -- * @return XCB_CONN_CLOSED_MEM_INSUFFICIENT, when memory not available.
  -- * @return XCB_CONN_CLOSED_REQ_LEN_EXCEED, exceeding request length that server accepts.
  -- * @return XCB_CONN_CLOSED_PARSE_ERR, error during parsing display string.
  -- * @return XCB_CONN_CLOSED_INVALID_SCREEN, because the server does not have a screen matching the display.
  --  

   function xcb_connection_has_error (arg1 : System.Address) return int;  -- /usr/include/xcb/xcb.h:431
   pragma Import (C, xcb_connection_has_error, "xcb_connection_has_error");

  --*
  -- * @brief Connects to the X server.
  -- * @param fd: The file descriptor.
  -- * @param auth_info: Authentication data.
  -- * @return A newly allocated xcb_connection_t structure.
  -- *
  -- * Connects to an X server, given the open socket @p fd and the
  -- * xcb_auth_info_t @p auth_info. The file descriptor @p fd is
  -- * bidirectionally connected to an X server. If the connection
  -- * should be unauthenticated, @p auth_info must be @c
  -- * NULL.
  --  

   function xcb_connect_to_fd (arg1 : int; arg2 : access xcb_auth_info_t) return System.Address;  -- /usr/include/xcb/xcb.h:445
   pragma Import (C, xcb_connect_to_fd, "xcb_connect_to_fd");

  --*
  -- * @brief Closes the connection.
  -- * @param c: The connection.
  -- *
  -- * Closes the file descriptor and frees all memory associated with the
  -- * connection @c c.
  --  

   procedure xcb_disconnect (arg1 : System.Address);  -- /usr/include/xcb/xcb.h:454
   pragma Import (C, xcb_disconnect, "xcb_disconnect");

  -- xcb_util.c  
  --*
  -- * @brief Parses a display string name in the form documented by X(7x).
  -- * @param name: The name of the display.
  -- * @param host: A pointer to a malloc'd copy of the hostname.
  -- * @param display: A pointer to the display number.
  -- * @param screen: A pointer to the screen number.
  -- * @return 0 on failure, non 0 otherwise.
  -- *
  -- * Parses the display string name @p display_name in the form
  -- * documented by X(7x). Has no side effects on failure. If
  -- * @p displayname is @c NULL or empty, it uses the environment
  -- * variable DISPLAY. @p hostp is a pointer to a newly allocated string
  -- * that contain the host name. @p displayp is set to the display
  -- * number and @p screenp to the preferred screen number. @p screenp
  -- * can be @c NULL. If @p displayname does not contain a screen number,
  -- * it is set to @c 0.
  --  

   function xcb_parse_display
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : System.Address;
      arg3 : access int;
      arg4 : access int) return int;  -- /usr/include/xcb/xcb.h:476
   pragma Import (C, xcb_parse_display, "xcb_parse_display");

  --*
  -- * @brief Connects to the X server.
  -- * @param displayname: The name of the display.
  -- * @param screenp: A pointer to a preferred screen number.
  -- * @return A newly allocated xcb_connection_t structure.
  -- *
  -- * Connects to the X server specified by @p displayname. If @p
  -- * displayname is @c NULL, uses the value of the DISPLAY environment
  -- * variable. If a particular screen on that server is preferred, the
  -- * int pointed to by @p screenp (if not @c NULL) will be set to that
  -- * screen; otherwise the screen will be set to 0.
  --  

   function xcb_connect (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : access int) return System.Address;  -- /usr/include/xcb/xcb.h:490
   pragma Import (C, xcb_connect, "xcb_connect");

  --*
  -- * @brief Connects to the X server, using an authorization information.
  -- * @param display: The name of the display.
  -- * @param auth: The authorization information.
  -- * @param screen: A pointer to a preferred screen number.
  -- * @return A newly allocated xcb_connection_t structure.
  -- *
  -- * Connects to the X server specified by @p displayname, using the
  -- * authorization @p auth. If a particular screen on that server is
  -- * preferred, the int pointed to by @p screenp (if not @c NULL) will
  -- * be set to that screen; otherwise @p screenp will be set to 0.
  --  

   function xcb_connect_to_display_with_auth_info
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : access xcb_auth_info_t;
      arg3 : access int) return System.Address;  -- /usr/include/xcb/xcb.h:504
   pragma Import (C, xcb_connect_to_display_with_auth_info, "xcb_connect_to_display_with_auth_info");

  -- xcb_xid.c  
  --*
  -- * @brief Allocates an XID for a new object.
  -- * @param c: The connection.
  -- * @return A newly allocated XID.
  -- *
  -- * Allocates an XID for a new object. Typically used just prior to
  -- * various object creation functions, such as xcb_create_window.
  --  

   function xcb_generate_id (arg1 : System.Address) return stdint_h.uint32_t;  -- /usr/include/xcb/xcb.h:517
   pragma Import (C, xcb_generate_id, "xcb_generate_id");

  --*
  -- * @}
  --  

end xcb_xcb_h;
