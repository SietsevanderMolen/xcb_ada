with Interfaces.C; use Interfaces.C;
with System;
with sys_types_h;
with bits_types_h;

package sys_uio_h is

  -- Copyright (C) 1991,1992,1996-1999,2003,2009,2012
  --   Free Software Foundation, Inc.
  --   This file is part of the GNU C Library.
  --   The GNU C Library is free software; you can redistribute it and/or
  --   modify it under the terms of the GNU Lesser General Public
  --   License as published by the Free Software Foundation; either
  --   version 2.1 of the License, or (at your option) any later version.
  --   The GNU C Library is distributed in the hope that it will be useful,
  --   but WITHOUT ANY WARRANTY; without even the implied warranty of
  --   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  --   Lesser General Public License for more details.
  --   You should have received a copy of the GNU Lesser General Public
  --   License along with the GNU C Library; if not, see
  --   <http://www.gnu.org/licenses/>.   

  -- This file defines `struct iovec'.   
  -- Read data from file descriptor FD, and put the result in the
  --   buffers described by IOVEC, which is a vector of COUNT 'struct iovec's.
  --   The buffers are filled in the order specified.
  --   Operates just like 'read' (see <unistd.h>) except that data are
  --   put in IOVEC instead of a contiguous buffer.
  --   This function is a cancellation point and therefore not marked with
  --   __THROW.   

   function readv
     (arg1 : int;
      arg2 : System.Address;
      arg3 : int) return sys_types_h.ssize_t;  -- /usr/include/sys/uio.h:40
   pragma Import (C, readv, "readv");

  -- Write data pointed by the buffers described by IOVEC, which
  --   is a vector of COUNT 'struct iovec's, to file descriptor FD.
  --   The data is written in the order specified.
  --   Operates just like 'write' (see <unistd.h>) except that the data
  --   are taken from IOVEC instead of a contiguous buffer.
  --   This function is a cancellation point and therefore not marked with
  --   __THROW.   

   function writev
     (arg1 : int;
      arg2 : System.Address;
      arg3 : int) return sys_types_h.ssize_t;  -- /usr/include/sys/uio.h:51
   pragma Import (C, writev, "writev");

  -- Read data from file descriptor FD at the given position OFFSET
  --   without change the file pointer, and put the result in the buffers
  --   described by IOVEC, which is a vector of COUNT 'struct iovec's.
  --   The buffers are filled in the order specified.  Operates just like
  --   'pread' (see <unistd.h>) except that data are put in IOVEC instead
  --   of a contiguous buffer.
  --   This function is a cancellation point and therefore not marked with
  --   __THROW.   

   function preadv
     (arg1 : int;
      arg2 : System.Address;
      arg3 : int;
      arg4 : bits_types_h.uu_off_t) return sys_types_h.ssize_t;  -- /usr/include/sys/uio.h:66
   pragma Import (C, preadv, "preadv");

  -- Write data pointed by the buffers described by IOVEC, which is a
  --   vector of COUNT 'struct iovec's, to file descriptor FD at the given
  --   position OFFSET without change the file pointer.  The data is
  --   written in the order specified.  Operates just like 'pwrite' (see
  --   <unistd.h>) except that the data are taken from IOVEC instead of a
  --   contiguous buffer.
  --   This function is a cancellation point and therefore not marked with
  --   __THROW.   

   function pwritev
     (arg1 : int;
      arg2 : System.Address;
      arg3 : int;
      arg4 : bits_types_h.uu_off_t) return sys_types_h.ssize_t;  -- /usr/include/sys/uio.h:78
   pragma Import (C, pwritev, "pwritev");

  -- Read data from file descriptor FD at the given position OFFSET
  --   without change the file pointer, and put the result in the buffers
  --   described by IOVEC, which is a vector of COUNT 'struct iovec's.
  --   The buffers are filled in the order specified.  Operates just like
  --   'pread' (see <unistd.h>) except that data are put in IOVEC instead
  --   of a contiguous buffer.
  --   This function is a cancellation point and therefore not marked with
  --   __THROW.   

  -- Write data pointed by the buffers described by IOVEC, which is a
  --   vector of COUNT 'struct iovec's, to file descriptor FD at the given
  --   position OFFSET without change the file pointer.  The data is
  --   written in the order specified.  Operates just like 'pwrite' (see
  --   <unistd.h>) except that the data are taken from IOVEC instead of a
  --   contiguous buffer.
  --   This function is a cancellation point and therefore not marked with
  --   __THROW.   

end sys_uio_h;
