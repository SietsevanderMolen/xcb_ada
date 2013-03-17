with Interfaces.C; use Interfaces.C;
with System;
with xcb_xproto_h;
with stdint_h;
with Interfaces.C.Strings;
with xcb_xcb_h;

package xcb_xcb_ewmh_h is

  -- * Copyright (C) 2009-2011 Arnaud Fontaine <arnau@debian.org>
  -- *
  -- * Permission  is  hereby  granted,  free  of charge,  to  any  person
  -- * obtaining  a copy  of  this software  and associated  documentation
  -- * files   (the  "Software"),   to  deal   in  the   Software  without
  -- * restriction, including without limitation  the rights to use, copy,
  -- * modify, merge, publish,  distribute, sublicense, and/or sell copies
  -- * of  the Software, and  to permit  persons to  whom the  Software is
  -- * furnished to do so, subject to the following conditions:
  -- *
  -- * The  above copyright  notice and  this permission  notice  shall be
  -- * included in all copies or substantial portions of the Software.
  -- *
  -- * THE SOFTWARE  IS PROVIDED  "AS IS", WITHOUT  WARRANTY OF  ANY KIND,
  -- * EXPRESS OR IMPLIED, INCLUDING BUT  NOT LIMITED TO THE WARRANTIES OF
  -- * MERCHANTABILITY,   FITNESS    FOR   A   PARTICULAR    PURPOSE   AND
  -- * NONINFRINGEMENT. IN  NO EVENT SHALL  THE AUTHORS BE LIABLE  FOR ANY
  -- * CLAIM,  DAMAGES  OR  OTHER  LIABILITY,  WHETHER  IN  AN  ACTION  OF
  -- * CONTRACT, TORT OR OTHERWISE, ARISING  FROM, OUT OF OR IN CONNECTION
  -- * WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
  -- *
  -- * Except as  contained in  this notice, the  names of the  authors or
  -- * their institutions shall not be used in advertising or otherwise to
  -- * promote the  sale, use or  other dealings in this  Software without
  -- * prior written authorization from the authors.
  --  

  --*
  -- * @defgroup xcb__ewmh_t XCB EWMH Functions
  -- *
  -- * These functions  allow easy handling  of the protocol  described in
  -- * the Extended Window Manager  Hints specification. The list of Atoms
  -- * is stored as an M4 file  (atomlist.m4) where each Atom is stored as
  -- * a variable defined in the header.
  -- *
  -- * Replies of requests generating a  list of pointers (such as list of
  -- * windows, atoms and UTF-8 strings)  are simply stored as a structure
  -- * holding  the XCB  reply which  should (usually)  never  be accessed
  -- * directly and has  to be wipe afterwards. This  structure provides a
  -- * convenient access to the list given in the reply itself.
  -- *
  -- * @{
  --  

  --*
  -- * @brief Hold EWMH information specific to a screen
  --  

  --* The X connection  
  --* The screens on this connection  
  --* _NET_WM_CM_Sn atoms depending on the number of screens  
  --* The EWMH atoms of this connection  
   type xcb_ewmh_connection_t is record
      connection : System.Address;  -- /usr/include/xcb/xcb_ewmh.h:61
      screens : System.Address;  -- /usr/include/xcb/xcb_ewmh.h:63
      nb_screens : aliased int;  -- /usr/include/xcb/xcb_ewmh.h:64
      u_NET_WM_CM_Sn : access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:66
      u_NET_SUPPORTED : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:68
      u_NET_CLIENT_LIST : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:69
      u_NET_CLIENT_LIST_STACKING : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:70
      u_NET_NUMBER_OF_DESKTOPS : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:71
      u_NET_DESKTOP_GEOMETRY : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:72
      u_NET_DESKTOP_VIEWPORT : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:73
      u_NET_CURRENT_DESKTOP : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:74
      u_NET_DESKTOP_NAMES : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:75
      u_NET_ACTIVE_WINDOW : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:76
      u_NET_WORKAREA : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:77
      u_NET_SUPPORTING_WM_CHECK : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:78
      u_NET_VIRTUAL_ROOTS : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:79
      u_NET_DESKTOP_LAYOUT : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:80
      u_NET_SHOWING_DESKTOP : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:81
      u_NET_CLOSE_WINDOW : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:82
      u_NET_MOVERESIZE_WINDOW : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:83
      u_NET_WM_MOVERESIZE : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:84
      u_NET_RESTACK_WINDOW : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:85
      u_NET_REQUEST_FRAME_EXTENTS : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:86
      u_NET_WM_NAME : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:87
      u_NET_WM_VISIBLE_NAME : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:88
      u_NET_WM_ICON_NAME : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:89
      u_NET_WM_VISIBLE_ICON_NAME : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:90
      u_NET_WM_DESKTOP : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:91
      u_NET_WM_WINDOW_TYPE : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:92
      u_NET_WM_STATE : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:93
      u_NET_WM_ALLOWED_ACTIONS : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:94
      u_NET_WM_STRUT : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:95
      u_NET_WM_STRUT_PARTIAL : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:96
      u_NET_WM_ICON_GEOMETRY : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:97
      u_NET_WM_ICON : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:98
      u_NET_WM_PID : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:99
      u_NET_WM_HANDLED_ICONS : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:100
      u_NET_WM_USER_TIME : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:101
      u_NET_WM_USER_TIME_WINDOW : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:102
      u_NET_FRAME_EXTENTS : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:103
      u_NET_WM_PING : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:104
      u_NET_WM_SYNC_REQUEST : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:105
      u_NET_WM_SYNC_REQUEST_COUNTER : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:106
      u_NET_WM_FULLSCREEN_MONITORS : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:107
      u_NET_WM_FULL_PLACEMENT : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:108
      UTF8_STRING : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:109
      WM_PROTOCOLS : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:110
      MANAGER : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:111
      u_NET_WM_WINDOW_TYPE_DESKTOP : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:112
      u_NET_WM_WINDOW_TYPE_DOCK : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:113
      u_NET_WM_WINDOW_TYPE_TOOLBAR : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:114
      u_NET_WM_WINDOW_TYPE_MENU : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:115
      u_NET_WM_WINDOW_TYPE_UTILITY : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:116
      u_NET_WM_WINDOW_TYPE_SPLASH : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:117
      u_NET_WM_WINDOW_TYPE_DIALOG : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:118
      u_NET_WM_WINDOW_TYPE_DROPDOWN_MENU : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:119
      u_NET_WM_WINDOW_TYPE_POPUP_MENU : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:120
      u_NET_WM_WINDOW_TYPE_TOOLTIP : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:121
      u_NET_WM_WINDOW_TYPE_NOTIFICATION : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:122
      u_NET_WM_WINDOW_TYPE_COMBO : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:123
      u_NET_WM_WINDOW_TYPE_DND : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:124
      u_NET_WM_WINDOW_TYPE_NORMAL : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:125
      u_NET_WM_STATE_MODAL : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:126
      u_NET_WM_STATE_STICKY : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:127
      u_NET_WM_STATE_MAXIMIZED_VERT : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:128
      u_NET_WM_STATE_MAXIMIZED_HORZ : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:129
      u_NET_WM_STATE_SHADED : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:130
      u_NET_WM_STATE_SKIP_TASKBAR : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:131
      u_NET_WM_STATE_SKIP_PAGER : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:132
      u_NET_WM_STATE_HIDDEN : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:133
      u_NET_WM_STATE_FULLSCREEN : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:134
      u_NET_WM_STATE_ABOVE : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:135
      u_NET_WM_STATE_BELOW : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:136
      u_NET_WM_STATE_DEMANDS_ATTENTION : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:137
      u_NET_WM_ACTION_MOVE : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:138
      u_NET_WM_ACTION_RESIZE : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:139
      u_NET_WM_ACTION_MINIMIZE : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:140
      u_NET_WM_ACTION_SHADE : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:141
      u_NET_WM_ACTION_STICK : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:142
      u_NET_WM_ACTION_MAXIMIZE_HORZ : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:143
      u_NET_WM_ACTION_MAXIMIZE_VERT : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:144
      u_NET_WM_ACTION_FULLSCREEN : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:145
      u_NET_WM_ACTION_CHANGE_DESKTOP : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:146
      u_NET_WM_ACTION_CLOSE : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:147
      u_NET_WM_ACTION_ABOVE : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:148
      u_NET_WM_ACTION_BELOW : aliased xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:149
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_ewmh_connection_t);  -- /usr/include/xcb/xcb_ewmh.h:150

  --*
  -- * @brief Hold a GetProperty reply containing a list of Atoms
  --  

  --* The number of Atoms  
  --* The list of Atoms  
  --* The actual GetProperty reply  
   type xcb_ewmh_get_atoms_reply_t is record
      atoms_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_ewmh.h:157
      atoms : access xcb_xproto_h.xcb_atom_t;  -- /usr/include/xcb/xcb_ewmh.h:159
      u_reply : access xcb_xproto_h.xcb_get_property_reply_t;  -- /usr/include/xcb/xcb_ewmh.h:161
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_ewmh_get_atoms_reply_t);  -- /usr/include/xcb/xcb_ewmh.h:162

  --*
  -- * @brief Hold a GetProperty reply containing a list of Windows
  --  

  --* The number of Windows  
  --* The list of Windows  
  --* The actual GetProperty reply  
   type xcb_ewmh_get_windows_reply_t is record
      windows_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_ewmh.h:169
      windows : access xcb_xproto_h.xcb_window_t;  -- /usr/include/xcb/xcb_ewmh.h:171
      u_reply : access xcb_xproto_h.xcb_get_property_reply_t;  -- /usr/include/xcb/xcb_ewmh.h:173
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_ewmh_get_windows_reply_t);  -- /usr/include/xcb/xcb_ewmh.h:174

  --*
  -- * @brief Hold a GetProperty reply containg a list of UTF-8 strings
  --  

  --* The number of UTF-8 strings  
  --* The list of UTF-8 strings  
  --* The actual GetProperty reply  
   type xcb_ewmh_get_utf8_strings_reply_t is record
      strings_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_ewmh.h:181
      strings : Interfaces.C.Strings.chars_ptr;  -- /usr/include/xcb/xcb_ewmh.h:183
      u_reply : access xcb_xproto_h.xcb_get_property_reply_t;  -- /usr/include/xcb/xcb_ewmh.h:185
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_ewmh_get_utf8_strings_reply_t);  -- /usr/include/xcb/xcb_ewmh.h:186

  --*
  -- * @brief Coordinates Property values
  --  

  --* The x coordinate  
  --* The y coordinate  
   type xcb_ewmh_coordinates_t is record
      x : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_ewmh.h:193
      y : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_ewmh.h:195
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_ewmh_coordinates_t);  -- /usr/include/xcb/xcb_ewmh.h:196

  --*
  -- * @brief Hold reply of _NET_DESKTOP_VIEWPORT GetProperty
  --  

  --* The number of desktop viewports  
  --* The desktop viewports  
  --* The actual GetProperty reply  
   type xcb_ewmh_get_desktop_viewport_reply_t is record
      desktop_viewport_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_ewmh.h:203
      desktop_viewport : access xcb_ewmh_coordinates_t;  -- /usr/include/xcb/xcb_ewmh.h:205
      u_reply : access xcb_xproto_h.xcb_get_property_reply_t;  -- /usr/include/xcb/xcb_ewmh.h:207
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_ewmh_get_desktop_viewport_reply_t);  -- /usr/include/xcb/xcb_ewmh.h:208

  --*
  -- * @brief Geometry Property values
  --  

  --* The x coordinate  
  --* The y coordinate  
  --* The width  
  --* The height  
   type xcb_ewmh_geometry_t is record
      x : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_ewmh.h:215
      y : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_ewmh.h:217
      width : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_ewmh.h:219
      height : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_ewmh.h:221
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_ewmh_geometry_t);  -- /usr/include/xcb/xcb_ewmh.h:222

  --*
  -- * @brief Hold reply of a _NET_WORKAREA GetProperty
  --  

  --* The number of desktop workarea  
  --* The list of desktop workarea  
  --* The actual GetProperty reply  
   type xcb_ewmh_get_workarea_reply_t is record
      workarea_len : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_ewmh.h:229
      workarea : access xcb_ewmh_geometry_t;  -- /usr/include/xcb/xcb_ewmh.h:231
      u_reply : access xcb_xproto_h.xcb_get_property_reply_t;  -- /usr/include/xcb/xcb_ewmh.h:233
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_ewmh_get_workarea_reply_t);  -- /usr/include/xcb/xcb_ewmh.h:234

  --*
  -- * @brief Source indication in requests
  --  

  --* No source at all (for clients supporting an older version of
  --      EWMH specification)  

  --* Normal application  
  --* Pagers and other clients that represent direct user actions  
   type xcb_ewmh_client_source_type_t is 
     (XCB_EWMH_CLIENT_SOURCE_TYPE_NONE,
      XCB_EWMH_CLIENT_SOURCE_TYPE_NORMAL,
      XCB_EWMH_CLIENT_SOURCE_TYPE_OTHER);
   pragma Convention (C, xcb_ewmh_client_source_type_t);  -- /usr/include/xcb/xcb_ewmh.h:247

  --*
  -- * @brief _NET_DESKTOP_LAYOUT orientation
  --  

  --* Horizontal orientation (desktops laid out in rows)  
  --* Vertical orientation (desktops laid out in columns)  
   type xcb_ewmh_desktop_layout_orientation_t is 
     (XCB_EWMH_WM_ORIENTATION_HORZ,
      XCB_EWMH_WM_ORIENTATION_VERT);
   pragma Convention (C, xcb_ewmh_desktop_layout_orientation_t);  -- /usr/include/xcb/xcb_ewmh.h:257

  --*
  -- * @brief _NET_DESKTOP_LAYOUT starting corner
  --  

  --* Starting corner on the top left  
  --* Starting corner on the top right  
  --* Starting corner on the bottom right  
  --* Starting corner on the bottom left  
   type xcb_ewmh_desktop_layout_starting_corner_t is 
     (XCB_EWMH_WM_TOPLEFT,
      XCB_EWMH_WM_TOPRIGHT,
      XCB_EWMH_WM_BOTTOMRIGHT,
      XCB_EWMH_WM_BOTTOMLEFT);
   pragma Convention (C, xcb_ewmh_desktop_layout_starting_corner_t);  -- /usr/include/xcb/xcb_ewmh.h:271

  --*
  -- * @brief Hold reply of a _NET_DESKTOP_LAYOUT GetProperty
  -- * @see xcb_ewmh_desktop_layout_orientation_t
  -- * @see xcb_ewmh_desktop_layout_starting_corner_t
  --  

  --* The desktops orientation  
  --* The number of columns  
  --* The number of rows  
  --* The desktops starting corner  
   type xcb_ewmh_get_desktop_layout_reply_t is record
      orientation : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_ewmh.h:280
      columns : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_ewmh.h:282
      rows : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_ewmh.h:284
      starting_corner : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_ewmh.h:286
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_ewmh_get_desktop_layout_reply_t);  -- /usr/include/xcb/xcb_ewmh.h:287

  --*
  -- * @brief _NET_WM_MOVERESIZE value when moving via keyboard
  -- * @see xcb_ewmh_moveresize_direction_t
  --  

  --* The window x coordinate  
  --* The window y coordinate  
  --* The window width  
  --* The window height  
   subtype xcb_ewmh_moveresize_window_opt_flags_t is unsigned;
   XCB_EWMH_MOVERESIZE_WINDOW_X : constant xcb_ewmh_moveresize_window_opt_flags_t := 256;
   XCB_EWMH_MOVERESIZE_WINDOW_Y : constant xcb_ewmh_moveresize_window_opt_flags_t := 512;
   XCB_EWMH_MOVERESIZE_WINDOW_WIDTH : constant xcb_ewmh_moveresize_window_opt_flags_t := 1024;
   XCB_EWMH_MOVERESIZE_WINDOW_HEIGHT : constant xcb_ewmh_moveresize_window_opt_flags_t := 2048;  -- /usr/include/xcb/xcb_ewmh.h:302

  --*
  -- * @brief _NET_WM_MOVERESIZE window movement or resizing
  --  

  --* Resizing applied on the top left edge  
  --* Resizing applied on the top edge  
  --* Resizing applied on the top right edge  
  --* Resizing applied on the right edge  
  --* Resizing applied on the bottom right edge  
  --* Resizing applied on the bottom edge  
  --* Resizing applied on the bottom left edge  
  --* Resizing applied on the left edge  
  -- Movement only  
  -- Size via keyboard  
  -- Move via keyboard  
  -- Cancel operation  
   type xcb_ewmh_moveresize_direction_t is 
     (XCB_EWMH_WM_MOVERESIZE_SIZE_TOPLEFT,
      XCB_EWMH_WM_MOVERESIZE_SIZE_TOP,
      XCB_EWMH_WM_MOVERESIZE_SIZE_TOPRIGHT,
      XCB_EWMH_WM_MOVERESIZE_SIZE_RIGHT,
      XCB_EWMH_WM_MOVERESIZE_SIZE_BOTTOMRIGHT,
      XCB_EWMH_WM_MOVERESIZE_SIZE_BOTTOM,
      XCB_EWMH_WM_MOVERESIZE_SIZE_BOTTOMLEFT,
      XCB_EWMH_WM_MOVERESIZE_SIZE_LEFT,
      XCB_EWMH_WM_MOVERESIZE_MOVE,
      XCB_EWMH_WM_MOVERESIZE_SIZE_KEYBOARD,
      XCB_EWMH_WM_MOVERESIZE_MOVE_KEYBOARD,
      XCB_EWMH_WM_MOVERESIZE_CANCEL);
   pragma Convention (C, xcb_ewmh_moveresize_direction_t);  -- /usr/include/xcb/xcb_ewmh.h:332

  --*
  -- * @brief Action on the _NET_WM_STATE property
  --  

  -- Remove/unset property  
  -- Add/set property  
  -- Toggle property   
   type xcb_ewmh_wm_state_action_t is 
     (XCB_EWMH_WM_STATE_REMOVE,
      XCB_EWMH_WM_STATE_ADD,
      XCB_EWMH_WM_STATE_TOGGLE);
   pragma Convention (C, xcb_ewmh_wm_state_action_t);  -- /usr/include/xcb/xcb_ewmh.h:344

  --*
  -- * @brief Hold reply of _NET_WM_STRUT_PARTIAL GetProperty
  --  

  --* Reserved space on the left border of the screen  
  --* Reserved space on the right border of the screen  
  --* Reserved space on the top border of the screen  
  --* Reserved space on the bottom border of the screen  
  --* Beginning y coordinate of the left strut  
  --* Ending y coordinate of the left strut  
  --* Beginning y coordinate of the right strut  
  --* Ending y coordinate of the right strut  
  --* Beginning x coordinate of the top strut  
  --* Ending x coordinate of the top strut  
  --* Beginning x coordinate of the bottom strut  
  --* Ending x coordinate of the bottom strut  
   type xcb_ewmh_wm_strut_partial_t is record
      left : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_ewmh.h:351
      right : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_ewmh.h:353
      top : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_ewmh.h:355
      bottom : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_ewmh.h:357
      left_start_y : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_ewmh.h:359
      left_end_y : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_ewmh.h:361
      right_start_y : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_ewmh.h:363
      right_end_y : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_ewmh.h:365
      top_start_x : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_ewmh.h:367
      top_end_x : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_ewmh.h:369
      bottom_start_x : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_ewmh.h:371
      bottom_end_x : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_ewmh.h:373
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_ewmh_wm_strut_partial_t);  -- /usr/include/xcb/xcb_ewmh.h:374

  --*
  -- * @brief Hold a single icon from reply of _NET_WM_ICON GetProperty
  --  

  --* Icon width  
  --* Icon height  
  --* Rows, left to right and top to bottom of the CARDINAL ARGB  
  --* Number of icons remaining  
  --* Index of the current icon in the array of icons  
   type xcb_ewmh_wm_icon_iterator_t is record
      width : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_ewmh.h:381
      height : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_ewmh.h:383
      data : access stdint_h.uint32_t;  -- /usr/include/xcb/xcb_ewmh.h:385
      c_rem : aliased unsigned;  -- /usr/include/xcb/xcb_ewmh.h:387
      index : aliased unsigned;  -- /usr/include/xcb/xcb_ewmh.h:389
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_ewmh_wm_icon_iterator_t);  -- /usr/include/xcb/xcb_ewmh.h:390

  --*
  -- * @brief Hold reply of _NET_WM_ICON GetProperty
  --  

  --* Number of icons  
  --* The actual GetProperty reply  
   type xcb_ewmh_get_wm_icon_reply_t is record
      num_icons : aliased unsigned;  -- /usr/include/xcb/xcb_ewmh.h:397
      u_reply : access xcb_xproto_h.xcb_get_property_reply_t;  -- /usr/include/xcb/xcb_ewmh.h:399
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_ewmh_get_wm_icon_reply_t);  -- /usr/include/xcb/xcb_ewmh.h:400

  --*
  -- * @brief Hold reply of _NET_REQUEST_FRAME_EXTENTS GetProperty
  --  

  --* Width of the left border  
  --* Width of the right border  
  --* Width of the top border  
  --* Width of the bottom border  
   type xcb_ewmh_get_extents_reply_t is record
      left : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_ewmh.h:407
      right : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_ewmh.h:409
      top : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_ewmh.h:411
      bottom : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_ewmh.h:413
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_ewmh_get_extents_reply_t);  -- /usr/include/xcb/xcb_ewmh.h:414

  --*
  -- * @brief Hold reply of _NET_WM_FULLSCREEN_MONITORS GetProperty
  --  

  --* Monitor whose top edge defines the top edge of the fullscreen
  --      window  

  --* Monitor whose bottom edge defines the bottom edge of the
  --      fullscreen window  

  --* Monitor whose left edge defines the left edge of the fullscreen
  --      window  

  --* Monitor whose right edge defines the right edge of the
  --      fullscreen window  

   type xcb_ewmh_get_wm_fullscreen_monitors_reply_t is record
      top : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_ewmh.h:422
      bottom : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_ewmh.h:425
      left : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_ewmh.h:428
      right : aliased stdint_h.uint32_t;  -- /usr/include/xcb/xcb_ewmh.h:431
   end record;
   pragma Convention (C_Pass_By_Copy, xcb_ewmh_get_wm_fullscreen_monitors_reply_t);  -- /usr/include/xcb/xcb_ewmh.h:432

  --*
  -- * @brief Send InternAtom requests for the EWMH atoms and its required atoms
  -- *
  -- * @param c The connection to the X server
  -- * @param ewmh The information relative to EWMH
  -- * @param screen_nbr The screen number
  -- * @return The cookies corresponding to EWMH atoms
  --  

   function xcb_ewmh_init_atoms (arg1 : System.Address; arg2 : access xcb_ewmh_connection_t) return access xcb_xproto_h.xcb_intern_atom_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:442
   pragma Import (C, xcb_ewmh_init_atoms, "xcb_ewmh_init_atoms");

  --*
  -- * @brief Process  the replies  to the screen  initialisation requests
  -- * previously sent
  -- *
  -- * @param emwh The information relative to EWMH
  -- * @param ewmh_cookies The cookies corresponding to EWMH atoms
  -- * @param e Error if any
  -- * @return Return 1 on success, 0 otherwise
  --  

   function xcb_ewmh_init_atoms_replies
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : access xcb_xproto_h.xcb_intern_atom_cookie_t;
      arg3 : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:454
   pragma Import (C, xcb_ewmh_init_atoms_replies, "xcb_ewmh_init_atoms_replies");

   procedure xcb_ewmh_connection_wipe (ewmh : access xcb_ewmh_connection_t);  -- /usr/include/xcb/xcb_ewmh.h:459
   pragma Import (C, xcb_ewmh_connection_wipe, "xcb_ewmh_connection_wipe");

  --*
  -- * @brief Send a SendEvent request containing a ClientMessage event
  -- *
  -- * This  function is  called  by all  the xcb_ewmh_request*  functions
  -- * whose should be used instead of calling directly this function
  -- *
  -- * @param c The X connection
  -- * @param window The window where the action will be applied
  -- * @param dest The destination window (usually the root window)
  -- * @param atom The type of the message
  -- * @param data_len The length of data to be sent
  -- * @param data The data to be sent
  -- * @return The cookie associated with the SendEvent request
  --  

   function xcb_ewmh_send_client_message
     (arg1 : System.Address;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_xproto_h.xcb_window_t;
      arg4 : xcb_xproto_h.xcb_atom_t;
      arg5 : stdint_h.uint32_t;
      arg6 : access stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:479
   pragma Import (C, xcb_ewmh_send_client_message, "xcb_ewmh_send_client_message");

   function xcb_ewmh_get_window_from_reply (arg1 : access xcb_xproto_h.xcb_window_t; arg2 : access xcb_xproto_h.xcb_get_property_reply_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:486
   pragma Import (C, xcb_ewmh_get_window_from_reply, "xcb_ewmh_get_window_from_reply");

   function xcb_ewmh_get_window_reply
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_get_property_cookie_t;
      arg3 : access xcb_xproto_h.xcb_window_t;
      arg4 : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:489
   pragma Import (C, xcb_ewmh_get_window_reply, "xcb_ewmh_get_window_reply");

   function xcb_ewmh_get_cardinal_from_reply (arg1 : access stdint_h.uint32_t; arg2 : access xcb_xproto_h.xcb_get_property_reply_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:494
   pragma Import (C, xcb_ewmh_get_cardinal_from_reply, "xcb_ewmh_get_cardinal_from_reply");

   function xcb_ewmh_get_cardinal_reply
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_get_property_cookie_t;
      arg3 : access stdint_h.uint32_t;
      arg4 : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:497
   pragma Import (C, xcb_ewmh_get_cardinal_reply, "xcb_ewmh_get_cardinal_reply");

  --*
  -- * @brief Get  a list  of atoms from  a given GetProperty  reply whose
  -- * type is ATOM
  -- *
  -- * This  function  is  called  by  all  the  xcb_ewmh_get_*_from_reply
  -- * functions  whose should  be used  instead of  calling  it directly.
  -- * Indeed,  The GetProperty request  has been  previously sent  by the
  -- * corresponding xcb_ewmh_get_*.
  -- *
  -- * @param atoms The atoms list
  -- * @param r The reply to get the atoms list from
  -- * @return Return 1 on success, 0 otherwise
  --  

   function xcb_ewmh_get_atoms_from_reply (arg1 : access xcb_ewmh_get_atoms_reply_t; arg2 : access xcb_xproto_h.xcb_get_property_reply_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:515
   pragma Import (C, xcb_ewmh_get_atoms_from_reply, "xcb_ewmh_get_atoms_from_reply");

  --*
  -- * @brief Get a list of atoms  from the reply of a GetProperty request
  -- * whose type is ATOM
  -- *
  -- * This function  is called by all  the xcb_ewmh_get_*_reply functions
  -- * whose  should   be  used  instead  of  calling   it  directly.  The
  -- * GetProperty request  has been previously sent  by the corresponding
  -- * xcb_ewmh_get_*.
  -- *
  -- * @param ewmh The per-screen EWMH specific information
  -- * @param cookie The GetProperty cookie
  -- * @param atoms The atoms list
  -- * @param e The error if any
  -- * @return Return 1 on success, 0 otherwise
  --  

   function xcb_ewmh_get_atoms_reply
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_get_property_cookie_t;
      arg3 : access xcb_ewmh_get_atoms_reply_t;
      arg4 : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:533
   pragma Import (C, xcb_ewmh_get_atoms_reply, "xcb_ewmh_get_atoms_reply");

  --*
  -- * @brief Wipe the Atoms list reply
  -- *
  -- * This function must be called to free the memory allocated for atoms
  -- * when the reply is requested in *_reply functions.
  -- *
  -- * @param data The X reply to be freed
  --  

   procedure xcb_ewmh_get_atoms_reply_wipe (arg1 : access xcb_ewmh_get_atoms_reply_t);  -- /usr/include/xcb/xcb_ewmh.h:546
   pragma Import (C, xcb_ewmh_get_atoms_reply_wipe, "xcb_ewmh_get_atoms_reply_wipe");

  --*
  -- * @brief Get  a list  of atoms from  a given GetProperty  reply whose
  -- * type is WINDOW
  -- *
  -- * This  function  is  called  by  all  the  xcb_ewmh_get_*_from_reply
  -- * functions  whose should  be used  instead of  calling  it directly.
  -- * Indeed,  The GetProperty request  has been  previously sent  by the
  -- * corresponding xcb_ewmh_get_*.
  -- *
  -- * @param atoms The atoms list
  -- * @param r The reply to get the atoms list from
  -- * @return Return 1 on success, 0 otherwise
  --  

   function xcb_ewmh_get_windows_from_reply (arg1 : access xcb_ewmh_get_windows_reply_t; arg2 : access xcb_xproto_h.xcb_get_property_reply_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:561
   pragma Import (C, xcb_ewmh_get_windows_from_reply, "xcb_ewmh_get_windows_from_reply");

   function xcb_ewmh_get_utf8_strings_from_reply
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : access xcb_ewmh_get_utf8_strings_reply_t;
      arg3 : access xcb_xproto_h.xcb_get_property_reply_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:564
   pragma Import (C, xcb_ewmh_get_utf8_strings_from_reply, "xcb_ewmh_get_utf8_strings_from_reply");

   function xcb_ewmh_get_utf8_strings_reply
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_get_property_cookie_t;
      arg3 : access xcb_ewmh_get_utf8_strings_reply_t;
      arg4 : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:568
   pragma Import (C, xcb_ewmh_get_utf8_strings_reply, "xcb_ewmh_get_utf8_strings_reply");

  --*
  -- * @brief Get a list of atoms  from the reply of a GetProperty request
  -- * whose type is WINDOW
  -- *
  -- * This function  is called by all  the xcb_ewmh_get_*_reply functions
  -- * whose  should   be  used  instead  of  calling   it  directly.  The
  -- * GetProperty request  has been previously sent  by the corresponding
  -- * xcb_ewmh_get_*.
  -- *
  -- * @param ewmh The per-screen EWMH specific information
  -- * @param cookie The GetProperty cookie
  -- * @param atoms The atoms list
  -- * @param e The error if any
  -- * @return Return 1 on success, 0 otherwise
  --  

   function xcb_ewmh_get_windows_reply
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_get_property_cookie_t;
      arg3 : access xcb_ewmh_get_windows_reply_t;
      arg4 : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:588
   pragma Import (C, xcb_ewmh_get_windows_reply, "xcb_ewmh_get_windows_reply");

  --*
  -- * @brief Wipe the windows list reply
  -- *
  -- * This function must  be called to the free  the memory allocated for
  -- * windows when the reply is requested in '_reply' functions.
  -- *
  -- * @param data The X reply to be freed
  --  

   procedure xcb_ewmh_get_windows_reply_wipe (arg1 : access xcb_ewmh_get_windows_reply_t);  -- /usr/include/xcb/xcb_ewmh.h:601
   pragma Import (C, xcb_ewmh_get_windows_reply_wipe, "xcb_ewmh_get_windows_reply_wipe");

  --*
  -- * @brief Wipe the UTF-8 strings list reply
  -- *
  -- * This function must  be called to the free  the memory allocated for
  -- * UTF-8 strings when the reply is requested in '_reply' functions.
  -- *
  -- * @param data The X reply to be freed
  --  

   procedure xcb_ewmh_get_utf8_strings_reply_wipe (arg1 : access xcb_ewmh_get_utf8_strings_reply_t);  -- /usr/include/xcb/xcb_ewmh.h:611
   pragma Import (C, xcb_ewmh_get_utf8_strings_reply_wipe, "xcb_ewmh_get_utf8_strings_reply_wipe");

  --*
  -- * @brief Send a ChangeProperty request for _NET_SUPPORTED
  -- *
  -- * _NET_SUPPORTED, ATOM[]/32
  -- *
  -- * @param ewmh The per-screen EWMH information
  -- * @param screen_nbr The screen number
  -- * @param list_len The number of Atoms supported by the WM
  -- * @param list The Atoms supported by the WM
  -- * @return Cookie associated with the ChangeProperty _NET_SUPPORTED request
  --  

   function xcb_ewmh_set_supported
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : int;
      arg3 : stdint_h.uint32_t;
      arg4 : access xcb_xproto_h.xcb_atom_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:624
   pragma Import (C, xcb_ewmh_set_supported, "xcb_ewmh_set_supported");

  --*
  -- * @see xcb_ewmh_set_supported
  --  

   function xcb_ewmh_set_supported_checked
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : int;
      arg3 : stdint_h.uint32_t;
      arg4 : access xcb_xproto_h.xcb_atom_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:632
   pragma Import (C, xcb_ewmh_set_supported_checked, "xcb_ewmh_set_supported_checked");

  --*
  -- * @brief Send  GetProperty request to get  _NET_SUPPORTED root window
  -- *        property
  -- *
  -- * _NET_SUPPORTED, ATOM[]/32
  -- *
  -- * This property MUST  be set by the Window  Manager to indicate which
  -- * hints it supports. For example: considering _NET_WM_STATE both this
  -- * atom   and   all   supported  states   e.g.    _NET_WM_STATE_MODAL,
  -- * _NET_WM_STATE_STICKY, would be  listed. This assumes that backwards
  -- * incompatible changes will  not be made to the  hints (without being
  -- * renamed).
  -- *
  -- * This form can be used only if  the request will cause a reply to be
  -- * generated. Any returned error will be placed in the event queue.
  -- *
  -- * @param ewmh The information relative to EWMH
  -- * @param screen_nbr The screen number
  -- * @return The _NET_SUPPORTED cookie of the GetProperty request
  --  

   function xcb_ewmh_get_supported_unchecked (arg1 : access xcb_ewmh_connection_t; arg2 : int) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:657
   pragma Import (C, xcb_ewmh_get_supported_unchecked, "xcb_ewmh_get_supported_unchecked");

  --*
  -- * @see xcb_ewmh_get_supported_unchecked
  --  

   function xcb_ewmh_get_supported (arg1 : access xcb_ewmh_connection_t; arg2 : int) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:663
   pragma Import (C, xcb_ewmh_get_supported, "xcb_ewmh_get_supported");

  --*
  -- * @brief Get the list of supported atoms
  -- *
  -- * @param supported The list of atoms contained in the reply
  -- * @param r GetProperty _NET_SUPPORTED reply
  --  

   function xcb_ewmh_get_supported_from_reply (supported : access xcb_ewmh_get_atoms_reply_t; r : access xcb_xproto_h.xcb_get_property_reply_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:673
   pragma Import (C, xcb_ewmh_get_supported_from_reply, "xcb_ewmh_get_supported_from_reply");

  --*
  -- * @brief Get reply from the GetProperty _NET_SUPPORTED cookie
  -- *
  -- * The  parameter  e  supplied  to  this  function  must  be  NULL  if
  -- * xcb_get_window_supported_unchecked() is used.  Otherwise, it stores
  -- * the error if any.
  -- *
  -- * @param ewmh The information relative to EWMH
  -- * @param cookie The _NET_SUPPORTED GetProperty request cookie
  -- * @param supported The reply to be filled
  -- * @param The xcb_generic_error_t supplied
  -- * @return Return 1 on success, 0 otherwise
  --  

   function xcb_ewmh_get_supported_reply
     (ewmh : access xcb_ewmh_connection_t;
      cookie : xcb_xproto_h.xcb_get_property_cookie_t;
      supported : access xcb_ewmh_get_atoms_reply_t;
      e : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:693
   pragma Import (C, xcb_ewmh_get_supported_reply, "xcb_ewmh_get_supported_reply");

  --*
  -- * @brief Send a ChangeProperty request for _NET_CLIENT_LIST
  -- *
  -- * _NET_CLIENT_LIST, WINDOW[]/32
  -- *
  -- * @param ewmh The per-screen EWMH information
  -- * @param screen_nbr The screen number
  -- * @param list_len The number of Atoms supported by the WM
  -- * @param list The Atoms supported by the WM
  -- * @return Cookie associated with the ChangeProperty _NET_CLIENT_LIST request
  --  

   function xcb_ewmh_set_client_list
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : int;
      arg3 : stdint_h.uint32_t;
      arg4 : access xcb_xproto_h.xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:712
   pragma Import (C, xcb_ewmh_set_client_list, "xcb_ewmh_set_client_list");

  --*
  -- * @see xcb_ewmh_set_client_list
  --  

   function xcb_ewmh_set_client_list_checked
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : int;
      arg3 : stdint_h.uint32_t;
      arg4 : access xcb_xproto_h.xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:720
   pragma Import (C, xcb_ewmh_set_client_list_checked, "xcb_ewmh_set_client_list_checked");

  --*
  -- * @brief Send GetProperty request to get _NET_CLIENT_LIST root window
  -- *        property
  -- *
  -- * This  array   contains  all  X   Windows  managed  by   the  Window
  -- * Manager. _NET_CLIENT_LIST has  initial mapping order, starting with
  -- * the oldest window.  This property SHOULD be set  and updated by the
  -- * Window Manager.
  -- *
  -- * @param ewmh The information relative to EWMH.
  -- * @return The _NET_CLIENT_LIST cookie of the GetProperty request.
  --  

   function xcb_ewmh_get_client_list_unchecked (arg1 : access xcb_ewmh_connection_t; arg2 : int) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:737
   pragma Import (C, xcb_ewmh_get_client_list_unchecked, "xcb_ewmh_get_client_list_unchecked");

  --*
  -- * @brief Send GetProperty request to get _NET_CLIENT_LIST root window
  -- *        property
  -- *
  -- * @see xcb_ewmh_get_client_list_unchecked
  -- * @param ewmh The information relative to EWMH.
  -- * @return The _NET_CLIENT_LIST cookie of the GetProperty request.
  --  

   function xcb_ewmh_get_client_list (arg1 : access xcb_ewmh_connection_t; arg2 : int) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:748
   pragma Import (C, xcb_ewmh_get_client_list, "xcb_ewmh_get_client_list");

  --*
  -- * @brief  Get   the  list  of  client  windows   from  a  GetProperty
  -- * _NET_CLIENT_LIST reply
  -- *
  -- * @param clients The list of clients contained in the reply
  -- * @param r GetProperty _NET_CLIENT_LIST reply
  --  

   function xcb_ewmh_get_client_list_from_reply (clients : access xcb_ewmh_get_windows_reply_t; r : access xcb_xproto_h.xcb_get_property_reply_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:759
   pragma Import (C, xcb_ewmh_get_client_list_from_reply, "xcb_ewmh_get_client_list_from_reply");

  --*
  -- * @brief Get reply from the GetProperty _NET_CLIENT_LIST cookie
  -- *
  -- * The  parameter  e  supplied  to  this  function  must  be  NULL  if
  -- * xcb_get_window_client_list_unchecked()  is   used.   Otherwise,  it
  -- * stores the error if any.
  -- *
  -- * @param ewmh The information relative to EWMH
  -- * @param cookie The _NET_CLIENT_LIST GetProperty request cookie
  -- * @param clients The list of clients to be filled
  -- * @param The xcb_generic_error_t supplied
  -- * @return Return 1 on success, 0 otherwise
  --  

   function xcb_ewmh_get_client_list_reply
     (ewmh : access xcb_ewmh_connection_t;
      cookie : xcb_xproto_h.xcb_get_property_cookie_t;
      clients : access xcb_ewmh_get_windows_reply_t;
      e : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:779
   pragma Import (C, xcb_ewmh_get_client_list_reply, "xcb_ewmh_get_client_list_reply");

  --*
  -- * @brief Send a ChangeProperty request for _NET_CLIENT_LIST_STACKING
  -- *
  -- * _NET_CLIENT_LIST_STACKING, WINDOW[]/32
  -- *
  -- * @param ewmh The per-screen EWMH information
  -- * @param screen_nbr The screen number
  -- * @param list_len The number of Atoms supported by the WM
  -- * @param list The Atoms supported by the WM
  -- * @return Cookie associated with the ChangeProperty _NET_CLIENT_LIST_STACKING request
  --  

   function xcb_ewmh_set_client_list_stacking
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : int;
      arg3 : stdint_h.uint32_t;
      arg4 : access xcb_xproto_h.xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:798
   pragma Import (C, xcb_ewmh_set_client_list_stacking, "xcb_ewmh_set_client_list_stacking");

  --*
  -- * @see xcb_ewmh_set_client_list_stacking
  --  

   function xcb_ewmh_set_client_list_stacking_checked
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : int;
      arg3 : stdint_h.uint32_t;
      arg4 : access xcb_xproto_h.xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:806
   pragma Import (C, xcb_ewmh_set_client_list_stacking_checked, "xcb_ewmh_set_client_list_stacking_checked");

  --*
  -- * @brief  Send GetProperty  request to  get _NET_CLIENT_LIST_STACKING
  -- *        root window property
  -- *
  -- * This  array   contains  all  X   Windows  managed  by   the  Window
  -- * Manager.  _NET_CLIENT_LIST_STACKING   has  initial  mapping  order,
  -- * starting with the  oldest window.  This property SHOULD  be set and
  -- * updated by the Window Manager.
  -- *
  -- * @param ewmh The information relative to EWMH
  -- * @return The _NET_CLIENT_LIST_STACKING cookie of the GetProperty request
  --  

   function xcb_ewmh_get_client_list_stacking_unchecked (arg1 : access xcb_ewmh_connection_t; arg2 : int) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:823
   pragma Import (C, xcb_ewmh_get_client_list_stacking_unchecked, "xcb_ewmh_get_client_list_stacking_unchecked");

  --*
  -- * @see xcb_ewmh_get_client_list_unchecked
  --  

   function xcb_ewmh_get_client_list_stacking (arg1 : access xcb_ewmh_connection_t; arg2 : int) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:829
   pragma Import (C, xcb_ewmh_get_client_list_stacking, "xcb_ewmh_get_client_list_stacking");

  --*
  -- * @brief  Get   the  list  of  client  windows   from  a  GetProperty
  -- * _NET_CLIENT_LIST_STACKING reply
  -- *
  -- * @param clients The list of clients contained in the reply
  -- * @param r GetProperty _NET_CLIENT_LIST_STACKING reply
  --  

   function xcb_ewmh_get_client_list_stacking_from_reply (clients : access xcb_ewmh_get_windows_reply_t; r : access xcb_xproto_h.xcb_get_property_reply_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:840
   pragma Import (C, xcb_ewmh_get_client_list_stacking_from_reply, "xcb_ewmh_get_client_list_stacking_from_reply");

  --*
  -- * @brief  Get reply  from  the GetProperty  _NET_CLIENT_LIST_STACKING
  -- * cookie
  -- *
  -- * The  parameter  e  supplied  to  this  function  must  be  NULL  if
  -- * xcb_get_window_client_list_stacking_unchecked()       is      used.
  -- * Otherwise, it stores the error if any.
  -- *
  -- * @param ewmh The information relative to EWMH
  -- * @param cookie The _NET_CLIENT_LIST_STACKING GetProperty request cookie
  -- * @param clients The list of clients to be filled
  -- * @param The xcb_generic_error_t supplied
  -- * @return Return 1 on success, 0 otherwise
  --  

   function xcb_ewmh_get_client_list_stacking_reply
     (ewmh : access xcb_ewmh_connection_t;
      cookie : xcb_xproto_h.xcb_get_property_cookie_t;
      clients : access xcb_ewmh_get_windows_reply_t;
      e : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:861
   pragma Import (C, xcb_ewmh_get_client_list_stacking_reply, "xcb_ewmh_get_client_list_stacking_reply");

  --*
  -- * @brief Send a ChangeProperty request for _NET_NUMBER_OF_DESKTOPS
  -- *
  -- * _NET_NUMBER_OF_DESKTOPS? CARDINAL/32
  -- *
  -- * @param ewmh The per-screen EWMH information
  -- * @param screen_nbr The screen number
  -- * @param number_of_desktops The number of desktops
  -- * @return Cookie associated with the ChangeProperty _NET_NUMBER_OF_DESKTOPS request
  --  

   function xcb_ewmh_set_number_of_desktops
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : int;
      arg3 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:879
   pragma Import (C, xcb_ewmh_set_number_of_desktops, "xcb_ewmh_set_number_of_desktops");

  --*
  -- * @see xcb_ewmh_set_number_of_desktops
  --  

   function xcb_ewmh_set_number_of_desktops_checked
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : int;
      arg3 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:886
   pragma Import (C, xcb_ewmh_set_number_of_desktops_checked, "xcb_ewmh_set_number_of_desktops_checked");

  --*
  -- * @brief Send GetProperty request to get _NET_NUMBER_OF_DESKTOPS root
  -- *        window property
  -- *
  -- * @param ewmh The information relative to EWMH
  -- * @param screen_nbr The screen number
  -- * @return The _NET_NUMBER_OF_DESKTOPS cookie of the GetProperty request.
  --  

   function xcb_ewmh_get_number_of_desktops_unchecked (arg1 : access xcb_ewmh_connection_t; arg2 : int) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:898
   pragma Import (C, xcb_ewmh_get_number_of_desktops_unchecked, "xcb_ewmh_get_number_of_desktops_unchecked");

  --*
  -- * @see xcb_ewmh_get_number_of_desktops_unchecked
  --  

   function xcb_ewmh_get_number_of_desktops (arg1 : access xcb_ewmh_connection_t; arg2 : int) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:904
   pragma Import (C, xcb_ewmh_get_number_of_desktops, "xcb_ewmh_get_number_of_desktops");

  --*
  -- * @brief  Get   the  list  of  client  windows   from  a  GetProperty
  -- * _NET_NUMBER_OF_DESKTOPS reply
  -- *
  -- * @param clients The list of clients contained in the reply
  -- * @param r GetProperty _NET_NUMBER_OF_DESKTOPS reply
  -- * @return Return 1 on success, 0 otherwise
  --  

   function xcb_ewmh_get_number_of_desktops_from_reply (number_of_desktops : access stdint_h.uint32_t; r : access xcb_xproto_h.xcb_get_property_reply_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:916
   pragma Import (C, xcb_ewmh_get_number_of_desktops_from_reply, "xcb_ewmh_get_number_of_desktops_from_reply");

  --*
  -- * @brief Get reply from the GetProperty _NET_NUMBER_OF_DESKTOPS cookie
  -- *
  -- * The  parameter  e  supplied  to  this  function  must  be  NULL  if
  -- * xcb_get_window_number_of_desktops_unchecked()  is used.  Otherwise,
  -- * it stores the error if any.
  -- *
  -- * @param ewmh The information relative to EWMH
  -- * @param cookie The _NET_NUMBER_OF_DESKTOPS GetProperty request cookie
  -- * @param supported The reply to be filled
  -- * @param The xcb_generic_error_t supplied
  -- * @return Return 1 on success, 0 otherwise
  --  

   function xcb_ewmh_get_number_of_desktops_reply
     (ewmh : access xcb_ewmh_connection_t;
      cookie : xcb_xproto_h.xcb_get_property_cookie_t;
      number_of_desktops : access stdint_h.uint32_t;
      e : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:936
   pragma Import (C, xcb_ewmh_get_number_of_desktops_reply, "xcb_ewmh_get_number_of_desktops_reply");

   function xcb_ewmh_request_change_number_of_desktops
     (ewmh : access xcb_ewmh_connection_t;
      screen_nbr : int;
      new_number_of_desktops : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:945
   pragma Import (C, xcb_ewmh_request_change_number_of_desktops, "xcb_ewmh_request_change_number_of_desktops");

  --*
  -- * @brief Send a ChangeProperty request for _NET_DESKTOP_GEOMETRY
  -- *
  -- * _NET_DESKTOP_GEOMETRY width, height, CARDINAL[2]/32
  -- *
  -- * @param ewmh The per-screen EWMH information
  -- * @param screen_nbr The screen number
  -- * @param new_width The new desktop width
  -- * @param new_height The new desktop height
  -- * @return Cookie associated with the ChangeProperty _NET_DESKTOP_GEOMETRY request
  --  

   function xcb_ewmh_set_desktop_geometry
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : int;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:967
   pragma Import (C, xcb_ewmh_set_desktop_geometry, "xcb_ewmh_set_desktop_geometry");

  --*
  -- * @see xcb_ewmh_set_desktop_geometry
  --  

   function xcb_ewmh_set_desktop_geometry_checked
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : int;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:975
   pragma Import (C, xcb_ewmh_set_desktop_geometry_checked, "xcb_ewmh_set_desktop_geometry_checked");

  --*
  -- * @brief Send  GetProperty request to  get _NET_DESKTOP_GEOMETRY root
  -- *        window property
  -- *
  -- * @param ewmh The information relative to EWMH
  -- * @param screen_nbr The screen number
  -- * @return The _NET_DESKTOP_GEOMETRY cookie of the GetProperty request
  --  

   function xcb_ewmh_get_desktop_geometry_unchecked (arg1 : access xcb_ewmh_connection_t; arg2 : int) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:988
   pragma Import (C, xcb_ewmh_get_desktop_geometry_unchecked, "xcb_ewmh_get_desktop_geometry_unchecked");

  --*
  -- * @see xcb_ewmh_get_desktop_geometry_unchecked
  --  

   function xcb_ewmh_get_desktop_geometry (arg1 : access xcb_ewmh_connection_t; arg2 : int) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:994
   pragma Import (C, xcb_ewmh_get_desktop_geometry, "xcb_ewmh_get_desktop_geometry");

  --*
  -- * @brief Send ClientMessage requesting to change the _NET_DESKTOP_GEOMETRY
  -- *
  -- * @param ewmh The per-screen EWMH information
  -- * @param screen_nbr The screen number
  -- * @param new_width The new desktop width
  -- * @param new_height The new desktop height
  -- * @return The SendEvent cookie
  --  

   function xcb_ewmh_request_change_desktop_geometry
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : int;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1006
   pragma Import (C, xcb_ewmh_request_change_desktop_geometry, "xcb_ewmh_request_change_desktop_geometry");

  --*
  -- * @brief    Get   the   desktop    geometry   from    a   GetProperty
  -- * _NET_DESKTOP_GEOMETRY reply
  -- *
  -- * @param width The current desktop width
  -- * @param height The current desktop height
  -- * @param r GetProperty _NET_DESKTOP_GEOMETRY reply
  -- * @return Return 1 on success, 0 otherwise
  --  

   function xcb_ewmh_get_desktop_geometry_from_reply
     (arg1 : access stdint_h.uint32_t;
      arg2 : access stdint_h.uint32_t;
      arg3 : access xcb_xproto_h.xcb_get_property_reply_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:1020
   pragma Import (C, xcb_ewmh_get_desktop_geometry_from_reply, "xcb_ewmh_get_desktop_geometry_from_reply");

  --*
  -- * @brief Get reply from the GetProperty _NET_DESKTOP_GEOMETRY cookie
  -- *
  -- * The  parameter  e  supplied  to  this  function  must  be  NULL  if
  -- * xcb_get_desktop_geometry_unchecked() is used.  Otherwise, it stores
  -- * the error if any.
  -- *
  -- * @param ewmh The information relative to EWMH
  -- * @param cookie The _NET_DESKTOP_GEOMETRY GetProperty request cookie
  -- * @param width The current desktop width
  -- * @param width The current desktop height
  -- * @param The xcb_generic_error_t supplied
  -- * @return Return 1 on success, 0 otherwise
  --  

   function xcb_ewmh_get_desktop_geometry_reply
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_get_property_cookie_t;
      arg3 : access stdint_h.uint32_t;
      arg4 : access stdint_h.uint32_t;
      arg5 : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:1038
   pragma Import (C, xcb_ewmh_get_desktop_geometry_reply, "xcb_ewmh_get_desktop_geometry_reply");

  --*
  -- * @brief Send a ChangeProperty request for _NET_DESKTOP_VIEWPORT
  -- *
  -- * _NET_DESKTOP_VIEWPORT x, y, CARDINAL[][2]/32
  -- *
  -- * @param ewmh The per-screen EWMH information
  -- * @param screen_nbr The screen number
  -- * @param list_len The number of desktop viewports
  -- * @param list The desktop viewports
  -- * @return Cookie associated with the ChangeProperty _NET_DESKTOP_VIEWPORT request
  --  

   function xcb_ewmh_set_desktop_viewport
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : int;
      arg3 : stdint_h.uint32_t;
      arg4 : access xcb_ewmh_coordinates_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1054
   pragma Import (C, xcb_ewmh_set_desktop_viewport, "xcb_ewmh_set_desktop_viewport");

  --*
  -- * @see xcb_ewmh_set_desktop_viewport
  --  

   function xcb_ewmh_set_desktop_viewport_checked
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : int;
      arg3 : stdint_h.uint32_t;
      arg4 : access xcb_ewmh_coordinates_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1062
   pragma Import (C, xcb_ewmh_set_desktop_viewport_checked, "xcb_ewmh_set_desktop_viewport_checked");

  --*
  -- * @brief Send  GetProperty request to  get _NET_DESKTOP_VIEWPORT root
  -- *        window property
  -- *
  -- * @param ewmh The information relative to EWMH
  -- * @param screen_nbr The screen number
  -- * @return The _NET_DESKTOP_VIEWPORT cookie of the GetProperty request
  --  

   function xcb_ewmh_get_desktop_viewport_unchecked (arg1 : access xcb_ewmh_connection_t; arg2 : int) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1075
   pragma Import (C, xcb_ewmh_get_desktop_viewport_unchecked, "xcb_ewmh_get_desktop_viewport_unchecked");

  --*
  -- * @see xcb_ewmh_get_desktop_viewport_unchecked
  --  

   function xcb_ewmh_get_desktop_viewport (arg1 : access xcb_ewmh_connection_t; arg2 : int) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1081
   pragma Import (C, xcb_ewmh_get_desktop_viewport, "xcb_ewmh_get_desktop_viewport");

  --*
  -- * @brief Send ClientMessage requesting to change the _NET_DESKTOP_VIEWPORT
  -- *
  -- * @param ewmh The per-screen EWMH information
  -- * @param screen_nbr The screen number
  -- * @param new_x The new x coordinate
  -- * @param new_y The new y coordinate
  -- * @return The SendEvent cookie
  --  

   function xcb_ewmh_request_change_desktop_viewport
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : int;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1093
   pragma Import (C, xcb_ewmh_request_change_desktop_viewport, "xcb_ewmh_request_change_desktop_viewport");

  --*
  -- * @brief    Get   the   desktop    geometry   from    a   GetProperty
  -- * _NET_DESKTOP_VIEWPORT reply
  -- *
  -- * @param vp The  current desktop viewports
  -- * @param r GetProperty _NET_DESKTOP_VIEWPORT reply
  -- * @return Return 1 on success, 0 otherwise
  --  

   function xcb_ewmh_get_desktop_viewport_from_reply (arg1 : access xcb_ewmh_get_desktop_viewport_reply_t; arg2 : access xcb_xproto_h.xcb_get_property_reply_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:1105
   pragma Import (C, xcb_ewmh_get_desktop_viewport_from_reply, "xcb_ewmh_get_desktop_viewport_from_reply");

  --*
  -- * @brief Get reply from the GetProperty _NET_DESKTOP_VIEWPORT cookie
  -- *
  -- * The  parameter  e  supplied  to  this  function  must  be  NULL  if
  -- * xcb_get_desktop_viewport_unchecked() is used.  Otherwise, it stores
  -- * the error if any.
  -- *
  -- * @param ewmh The information relative to EWMH
  -- * @param cookie The _NET_DESKTOP_VIEWPORT GetProperty request cookie
  -- * @param vp The current desktop viewports
  -- * @param The xcb_generic_error_t supplied
  -- * @return Return 1 on success, 0 otherwise
  --  

   function xcb_ewmh_get_desktop_viewport_reply
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_get_property_cookie_t;
      arg3 : access xcb_ewmh_get_desktop_viewport_reply_t;
      arg4 : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:1121
   pragma Import (C, xcb_ewmh_get_desktop_viewport_reply, "xcb_ewmh_get_desktop_viewport_reply");

  --*
  -- * @brief Wipe the desktop viewports list reply
  -- *
  -- * This function must be called to free the memory allocated for atoms
  -- * when the reply  is requested in xcb_ewmh_get_desktop_viewport_reply
  -- * function.
  -- *
  -- * @param r The X reply to be freed
  --  

   procedure xcb_ewmh_get_desktop_viewport_reply_wipe (arg1 : access xcb_ewmh_get_desktop_viewport_reply_t);  -- /usr/include/xcb/xcb_ewmh.h:1135
   pragma Import (C, xcb_ewmh_get_desktop_viewport_reply_wipe, "xcb_ewmh_get_desktop_viewport_reply_wipe");

  --*
  -- * @brief Send a ChangeProperty request for _NET_CURRENT_DESKTOP
  -- *
  -- * _NET_CURRENT_DESKTOP desktop, CARDINAL/32
  -- *
  -- * @param ewmh The per-screen EWMH information
  -- * @param screen_nbr The screen number
  -- * @param new_current_desktop The new current desktop
  -- * @return Cookie associated with the ChangeProperty _NET_CURRENT_DESKTOP request
  --  

   function xcb_ewmh_set_current_desktop
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : int;
      arg3 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1147
   pragma Import (C, xcb_ewmh_set_current_desktop, "xcb_ewmh_set_current_desktop");

  --*
  -- * @see xcb_ewmh_set_current_desktop
  --  

   function xcb_ewmh_set_current_desktop_checked
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : int;
      arg3 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1154
   pragma Import (C, xcb_ewmh_set_current_desktop_checked, "xcb_ewmh_set_current_desktop_checked");

  --*
  -- * @brief  Send GetProperty request  to get  _NET_CURRENT_DESKTOP root
  -- *        window property
  -- *
  -- * @param ewmh The information relative to EWMH
  -- * @param screen_nbr The screen number
  -- * @return The _NET_CURRENT_DESKTOP cookie of the GetProperty request
  --  

   function xcb_ewmh_get_current_desktop_unchecked (arg1 : access xcb_ewmh_connection_t; arg2 : int) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1166
   pragma Import (C, xcb_ewmh_get_current_desktop_unchecked, "xcb_ewmh_get_current_desktop_unchecked");

  --*
  -- * @see xcb_ewmh_get_current_desktop_unchecked
  --  

   function xcb_ewmh_get_current_desktop (arg1 : access xcb_ewmh_connection_t; arg2 : int) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1172
   pragma Import (C, xcb_ewmh_get_current_desktop, "xcb_ewmh_get_current_desktop");

  --*
  -- * @brief Send ClientMessage requesting to change the _NET_CURRENT_DESKTOP
  -- *
  -- * @param ewmh The per-screen EWMH information
  -- * @param screen_nbr The screen number
  -- * @param new_desktop The new current desktop
  -- * @param timestamp The request timestamp
  -- * @return The SendEvent cookie
  --  

   function xcb_ewmh_request_change_current_desktop
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : int;
      arg3 : stdint_h.uint32_t;
      arg4 : xcb_xproto_h.xcb_timestamp_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1184
   pragma Import (C, xcb_ewmh_request_change_current_desktop, "xcb_ewmh_request_change_current_desktop");

  --*
  -- * @brief    Get   the   desktop    geometry   from    a   GetProperty
  -- * _NET_CURRENT_DESKTOP reply
  -- *
  -- * @param current_desktop The  current desktop
  -- * @param r GetProperty _NET_CURRENT_DESKTOP reply
  -- * @return Return 1 on success, 0 otherwise
  --  

   function xcb_ewmh_get_current_desktop_from_reply (current_desktop : access stdint_h.uint32_t; r : access xcb_xproto_h.xcb_get_property_reply_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:1198
   pragma Import (C, xcb_ewmh_get_current_desktop_from_reply, "xcb_ewmh_get_current_desktop_from_reply");

  --*
  -- * @brief Get reply from the GetProperty _NET_CURRENT_DESKTOP cookie
  -- *
  -- * The  parameter  e  supplied  to  this  function  must  be  NULL  if
  -- * xcb_get_current_desktop_unchecked() is  used.  Otherwise, it stores
  -- * the error if any.
  -- *
  -- * @param ewmh The information relative to EWMH
  -- * @param cookie The _NET_CURRENT_DESKTOP GetProperty request cookie
  -- * @param vp The current desktop
  -- * @param The xcb_generic_error_t supplied
  -- * @return Return 1 on success, 0 otherwise
  --  

   function xcb_ewmh_get_current_desktop_reply
     (ewmh : access xcb_ewmh_connection_t;
      cookie : xcb_xproto_h.xcb_get_property_cookie_t;
      current_desktop : access stdint_h.uint32_t;
      e : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:1218
   pragma Import (C, xcb_ewmh_get_current_desktop_reply, "xcb_ewmh_get_current_desktop_reply");

  --*
  -- * @brief Send a ChangeProperty request for _NET_DESKTOP_NAMES
  -- *
  -- * _NET_DESKTOP_NAMES, UTF8_STRING[]
  -- *
  -- * @param ewmh The per-screen EWMH information
  -- * @param screen_nbr The screen number
  -- * @param strings_len The number of desktop names
  -- * @param strings The desktop names
  -- * @return Cookie associated with the ChangeProperty _NET_DESKTOP_NAMES request
  --  

   function xcb_ewmh_set_desktop_names
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : int;
      arg3 : stdint_h.uint32_t;
      arg4 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1237
   pragma Import (C, xcb_ewmh_set_desktop_names, "xcb_ewmh_set_desktop_names");

  --*
  -- * @see xcb_ewmh_set_desktop_names
  --  

   function xcb_ewmh_set_desktop_names_checked
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : int;
      arg3 : stdint_h.uint32_t;
      arg4 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1245
   pragma Import (C, xcb_ewmh_set_desktop_names_checked, "xcb_ewmh_set_desktop_names_checked");

  --*
  -- * @brief  Send  GetProperty request  to  get _NET_DESKTOP_NAMES  root
  -- *        window property
  -- *
  -- * @param ewmh The information relative to EWMH
  -- * @return The _NET_DESKTOP_NAMES cookie of the GetProperty request
  --  

   function xcb_ewmh_get_desktop_names_unchecked (arg1 : access xcb_ewmh_connection_t; arg2 : int) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1257
   pragma Import (C, xcb_ewmh_get_desktop_names_unchecked, "xcb_ewmh_get_desktop_names_unchecked");

  --*
  -- * @see xcb_ewmh_get_desktop_names_unchecked
  --  

   function xcb_ewmh_get_desktop_names (arg1 : access xcb_ewmh_connection_t; arg2 : int) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1263
   pragma Import (C, xcb_ewmh_get_desktop_names, "xcb_ewmh_get_desktop_names");

  --*
  -- * @brief    Get   the   desktop    geometry   from    a   GetProperty
  -- * _NET_DESKTOP_NAMES reply
  -- *
  -- * @param ewmh The information relative to EWMH
  -- * @param names The desktop names
  -- * @param r GetProperty _NET_DESKTOP_NAMES reply
  -- * @return Return 1 on success, 0 otherwise
  --  

   function xcb_ewmh_get_desktop_names_from_reply
     (ewmh : access xcb_ewmh_connection_t;
      names : access xcb_ewmh_get_utf8_strings_reply_t;
      r : access xcb_xproto_h.xcb_get_property_reply_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:1276
   pragma Import (C, xcb_ewmh_get_desktop_names_from_reply, "xcb_ewmh_get_desktop_names_from_reply");

  --*
  -- * @brief Get reply from the GetProperty _NET_DESKTOP_NAMES cookie
  -- *
  -- * The  parameter  e  supplied  to  this  function  must  be  NULL  if
  -- * xcb_get_desktop_names_unchecked()  is used.   Otherwise,  it stores
  -- * the error if any.
  -- *
  -- * @param ewmh The information relative to EWMH
  -- * @param cookie The _NET_DESKTOP_NAMES GetProperty request cookie
  -- * @param names The desktop names
  -- * @param The xcb_generic_error_t supplied
  -- * @return Return 1 on success, 0 otherwise
  --  

   function xcb_ewmh_get_desktop_names_reply
     (ewmh : access xcb_ewmh_connection_t;
      cookie : xcb_xproto_h.xcb_get_property_cookie_t;
      names : access xcb_ewmh_get_utf8_strings_reply_t;
      e : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:1297
   pragma Import (C, xcb_ewmh_get_desktop_names_reply, "xcb_ewmh_get_desktop_names_reply");

  --*
  -- * @brief Send a ChangeProperty request for _NET_ACTIVE_WINDOW
  -- *
  -- * _NET_ACTIVE_WINDOW, WINDOW/32
  -- *
  -- * @param ewmh The per-screen EWMH information
  -- * @param screen_nbr The screen number
  -- * @param new_active_window The window to make active
  -- * @return Cookie associated with the ChangeProperty _NET_ACTIVE_WINDOW request
  --  

   function xcb_ewmh_set_active_window
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : int;
      arg3 : xcb_xproto_h.xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1315
   pragma Import (C, xcb_ewmh_set_active_window, "xcb_ewmh_set_active_window");

  --*
  -- * @see xcb_ewmh_set_active_window
  --  

   function xcb_ewmh_set_active_window_checked
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : int;
      arg3 : xcb_xproto_h.xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1322
   pragma Import (C, xcb_ewmh_set_active_window_checked, "xcb_ewmh_set_active_window_checked");

  --*
  -- * @brief Send ClientMessage requesting to change the _NET_ACTIVE_WINDOW
  -- *
  -- * The window ID  of the currently active window or  None if no window
  -- * has  the focus.  This  is a  read-only property  set by  the Window
  -- * Manager. If a Client wants to activate another window, it MUST send
  -- * a  _NET_ACTIVE_WINDOW  client  message  to  the  root  window.  The
  -- * timestamp is Client's  last user activity timestamp at  the time of
  -- * the request, and the currently active window is the Client's active
  -- * toplevel window, if any (the Window Manager may be e.g. more likely
  -- * to obey  the request  if it will  mean transferring focus  from one
  -- * active window to another).
  -- *
  -- * @see xcb_ewmh_client_source_type_t
  -- * @param ewmh The information relative to EWMH
  -- * @param screen_nbr The screen number
  -- * @param window_to_active The window ID to activate
  -- * @param source_indication The source indication
  -- * @param timestamp The client's last user activity timestamp
  -- * @param current_active_window The currently active window or None
  --  

   function xcb_ewmh_request_change_active_window
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : int;
      arg3 : xcb_xproto_h.xcb_window_t;
      arg4 : xcb_ewmh_client_source_type_t;
      arg5 : xcb_xproto_h.xcb_timestamp_t;
      arg6 : xcb_xproto_h.xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1347
   pragma Import (C, xcb_ewmh_request_change_active_window, "xcb_ewmh_request_change_active_window");

  --*
  -- * @brief  Send  GetProperty request  to  get _NET_ACTIVE_WINDOW  root
  -- *        window property
  -- *
  -- * The window ID  of the currently active window or  None if no window
  -- * has  the focus.  This is  a read-only  property set  by  the Window
  -- * Manager.  This property  SHOULD be  set and  updated by  the Window
  -- * Manager.
  -- *
  -- * This form can be used only if  the request will cause a reply to be
  -- * generated. Any returned error will be placed in the event queue.
  -- *
  -- * @param ewmh The information relative to EWMH
  -- * @param screen_nbr The screen number
  -- * @return The _NET_ACTIVE_WINDOW cookie of the GetProperty request
  --  

   function xcb_ewmh_get_active_window_unchecked (arg1 : access xcb_ewmh_connection_t; arg2 : int) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1370
   pragma Import (C, xcb_ewmh_get_active_window_unchecked, "xcb_ewmh_get_active_window_unchecked");

  --*
  -- * @brief  Send  GetProperty request  to  get _NET_ACTIVE_WINDOW  root
  -- *        window property
  -- *
  -- * @see xcb_ewmh_get_active_window_unchecked
  -- * @param ewmh The information relative to EWMH
  -- * @param screen_nbr The screen number
  -- * @return The _NET_ACTIVE_WINDOW cookie of the GetProperty request
  --  

   function xcb_ewmh_get_active_window (arg1 : access xcb_ewmh_connection_t; arg2 : int) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1382
   pragma Import (C, xcb_ewmh_get_active_window, "xcb_ewmh_get_active_window");

  --*
  -- * @brief  Get   the  list  of  client  windows   from  a  GetProperty
  -- * _NET_ACTIVE_WINDOW reply
  -- *
  -- * @param active_window The current active window
  -- * @param r GetProperty _NET_ACTIVE_WINDOW_OF_DESKTOPS reply
  -- * @return Return 1 on success, 0 otherwise
  --  

   function xcb_ewmh_get_active_window_from_reply (active_window : access xcb_xproto_h.xcb_window_t; r : access xcb_xproto_h.xcb_get_property_reply_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:1394
   pragma Import (C, xcb_ewmh_get_active_window_from_reply, "xcb_ewmh_get_active_window_from_reply");

  --*
  -- * @brief Get reply from the GetProperty _NET_ACTIVE_WINDOW cookie
  -- *
  -- * The  parameter  e  supplied  to  this  function  must  be  NULL  if
  -- * xcb_get_active_window_unchecked()  is used.   Otherwise,  it stores
  -- * the error if any.
  -- *
  -- * @param ewmh The information relative to EWMH.
  -- * @param cookie The _NET_ACTIVE_WINDOW GetProperty request cookie.
  -- * @param active_window The reply to be filled.
  -- * @param The xcb_generic_error_t supplied.
  -- * @return Return 1 on success, 0 otherwise.
  --  

   function xcb_ewmh_get_active_window_reply
     (ewmh : access xcb_ewmh_connection_t;
      cookie : xcb_xproto_h.xcb_get_property_cookie_t;
      active_window : access xcb_xproto_h.xcb_window_t;
      e : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:1414
   pragma Import (C, xcb_ewmh_get_active_window_reply, "xcb_ewmh_get_active_window_reply");

  --*
  -- * @brief Send a ChangeProperty request for _NET_WORKAREA
  -- *
  -- * _NET_WORKAREA, x, y, width, height CARDINAL[][4]/32
  -- *
  -- * @param ewmh The per-screen EWMH information
  -- * @param screen_nbr The screen number
  -- * @param list_len The number of desktops workareas
  -- * @param list The desktops workareas
  -- * @return Cookie associated with the ChangeProperty _NET_WORKAREA request
  --  

   function xcb_ewmh_set_workarea
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : int;
      arg3 : stdint_h.uint32_t;
      arg4 : access xcb_ewmh_geometry_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1433
   pragma Import (C, xcb_ewmh_set_workarea, "xcb_ewmh_set_workarea");

  --*
  -- * @see xcb_ewmh_set_workarea
  --  

   function xcb_ewmh_set_workarea_checked
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : int;
      arg3 : stdint_h.uint32_t;
      arg4 : access xcb_ewmh_geometry_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1441
   pragma Import (C, xcb_ewmh_set_workarea_checked, "xcb_ewmh_set_workarea_checked");

  --*
  -- * @brief  Send  GetProperty request  to  get _NET_WORKAREA  root
  -- *        window property
  -- *
  -- * @param ewmh The information relative to EWMH
  -- * @param screen_nbr The screen number
  -- * @return The _NET_WORKAREA cookie of the GetProperty request
  --  

   function xcb_ewmh_get_workarea_unchecked (arg1 : access xcb_ewmh_connection_t; arg2 : int) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1454
   pragma Import (C, xcb_ewmh_get_workarea_unchecked, "xcb_ewmh_get_workarea_unchecked");

  --*
  -- * @see xcb_ewmh_get_virtual_roots_unchecked
  --  

   function xcb_ewmh_get_workarea (arg1 : access xcb_ewmh_connection_t; arg2 : int) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1460
   pragma Import (C, xcb_ewmh_get_workarea, "xcb_ewmh_get_workarea");

  --*
  -- * @brief Get  the desktop  geometry from a  GetProperty _NET_WORKAREA
  -- * reply
  -- *
  -- * @param wa The  current workarea
  -- * @param r GetProperty _NET_WORKAREA reply
  -- * @return Return 1 on success, 0 otherwise
  --  

   function xcb_ewmh_get_workarea_from_reply (arg1 : access xcb_ewmh_get_workarea_reply_t; arg2 : access xcb_xproto_h.xcb_get_property_reply_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:1471
   pragma Import (C, xcb_ewmh_get_workarea_from_reply, "xcb_ewmh_get_workarea_from_reply");

  --*
  -- * @brief Get reply from the GetProperty _NET_WORKAREA cookie
  -- *
  -- * The  parameter  e  supplied  to  this  function  must  be  NULL  if
  -- * xcb_get_workarea_unchecked()  is used.   Otherwise,  it stores  the
  -- * error if any.
  -- *
  -- * @param ewmh The information relative to EWMH
  -- * @param cookie The _NET_WORKAREA GetProperty request cookie
  -- * @param wa The current workareas of desktops
  -- * @param The xcb_generic_error_t supplied
  -- * @return Return 1 on success, 0 otherwise
  --  

   function xcb_ewmh_get_workarea_reply
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_get_property_cookie_t;
      arg3 : access xcb_ewmh_get_workarea_reply_t;
      arg4 : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:1487
   pragma Import (C, xcb_ewmh_get_workarea_reply, "xcb_ewmh_get_workarea_reply");

  --*
  -- * @brief Wipe the workarea list reply
  -- *
  -- * This function must be called to free the memory allocated for atoms
  -- * when   the  reply   is  requested   in  xcb_ewmh_get_workarea_reply
  -- * function.
  -- *
  -- * @param r The X reply to be freed
  --  

   procedure xcb_ewmh_get_workarea_reply_wipe (arg1 : access xcb_ewmh_get_workarea_reply_t);  -- /usr/include/xcb/xcb_ewmh.h:1501
   pragma Import (C, xcb_ewmh_get_workarea_reply_wipe, "xcb_ewmh_get_workarea_reply_wipe");

  --*
  -- * @brief Send a ChangeProperty request for _NET_SUPPORTING_WM_CHECK
  -- *
  -- * _NET_SUPPORTING_WM_CHECK, WINDOW/32
  -- *
  -- * @param ewmh The per-screen EWMH information
  -- * @param parent_window The root window or child window created by the WM
  -- * @param child_window The child window created by the WM
  -- * @return Cookie associated with the ChangeProperty _NET_SUPPORTING_WM_CHECK request
  --  

   function xcb_ewmh_set_supporting_wm_check
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_xproto_h.xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1513
   pragma Import (C, xcb_ewmh_set_supporting_wm_check, "xcb_ewmh_set_supporting_wm_check");

  --*
  -- * @see xcb_ewmh_set_supporting_wm_check
  --  

   function xcb_ewmh_set_supporting_wm_check_checked
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_xproto_h.xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1520
   pragma Import (C, xcb_ewmh_set_supporting_wm_check_checked, "xcb_ewmh_set_supporting_wm_check_checked");

  --*
  -- * @brief  Send GetProperty  request  to get  _NET_SUPPORTING_WM_CHECK
  -- *        root window property
  -- *
  -- * @param ewmh The information relative to EWMH
  -- * @param screen_nbr The screen number
  -- * @return The _NET_SUPPORTING_WM_CHECK cookie of the GetProperty request
  --  

   function xcb_ewmh_get_supporting_wm_check_unchecked (arg1 : access xcb_ewmh_connection_t; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1532
   pragma Import (C, xcb_ewmh_get_supporting_wm_check_unchecked, "xcb_ewmh_get_supporting_wm_check_unchecked");

  --*
  -- * @see xcb_ewmh_get_supporting_wm_check_unchecked
  --  

   function xcb_ewmh_get_supporting_wm_check (arg1 : access xcb_ewmh_connection_t; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1538
   pragma Import (C, xcb_ewmh_get_supporting_wm_check, "xcb_ewmh_get_supporting_wm_check");

  --*
  -- * @brief  Get   the  list  of  client  windows   from  a  GetProperty
  -- * _NET_SUPPORTING_WM_CHECK reply
  -- *
  -- * @param window The child window created by the WM
  -- * @param r GetProperty _NET_SUPPORTING_WM_CHECK reply
  -- * @return Return 1 on success, 0 otherwise
  --  

   function xcb_ewmh_get_supporting_wm_check_from_reply (window : access xcb_xproto_h.xcb_window_t; r : access xcb_xproto_h.xcb_get_property_reply_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:1550
   pragma Import (C, xcb_ewmh_get_supporting_wm_check_from_reply, "xcb_ewmh_get_supporting_wm_check_from_reply");

  --*
  -- * @brief  Get  reply  from the  GetProperty  _NET_SUPPORTING_WM_CHECK
  -- * cookie
  -- *
  -- * The  parameter  e  supplied  to  this  function  must  be  NULL  if
  -- * xcb_get_supporting_wm_check_unchecked()  is  used.   Otherwise,  it
  -- * stores the error if any.
  -- *
  -- * @param ewmh The information relative to EWMH
  -- * @param cookie The _NET_SUPPORTING_WM_CHECK GetProperty request cookie
  -- * @param window The reply to be filled
  -- * @param The xcb_generic_error_t supplied
  -- * @return Return 1 on success, 0 otherwise
  --  

   function xcb_ewmh_get_supporting_wm_check_reply
     (ewmh : access xcb_ewmh_connection_t;
      cookie : xcb_xproto_h.xcb_get_property_cookie_t;
      window : access xcb_xproto_h.xcb_window_t;
      e : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:1571
   pragma Import (C, xcb_ewmh_get_supporting_wm_check_reply, "xcb_ewmh_get_supporting_wm_check_reply");

  --*
  -- * @brief Send a ChangeProperty request for _NET_VIRTUAL_ROOTS
  -- *
  -- * _NET_VIRTUAL_ROOTS, WINDOW[]/32
  -- *
  -- * @param ewmh The per-screen EWMH information
  -- * @param screen_nbr The screen number
  -- * @param list_len The number of virtual root windows
  -- * @param list The virtual root windows
  -- * @return Cookie associated with the ChangeProperty _NET_VIRTUAL_ROOTS request
  --  

   function xcb_ewmh_set_virtual_roots
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : int;
      arg3 : stdint_h.uint32_t;
      arg4 : access xcb_xproto_h.xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1590
   pragma Import (C, xcb_ewmh_set_virtual_roots, "xcb_ewmh_set_virtual_roots");

  --*
  -- * @see xcb_ewmh_set_virtual_roots
  --  

   function xcb_ewmh_set_virtual_roots_checked
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : int;
      arg3 : stdint_h.uint32_t;
      arg4 : access xcb_xproto_h.xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1598
   pragma Import (C, xcb_ewmh_set_virtual_roots_checked, "xcb_ewmh_set_virtual_roots_checked");

  --*
  -- * @brief  Send  GetProperty request  to  get _NET_VIRTUAL_ROOTS  root
  -- *        window property
  -- *
  -- * @param ewmh The information relative to EWMH
  -- * @param screen_nbr The screen number
  -- * @return The _NET_VIRTUAL_ROOTS cookie of the GetProperty request
  --  

   function xcb_ewmh_get_virtual_roots_unchecked (arg1 : access xcb_ewmh_connection_t; arg2 : int) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1611
   pragma Import (C, xcb_ewmh_get_virtual_roots_unchecked, "xcb_ewmh_get_virtual_roots_unchecked");

  --*
  -- * @see xcb_ewmh_get_virtual_roots_unchecked
  --  

   function xcb_ewmh_get_virtual_roots (arg1 : access xcb_ewmh_connection_t; arg2 : int) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1617
   pragma Import (C, xcb_ewmh_get_virtual_roots, "xcb_ewmh_get_virtual_roots");

  --*
  -- * @brief Get  the desktop  geometry from a  GetProperty _NET_WORKAREA
  -- * reply
  -- *
  -- * @param virtual_roots The current virtual root windows
  -- * @param r GetProperty _NET_VIRTUAL_ROOTS reply
  -- * @return Return 1 on success, 0 otherwise
  --  

   function xcb_ewmh_get_virtual_roots_from_reply (virtual_roots : access xcb_ewmh_get_windows_reply_t; r : access xcb_xproto_h.xcb_get_property_reply_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:1629
   pragma Import (C, xcb_ewmh_get_virtual_roots_from_reply, "xcb_ewmh_get_virtual_roots_from_reply");

  --*
  -- * @brief Get reply from the GetProperty _NET_VIRTUAL_ROOTS cookie
  -- *
  -- * The  parameter  e  supplied  to  this  function  must  be  NULL  if
  -- * xcb_get_virtual_roots_unchecked()  is used.   Otherwise,  it stores
  -- * the error if any.
  -- *
  -- * @param ewmh The information relative to EWMH
  -- * @param cookie The _NET_VIRTUAL_ROOTS GetProperty request cookie
  -- * @param virtual_roots The current virtual root windows
  -- * @param The xcb_generic_error_t supplied
  -- * @return Return 1 on success, 0 otherwise
  --  

   function xcb_ewmh_get_virtual_roots_reply
     (ewmh : access xcb_ewmh_connection_t;
      cookie : xcb_xproto_h.xcb_get_property_cookie_t;
      virtual_roots : access xcb_ewmh_get_windows_reply_t;
      e : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:1649
   pragma Import (C, xcb_ewmh_get_virtual_roots_reply, "xcb_ewmh_get_virtual_roots_reply");

   function xcb_ewmh_set_desktop_layout
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : int;
      arg3 : xcb_ewmh_desktop_layout_orientation_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : xcb_ewmh_desktop_layout_starting_corner_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1657
   pragma Import (C, xcb_ewmh_set_desktop_layout, "xcb_ewmh_set_desktop_layout");

   function xcb_ewmh_set_desktop_layout_checked
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : int;
      arg3 : xcb_ewmh_desktop_layout_orientation_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : xcb_ewmh_desktop_layout_starting_corner_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1663
   pragma Import (C, xcb_ewmh_set_desktop_layout_checked, "xcb_ewmh_set_desktop_layout_checked");

  --*
  -- * @brief  Send GetProperty  request to  get  _NET_DESKTOP_LAYOUT root
  -- *        window property
  -- *
  -- * @param ewmh The information relative to EWMH
  -- * @param screen_nbr The screen number
  -- * @return The _NET_DESKTOP_LAYOUT cookie of the GetProperty request
  --  

   function xcb_ewmh_get_desktop_layout_unchecked (arg1 : access xcb_ewmh_connection_t; arg2 : int) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1677
   pragma Import (C, xcb_ewmh_get_desktop_layout_unchecked, "xcb_ewmh_get_desktop_layout_unchecked");

  --*
  -- * @see xcb_ewmh_get_desktop_layout_unchecked
  --  

   function xcb_ewmh_get_desktop_layout (arg1 : access xcb_ewmh_connection_t; arg2 : int) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1683
   pragma Import (C, xcb_ewmh_get_desktop_layout, "xcb_ewmh_get_desktop_layout");

   function xcb_ewmh_get_desktop_layout_from_reply (arg1 : access xcb_ewmh_get_desktop_layout_reply_t; arg2 : access xcb_xproto_h.xcb_get_property_reply_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:1686
   pragma Import (C, xcb_ewmh_get_desktop_layout_from_reply, "xcb_ewmh_get_desktop_layout_from_reply");

   function xcb_ewmh_get_desktop_layout_reply
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_get_property_cookie_t;
      arg3 : access xcb_ewmh_get_desktop_layout_reply_t;
      arg4 : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:1689
   pragma Import (C, xcb_ewmh_get_desktop_layout_reply, "xcb_ewmh_get_desktop_layout_reply");

   function xcb_ewmh_set_showing_desktop
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : int;
      arg3 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1694
   pragma Import (C, xcb_ewmh_set_showing_desktop, "xcb_ewmh_set_showing_desktop");

   function xcb_ewmh_set_showing_desktop_checked
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : int;
      arg3 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1698
   pragma Import (C, xcb_ewmh_set_showing_desktop_checked, "xcb_ewmh_set_showing_desktop_checked");

   function xcb_ewmh_get_showing_desktop_unchecked (arg1 : access xcb_ewmh_connection_t; arg2 : int) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1702
   pragma Import (C, xcb_ewmh_get_showing_desktop_unchecked, "xcb_ewmh_get_showing_desktop_unchecked");

   function xcb_ewmh_get_showing_desktop (arg1 : access xcb_ewmh_connection_t; arg2 : int) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1705
   pragma Import (C, xcb_ewmh_get_showing_desktop, "xcb_ewmh_get_showing_desktop");

   function xcb_ewmh_get_showing_desktop_from_reply (desktop : access stdint_h.uint32_t; r : access xcb_xproto_h.xcb_get_property_reply_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:1709
   pragma Import (C, xcb_ewmh_get_showing_desktop_from_reply, "xcb_ewmh_get_showing_desktop_from_reply");

   function xcb_ewmh_get_showing_desktop_reply
     (ewmh : access xcb_ewmh_connection_t;
      cookie : xcb_xproto_h.xcb_get_property_cookie_t;
      desktop : access stdint_h.uint32_t;
      e : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:1716
   pragma Import (C, xcb_ewmh_get_showing_desktop_reply, "xcb_ewmh_get_showing_desktop_reply");

   function xcb_ewmh_request_change_showing_desktop
     (ewmh : access xcb_ewmh_connection_t;
      screen_nbr : int;
      enter : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1725
   pragma Import (C, xcb_ewmh_request_change_showing_desktop, "xcb_ewmh_request_change_showing_desktop");

   function xcb_ewmh_request_close_window
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : int;
      arg3 : xcb_xproto_h.xcb_window_t;
      arg4 : xcb_xproto_h.xcb_timestamp_t;
      arg5 : xcb_ewmh_client_source_type_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1735
   pragma Import (C, xcb_ewmh_request_close_window, "xcb_ewmh_request_close_window");

   function xcb_ewmh_request_moveresize_window
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : int;
      arg3 : xcb_xproto_h.xcb_window_t;
      arg4 : xcb_xproto_h.xcb_gravity_t;
      arg5 : xcb_ewmh_client_source_type_t;
      arg6 : xcb_ewmh_moveresize_window_opt_flags_t;
      arg7 : stdint_h.uint32_t;
      arg8 : stdint_h.uint32_t;
      arg9 : stdint_h.uint32_t;
      arg10 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1741
   pragma Import (C, xcb_ewmh_request_moveresize_window, "xcb_ewmh_request_moveresize_window");

   function xcb_ewmh_request_wm_moveresize
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : int;
      arg3 : xcb_xproto_h.xcb_window_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : xcb_ewmh_moveresize_direction_t;
      arg7 : xcb_xproto_h.xcb_button_index_t;
      arg8 : xcb_ewmh_client_source_type_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1750
   pragma Import (C, xcb_ewmh_request_wm_moveresize, "xcb_ewmh_request_wm_moveresize");

   function xcb_ewmh_request_restack_window
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : int;
      arg3 : xcb_xproto_h.xcb_window_t;
      arg4 : xcb_xproto_h.xcb_window_t;
      arg5 : xcb_xproto_h.xcb_stack_mode_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1758
   pragma Import (C, xcb_ewmh_request_restack_window, "xcb_ewmh_request_restack_window");

   function xcb_ewmh_request_frame_extents
     (ewmh : access xcb_ewmh_connection_t;
      screen_nbr : int;
      client_window : xcb_xproto_h.xcb_window_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1765
   pragma Import (C, xcb_ewmh_request_frame_extents, "xcb_ewmh_request_frame_extents");

   function xcb_ewmh_set_wm_name
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint32_t;
      arg4 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1774
   pragma Import (C, xcb_ewmh_set_wm_name, "xcb_ewmh_set_wm_name");

   function xcb_ewmh_set_wm_name_checked
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint32_t;
      arg4 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1779
   pragma Import (C, xcb_ewmh_set_wm_name_checked, "xcb_ewmh_set_wm_name_checked");

   function xcb_ewmh_get_wm_name_unchecked (arg1 : access xcb_ewmh_connection_t; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1784
   pragma Import (C, xcb_ewmh_get_wm_name_unchecked, "xcb_ewmh_get_wm_name_unchecked");

   function xcb_ewmh_get_wm_name (arg1 : access xcb_ewmh_connection_t; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1787
   pragma Import (C, xcb_ewmh_get_wm_name, "xcb_ewmh_get_wm_name");

   function xcb_ewmh_get_wm_name_from_reply
     (ewmh : access xcb_ewmh_connection_t;
      data : access xcb_ewmh_get_utf8_strings_reply_t;
      r : access xcb_xproto_h.xcb_get_property_reply_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:1791
   pragma Import (C, xcb_ewmh_get_wm_name_from_reply, "xcb_ewmh_get_wm_name_from_reply");

   function xcb_ewmh_get_wm_name_reply
     (ewmh : access xcb_ewmh_connection_t;
      cookie : xcb_xproto_h.xcb_get_property_cookie_t;
      data : access xcb_ewmh_get_utf8_strings_reply_t;
      e : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:1799
   pragma Import (C, xcb_ewmh_get_wm_name_reply, "xcb_ewmh_get_wm_name_reply");

   function xcb_ewmh_set_wm_visible_name
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint32_t;
      arg4 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1807
   pragma Import (C, xcb_ewmh_set_wm_visible_name, "xcb_ewmh_set_wm_visible_name");

   function xcb_ewmh_set_wm_visible_name_checked
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint32_t;
      arg4 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1812
   pragma Import (C, xcb_ewmh_set_wm_visible_name_checked, "xcb_ewmh_set_wm_visible_name_checked");

   function xcb_ewmh_get_wm_visible_name_unchecked (arg1 : access xcb_ewmh_connection_t; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1817
   pragma Import (C, xcb_ewmh_get_wm_visible_name_unchecked, "xcb_ewmh_get_wm_visible_name_unchecked");

   function xcb_ewmh_get_wm_visible_name (arg1 : access xcb_ewmh_connection_t; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1820
   pragma Import (C, xcb_ewmh_get_wm_visible_name, "xcb_ewmh_get_wm_visible_name");

   function xcb_ewmh_get_wm_visible_name_from_reply
     (ewmh : access xcb_ewmh_connection_t;
      data : access xcb_ewmh_get_utf8_strings_reply_t;
      r : access xcb_xproto_h.xcb_get_property_reply_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:1824
   pragma Import (C, xcb_ewmh_get_wm_visible_name_from_reply, "xcb_ewmh_get_wm_visible_name_from_reply");

   function xcb_ewmh_get_wm_visible_name_reply
     (ewmh : access xcb_ewmh_connection_t;
      cookie : xcb_xproto_h.xcb_get_property_cookie_t;
      data : access xcb_ewmh_get_utf8_strings_reply_t;
      e : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:1832
   pragma Import (C, xcb_ewmh_get_wm_visible_name_reply, "xcb_ewmh_get_wm_visible_name_reply");

   function xcb_ewmh_set_wm_icon_name
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint32_t;
      arg4 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1840
   pragma Import (C, xcb_ewmh_set_wm_icon_name, "xcb_ewmh_set_wm_icon_name");

   function xcb_ewmh_set_wm_icon_name_checked
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint32_t;
      arg4 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1845
   pragma Import (C, xcb_ewmh_set_wm_icon_name_checked, "xcb_ewmh_set_wm_icon_name_checked");

   function xcb_ewmh_get_wm_icon_name_unchecked (arg1 : access xcb_ewmh_connection_t; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1850
   pragma Import (C, xcb_ewmh_get_wm_icon_name_unchecked, "xcb_ewmh_get_wm_icon_name_unchecked");

   function xcb_ewmh_get_wm_icon_name (arg1 : access xcb_ewmh_connection_t; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1853
   pragma Import (C, xcb_ewmh_get_wm_icon_name, "xcb_ewmh_get_wm_icon_name");

   function xcb_ewmh_get_wm_icon_name_from_reply
     (ewmh : access xcb_ewmh_connection_t;
      data : access xcb_ewmh_get_utf8_strings_reply_t;
      r : access xcb_xproto_h.xcb_get_property_reply_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:1857
   pragma Import (C, xcb_ewmh_get_wm_icon_name_from_reply, "xcb_ewmh_get_wm_icon_name_from_reply");

   function xcb_ewmh_get_wm_icon_name_reply
     (ewmh : access xcb_ewmh_connection_t;
      cookie : xcb_xproto_h.xcb_get_property_cookie_t;
      data : access xcb_ewmh_get_utf8_strings_reply_t;
      e : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:1865
   pragma Import (C, xcb_ewmh_get_wm_icon_name_reply, "xcb_ewmh_get_wm_icon_name_reply");

   function xcb_ewmh_set_wm_visible_icon_name
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint32_t;
      arg4 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1873
   pragma Import (C, xcb_ewmh_set_wm_visible_icon_name, "xcb_ewmh_set_wm_visible_icon_name");

   function xcb_ewmh_set_wm_visible_icon_name_checked
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint32_t;
      arg4 : Interfaces.C.Strings.chars_ptr) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1878
   pragma Import (C, xcb_ewmh_set_wm_visible_icon_name_checked, "xcb_ewmh_set_wm_visible_icon_name_checked");

   function xcb_ewmh_get_wm_visible_icon_name_unchecked (arg1 : access xcb_ewmh_connection_t; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1883
   pragma Import (C, xcb_ewmh_get_wm_visible_icon_name_unchecked, "xcb_ewmh_get_wm_visible_icon_name_unchecked");

   function xcb_ewmh_get_wm_visible_icon_name (arg1 : access xcb_ewmh_connection_t; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1886
   pragma Import (C, xcb_ewmh_get_wm_visible_icon_name, "xcb_ewmh_get_wm_visible_icon_name");

   function xcb_ewmh_get_wm_visible_icon_name_from_reply
     (ewmh : access xcb_ewmh_connection_t;
      data : access xcb_ewmh_get_utf8_strings_reply_t;
      r : access xcb_xproto_h.xcb_get_property_reply_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:1890
   pragma Import (C, xcb_ewmh_get_wm_visible_icon_name_from_reply, "xcb_ewmh_get_wm_visible_icon_name_from_reply");

   function xcb_ewmh_get_wm_visible_icon_name_reply
     (ewmh : access xcb_ewmh_connection_t;
      cookie : xcb_xproto_h.xcb_get_property_cookie_t;
      data : access xcb_ewmh_get_utf8_strings_reply_t;
      e : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:1898
   pragma Import (C, xcb_ewmh_get_wm_visible_icon_name_reply, "xcb_ewmh_get_wm_visible_icon_name_reply");

   function xcb_ewmh_set_wm_desktop
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1906
   pragma Import (C, xcb_ewmh_set_wm_desktop, "xcb_ewmh_set_wm_desktop");

   function xcb_ewmh_set_wm_desktop_checked
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1910
   pragma Import (C, xcb_ewmh_set_wm_desktop_checked, "xcb_ewmh_set_wm_desktop_checked");

   function xcb_ewmh_get_wm_desktop_unchecked (arg1 : access xcb_ewmh_connection_t; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1915
   pragma Import (C, xcb_ewmh_get_wm_desktop_unchecked, "xcb_ewmh_get_wm_desktop_unchecked");

   function xcb_ewmh_get_wm_desktop (arg1 : access xcb_ewmh_connection_t; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1918
   pragma Import (C, xcb_ewmh_get_wm_desktop, "xcb_ewmh_get_wm_desktop");

   function xcb_ewmh_get_wm_desktop_from_reply (desktop : access stdint_h.uint32_t; r : access xcb_xproto_h.xcb_get_property_reply_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:1922
   pragma Import (C, xcb_ewmh_get_wm_desktop_from_reply, "xcb_ewmh_get_wm_desktop_from_reply");

   function xcb_ewmh_get_wm_desktop_reply
     (ewmh : access xcb_ewmh_connection_t;
      cookie : xcb_xproto_h.xcb_get_property_cookie_t;
      desktop : access stdint_h.uint32_t;
      e : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:1929
   pragma Import (C, xcb_ewmh_get_wm_desktop_reply, "xcb_ewmh_get_wm_desktop_reply");

   function xcb_ewmh_request_change_wm_desktop
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : int;
      arg3 : xcb_xproto_h.xcb_window_t;
      arg4 : stdint_h.uint32_t;
      arg5 : xcb_ewmh_client_source_type_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1937
   pragma Import (C, xcb_ewmh_request_change_wm_desktop, "xcb_ewmh_request_change_wm_desktop");

   function xcb_ewmh_set_wm_window_type
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint32_t;
      arg4 : access xcb_xproto_h.xcb_atom_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1943
   pragma Import (C, xcb_ewmh_set_wm_window_type, "xcb_ewmh_set_wm_window_type");

   function xcb_ewmh_set_wm_window_type_checked
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint32_t;
      arg4 : access xcb_xproto_h.xcb_atom_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1948
   pragma Import (C, xcb_ewmh_set_wm_window_type_checked, "xcb_ewmh_set_wm_window_type_checked");

   function xcb_ewmh_get_wm_window_type_unchecked (arg1 : access xcb_ewmh_connection_t; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1953
   pragma Import (C, xcb_ewmh_get_wm_window_type_unchecked, "xcb_ewmh_get_wm_window_type_unchecked");

   function xcb_ewmh_get_wm_window_type (arg1 : access xcb_ewmh_connection_t; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1956
   pragma Import (C, xcb_ewmh_get_wm_window_type, "xcb_ewmh_get_wm_window_type");

   function xcb_ewmh_get_wm_window_type_from_reply (arg1 : access xcb_ewmh_get_atoms_reply_t; arg2 : access xcb_xproto_h.xcb_get_property_reply_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:1959
   pragma Import (C, xcb_ewmh_get_wm_window_type_from_reply, "xcb_ewmh_get_wm_window_type_from_reply");

   function xcb_ewmh_get_wm_window_type_reply
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_get_property_cookie_t;
      arg3 : access xcb_ewmh_get_atoms_reply_t;
      arg4 : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:1962
   pragma Import (C, xcb_ewmh_get_wm_window_type_reply, "xcb_ewmh_get_wm_window_type_reply");

   function xcb_ewmh_set_wm_state
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint32_t;
      arg4 : access xcb_xproto_h.xcb_atom_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1967
   pragma Import (C, xcb_ewmh_set_wm_state, "xcb_ewmh_set_wm_state");

   function xcb_ewmh_set_wm_state_checked
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint32_t;
      arg4 : access xcb_xproto_h.xcb_atom_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1972
   pragma Import (C, xcb_ewmh_set_wm_state_checked, "xcb_ewmh_set_wm_state_checked");

   function xcb_ewmh_get_wm_state_unchecked (arg1 : access xcb_ewmh_connection_t; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1977
   pragma Import (C, xcb_ewmh_get_wm_state_unchecked, "xcb_ewmh_get_wm_state_unchecked");

   function xcb_ewmh_get_wm_state (arg1 : access xcb_ewmh_connection_t; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1980
   pragma Import (C, xcb_ewmh_get_wm_state, "xcb_ewmh_get_wm_state");

   function xcb_ewmh_get_wm_state_from_reply (arg1 : access xcb_ewmh_get_atoms_reply_t; arg2 : access xcb_xproto_h.xcb_get_property_reply_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:1983
   pragma Import (C, xcb_ewmh_get_wm_state_from_reply, "xcb_ewmh_get_wm_state_from_reply");

   function xcb_ewmh_get_wm_state_reply
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_get_property_cookie_t;
      arg3 : access xcb_ewmh_get_atoms_reply_t;
      arg4 : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:1986
   pragma Import (C, xcb_ewmh_get_wm_state_reply, "xcb_ewmh_get_wm_state_reply");

   function xcb_ewmh_request_change_wm_state
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : int;
      arg3 : xcb_xproto_h.xcb_window_t;
      arg4 : xcb_ewmh_wm_state_action_t;
      arg5 : xcb_xproto_h.xcb_atom_t;
      arg6 : xcb_xproto_h.xcb_atom_t;
      arg7 : xcb_ewmh_client_source_type_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1991
   pragma Import (C, xcb_ewmh_request_change_wm_state, "xcb_ewmh_request_change_wm_state");

   function xcb_ewmh_set_wm_allowed_actions
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint32_t;
      arg4 : access xcb_xproto_h.xcb_atom_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:1999
   pragma Import (C, xcb_ewmh_set_wm_allowed_actions, "xcb_ewmh_set_wm_allowed_actions");

   function xcb_ewmh_set_wm_allowed_actions_checked
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint32_t;
      arg4 : access xcb_xproto_h.xcb_atom_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2004
   pragma Import (C, xcb_ewmh_set_wm_allowed_actions_checked, "xcb_ewmh_set_wm_allowed_actions_checked");

   function xcb_ewmh_get_wm_allowed_actions_unchecked (arg1 : access xcb_ewmh_connection_t; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2009
   pragma Import (C, xcb_ewmh_get_wm_allowed_actions_unchecked, "xcb_ewmh_get_wm_allowed_actions_unchecked");

   function xcb_ewmh_get_wm_allowed_actions (arg1 : access xcb_ewmh_connection_t; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2012
   pragma Import (C, xcb_ewmh_get_wm_allowed_actions, "xcb_ewmh_get_wm_allowed_actions");

   function xcb_ewmh_get_wm_allowed_actions_from_reply (arg1 : access xcb_ewmh_get_atoms_reply_t; arg2 : access xcb_xproto_h.xcb_get_property_reply_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:2015
   pragma Import (C, xcb_ewmh_get_wm_allowed_actions_from_reply, "xcb_ewmh_get_wm_allowed_actions_from_reply");

   function xcb_ewmh_get_wm_allowed_actions_reply
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_get_property_cookie_t;
      arg3 : access xcb_ewmh_get_atoms_reply_t;
      arg4 : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:2018
   pragma Import (C, xcb_ewmh_get_wm_allowed_actions_reply, "xcb_ewmh_get_wm_allowed_actions_reply");

   function xcb_ewmh_set_wm_strut
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2023
   pragma Import (C, xcb_ewmh_set_wm_strut, "xcb_ewmh_set_wm_strut");

   function xcb_ewmh_set_wm_strut_checked
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2028
   pragma Import (C, xcb_ewmh_set_wm_strut_checked, "xcb_ewmh_set_wm_strut_checked");

   function xcb_ewmh_get_wm_strut_unchecked (arg1 : access xcb_ewmh_connection_t; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2033
   pragma Import (C, xcb_ewmh_get_wm_strut_unchecked, "xcb_ewmh_get_wm_strut_unchecked");

   function xcb_ewmh_get_wm_strut (arg1 : access xcb_ewmh_connection_t; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2036
   pragma Import (C, xcb_ewmh_get_wm_strut, "xcb_ewmh_get_wm_strut");

   function xcb_ewmh_get_wm_strut_from_reply (arg1 : access xcb_ewmh_get_extents_reply_t; arg2 : access xcb_xproto_h.xcb_get_property_reply_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:2039
   pragma Import (C, xcb_ewmh_get_wm_strut_from_reply, "xcb_ewmh_get_wm_strut_from_reply");

   function xcb_ewmh_get_wm_strut_reply
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_get_property_cookie_t;
      arg3 : access xcb_ewmh_get_extents_reply_t;
      arg4 : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:2042
   pragma Import (C, xcb_ewmh_get_wm_strut_reply, "xcb_ewmh_get_wm_strut_reply");

   function xcb_ewmh_set_wm_strut_partial
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_ewmh_wm_strut_partial_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2047
   pragma Import (C, xcb_ewmh_set_wm_strut_partial, "xcb_ewmh_set_wm_strut_partial");

   function xcb_ewmh_set_wm_strut_partial_checked
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_ewmh_wm_strut_partial_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2051
   pragma Import (C, xcb_ewmh_set_wm_strut_partial_checked, "xcb_ewmh_set_wm_strut_partial_checked");

   function xcb_ewmh_get_wm_strut_partial_unchecked (arg1 : access xcb_ewmh_connection_t; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2055
   pragma Import (C, xcb_ewmh_get_wm_strut_partial_unchecked, "xcb_ewmh_get_wm_strut_partial_unchecked");

   function xcb_ewmh_get_wm_strut_partial (arg1 : access xcb_ewmh_connection_t; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2058
   pragma Import (C, xcb_ewmh_get_wm_strut_partial, "xcb_ewmh_get_wm_strut_partial");

   function xcb_ewmh_get_wm_strut_partial_from_reply (arg1 : access xcb_ewmh_wm_strut_partial_t; arg2 : access xcb_xproto_h.xcb_get_property_reply_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:2061
   pragma Import (C, xcb_ewmh_get_wm_strut_partial_from_reply, "xcb_ewmh_get_wm_strut_partial_from_reply");

   function xcb_ewmh_get_wm_strut_partial_reply
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_get_property_cookie_t;
      arg3 : access xcb_ewmh_wm_strut_partial_t;
      arg4 : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:2064
   pragma Import (C, xcb_ewmh_get_wm_strut_partial_reply, "xcb_ewmh_get_wm_strut_partial_reply");

   function xcb_ewmh_set_wm_icon_geometry
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2069
   pragma Import (C, xcb_ewmh_set_wm_icon_geometry, "xcb_ewmh_set_wm_icon_geometry");

   function xcb_ewmh_set_wm_icon_geometry_checked
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2074
   pragma Import (C, xcb_ewmh_set_wm_icon_geometry_checked, "xcb_ewmh_set_wm_icon_geometry_checked");

   function xcb_ewmh_get_wm_icon_geometry_unchecked (arg1 : access xcb_ewmh_connection_t; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2079
   pragma Import (C, xcb_ewmh_get_wm_icon_geometry_unchecked, "xcb_ewmh_get_wm_icon_geometry_unchecked");

   function xcb_ewmh_get_wm_icon_geometry (arg1 : access xcb_ewmh_connection_t; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2082
   pragma Import (C, xcb_ewmh_get_wm_icon_geometry, "xcb_ewmh_get_wm_icon_geometry");

   function xcb_ewmh_get_wm_icon_geometry_from_reply (arg1 : access xcb_ewmh_geometry_t; arg2 : access xcb_xproto_h.xcb_get_property_reply_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:2085
   pragma Import (C, xcb_ewmh_get_wm_icon_geometry_from_reply, "xcb_ewmh_get_wm_icon_geometry_from_reply");

   function xcb_ewmh_get_wm_icon_geometry_reply
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_get_property_cookie_t;
      arg3 : access xcb_ewmh_geometry_t;
      arg4 : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:2088
   pragma Import (C, xcb_ewmh_get_wm_icon_geometry_reply, "xcb_ewmh_get_wm_icon_geometry_reply");

  --*
  -- * @brief Send ChangeProperty request to set _NET_WM_ICON window
  -- *        property. The given data is considered to be already
  -- *        prepared, namely that it is an array such as: WIDTH1,
  -- *        HEIGHT1, IMG1, WIDTH2, HEIGHT2, IMG2.
  -- *
  -- *        If you only want to add or append a single icon, you may
  -- *        consider using xcb_ewmh_append_wm_icon_checked which is far
  -- *        easier to use.
  -- *
  -- * _NET_WM_ICON CARDINAL[][2+n]/32
  -- *
  -- * @param ewmh The information relative to EWMH
  -- * @param mode ChangeProperty mode (xcb_prop_mode_t)
  -- * @param window The window to set the property on
  -- * @param data_len Length of the data
  -- * @param data The data
  --  

   function xcb_ewmh_set_wm_icon_checked
     (ewmh : access xcb_ewmh_connection_t;
      mode : stdint_h.uint8_t;
      window : xcb_xproto_h.xcb_window_t;
      data_len : stdint_h.uint32_t;
      data : access stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2112
   pragma Import (C, xcb_ewmh_set_wm_icon_checked, "xcb_ewmh_set_wm_icon_checked");

  --*
  -- * @see xcb_ewmh_set_wm_icon_checked
  --  

   function xcb_ewmh_set_wm_icon
     (ewmh : access xcb_ewmh_connection_t;
      mode : stdint_h.uint8_t;
      window : xcb_xproto_h.xcb_window_t;
      data_len : stdint_h.uint32_t;
      data : access stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2126
   pragma Import (C, xcb_ewmh_set_wm_icon, "xcb_ewmh_set_wm_icon");

   function xcb_ewmh_append_wm_icon_checked
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : access stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2136
   pragma Import (C, xcb_ewmh_append_wm_icon_checked, "xcb_ewmh_append_wm_icon_checked");

   function xcb_ewmh_append_wm_icon
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : access stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2141
   pragma Import (C, xcb_ewmh_append_wm_icon, "xcb_ewmh_append_wm_icon");

   function xcb_ewmh_get_wm_icon_unchecked (arg1 : access xcb_ewmh_connection_t; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2146
   pragma Import (C, xcb_ewmh_get_wm_icon_unchecked, "xcb_ewmh_get_wm_icon_unchecked");

   function xcb_ewmh_get_wm_icon (arg1 : access xcb_ewmh_connection_t; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2149
   pragma Import (C, xcb_ewmh_get_wm_icon, "xcb_ewmh_get_wm_icon");

   function xcb_ewmh_get_wm_icon_from_reply (arg1 : access xcb_ewmh_get_wm_icon_reply_t; arg2 : access xcb_xproto_h.xcb_get_property_reply_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:2152
   pragma Import (C, xcb_ewmh_get_wm_icon_from_reply, "xcb_ewmh_get_wm_icon_from_reply");

   function xcb_ewmh_get_wm_icon_reply
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_get_property_cookie_t;
      arg3 : access xcb_ewmh_get_wm_icon_reply_t;
      arg4 : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:2155
   pragma Import (C, xcb_ewmh_get_wm_icon_reply, "xcb_ewmh_get_wm_icon_reply");

   function xcb_ewmh_get_wm_icon_iterator (arg1 : access constant xcb_ewmh_get_wm_icon_reply_t) return xcb_ewmh_wm_icon_iterator_t;  -- /usr/include/xcb/xcb_ewmh.h:2160
   pragma Import (C, xcb_ewmh_get_wm_icon_iterator, "xcb_ewmh_get_wm_icon_iterator");

   function xcb_ewmh_get_wm_icon_length (arg1 : access constant xcb_ewmh_get_wm_icon_reply_t) return unsigned;  -- /usr/include/xcb/xcb_ewmh.h:2162
   pragma Import (C, xcb_ewmh_get_wm_icon_length, "xcb_ewmh_get_wm_icon_length");

   procedure xcb_ewmh_get_wm_icon_next (arg1 : access xcb_ewmh_wm_icon_iterator_t);  -- /usr/include/xcb/xcb_ewmh.h:2164
   pragma Import (C, xcb_ewmh_get_wm_icon_next, "xcb_ewmh_get_wm_icon_next");

   procedure xcb_ewmh_get_wm_icon_reply_wipe (arg1 : access xcb_ewmh_get_wm_icon_reply_t);  -- /usr/include/xcb/xcb_ewmh.h:2166
   pragma Import (C, xcb_ewmh_get_wm_icon_reply_wipe, "xcb_ewmh_get_wm_icon_reply_wipe");

   function xcb_ewmh_set_wm_pid
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2168
   pragma Import (C, xcb_ewmh_set_wm_pid, "xcb_ewmh_set_wm_pid");

   function xcb_ewmh_set_wm_pid_checked
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2172
   pragma Import (C, xcb_ewmh_set_wm_pid_checked, "xcb_ewmh_set_wm_pid_checked");

   function xcb_ewmh_get_wm_pid_unchecked (arg1 : access xcb_ewmh_connection_t; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2176
   pragma Import (C, xcb_ewmh_get_wm_pid_unchecked, "xcb_ewmh_get_wm_pid_unchecked");

   function xcb_ewmh_get_wm_pid (arg1 : access xcb_ewmh_connection_t; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2179
   pragma Import (C, xcb_ewmh_get_wm_pid, "xcb_ewmh_get_wm_pid");

   function xcb_ewmh_get_wm_pid_from_reply (pid : access stdint_h.uint32_t; r : access xcb_xproto_h.xcb_get_property_reply_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:2183
   pragma Import (C, xcb_ewmh_get_wm_pid_from_reply, "xcb_ewmh_get_wm_pid_from_reply");

   function xcb_ewmh_get_wm_pid_reply
     (ewmh : access xcb_ewmh_connection_t;
      cookie : xcb_xproto_h.xcb_get_property_cookie_t;
      pid : access stdint_h.uint32_t;
      e : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:2190
   pragma Import (C, xcb_ewmh_get_wm_pid_reply, "xcb_ewmh_get_wm_pid_reply");

   function xcb_ewmh_set_wm_handled_icons
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2198
   pragma Import (C, xcb_ewmh_set_wm_handled_icons, "xcb_ewmh_set_wm_handled_icons");

   function xcb_ewmh_set_wm_handled_icons_checked
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2202
   pragma Import (C, xcb_ewmh_set_wm_handled_icons_checked, "xcb_ewmh_set_wm_handled_icons_checked");

   function xcb_ewmh_get_wm_handled_icons_unchecked (arg1 : access xcb_ewmh_connection_t; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2206
   pragma Import (C, xcb_ewmh_get_wm_handled_icons_unchecked, "xcb_ewmh_get_wm_handled_icons_unchecked");

   function xcb_ewmh_get_wm_handled_icons (arg1 : access xcb_ewmh_connection_t; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2209
   pragma Import (C, xcb_ewmh_get_wm_handled_icons, "xcb_ewmh_get_wm_handled_icons");

   function xcb_ewmh_get_wm_handled_icons_from_reply (handled_icons : access stdint_h.uint32_t; r : access xcb_xproto_h.xcb_get_property_reply_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:2213
   pragma Import (C, xcb_ewmh_get_wm_handled_icons_from_reply, "xcb_ewmh_get_wm_handled_icons_from_reply");

   function xcb_ewmh_get_wm_handled_icons_reply
     (ewmh : access xcb_ewmh_connection_t;
      cookie : xcb_xproto_h.xcb_get_property_cookie_t;
      handled_icons : access stdint_h.uint32_t;
      e : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:2220
   pragma Import (C, xcb_ewmh_get_wm_handled_icons_reply, "xcb_ewmh_get_wm_handled_icons_reply");

   function xcb_ewmh_set_wm_user_time
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2228
   pragma Import (C, xcb_ewmh_set_wm_user_time, "xcb_ewmh_set_wm_user_time");

   function xcb_ewmh_set_wm_user_time_checked
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2232
   pragma Import (C, xcb_ewmh_set_wm_user_time_checked, "xcb_ewmh_set_wm_user_time_checked");

   function xcb_ewmh_get_wm_user_time_unchecked (arg1 : access xcb_ewmh_connection_t; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2236
   pragma Import (C, xcb_ewmh_get_wm_user_time_unchecked, "xcb_ewmh_get_wm_user_time_unchecked");

   function xcb_ewmh_get_wm_user_time (arg1 : access xcb_ewmh_connection_t; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2239
   pragma Import (C, xcb_ewmh_get_wm_user_time, "xcb_ewmh_get_wm_user_time");

   function xcb_ewmh_get_wm_user_time_from_reply (xtime : access stdint_h.uint32_t; r : access xcb_xproto_h.xcb_get_property_reply_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:2243
   pragma Import (C, xcb_ewmh_get_wm_user_time_from_reply, "xcb_ewmh_get_wm_user_time_from_reply");

   function xcb_ewmh_get_wm_user_time_reply
     (ewmh : access xcb_ewmh_connection_t;
      cookie : xcb_xproto_h.xcb_get_property_cookie_t;
      xtime : access stdint_h.uint32_t;
      e : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:2250
   pragma Import (C, xcb_ewmh_get_wm_user_time_reply, "xcb_ewmh_get_wm_user_time_reply");

   function xcb_ewmh_set_wm_user_time_window
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2258
   pragma Import (C, xcb_ewmh_set_wm_user_time_window, "xcb_ewmh_set_wm_user_time_window");

   function xcb_ewmh_set_wm_user_time_window_checked
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2262
   pragma Import (C, xcb_ewmh_set_wm_user_time_window_checked, "xcb_ewmh_set_wm_user_time_window_checked");

   function xcb_ewmh_get_wm_user_time_window_unchecked (arg1 : access xcb_ewmh_connection_t; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2266
   pragma Import (C, xcb_ewmh_get_wm_user_time_window_unchecked, "xcb_ewmh_get_wm_user_time_window_unchecked");

   function xcb_ewmh_get_wm_user_time_window (arg1 : access xcb_ewmh_connection_t; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2269
   pragma Import (C, xcb_ewmh_get_wm_user_time_window, "xcb_ewmh_get_wm_user_time_window");

   function xcb_ewmh_get_wm_user_time_window_from_reply (xtime : access stdint_h.uint32_t; r : access xcb_xproto_h.xcb_get_property_reply_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:2273
   pragma Import (C, xcb_ewmh_get_wm_user_time_window_from_reply, "xcb_ewmh_get_wm_user_time_window_from_reply");

   function xcb_ewmh_get_wm_user_time_window_reply
     (ewmh : access xcb_ewmh_connection_t;
      cookie : xcb_xproto_h.xcb_get_property_cookie_t;
      xtime : access stdint_h.uint32_t;
      e : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:2280
   pragma Import (C, xcb_ewmh_get_wm_user_time_window_reply, "xcb_ewmh_get_wm_user_time_window_reply");

   function xcb_ewmh_set_frame_extents
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2288
   pragma Import (C, xcb_ewmh_set_frame_extents, "xcb_ewmh_set_frame_extents");

   function xcb_ewmh_set_frame_extents_checked
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2293
   pragma Import (C, xcb_ewmh_set_frame_extents_checked, "xcb_ewmh_set_frame_extents_checked");

   function xcb_ewmh_get_frame_extents_unchecked (arg1 : access xcb_ewmh_connection_t; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2298
   pragma Import (C, xcb_ewmh_get_frame_extents_unchecked, "xcb_ewmh_get_frame_extents_unchecked");

   function xcb_ewmh_get_frame_extents (arg1 : access xcb_ewmh_connection_t; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2301
   pragma Import (C, xcb_ewmh_get_frame_extents, "xcb_ewmh_get_frame_extents");

   function xcb_ewmh_get_frame_extents_from_reply (arg1 : access xcb_ewmh_get_extents_reply_t; arg2 : access xcb_xproto_h.xcb_get_property_reply_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:2304
   pragma Import (C, xcb_ewmh_get_frame_extents_from_reply, "xcb_ewmh_get_frame_extents_from_reply");

   function xcb_ewmh_get_frame_extents_reply
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_get_property_cookie_t;
      arg3 : access xcb_ewmh_get_extents_reply_t;
      arg4 : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:2307
   pragma Import (C, xcb_ewmh_get_frame_extents_reply, "xcb_ewmh_get_frame_extents_reply");

   function xcb_ewmh_send_wm_ping
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_xproto_h.xcb_timestamp_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2312
   pragma Import (C, xcb_ewmh_send_wm_ping, "xcb_ewmh_send_wm_ping");

   function xcb_ewmh_set_wm_sync_request_counter
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_xproto_h.xcb_atom_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2316
   pragma Import (C, xcb_ewmh_set_wm_sync_request_counter, "xcb_ewmh_set_wm_sync_request_counter");

   function xcb_ewmh_set_wm_sync_request_counter_checked
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_xproto_h.xcb_atom_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2321
   pragma Import (C, xcb_ewmh_set_wm_sync_request_counter_checked, "xcb_ewmh_set_wm_sync_request_counter_checked");

   function xcb_ewmh_get_wm_sync_request_counter_unchecked (arg1 : access xcb_ewmh_connection_t; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2326
   pragma Import (C, xcb_ewmh_get_wm_sync_request_counter_unchecked, "xcb_ewmh_get_wm_sync_request_counter_unchecked");

   function xcb_ewmh_get_wm_sync_request_counter (arg1 : access xcb_ewmh_connection_t; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2329
   pragma Import (C, xcb_ewmh_get_wm_sync_request_counter, "xcb_ewmh_get_wm_sync_request_counter");

   function xcb_ewmh_get_wm_sync_request_counter_from_reply (arg1 : access stdint_h.uint64_t; arg2 : access xcb_xproto_h.xcb_get_property_reply_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:2332
   pragma Import (C, xcb_ewmh_get_wm_sync_request_counter_from_reply, "xcb_ewmh_get_wm_sync_request_counter_from_reply");

   function xcb_ewmh_get_wm_sync_request_counter_reply
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_get_property_cookie_t;
      arg3 : access stdint_h.uint64_t;
      arg4 : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:2335
   pragma Import (C, xcb_ewmh_get_wm_sync_request_counter_reply, "xcb_ewmh_get_wm_sync_request_counter_reply");

   function xcb_ewmh_send_wm_sync_request
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : xcb_xproto_h.xcb_atom_t;
      arg4 : xcb_xproto_h.xcb_atom_t;
      arg5 : xcb_xproto_h.xcb_timestamp_t;
      arg6 : stdint_h.uint64_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2340
   pragma Import (C, xcb_ewmh_send_wm_sync_request, "xcb_ewmh_send_wm_sync_request");

   function xcb_ewmh_set_wm_fullscreen_monitors
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2347
   pragma Import (C, xcb_ewmh_set_wm_fullscreen_monitors, "xcb_ewmh_set_wm_fullscreen_monitors");

   function xcb_ewmh_set_wm_fullscreen_monitors_checked
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_window_t;
      arg3 : stdint_h.uint32_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2352
   pragma Import (C, xcb_ewmh_set_wm_fullscreen_monitors_checked, "xcb_ewmh_set_wm_fullscreen_monitors_checked");

   function xcb_ewmh_get_wm_fullscreen_monitors_unchecked (arg1 : access xcb_ewmh_connection_t; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2357
   pragma Import (C, xcb_ewmh_get_wm_fullscreen_monitors_unchecked, "xcb_ewmh_get_wm_fullscreen_monitors_unchecked");

   function xcb_ewmh_get_wm_fullscreen_monitors (arg1 : access xcb_ewmh_connection_t; arg2 : xcb_xproto_h.xcb_window_t) return xcb_xproto_h.xcb_get_property_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2360
   pragma Import (C, xcb_ewmh_get_wm_fullscreen_monitors, "xcb_ewmh_get_wm_fullscreen_monitors");

   function xcb_ewmh_get_wm_fullscreen_monitors_from_reply (arg1 : access xcb_ewmh_get_wm_fullscreen_monitors_reply_t; arg2 : access xcb_xproto_h.xcb_get_property_reply_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:2363
   pragma Import (C, xcb_ewmh_get_wm_fullscreen_monitors_from_reply, "xcb_ewmh_get_wm_fullscreen_monitors_from_reply");

   function xcb_ewmh_get_wm_fullscreen_monitors_reply
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_get_property_cookie_t;
      arg3 : access xcb_ewmh_get_wm_fullscreen_monitors_reply_t;
      arg4 : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:2366
   pragma Import (C, xcb_ewmh_get_wm_fullscreen_monitors_reply, "xcb_ewmh_get_wm_fullscreen_monitors_reply");

   function xcb_ewmh_request_change_wm_fullscreen_monitors
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : int;
      arg3 : xcb_xproto_h.xcb_window_t;
      arg4 : stdint_h.uint32_t;
      arg5 : stdint_h.uint32_t;
      arg6 : stdint_h.uint32_t;
      arg7 : stdint_h.uint32_t;
      arg8 : xcb_ewmh_client_source_type_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2372
   pragma Import (C, xcb_ewmh_request_change_wm_fullscreen_monitors, "xcb_ewmh_request_change_wm_fullscreen_monitors");

  --*
  -- * @brief Set _NET_WM_CM_Sn ownership to the given window
  -- *
  -- * For  each  screen they  manage,  compositing  manager MUST  acquire
  -- * ownership of a selection named _NET_WM_CM_Sn, where n is the screen
  -- * number.
  -- *
  -- * @param ewmh The information relative to EWMH
  -- * @param screen_nbr The screen number
  -- * @param owner The new owner of _NET_WM_CM_Sn selection
  -- * @param timestamp The client's last user activity timestamp
  -- * @param selection_data1 Optional data described by ICCCM
  -- * @param selection_data2 Optional data described by ICCCM
  --  

   function xcb_ewmh_set_wm_cm_owner
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : int;
      arg3 : xcb_xproto_h.xcb_window_t;
      arg4 : xcb_xproto_h.xcb_timestamp_t;
      arg5 : stdint_h.uint32_t;
      arg6 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2393
   pragma Import (C, xcb_ewmh_set_wm_cm_owner, "xcb_ewmh_set_wm_cm_owner");

  --*
  -- * @see xcb_ewmh_set_wm_cm_owner
  --  

   function xcb_ewmh_set_wm_cm_owner_checked
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : int;
      arg3 : xcb_xproto_h.xcb_window_t;
      arg4 : xcb_xproto_h.xcb_timestamp_t;
      arg5 : stdint_h.uint32_t;
      arg6 : stdint_h.uint32_t) return xcb_xcb_h.xcb_void_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2403
   pragma Import (C, xcb_ewmh_set_wm_cm_owner_checked, "xcb_ewmh_set_wm_cm_owner_checked");

  --*
  -- * @brief   Send  GetSelectOwner   request   to  get   the  owner   of
  -- *        _NET_WM_CM_Sn root window property
  -- *
  -- * @param ewmh The information relative to EWMH
  -- * @param screen_nbr The screen number
  -- * @return The _NET_WM_CM_Sn cookie of the GetSelectionOwner request
  --  

   function xcb_ewmh_get_wm_cm_owner_unchecked (arg1 : access xcb_ewmh_connection_t; arg2 : int) return xcb_xproto_h.xcb_get_selection_owner_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2418
   pragma Import (C, xcb_ewmh_get_wm_cm_owner_unchecked, "xcb_ewmh_get_wm_cm_owner_unchecked");

  --*
  -- * @see xcb_ewmh_get_wm_cm_owner_unchecked
  --  

   function xcb_ewmh_get_wm_cm_owner (arg1 : access xcb_ewmh_connection_t; arg2 : int) return xcb_xproto_h.xcb_get_selection_owner_cookie_t;  -- /usr/include/xcb/xcb_ewmh.h:2424
   pragma Import (C, xcb_ewmh_get_wm_cm_owner, "xcb_ewmh_get_wm_cm_owner");

   function xcb_ewmh_get_wm_cm_owner_from_reply (arg1 : access xcb_xproto_h.xcb_window_t; arg2 : access xcb_xproto_h.xcb_get_selection_owner_reply_t) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:2427
   pragma Import (C, xcb_ewmh_get_wm_cm_owner_from_reply, "xcb_ewmh_get_wm_cm_owner_from_reply");

  --*
  -- * @brief Get reply from the GetProperty _NET_CLIENT_LIST cookie
  -- *
  -- * The  parameter  e  supplied  to  this  function  must  be  NULL  if
  -- * xcb_get_window_client_list_unchecked()  is   used.   Otherwise,  it
  -- * stores the error if any.
  -- *
  -- * @param ewmh The information relative to EWMH.
  -- * @param cookie The _NET_WM_CM_Sn GetSelectionOwner request cookie.
  -- * @param owner The window ID which owns the selection or None.
  -- * @param The xcb_generic_error_t supplied.
  -- * @return Return 1 on success, 0 otherwise.
  --  

   function xcb_ewmh_get_wm_cm_owner_reply
     (arg1 : access xcb_ewmh_connection_t;
      arg2 : xcb_xproto_h.xcb_get_selection_owner_cookie_t;
      arg3 : access xcb_xproto_h.xcb_window_t;
      arg4 : System.Address) return stdint_h.uint8_t;  -- /usr/include/xcb/xcb_ewmh.h:2443
   pragma Import (C, xcb_ewmh_get_wm_cm_owner_reply, "xcb_ewmh_get_wm_cm_owner_reply");

  --*
  -- * @}
  --  

end xcb_xcb_ewmh_h;
