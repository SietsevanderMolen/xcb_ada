with Interfaces.C; use Interfaces.C;
with bits_types_h;

package bits_time_h is

   --  unsupported macro: CLOCKS_PER_SEC 1000000l
   --  unsupported macro: CLOCK_REALTIME 0
   --  unsupported macro: CLOCK_MONOTONIC 1
   --  unsupported macro: CLOCK_PROCESS_CPUTIME_ID 2
   --  unsupported macro: CLOCK_THREAD_CPUTIME_ID 3
   --  unsupported macro: CLOCK_MONOTONIC_RAW 4
   --  unsupported macro: CLOCK_REALTIME_COARSE 5
   --  unsupported macro: CLOCK_MONOTONIC_COARSE 6
   --  unsupported macro: CLOCK_BOOTTIME 7
   --  unsupported macro: CLOCK_REALTIME_ALARM 8
   --  unsupported macro: CLOCK_BOOTTIME_ALARM 9
   --  unsupported macro: TIMER_ABSTIME 1
  -- System-dependent timing definitions.  Linux version.
  --   Copyright (C) 1996,1997,1999-2003,2010,2011,2012 Free Software Foundation, Inc.
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

  -- * Never include this file directly; use <time.h> instead.
  --  

  -- A time value that is accurate to the nearest
  --   microsecond but also has a range of years.   

  -- Seconds.   
   type timeval is record
      tv_sec : aliased bits_types_h.uu_time_t;  -- /usr/include/bits/time.h:32
      tv_usec : aliased bits_types_h.uu_suseconds_t;  -- /usr/include/bits/time.h:33
   end record;
   pragma Convention (C_Pass_By_Copy, timeval);  -- /usr/include/bits/time.h:30

  -- Microseconds.   
  -- ISO/IEC 9899:1990 7.12.1: <time.h>
  --   The macro `CLOCKS_PER_SEC' is the number per second of the value
  --   returned by the `clock' function.  

  -- CAE XSH, Issue 4, Version 2: <time.h>
  --   The value of CLOCKS_PER_SEC is required to be 1 million on all
  --   XSI-conformant systems.  

  -- Even though CLOCKS_PER_SEC has such a strange value CLK_TCK
  --   presents the real value for clock ticks per second for the system.   

  -- Identifier for system-wide realtime clock.   
  -- Monotonic system-wide clock.   
  -- High-resolution timer from the CPU.   
  -- Thread-specific CPU-time clock.   
  -- Monotonic system-wide clock, not adjusted for frequency scaling.   
  -- Identifier for system-wide realtime clock, updated only on ticks.   
  -- Monotonic system-wide clock, updated only on ticks.   
  -- Monotonic system-wide clock that includes time spent in suspension.   
  -- Like CLOCK_REALTIME but also wakes suspended system.   
  -- Like CLOCK_BOOTTIME but also wakes suspended system.   
  -- Flag to indicate time is absolute.   
  -- Tune a POSIX clock.   
end bits_time_h;
