with Interfaces.C; use Interfaces.C;

package bits_sched_h is

   --  unsupported macro: SCHED_OTHER 0
   --  unsupported macro: SCHED_FIFO 1
   --  unsupported macro: SCHED_RR 2
  -- Definitions of constants and data structure for POSIX 1003.1b-1993
  --   scheduling interface.
  --   Copyright (C) 1996-1999,2001-2003,2005,2006,2007,2008,2009,2011,2012
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

  -- Scheduling algorithms.   
  -- Cloning flags.   
  -- The official definition.   
   type sched_param is record
      uu_sched_priority : aliased int;  -- /usr/include/bits/sched.h:75
   end record;
   pragma Convention (C_Pass_By_Copy, sched_param);  -- /usr/include/bits/sched.h:73

  -- Clone current process.   
  -- Unshare the specified resources.   
  -- Get index of currently used CPU.   
  -- Switch process to namespace of type NSTYPE indicated by FD.   
  -- Data structure to describe a process' schedulability.   
   type uu_sched_param is record
      uu_sched_priority : aliased int;  -- /usr/include/bits/sched.h:106
   end record;
   pragma Convention (C_Pass_By_Copy, uu_sched_param);  -- /usr/include/bits/sched.h:104

  -- Size definition for CPU sets.   
  -- Type for array elements in 'cpu_set_t'.   
   subtype uu_cpu_mask is unsigned_long;  -- /usr/include/bits/sched.h:119

  -- Basic access functions.   
  -- Data structure to describe CPU mask.   
   type cpu_set_t_uu_bits_array is array (0 .. 15) of aliased uu_cpu_mask;
   type cpu_set_t is record
      uu_bits : aliased cpu_set_t_uu_bits_array;  -- /usr/include/bits/sched.h:128
   end record;
   pragma Convention (C_Pass_By_Copy, cpu_set_t);  -- /usr/include/bits/sched.h:129

  -- Access functions for CPU masks.   
end bits_sched_h;
