with Interfaces.C; use Interfaces.C;
with bits_sigset_h;
with bits_types_h;
limited with bits_time_h;
with System;

package sys_select_h is

   --  unsupported macro: FD_SETSIZE __FD_SETSIZE
   --  unsupported macro: NFDBITS __NFDBITS
   --  arg-macro: procedure FD_SET (fd, fdsetp)
   --    __FD_SET (fd, fdsetp)
   --  arg-macro: procedure FD_CLR (fd, fdsetp)
   --    __FD_CLR (fd, fdsetp)
   --  arg-macro: procedure FD_ISSET (fd, fdsetp)
   --    __FD_ISSET (fd, fdsetp)
   --  arg-macro: procedure FD_ZERO (fdsetp)
   --    __FD_ZERO (fdsetp)
   subtype sigset_t is bits_sigset_h.uu_sigset_t;  -- /usr/include/sys/select.h:37

   subtype suseconds_t is bits_types_h.uu_suseconds_t;  -- /usr/include/sys/select.h:48

   subtype uu_fd_mask is long;  -- /usr/include/sys/select.h:54

   type fd_set_uu_fds_bits_array is array (0 .. 15) of aliased uu_fd_mask;
   type fd_set is record
      uu_fds_bits : aliased fd_set_uu_fds_bits_array;  -- /usr/include/sys/select.h:72
   end record;
   pragma Convention (C_Pass_By_Copy, fd_set);  -- /usr/include/sys/select.h:75

   subtype fd_mask is uu_fd_mask;  -- /usr/include/sys/select.h:82

   function c_select
     (arg1 : int;
      arg2 : access fd_set;
      arg3 : access fd_set;
      arg4 : access fd_set;
      arg5 : access bits_time_h.timeval) return int;  -- /usr/include/sys/select.h:106
   pragma Import (C, c_select, "select");

   function pselect
     (arg1 : int;
      arg2 : access fd_set;
      arg3 : access fd_set;
      arg4 : access fd_set;
      arg5 : System.Address;
      arg6 : access constant bits_sigset_h.uu_sigset_t) return int;  -- /usr/include/sys/select.h:118
   pragma Import (C, pselect, "pselect");

end sys_select_h;
