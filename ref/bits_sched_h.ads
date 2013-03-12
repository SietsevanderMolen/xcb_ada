with Interfaces.C; use Interfaces.C;

package bits_sched_h is

   --  unsupported macro: SCHED_OTHER 0
   --  unsupported macro: SCHED_FIFO 1
   --  unsupported macro: SCHED_RR 2
   type sched_param is record
      uu_sched_priority : aliased int;  -- /usr/include/bits/sched.h:75
   end record;
   pragma Convention (C_Pass_By_Copy, sched_param);  -- /usr/include/bits/sched.h:73

   type uu_sched_param is record
      uu_sched_priority : aliased int;  -- /usr/include/bits/sched.h:106
   end record;
   pragma Convention (C_Pass_By_Copy, uu_sched_param);  -- /usr/include/bits/sched.h:104

   subtype uu_cpu_mask is unsigned_long;  -- /usr/include/bits/sched.h:119

   type cpu_set_t_uu_bits_array is array (0 .. 15) of aliased uu_cpu_mask;
   type cpu_set_t is record
      uu_bits : aliased cpu_set_t_uu_bits_array;  -- /usr/include/bits/sched.h:128
   end record;
   pragma Convention (C_Pass_By_Copy, cpu_set_t);  -- /usr/include/bits/sched.h:129

end bits_sched_h;
