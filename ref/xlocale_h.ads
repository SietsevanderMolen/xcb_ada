with Interfaces.C; use Interfaces.C;
with System;
with Interfaces.C.Strings;

package xlocale_h is

   --  skipped empty struct uu_locale_data

   type anon1162_anon1166_array is array (0 .. 12) of System.Address;
   type anon1162_anon1173_array is array (0 .. 12) of Interfaces.C.Strings.chars_ptr;
   type uu_locale_struct is record
      uu_locales : aliased anon1162_anon1166_array;  -- /usr/include/xlocale.h:30
      uu_ctype_b : access unsigned_short;  -- /usr/include/xlocale.h:33
      uu_ctype_tolower : access int;  -- /usr/include/xlocale.h:34
      uu_ctype_toupper : access int;  -- /usr/include/xlocale.h:35
      uu_names : aliased anon1162_anon1173_array;  -- /usr/include/xlocale.h:38
   end record;
   pragma Convention (C_Pass_By_Copy, uu_locale_struct);  -- /usr/include/xlocale.h:27

   type uu_locale_t is access all uu_locale_struct;  -- /usr/include/xlocale.h:39

   subtype locale_t is uu_locale_t;  -- /usr/include/xlocale.h:42

end xlocale_h;
