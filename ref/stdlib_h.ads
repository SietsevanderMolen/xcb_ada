with Interfaces.C; use Interfaces.C;
limited with bits_waitstatus_h;
with Interfaces.C.Strings;
with System;
with Interfaces.C.Extensions;
with stddef_h;
with sys_types_h;

package stdlib_h is

   --  arg-macro: procedure WEXITSTATUS (status)
   --    __WEXITSTATUS (__WAIT_INT (status))
   --  arg-macro: procedure WTERMSIG (status)
   --    __WTERMSIG (__WAIT_INT (status))
   --  arg-macro: procedure WSTOPSIG (status)
   --    __WSTOPSIG (__WAIT_INT (status))
   --  arg-macro: procedure WIFEXITED (status)
   --    __WIFEXITED (__WAIT_INT (status))
   --  arg-macro: procedure WIFSIGNALED (status)
   --    __WIFSIGNALED (__WAIT_INT (status))
   --  arg-macro: procedure WIFSTOPPED (status)
   --    __WIFSTOPPED (__WAIT_INT (status))
   --  arg-macro: procedure WIFCONTINUED (status)
   --    __WIFCONTINUED (__WAIT_INT (status))
   --  unsupported macro: RAND_MAX 2147483647
   --  unsupported macro: EXIT_FAILURE 1
   --  unsupported macro: EXIT_SUCCESS 0
   --  unsupported macro: MB_CUR_MAX (__ctype_get_mb_cur_max ())
  -- Copyright (C) 1991-2007, 2009-2011, 2012 Free Software Foundation, Inc.
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

  -- *	ISO C99 Standard: 7.20 General utilities	<stdlib.h>
  --  

  -- Get size_t, wchar_t and NULL from <stddef.h>.   
  -- XPG requires a few symbols from <sys/wait.h> being defined.   
  -- Lots of hair to allow traditional BSD use of `union wait'
  --   as well as POSIX.1 use of `int' for the status word.   

  -- This is the type of the argument to `wait'.  The funky union
  --   causes redeclarations with either `int *' or `union wait *' to be
  --   allowed without complaint.  __WAIT_STATUS_DEFN is the type used in
  --   the actual function definitions.   

  -- This works in GCC 2.6.1 and later.   
   type uu_WAIT_STATUS (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            uu_uptr : access bits_waitstatus_h.wait;  -- /usr/include/stdlib.h:69
         when others =>
            uu_iptr : access int;  -- /usr/include/stdlib.h:70
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, uu_WAIT_STATUS);
   pragma Unchecked_Union (uu_WAIT_STATUS);  -- /usr/include/stdlib.h:71

  -- Define the macros <sys/wait.h> also would define this way.   
  -- Returned by `div'.   
  -- Quotient.   
  -- Remainder.   
   type div_t is record
      quot : aliased int;  -- /usr/include/stdlib.h:99
      c_rem : aliased int;  -- /usr/include/stdlib.h:100
   end record;
   pragma Convention (C_Pass_By_Copy, div_t);  -- /usr/include/stdlib.h:101

  -- Returned by `ldiv'.   
  -- Quotient.   
  -- Remainder.   
   type ldiv_t is record
      quot : aliased long;  -- /usr/include/stdlib.h:107
      c_rem : aliased long;  -- /usr/include/stdlib.h:108
   end record;
   pragma Convention (C_Pass_By_Copy, ldiv_t);  -- /usr/include/stdlib.h:109

  -- Returned by `lldiv'.   
  -- Quotient.   
  -- Remainder.   
   type lldiv_t is record
      quot : aliased Long_Long_Integer;  -- /usr/include/stdlib.h:119
      c_rem : aliased Long_Long_Integer;  -- /usr/include/stdlib.h:120
   end record;
   pragma Convention (C_Pass_By_Copy, lldiv_t);  -- /usr/include/stdlib.h:121

  -- The largest number rand will return (same as INT_MAX).   
  -- We define these the same for all machines.
  --   Changes from this to the outside world should be done in `_exit'.   

  -- Maximum length of a multibyte character in the current locale.   
  -- Convert a string to a floating-point number.   
   function atof (arg1 : Interfaces.C.Strings.chars_ptr) return double;  -- /usr/include/stdlib.h:144
   pragma Import (C, atof, "atof");

  -- Convert a string to an integer.   
   function atoi (arg1 : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/stdlib.h:147
   pragma Import (C, atoi, "atoi");

  -- Convert a string to a long integer.   
   function atol (arg1 : Interfaces.C.Strings.chars_ptr) return long;  -- /usr/include/stdlib.h:150
   pragma Import (C, atol, "atol");

  -- Convert a string to a long long integer.   
   function atoll (arg1 : Interfaces.C.Strings.chars_ptr) return Long_Long_Integer;  -- /usr/include/stdlib.h:157
   pragma Import (C, atoll, "atoll");

  -- Convert a string to a floating-point number.   
   function strtod (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : System.Address) return double;  -- /usr/include/stdlib.h:164
   pragma Import (C, strtod, "strtod");

  -- Likewise for `float' and `long double' sizes of floating-point numbers.   
   function strtof (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : System.Address) return float;  -- /usr/include/stdlib.h:172
   pragma Import (C, strtof, "strtof");

   function strtold (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : System.Address) return long_double;  -- /usr/include/stdlib.h:175
   pragma Import (C, strtold, "strtold");

  -- Convert a string to a long integer.   
   function strtol
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : System.Address;
      arg3 : int) return long;  -- /usr/include/stdlib.h:183
   pragma Import (C, strtol, "strtol");

  -- Convert a string to an unsigned long integer.   
   function strtoul
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : System.Address;
      arg3 : int) return unsigned_long;  -- /usr/include/stdlib.h:187
   pragma Import (C, strtoul, "strtoul");

  -- Convert a string to a quadword integer.   
   function strtoq
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : System.Address;
      arg3 : int) return Long_Long_Integer;  -- /usr/include/stdlib.h:195
   pragma Import (C, strtoq, "strtoq");

  -- Convert a string to an unsigned quadword integer.   
   function strtouq
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : System.Address;
      arg3 : int) return Extensions.unsigned_long_long;  -- /usr/include/stdlib.h:200
   pragma Import (C, strtouq, "strtouq");

  -- Convert a string to a quadword integer.   
   function strtoll
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : System.Address;
      arg3 : int) return Long_Long_Integer;  -- /usr/include/stdlib.h:209
   pragma Import (C, strtoll, "strtoll");

  -- Convert a string to an unsigned quadword integer.   
   function strtoull
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : System.Address;
      arg3 : int) return Extensions.unsigned_long_long;  -- /usr/include/stdlib.h:214
   pragma Import (C, strtoull, "strtoull");

  -- The concept of one static locale per category is not very well
  --   thought out.  Many applications will need to process its data using
  --   information from several different locales.  Another problem is
  --   the implementation of the internationalization handling in the
  --   ISO C++ standard library.  To support this another set of
  --   the functions using locale data exist which take an additional
  --   argument.
  --   Attention: even though several *_l interfaces are part of POSIX:2008,
  --   these are not.   

  -- Structure for reentrant locale using functions.  This is an
  --   (almost) opaque type for the user level programs.   

  -- Special versions of the functions above which take the locale to
  --   use as an additional parameter.   

  -- Convert N to base 64 using the digits "./0-9A-Za-z", least-significant
  --   digit first.  Returns a pointer to static storage overwritten by the
  --   next call.   

   function l64a (arg1 : long) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/stdlib.h:305
   pragma Import (C, l64a, "l64a");

  -- Read a number from a string S in base 64 as above.   
   function a64l (arg1 : Interfaces.C.Strings.chars_ptr) return long;  -- /usr/include/stdlib.h:308
   pragma Import (C, a64l, "a64l");

  -- we need int32_t...  
  -- These are the functions that actually do things.  The `random', `srandom',
  --   `initstate' and `setstate' functions are those from BSD Unices.
  --   The `rand' and `srand' functions are required by the ANSI standard.
  --   We provide both interfaces to the same random number generator.   

  -- Return a random long integer between 0 and RAND_MAX inclusive.   
   function random return long;  -- /usr/include/stdlib.h:321
   pragma Import (C, random, "random");

  -- Seed the random number generator with the given number.   
   procedure srandom (arg1 : unsigned);  -- /usr/include/stdlib.h:324
   pragma Import (C, srandom, "srandom");

  -- Initialize the random number generator to use state buffer STATEBUF,
  --   of length STATELEN, and seed it with SEED.  Optimal lengths are 8, 16,
  --   32, 64, 128 and 256, the bigger the better; values less than 8 will
  --   cause an error and values greater than 256 will be rounded down.   

   function initstate
     (arg1 : unsigned;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : stddef_h.size_t) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/stdlib.h:330
   pragma Import (C, initstate, "initstate");

  -- Switch the random number generator to state buffer STATEBUF,
  --   which should have been previously initialized by `initstate'.   

   function setstate (arg1 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/stdlib.h:335
   pragma Import (C, setstate, "setstate");

  -- Reentrant versions of the `random' family of functions.
  --   These functions all use the following data structure to contain
  --   state, rather than global state variables.   

  -- Front pointer.   
   type random_data is record
      fptr : access sys_types_h.int32_t;  -- /usr/include/stdlib.h:345
      rptr : access sys_types_h.int32_t;  -- /usr/include/stdlib.h:346
      state : access sys_types_h.int32_t;  -- /usr/include/stdlib.h:347
      rand_type : aliased int;  -- /usr/include/stdlib.h:348
      rand_deg : aliased int;  -- /usr/include/stdlib.h:349
      rand_sep : aliased int;  -- /usr/include/stdlib.h:350
      end_ptr : access sys_types_h.int32_t;  -- /usr/include/stdlib.h:351
   end record;
   pragma Convention (C_Pass_By_Copy, random_data);  -- /usr/include/stdlib.h:343

  -- Rear pointer.   
  -- Array of state values.   
  -- Type of random number generator.   
  -- Degree of random number generator.   
  -- Distance between front and rear.   
  -- Pointer behind state table.   
   function random_r (arg1 : access random_data; arg2 : access sys_types_h.int32_t) return int;  -- /usr/include/stdlib.h:354
   pragma Import (C, random_r, "random_r");

   function srandom_r (arg1 : unsigned; arg2 : access random_data) return int;  -- /usr/include/stdlib.h:357
   pragma Import (C, srandom_r, "srandom_r");

   function initstate_r
     (arg1 : unsigned;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : stddef_h.size_t;
      arg4 : access random_data) return int;  -- /usr/include/stdlib.h:360
   pragma Import (C, initstate_r, "initstate_r");

   function setstate_r (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : access random_data) return int;  -- /usr/include/stdlib.h:365
   pragma Import (C, setstate_r, "setstate_r");

  -- Return a random integer between 0 and RAND_MAX inclusive.   
   function rand return int;  -- /usr/include/stdlib.h:374
   pragma Import (C, rand, "rand");

  -- Seed the random number generator with the given number.   
   procedure srand (arg1 : unsigned);  -- /usr/include/stdlib.h:376
   pragma Import (C, srand, "srand");

  -- Reentrant interface according to POSIX.1.   
   function rand_r (arg1 : access unsigned) return int;  -- /usr/include/stdlib.h:381
   pragma Import (C, rand_r, "rand_r");

  -- System V style 48-bit random number generator functions.   
  -- Return non-negative, double-precision floating-point value in [0.0,1.0).   
   function drand48 return double;  -- /usr/include/stdlib.h:389
   pragma Import (C, drand48, "drand48");

   function erand48 (arg1 : access unsigned_short) return double;  -- /usr/include/stdlib.h:390
   pragma Import (C, erand48, "erand48");

  -- Return non-negative, long integer in [0,2^31).   
   function lrand48 return long;  -- /usr/include/stdlib.h:393
   pragma Import (C, lrand48, "lrand48");

   function nrand48 (arg1 : access unsigned_short) return long;  -- /usr/include/stdlib.h:394
   pragma Import (C, nrand48, "nrand48");

  -- Return signed, long integers in [-2^31,2^31).   
   function mrand48 return long;  -- /usr/include/stdlib.h:398
   pragma Import (C, mrand48, "mrand48");

   function jrand48 (arg1 : access unsigned_short) return long;  -- /usr/include/stdlib.h:399
   pragma Import (C, jrand48, "jrand48");

  -- Seed random number generator.   
   procedure srand48 (arg1 : long);  -- /usr/include/stdlib.h:403
   pragma Import (C, srand48, "srand48");

   function seed48 (arg1 : access unsigned_short) return access unsigned_short;  -- /usr/include/stdlib.h:404
   pragma Import (C, seed48, "seed48");

   procedure lcong48 (arg1 : access unsigned_short);  -- /usr/include/stdlib.h:406
   pragma Import (C, lcong48, "lcong48");

  -- Data structure for communication with thread safe versions.  This
  --   type is to be regarded as opaque.  It's only exported because users
  --   have to allocate objects of this type.   

  -- Current state.   
   type anon4052_anon4030_array is array (0 .. 2) of aliased unsigned_short;
   type anon4052_anon4030_array is array (0 .. 2) of aliased unsigned_short;
   type drand48_data is record
      uu_x : aliased anon4052_anon4030_array;  -- /usr/include/stdlib.h:414
      uu_old_x : aliased anon4052_anon4030_array;  -- /usr/include/stdlib.h:415
      uu_c : aliased unsigned_short;  -- /usr/include/stdlib.h:416
      uu_init : aliased unsigned_short;  -- /usr/include/stdlib.h:417
      uu_a : aliased Extensions.unsigned_long_long;  -- /usr/include/stdlib.h:418
   end record;
   pragma Convention (C_Pass_By_Copy, drand48_data);  -- /usr/include/stdlib.h:412

  -- Old state.   
  -- Additive const. in congruential formula.   
  -- Flag for initializing.   
  -- Factor in congruential formula.   
  -- Return non-negative, double-precision floating-point value in [0.0,1.0).   
   function drand48_r (arg1 : access drand48_data; arg2 : access double) return int;  -- /usr/include/stdlib.h:422
   pragma Import (C, drand48_r, "drand48_r");

   function erand48_r
     (arg1 : access unsigned_short;
      arg2 : access drand48_data;
      arg3 : access double) return int;  -- /usr/include/stdlib.h:424
   pragma Import (C, erand48_r, "erand48_r");

  -- Return non-negative, long integer in [0,2^31).   
   function lrand48_r (arg1 : access drand48_data; arg2 : access long) return int;  -- /usr/include/stdlib.h:429
   pragma Import (C, lrand48_r, "lrand48_r");

   function nrand48_r
     (arg1 : access unsigned_short;
      arg2 : access drand48_data;
      arg3 : access long) return int;  -- /usr/include/stdlib.h:432
   pragma Import (C, nrand48_r, "nrand48_r");

  -- Return signed, long integers in [-2^31,2^31).   
   function mrand48_r (arg1 : access drand48_data; arg2 : access long) return int;  -- /usr/include/stdlib.h:438
   pragma Import (C, mrand48_r, "mrand48_r");

   function jrand48_r
     (arg1 : access unsigned_short;
      arg2 : access drand48_data;
      arg3 : access long) return int;  -- /usr/include/stdlib.h:441
   pragma Import (C, jrand48_r, "jrand48_r");

  -- Seed random number generator.   
   function srand48_r (arg1 : long; arg2 : access drand48_data) return int;  -- /usr/include/stdlib.h:447
   pragma Import (C, srand48_r, "srand48_r");

   function seed48_r (arg1 : access unsigned_short; arg2 : access drand48_data) return int;  -- /usr/include/stdlib.h:450
   pragma Import (C, seed48_r, "seed48_r");

   function lcong48_r (arg1 : access unsigned_short; arg2 : access drand48_data) return int;  -- /usr/include/stdlib.h:453
   pragma Import (C, lcong48_r, "lcong48_r");

  -- Allocate SIZE bytes of memory.   
   function malloc (arg1 : stddef_h.size_t) return System.Address;  -- /usr/include/stdlib.h:465
   pragma Import (C, malloc, "malloc");

  -- Allocate NMEMB elements of SIZE bytes each, all initialized to 0.   
   function calloc (arg1 : stddef_h.size_t; arg2 : stddef_h.size_t) return System.Address;  -- /usr/include/stdlib.h:467
   pragma Import (C, calloc, "calloc");

  -- Re-allocate the previously allocated block
  --   in PTR, making the new block SIZE bytes long.   

  -- __attribute_malloc__ is not used, because if realloc returns
  --   the same pointer that was passed to it, aliasing needs to be allowed
  --   between objects pointed by the old and new pointers.   

   function realloc (arg1 : System.Address; arg2 : stddef_h.size_t) return System.Address;  -- /usr/include/stdlib.h:479
   pragma Import (C, realloc, "realloc");

  -- Free a block allocated by `malloc', `realloc' or `calloc'.   
   procedure free (arg1 : System.Address);  -- /usr/include/stdlib.h:482
   pragma Import (C, free, "free");

  -- Free a block.  An alias for `free'.	(Sun Unices).   
   procedure cfree (arg1 : System.Address);  -- /usr/include/stdlib.h:487
   pragma Import (C, cfree, "cfree");

  -- Allocate SIZE bytes on a page boundary.  The storage cannot be freed.   
   function valloc (arg1 : stddef_h.size_t) return System.Address;  -- /usr/include/stdlib.h:497
   pragma Import (C, valloc, "valloc");

  -- Allocate memory of SIZE bytes with an alignment of ALIGNMENT.   
   function posix_memalign
     (arg1 : System.Address;
      arg2 : stddef_h.size_t;
      arg3 : stddef_h.size_t) return int;  -- /usr/include/stdlib.h:502
   pragma Import (C, posix_memalign, "posix_memalign");

  -- ISO C variant of aligned allocation.   
  -- Abort execution and generate a core-dump.   
   procedure c_abort;  -- /usr/include/stdlib.h:514
   pragma Import (C, c_abort, "abort");

  -- Register a function to be called when `exit' is called.   
   function atexit (arg1 : access procedure) return int;  -- /usr/include/stdlib.h:518
   pragma Import (C, atexit, "atexit");

  -- Register a function to be called when `quick_exit' is called.   
  -- Register a function to be called with the status
  --   given to `exit' and the given argument.   

   function on_exit (arg1 : access procedure (arg1 : int; arg2 : System.Address); arg2 : System.Address) return int;  -- /usr/include/stdlib.h:534
   pragma Import (C, on_exit, "on_exit");

  -- Call all functions registered with `atexit' and `on_exit',
  --   in the reverse of the order in which they were registered,
  --   perform stdio cleanup, and terminate program execution with STATUS.   

   procedure c_exit (arg1 : int);  -- /usr/include/stdlib.h:542
   pragma Import (C, c_exit, "exit");

  -- Call all functions registered with `at_quick_exit' in the reverse
  --   of the order in which they were registered and terminate program
  --   execution with STATUS.   

  -- Terminate the program with STATUS without calling any of the
  --   functions registered with `atexit' or `on_exit'.   

   --  skipped func _Exit

  -- Return the value of envariable NAME, or NULL if it doesn't exist.   
   function getenv (arg1 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/stdlib.h:563
   pragma Import (C, getenv, "getenv");

  -- This function is similar to the above but returns NULL if the
  --   programs is running with SUID or SGID enabled.   

  -- The SVID says this is in <stdio.h>, but this seems a better place.	 
  -- Put STRING, which is of the form "NAME=VALUE", in the environment.
  --   If there is no `=', remove NAME from the environment.   

   function putenv (arg1 : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/stdlib.h:577
   pragma Import (C, putenv, "putenv");

  -- Set NAME to VALUE in the environment.
  --   If REPLACE is nonzero, overwrite an existing value.   

   function setenv
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : int) return int;  -- /usr/include/stdlib.h:583
   pragma Import (C, setenv, "setenv");

  -- Remove the variable NAME from the environment.   
   function unsetenv (arg1 : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/stdlib.h:587
   pragma Import (C, unsetenv, "unsetenv");

  -- The `clearenv' was planned to be added to POSIX.1 but probably
  --   never made it.  Nevertheless the POSIX.9 standard (POSIX bindings
  --   for Fortran 77) requires this function.   

   function clearenv return int;  -- /usr/include/stdlib.h:594
   pragma Import (C, clearenv, "clearenv");

  -- Generate a unique temporary file name from TEMPLATE.
  --   The last six characters of TEMPLATE must be "XXXXXX";
  --   they are replaced with a string that makes the file name unique.
  --   Always returns TEMPLATE, it's either a temporary file name or a null
  --   string if it cannot get a unique file name.   

   function mktemp (arg1 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/stdlib.h:605
   pragma Import (C, mktemp, "mktemp");

  -- Generate a unique temporary file name from TEMPLATE.
  --   The last six characters of TEMPLATE must be "XXXXXX";
  --   they are replaced with a string that makes the filename unique.
  --   Returns a file descriptor open on the file for reading and writing,
  --   or -1 if it cannot create a uniquely-named file.
  --   This function is a possible cancellation point and therefore not
  --   marked with __THROW.   

   function mkstemp (arg1 : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/stdlib.h:619
   pragma Import (C, mkstemp, "mkstemp");

  -- Similar to mkstemp, but the template can have a suffix after the
  --   XXXXXX.  The length of the suffix is specified in the second
  --   parameter.
  --   This function is a possible cancellation point and therefore not
  --   marked with __THROW.   

   function mkstemps (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : int) return int;  -- /usr/include/stdlib.h:641
   pragma Import (C, mkstemps, "mkstemps");

  -- Create a unique temporary directory from TEMPLATE.
  --   The last six characters of TEMPLATE must be "XXXXXX";
  --   they are replaced with a string that makes the directory name unique.
  --   Returns TEMPLATE, or a null pointer if it cannot get a unique name.
  --   The directory is created mode 700.   

   function mkdtemp (arg1 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/stdlib.h:662
   pragma Import (C, mkdtemp, "mkdtemp");

  -- Generate a unique temporary file name from TEMPLATE similar to
  --   mkstemp.  But allow the caller to pass additional flags which are
  --   used in the open call to create the file..
  --   This function is a possible cancellation point and therefore not
  --   marked with __THROW.   

  -- Similar to mkostemp, but the template can have a suffix after the
  --   XXXXXX.  The length of the suffix is specified in the second
  --   parameter.
  --   This function is a possible cancellation point and therefore not
  --   marked with __THROW.   

  -- Execute the given line as a shell command.
  --   This function is a cancellation point and therefore not marked with
  --   __THROW.   

   function c_system (arg1 : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/stdlib.h:716
   pragma Import (C, c_system, "system");

  -- Return a malloc'd string containing the canonical absolute name of the
  --   existing named file.   

  -- Return the canonical absolute name of file NAME.  If RESOLVED is
  --   null, the result is malloc'd; otherwise, if the canonical name is
  --   PATH_MAX chars or more, returns null with `errno' set to
  --   ENAMETOOLONG; if the name fits in fewer than PATH_MAX chars,
  --   returns the name in RESOLVED.   

   function realpath (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/stdlib.h:733
   pragma Import (C, realpath, "realpath");

  -- Shorthand for type of comparison functions.   
   type uu_compar_fn_t is access function (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/stdlib.h:741

  -- Do a binary search for KEY in BASE, which consists of NMEMB elements
  --   of SIZE bytes each, using COMPAR to perform the comparisons.   

   function bsearch
     (arg1 : System.Address;
      arg2 : System.Address;
      arg3 : stddef_h.size_t;
      arg4 : stddef_h.size_t;
      arg5 : access function (arg1 : System.Address; arg2 : System.Address) return int) return System.Address;  -- /usr/include/stdlib.h:754
   pragma Import (C, bsearch, "bsearch");

  -- Sort NMEMB elements of BASE, of SIZE bytes each,
  --   using COMPAR to perform the comparisons.   

   procedure qsort
     (arg1 : System.Address;
      arg2 : stddef_h.size_t;
      arg3 : stddef_h.size_t;
      arg4 : access function (arg1 : System.Address; arg2 : System.Address) return int);  -- /usr/include/stdlib.h:760
   pragma Import (C, qsort, "qsort");

  -- Return the absolute value of X.   
   function c_abs (arg1 : int) return int;  -- /usr/include/stdlib.h:770
   pragma Import (C, c_abs, "abs");

   function labs (arg1 : long) return long;  -- /usr/include/stdlib.h:771
   pragma Import (C, labs, "labs");

   function llabs (arg1 : Long_Long_Integer) return Long_Long_Integer;  -- /usr/include/stdlib.h:775
   pragma Import (C, llabs, "llabs");

  -- Return the `div_t', `ldiv_t' or `lldiv_t' representation
  --   of the value of NUMER over DENOM.  

  -- GCC may have built-ins for these someday.   
   function div (arg1 : int; arg2 : int) return div_t;  -- /usr/include/stdlib.h:784
   pragma Import (C, div, "div");

   function ldiv (arg1 : long; arg2 : long) return ldiv_t;  -- /usr/include/stdlib.h:786
   pragma Import (C, ldiv, "ldiv");

   function lldiv (arg1 : Long_Long_Integer; arg2 : Long_Long_Integer) return lldiv_t;  -- /usr/include/stdlib.h:792
   pragma Import (C, lldiv, "lldiv");

  -- Convert floating point numbers to strings.  The returned values are
  --   valid only until another call to the same function.   

  -- Convert VALUE to a string with NDIGIT digits and return a pointer to
  --   this.  Set *DECPT with the position of the decimal character and *SIGN
  --   with the sign of the number.   

   function ecvt
     (arg1 : double;
      arg2 : int;
      arg3 : access int;
      arg4 : access int) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/stdlib.h:807
   pragma Import (C, ecvt, "ecvt");

  -- Convert VALUE to a string rounded to NDIGIT decimal digits.  Set *DECPT
  --   with the position of the decimal character and *SIGN with the sign of
  --   the number.   

   function fcvt
     (arg1 : double;
      arg2 : int;
      arg3 : access int;
      arg4 : access int) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/stdlib.h:813
   pragma Import (C, fcvt, "fcvt");

  -- If possible convert VALUE to a string with NDIGIT significant digits.
  --   Otherwise use exponential representation.  The resulting string will
  --   be written to BUF.   

   function gcvt
     (arg1 : double;
      arg2 : int;
      arg3 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/stdlib.h:819
   pragma Import (C, gcvt, "gcvt");

  -- Long double versions of above functions.   
   function qecvt
     (arg1 : long_double;
      arg2 : int;
      arg3 : access int;
      arg4 : access int) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/stdlib.h:825
   pragma Import (C, qecvt, "qecvt");

   function qfcvt
     (arg1 : long_double;
      arg2 : int;
      arg3 : access int;
      arg4 : access int) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/stdlib.h:828
   pragma Import (C, qfcvt, "qfcvt");

   function qgcvt
     (arg1 : long_double;
      arg2 : int;
      arg3 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/stdlib.h:831
   pragma Import (C, qgcvt, "qgcvt");

  -- Reentrant version of the functions above which provide their own
  --   buffers.   

   function ecvt_r
     (arg1 : double;
      arg2 : int;
      arg3 : access int;
      arg4 : access int;
      arg5 : Interfaces.C.Strings.chars_ptr;
      arg6 : stddef_h.size_t) return int;  -- /usr/include/stdlib.h:837
   pragma Import (C, ecvt_r, "ecvt_r");

   function fcvt_r
     (arg1 : double;
      arg2 : int;
      arg3 : access int;
      arg4 : access int;
      arg5 : Interfaces.C.Strings.chars_ptr;
      arg6 : stddef_h.size_t) return int;  -- /usr/include/stdlib.h:840
   pragma Import (C, fcvt_r, "fcvt_r");

   function qecvt_r
     (arg1 : long_double;
      arg2 : int;
      arg3 : access int;
      arg4 : access int;
      arg5 : Interfaces.C.Strings.chars_ptr;
      arg6 : stddef_h.size_t) return int;  -- /usr/include/stdlib.h:844
   pragma Import (C, qecvt_r, "qecvt_r");

   function qfcvt_r
     (arg1 : long_double;
      arg2 : int;
      arg3 : access int;
      arg4 : access int;
      arg5 : Interfaces.C.Strings.chars_ptr;
      arg6 : stddef_h.size_t) return int;  -- /usr/include/stdlib.h:848
   pragma Import (C, qfcvt_r, "qfcvt_r");

  -- Return the length of the multibyte character
  --   in S, which is no longer than N.   

   function mblen (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : stddef_h.size_t) return int;  -- /usr/include/stdlib.h:859
   pragma Import (C, mblen, "mblen");

  -- Return the length of the given multibyte character,
  --   putting its `wchar_t' representation in *PWC.   

   function mbtowc
     (arg1 : access stddef_h.wchar_t;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : stddef_h.size_t) return int;  -- /usr/include/stdlib.h:862
   pragma Import (C, mbtowc, "mbtowc");

  -- Put the multibyte character represented
  --   by WCHAR in S, returning its length.   

   function wctomb (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : stddef_h.wchar_t) return int;  -- /usr/include/stdlib.h:866
   pragma Import (C, wctomb, "wctomb");

  -- Convert a multibyte string to a wide char string.   
   function mbstowcs
     (arg1 : access stddef_h.wchar_t;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : stddef_h.size_t) return stddef_h.size_t;  -- /usr/include/stdlib.h:870
   pragma Import (C, mbstowcs, "mbstowcs");

  -- Convert a wide char string to multibyte string.   
   function wcstombs
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : access stddef_h.wchar_t;
      arg3 : stddef_h.size_t) return stddef_h.size_t;  -- /usr/include/stdlib.h:873
   pragma Import (C, wcstombs, "wcstombs");

  -- Determine whether the string value of RESPONSE matches the affirmation
  --   or negative response expression as specified by the LC_MESSAGES category
  --   in the program's current locale.  Returns 1 if affirmative, 0 if
  --   negative, and -1 if not matching.   

   function rpmatch (arg1 : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/stdlib.h:884
   pragma Import (C, rpmatch, "rpmatch");

  -- Parse comma separated suboption from *OPTIONP and match against
  --   strings in TOKENS.  If found return index and set *VALUEP to
  --   optional value introduced by an equal sign.  If the suboption is
  --   not part of TOKENS return in *VALUEP beginning of unknown
  --   suboption.  On exit *OPTIONP is set to the beginning of the next
  --   token or at the terminating NUL character.   

   function getsubopt
     (arg1 : System.Address;
      arg2 : System.Address;
      arg3 : System.Address) return int;  -- /usr/include/stdlib.h:895
   pragma Import (C, getsubopt, "getsubopt");

  -- Setup DES tables according KEY.   
  -- X/Open pseudo terminal handling.   
  -- Return a master pseudo-terminal handle.   
  -- The next four functions all take a master pseudo-tty fd and
  --   perform an operation on the associated slave:   

  -- Chown the slave to the calling user.   
  -- Release an internal lock so the slave can be opened.
  --   Call after grantpt().   

  -- Return the pathname of the pseudo terminal slave assoicated with
  --   the master FD is open on, or NULL on errors.
  --   The returned storage is good until the next call to this function.   

  -- Store at most BUFLEN characters of the pathname of the slave pseudo
  --   terminal associated with the master FD is open on in BUF.
  --   Return 0 on success, otherwise an error number.   

  -- Open a master pseudo terminal and return its file descriptor.   
  -- Put the 1 minute, 5 minute and 15 minute load averages into the first
  --   NELEM elements of LOADAVG.  Return the number written (never more than
  --   three, but may be less than NELEM), or -1 if an error occurred.   

   function getloadavg (arg1 : access double; arg2 : int) return int;  -- /usr/include/stdlib.h:947
   pragma Import (C, getloadavg, "getloadavg");

  -- Define some macros helping to catch buffer overflows.   
end stdlib_h;
