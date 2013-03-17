with Interfaces.C; use Interfaces.C;
with Interfaces.C.Extensions;

package sys_sysmacros_h is

   --  arg-macro: procedure major (dev)
   --    gnu_dev_major (dev)
   --  arg-macro: procedure minor (dev)
   --    gnu_dev_minor (dev)
   --  arg-macro: procedure makedev (maj, min)
   --    gnu_dev_makedev (maj, min)
  -- Definitions of macros to access `dev_t' values.
  --   Copyright (C) 1996, 1997, 1999, 2003, 2004, 2007, 2011
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

  -- If the compiler does not know long long it is out of luck.  We are
  --   not going to hack weird hacks to support the dev_t representation
  --   they need.   

   function gnu_dev_major (arg1 : Extensions.unsigned_long_long) return unsigned;  -- /usr/include/sys/sysmacros.h:32
   pragma Import (C, gnu_dev_major, "gnu_dev_major");

   function gnu_dev_minor (arg1 : Extensions.unsigned_long_long) return unsigned;  -- /usr/include/sys/sysmacros.h:35
   pragma Import (C, gnu_dev_minor, "gnu_dev_minor");

   function gnu_dev_makedev (arg1 : unsigned; arg2 : unsigned) return Extensions.unsigned_long_long;  -- /usr/include/sys/sysmacros.h:38
   pragma Import (C, gnu_dev_makedev, "gnu_dev_makedev");

  -- Access the functions with their traditional names.   
end sys_sysmacros_h;
