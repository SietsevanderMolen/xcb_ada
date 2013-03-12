with Interfaces.C; use Interfaces.C;
with System;
with sys_types_h;
with bits_types_h;

package sys_uio_h is

   function readv
     (arg1 : int;
      arg2 : System.Address;
      arg3 : int) return sys_types_h.ssize_t;  -- /usr/include/sys/uio.h:40
   pragma Import (C, readv, "readv");

   function writev
     (arg1 : int;
      arg2 : System.Address;
      arg3 : int) return sys_types_h.ssize_t;  -- /usr/include/sys/uio.h:51
   pragma Import (C, writev, "writev");

   function preadv
     (arg1 : int;
      arg2 : System.Address;
      arg3 : int;
      arg4 : bits_types_h.uu_off_t) return sys_types_h.ssize_t;  -- /usr/include/sys/uio.h:66
   pragma Import (C, preadv, "preadv");

   function pwritev
     (arg1 : int;
      arg2 : System.Address;
      arg3 : int;
      arg4 : bits_types_h.uu_off_t) return sys_types_h.ssize_t;  -- /usr/include/sys/uio.h:78
   pragma Import (C, pwritev, "pwritev");

end sys_uio_h;
