with Interfaces.C; use Interfaces.C;
with bits_types_h;
with System;
limited with bits_sched_h;
limited with time_h;

package sched_h is

   --  unsupported macro: sched_priority __sched_priority
   function sched_setparam (arg1 : bits_types_h.uu_pid_t; arg2 : System.Address) return int;  -- /usr/include/sched.h:50
   pragma Import (C, sched_setparam, "sched_setparam");

   function sched_getparam (arg1 : bits_types_h.uu_pid_t; arg2 : access bits_sched_h.sched_param) return int;  -- /usr/include/sched.h:54
   pragma Import (C, sched_getparam, "sched_getparam");

   function sched_setscheduler
     (arg1 : bits_types_h.uu_pid_t;
      arg2 : int;
      arg3 : System.Address) return int;  -- /usr/include/sched.h:57
   pragma Import (C, sched_setscheduler, "sched_setscheduler");

   function sched_getscheduler (arg1 : bits_types_h.uu_pid_t) return int;  -- /usr/include/sched.h:61
   pragma Import (C, sched_getscheduler, "sched_getscheduler");

   function sched_yield return int;  -- /usr/include/sched.h:64
   pragma Import (C, sched_yield, "sched_yield");

   function sched_get_priority_max (arg1 : int) return int;  -- /usr/include/sched.h:67
   pragma Import (C, sched_get_priority_max, "sched_get_priority_max");

   function sched_get_priority_min (arg1 : int) return int;  -- /usr/include/sched.h:70
   pragma Import (C, sched_get_priority_min, "sched_get_priority_min");

   function sched_rr_get_interval (arg1 : bits_types_h.uu_pid_t; arg2 : access time_h.timespec) return int;  -- /usr/include/sched.h:73
   pragma Import (C, sched_rr_get_interval, "sched_rr_get_interval");

end sched_h;
