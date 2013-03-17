with Interfaces.C; use Interfaces.C;
with bits_types_h;
with System;
limited with bits_sched_h;
limited with time_h;

package sched_h is

   --  unsupported macro: sched_priority __sched_priority
  -- Definitions for POSIX 1003.1b-1993 (aka POSIX.4) scheduling interface.
  --   Copyright (C) 1996,1997,1999,2001-2004,2007,2010,2012
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

  -- Get type definitions.   
  -- Get system specific constant and data structure definitions.   
  -- Define the real names for the elements of `struct sched_param'.   
  -- Set scheduling parameters for a process.   
   function sched_setparam (arg1 : bits_types_h.uu_pid_t; arg2 : System.Address) return int;  -- /usr/include/sched.h:50
   pragma Import (C, sched_setparam, "sched_setparam");

  -- Retrieve scheduling parameters for a particular process.   
   function sched_getparam (arg1 : bits_types_h.uu_pid_t; arg2 : access bits_sched_h.sched_param) return int;  -- /usr/include/sched.h:54
   pragma Import (C, sched_getparam, "sched_getparam");

  -- Set scheduling algorithm and/or parameters for a process.   
   function sched_setscheduler
     (arg1 : bits_types_h.uu_pid_t;
      arg2 : int;
      arg3 : System.Address) return int;  -- /usr/include/sched.h:57
   pragma Import (C, sched_setscheduler, "sched_setscheduler");

  -- Retrieve scheduling algorithm for a particular purpose.   
   function sched_getscheduler (arg1 : bits_types_h.uu_pid_t) return int;  -- /usr/include/sched.h:61
   pragma Import (C, sched_getscheduler, "sched_getscheduler");

  -- Yield the processor.   
   function sched_yield return int;  -- /usr/include/sched.h:64
   pragma Import (C, sched_yield, "sched_yield");

  -- Get maximum priority value for a scheduler.   
   function sched_get_priority_max (arg1 : int) return int;  -- /usr/include/sched.h:67
   pragma Import (C, sched_get_priority_max, "sched_get_priority_max");

  -- Get minimum priority value for a scheduler.   
   function sched_get_priority_min (arg1 : int) return int;  -- /usr/include/sched.h:70
   pragma Import (C, sched_get_priority_min, "sched_get_priority_min");

  -- Get the SCHED_RR interval for the named process.   
   function sched_rr_get_interval (arg1 : bits_types_h.uu_pid_t; arg2 : access time_h.timespec) return int;  -- /usr/include/sched.h:73
   pragma Import (C, sched_rr_get_interval, "sched_rr_get_interval");

  -- Access macros for `cpu_set'.   
  -- Set the CPU affinity for a task  
  -- Get the CPU affinity for a task  
end sched_h;
