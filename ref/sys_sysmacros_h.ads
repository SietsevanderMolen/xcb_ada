with Interfaces.C; use Interfaces.C;
with Interfaces.C.Extensions;

package sys_sysmacros_h is

   --  arg-macro: procedure major (dev)
   --    gnu_dev_major (dev)
   --  arg-macro: procedure minor (dev)
   --    gnu_dev_minor (dev)
   --  arg-macro: procedure makedev (maj, min)
   --    gnu_dev_makedev (maj, min)
   function gnu_dev_major (arg1 : Extensions.unsigned_long_long) return unsigned;  -- /usr/include/sys/sysmacros.h:32
   pragma Import (C, gnu_dev_major, "gnu_dev_major");

   function gnu_dev_minor (arg1 : Extensions.unsigned_long_long) return unsigned;  -- /usr/include/sys/sysmacros.h:35
   pragma Import (C, gnu_dev_minor, "gnu_dev_minor");

   function gnu_dev_makedev (arg1 : unsigned; arg2 : unsigned) return Extensions.unsigned_long_long;  -- /usr/include/sys/sysmacros.h:38
   pragma Import (C, gnu_dev_makedev, "gnu_dev_makedev");

end sys_sysmacros_h;
