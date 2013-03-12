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
   type timeval is record
      tv_sec : aliased bits_types_h.uu_time_t;  -- /usr/include/bits/time.h:32
      tv_usec : aliased bits_types_h.uu_suseconds_t;  -- /usr/include/bits/time.h:33
   end record;
   pragma Convention (C_Pass_By_Copy, timeval);  -- /usr/include/bits/time.h:30

end bits_time_h;
