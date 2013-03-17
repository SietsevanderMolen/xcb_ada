with Interfaces.C; use Interfaces.C;
with System;
with bits_pthreadtypes_h;
with stddef_h;
limited with bits_sched_h;
with bits_setjmp_h;
with bits_types_h;

package pthread_h is

   --  unsupported macro: PTHREAD_CREATE_JOINABLE PTHREAD_CREATE_JOINABLE
   --  unsupported macro: PTHREAD_CREATE_DETACHED PTHREAD_CREATE_DETACHED
   --  unsupported macro: PTHREAD_MUTEX_INITIALIZER { { 0, 0, 0, 0, 0, 0, { 0, 0 } } }
   --  unsupported macro: PTHREAD_RWLOCK_INITIALIZER { { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 } }
   --  unsupported macro: PTHREAD_INHERIT_SCHED PTHREAD_INHERIT_SCHED
   --  unsupported macro: PTHREAD_EXPLICIT_SCHED PTHREAD_EXPLICIT_SCHED
   --  unsupported macro: PTHREAD_SCOPE_SYSTEM PTHREAD_SCOPE_SYSTEM
   --  unsupported macro: PTHREAD_SCOPE_PROCESS PTHREAD_SCOPE_PROCESS
   --  unsupported macro: PTHREAD_PROCESS_PRIVATE PTHREAD_PROCESS_PRIVATE
   --  unsupported macro: PTHREAD_PROCESS_SHARED PTHREAD_PROCESS_SHARED
   --  unsupported macro: PTHREAD_COND_INITIALIZER { { 0, 0, 0, 0, 0, (void *) 0, 0, 0 } }
   --  unsupported macro: PTHREAD_CANCEL_ENABLE PTHREAD_CANCEL_ENABLE
   --  unsupported macro: PTHREAD_CANCEL_DISABLE PTHREAD_CANCEL_DISABLE
   --  unsupported macro: PTHREAD_CANCEL_DEFERRED PTHREAD_CANCEL_DEFERRED
   --  unsupported macro: PTHREAD_CANCEL_ASYNCHRONOUS PTHREAD_CANCEL_ASYNCHRONOUS
   --  unsupported macro: PTHREAD_CANCELED ((void *) -1)
   --  unsupported macro: PTHREAD_ONCE_INIT 0
   --  unsupported macro: PTHREAD_BARRIER_SERIAL_THREAD -1
   --  arg-macro: procedure pthread_cleanup_push (routine, arg)
   --    do { __pthread_unwind_buf_t __cancel_buf; void (*__cancel_routine) (void *) := (routine); void *__cancel_arg := (arg); int __not_first_call := __sigsetjmp ((struct __jmp_buf_tag *) (void *) __cancel_buf.__cancel_jmp_buf, 0); if (__glibc_unlikely (__not_first_call)) { __cancel_routine (__cancel_arg); __pthread_unwind_next (and__cancel_buf); } __pthread_register_cancel (and__cancel_buf); do {
   --  arg-macro: procedure pthread_cleanup_pop (execute)
   --    do { } while (0); } while (0); __pthread_unregister_cancel (and__cancel_buf); if (execute) __cancel_routine (__cancel_arg); } while (0)
  -- Copyright (C) 2002-2012 Free Software Foundation, Inc.
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

  -- Detach state.   
  -- Mutex types.   
  -- For compatibility.   
  -- Robust mutex or not flags.   
  -- Mutex protocols.   
  -- Mutex initializers.   
  -- Read-write lock types.   
  -- Define __PTHREAD_RWLOCK_INT_FLAGS_SHARED to 1 if pthread_rwlock_t
  --   has the shared field.  All 64-bit architectures have the shared field
  --   in pthread_rwlock_t.   

  -- Read-write lock initializers.   
  -- Scheduler inheritance.   
  -- Scope handling.   
  -- Process shared or private flag.   
  -- Conditional variable handling.   
  -- Cleanup buffers  
  -- Function to call.   
   type u_pthread_cleanup_buffer is record
      uu_routine : access procedure (arg1 : System.Address);  -- /usr/include/pthread.h:191
      uu_arg : System.Address;  -- /usr/include/pthread.h:192
      uu_canceltype : aliased int;  -- /usr/include/pthread.h:193
      uu_prev : access u_pthread_cleanup_buffer;  -- /usr/include/pthread.h:194
   end record;
   pragma Convention (C_Pass_By_Copy, u_pthread_cleanup_buffer);  -- /usr/include/pthread.h:189

  -- Its argument.   
  -- Saved cancellation type.  
  -- Chaining of cleanup functions.   
  -- Cancellation  
  -- Single execution handling.   
  -- Value returned by 'pthread_barrier_wait' for one of the threads after
  --   the required number of threads have called this function.
  --   -1 is distinct from 0 and all errno constants  

  -- Create a new thread, starting with execution of START-ROUTINE
  --   getting passed ARG.  Creation attributed come from ATTR.  The new
  --   handle is stored in *NEWTHREAD.   

   function pthread_create
     (arg1 : access bits_pthreadtypes_h.pthread_t;
      arg2 : access constant bits_pthreadtypes_h.pthread_attr_t;
      arg3 : access function (arg1 : System.Address) return System.Address;
      arg4 : System.Address) return int;  -- /usr/include/pthread.h:232
   pragma Import (C, pthread_create, "pthread_create");

  -- Terminate calling thread.
  --   The registered cleanup handlers are called via exception handling
  --   so we cannot mark this function with __THROW. 

   procedure pthread_exit (arg1 : System.Address);  -- /usr/include/pthread.h:241
   pragma Import (C, pthread_exit, "pthread_exit");

  -- Make calling thread wait for termination of the thread TH.  The
  --   exit status of the thread is stored in *THREAD_RETURN, if THREAD_RETURN
  --   is not NULL.
  --   This function is a cancellation point and therefore not marked with
  --   __THROW.   

   function pthread_join (arg1 : bits_pthreadtypes_h.pthread_t; arg2 : System.Address) return int;  -- /usr/include/pthread.h:249
   pragma Import (C, pthread_join, "pthread_join");

  -- Check whether thread TH has terminated.  If yes return the status of
  --   the thread in *THREAD_RETURN, if THREAD_RETURN is not NULL.   

  -- Make calling thread wait for termination of the thread TH, but only
  --   until TIMEOUT.  The exit status of the thread is stored in
  --   *THREAD_RETURN, if THREAD_RETURN is not NULL.
  --   This function is a cancellation point and therefore not marked with
  --   __THROW.   

  -- Indicate that the thread TH is never to be joined with PTHREAD_JOIN.
  --   The resources of TH will therefore be freed immediately when it
  --   terminates, instead of waiting for another thread to perform PTHREAD_JOIN
  --   on it.   

   function pthread_detach (arg1 : bits_pthreadtypes_h.pthread_t) return int;  -- /usr/include/pthread.h:270
   pragma Import (C, pthread_detach, "pthread_detach");

  -- Obtain the identifier of the current thread.   
   function pthread_self return bits_pthreadtypes_h.pthread_t;  -- /usr/include/pthread.h:274
   pragma Import (C, pthread_self, "pthread_self");

  -- Compare two thread identifiers.   
   function pthread_equal (arg1 : bits_pthreadtypes_h.pthread_t; arg2 : bits_pthreadtypes_h.pthread_t) return int;  -- /usr/include/pthread.h:277
   pragma Import (C, pthread_equal, "pthread_equal");

  -- Thread attribute handling.   
  -- Initialize thread attribute *ATTR with default attributes
  --   (detachstate is PTHREAD_JOINABLE, scheduling policy is SCHED_OTHER,
  --    no user-provided stack).   

   function pthread_attr_init (arg1 : access bits_pthreadtypes_h.pthread_attr_t) return int;  -- /usr/include/pthread.h:286
   pragma Import (C, pthread_attr_init, "pthread_attr_init");

  -- Destroy thread attribute *ATTR.   
   function pthread_attr_destroy (arg1 : access bits_pthreadtypes_h.pthread_attr_t) return int;  -- /usr/include/pthread.h:289
   pragma Import (C, pthread_attr_destroy, "pthread_attr_destroy");

  -- Get detach state attribute.   
   function pthread_attr_getdetachstate (arg1 : access constant bits_pthreadtypes_h.pthread_attr_t; arg2 : access int) return int;  -- /usr/include/pthread.h:293
   pragma Import (C, pthread_attr_getdetachstate, "pthread_attr_getdetachstate");

  -- Set detach state attribute.   
   function pthread_attr_setdetachstate (arg1 : access bits_pthreadtypes_h.pthread_attr_t; arg2 : int) return int;  -- /usr/include/pthread.h:298
   pragma Import (C, pthread_attr_setdetachstate, "pthread_attr_setdetachstate");

  -- Get the size of the guard area created for stack overflow protection.   
   function pthread_attr_getguardsize (arg1 : access constant bits_pthreadtypes_h.pthread_attr_t; arg2 : access stddef_h.size_t) return int;  -- /usr/include/pthread.h:304
   pragma Import (C, pthread_attr_getguardsize, "pthread_attr_getguardsize");

  -- Set the size of the guard area created for stack overflow protection.   
   function pthread_attr_setguardsize (arg1 : access bits_pthreadtypes_h.pthread_attr_t; arg2 : stddef_h.size_t) return int;  -- /usr/include/pthread.h:309
   pragma Import (C, pthread_attr_setguardsize, "pthread_attr_setguardsize");

  -- Return in *PARAM the scheduling parameters of *ATTR.   
   function pthread_attr_getschedparam (arg1 : access constant bits_pthreadtypes_h.pthread_attr_t; arg2 : access bits_sched_h.sched_param) return int;  -- /usr/include/pthread.h:315
   pragma Import (C, pthread_attr_getschedparam, "pthread_attr_getschedparam");

  -- Set scheduling parameters (priority, etc) in *ATTR according to PARAM.   
   function pthread_attr_setschedparam (arg1 : access bits_pthreadtypes_h.pthread_attr_t; arg2 : System.Address) return int;  -- /usr/include/pthread.h:320
   pragma Import (C, pthread_attr_setschedparam, "pthread_attr_setschedparam");

  -- Return in *POLICY the scheduling policy of *ATTR.   
   function pthread_attr_getschedpolicy (arg1 : access constant bits_pthreadtypes_h.pthread_attr_t; arg2 : access int) return int;  -- /usr/include/pthread.h:325
   pragma Import (C, pthread_attr_getschedpolicy, "pthread_attr_getschedpolicy");

  -- Set scheduling policy in *ATTR according to POLICY.   
   function pthread_attr_setschedpolicy (arg1 : access bits_pthreadtypes_h.pthread_attr_t; arg2 : int) return int;  -- /usr/include/pthread.h:330
   pragma Import (C, pthread_attr_setschedpolicy, "pthread_attr_setschedpolicy");

  -- Return in *INHERIT the scheduling inheritance mode of *ATTR.   
   function pthread_attr_getinheritsched (arg1 : access constant bits_pthreadtypes_h.pthread_attr_t; arg2 : access int) return int;  -- /usr/include/pthread.h:334
   pragma Import (C, pthread_attr_getinheritsched, "pthread_attr_getinheritsched");

  -- Set scheduling inheritance mode in *ATTR according to INHERIT.   
   function pthread_attr_setinheritsched (arg1 : access bits_pthreadtypes_h.pthread_attr_t; arg2 : int) return int;  -- /usr/include/pthread.h:339
   pragma Import (C, pthread_attr_setinheritsched, "pthread_attr_setinheritsched");

  -- Return in *SCOPE the scheduling contention scope of *ATTR.   
   function pthread_attr_getscope (arg1 : access constant bits_pthreadtypes_h.pthread_attr_t; arg2 : access int) return int;  -- /usr/include/pthread.h:345
   pragma Import (C, pthread_attr_getscope, "pthread_attr_getscope");

  -- Set scheduling contention scope in *ATTR according to SCOPE.   
   function pthread_attr_setscope (arg1 : access bits_pthreadtypes_h.pthread_attr_t; arg2 : int) return int;  -- /usr/include/pthread.h:350
   pragma Import (C, pthread_attr_setscope, "pthread_attr_setscope");

  -- Return the previously set address for the stack.   
   function pthread_attr_getstackaddr (arg1 : access constant bits_pthreadtypes_h.pthread_attr_t; arg2 : System.Address) return int;  -- /usr/include/pthread.h:354
   pragma Import (C, pthread_attr_getstackaddr, "pthread_attr_getstackaddr");

  -- Set the starting address of the stack of the thread to be created.
  --   Depending on whether the stack grows up or down the value must either
  --   be higher or lower than all the address in the memory block.  The
  --   minimal size of the block must be PTHREAD_STACK_MIN.   

   function pthread_attr_setstackaddr (arg1 : access bits_pthreadtypes_h.pthread_attr_t; arg2 : System.Address) return int;  -- /usr/include/pthread.h:362
   pragma Import (C, pthread_attr_setstackaddr, "pthread_attr_setstackaddr");

  -- Return the currently used minimal stack size.   
   function pthread_attr_getstacksize (arg1 : access constant bits_pthreadtypes_h.pthread_attr_t; arg2 : access stddef_h.size_t) return int;  -- /usr/include/pthread.h:367
   pragma Import (C, pthread_attr_getstacksize, "pthread_attr_getstacksize");

  -- Add information about the minimum stack size needed for the thread
  --   to be started.  This size must never be less than PTHREAD_STACK_MIN
  --   and must also not exceed the system limits.   

   function pthread_attr_setstacksize (arg1 : access bits_pthreadtypes_h.pthread_attr_t; arg2 : stddef_h.size_t) return int;  -- /usr/include/pthread.h:374
   pragma Import (C, pthread_attr_setstacksize, "pthread_attr_setstacksize");

  -- Return the previously set address for the stack.   
   function pthread_attr_getstack
     (arg1 : access constant bits_pthreadtypes_h.pthread_attr_t;
      arg2 : System.Address;
      arg3 : access stddef_h.size_t) return int;  -- /usr/include/pthread.h:380
   pragma Import (C, pthread_attr_getstack, "pthread_attr_getstack");

  -- The following two interfaces are intended to replace the last two.  They
  --   require setting the address as well as the size since only setting the
  --   address will make the implementation on some architectures impossible.   

   function pthread_attr_setstack
     (arg1 : access bits_pthreadtypes_h.pthread_attr_t;
      arg2 : System.Address;
      arg3 : stddef_h.size_t) return int;  -- /usr/include/pthread.h:388
   pragma Import (C, pthread_attr_setstack, "pthread_attr_setstack");

  -- Thread created with attribute ATTR will be limited to run only on
  --   the processors represented in CPUSET.   

  -- Get bit set in CPUSET representing the processors threads created with
  --   ATTR can run on.   

  -- Initialize thread attribute *ATTR with attributes corresponding to the
  --   already running thread TH.  It shall be called on uninitialized ATTR
  --   and destroyed with pthread_attr_destroy when no longer needed.   

  -- Functions for scheduling control.   
  -- Set the scheduling parameters for TARGET_THREAD according to POLICY
  --   and *PARAM.   

   function pthread_setschedparam
     (arg1 : bits_pthreadtypes_h.pthread_t;
      arg2 : int;
      arg3 : System.Address) return int;  -- /usr/include/pthread.h:420
   pragma Import (C, pthread_setschedparam, "pthread_setschedparam");

  -- Return in *POLICY and *PARAM the scheduling parameters for TARGET_THREAD.  
   function pthread_getschedparam
     (arg1 : bits_pthreadtypes_h.pthread_t;
      arg2 : access int;
      arg3 : access bits_sched_h.sched_param) return int;  -- /usr/include/pthread.h:425
   pragma Import (C, pthread_getschedparam, "pthread_getschedparam");

  -- Set the scheduling priority for TARGET_THREAD.   
   function pthread_setschedprio (arg1 : bits_pthreadtypes_h.pthread_t; arg2 : int) return int;  -- /usr/include/pthread.h:431
   pragma Import (C, pthread_setschedprio, "pthread_setschedprio");

  -- Get thread name visible in the kernel and its interfaces.   
  -- Set thread name visible in the kernel and its interfaces.   
  -- Determine level of concurrency.   
  -- Set new concurrency level to LEVEL.   
  -- Yield the processor to another thread or process.
  --   This function is similar to the POSIX `sched_yield' function but
  --   might be differently implemented in the case of a m-on-n thread
  --   implementation.   

  -- Limit specified thread TH to run only on the processors represented
  --   in CPUSET.   

  -- Get bit set in CPUSET representing the processors TH can run on.   
  -- Functions for handling initialization.   
  -- Guarantee that the initialization function INIT_ROUTINE will be called
  --   only once, even if pthread_once is executed several times with the
  --   same ONCE_CONTROL argument. ONCE_CONTROL must point to a static or
  --   extern variable initialized to PTHREAD_ONCE_INIT.
  --   The initialization functions might throw exception which is why
  --   this function is not marked with __THROW.   

   function pthread_once (arg1 : access bits_pthreadtypes_h.pthread_once_t; arg2 : access procedure) return int;  -- /usr/include/pthread.h:485
   pragma Import (C, pthread_once, "pthread_once");

  -- Functions for handling cancellation.
  --   Note that these functions are explicitly not marked to not throw an
  --   exception in C++ code.  If cancellation is implemented by unwinding
  --   this is necessary to have the compiler generate the unwind information.   

  -- Set cancelability state of current thread to STATE, returning old
  --   state in *OLDSTATE if OLDSTATE is not NULL.   

   function pthread_setcancelstate (arg1 : int; arg2 : access int) return int;  -- /usr/include/pthread.h:497
   pragma Import (C, pthread_setcancelstate, "pthread_setcancelstate");

  -- Set cancellation state of current thread to TYPE, returning the old
  --   type in *OLDTYPE if OLDTYPE is not NULL.   

   function pthread_setcanceltype (arg1 : int; arg2 : access int) return int;  -- /usr/include/pthread.h:501
   pragma Import (C, pthread_setcanceltype, "pthread_setcanceltype");

  -- Cancel THREAD immediately or at the next possibility.   
   function pthread_cancel (arg1 : bits_pthreadtypes_h.pthread_t) return int;  -- /usr/include/pthread.h:504
   pragma Import (C, pthread_cancel, "pthread_cancel");

  -- Test for pending cancellation for the current thread and terminate
  --   the thread as per pthread_exit(PTHREAD_CANCELED) if it has been
  --   cancelled.   

   procedure pthread_testcancel;  -- /usr/include/pthread.h:509
   pragma Import (C, pthread_testcancel, "pthread_testcancel");

  -- Cancellation handling with integration into exception handling.   
   type anon_1374 is record
      uu_cancel_jmp_buf : aliased bits_setjmp_h.uu_jmp_buf;  -- /usr/include/pthread.h:518
      uu_mask_was_saved : aliased int;  -- /usr/include/pthread.h:519
   end record;
   pragma Convention (C_Pass_By_Copy, anon_1374);  -- /usr/include/pthread.h:516

   type uu_pthread_unwind_buf_t_uu_cancel_jmp_buf_array is array (0 .. 0) of aliased anon_1374;
   type uu_pthread_unwind_buf_t_uu_pad_array is array (0 .. 3) of System.Address;
   type uu_pthread_unwind_buf_t is record
      uu_cancel_jmp_buf : aliased uu_pthread_unwind_buf_t_uu_cancel_jmp_buf_array;  -- /usr/include/pthread.h:520
      uu_pad : aliased uu_pthread_unwind_buf_t_uu_pad_array;  -- /usr/include/pthread.h:521
   end record;
   pragma Convention (C_Pass_By_Copy, uu_pthread_unwind_buf_t);  -- /usr/include/pthread.h:522

  -- No special attributes by default.   
  -- Structure to hold the cleanup handler information.   
   type uu_pthread_cleanup_frame is record
      uu_cancel_routine : access procedure (arg1 : System.Address);  -- /usr/include/pthread.h:533
      uu_cancel_arg : System.Address;  -- /usr/include/pthread.h:534
      uu_do_it : aliased int;  -- /usr/include/pthread.h:535
      uu_cancel_type : aliased int;  -- /usr/include/pthread.h:536
   end record;
   pragma Convention (C_Pass_By_Copy, uu_pthread_cleanup_frame);  -- /usr/include/pthread.h:531

  -- Class to handle cancellation handler invocation.   
  -- Install a cleanup handler: ROUTINE will be called with arguments ARG
  --   when the thread is canceled or calls pthread_exit.  ROUTINE will also
  --   be called with arguments ARG when the matching pthread_cleanup_pop
  --   is executed with non-zero EXECUTE argument.
  --   pthread_cleanup_push and pthread_cleanup_pop are macros and must always
  --   be used in matching pairs at the same nesting level of braces.   

  -- Remove a cleanup handler installed by the matching pthread_cleanup_push.
  --   If EXECUTE is non-zero, the handler function is called.  

  -- Install a cleanup handler as pthread_cleanup_push does, but also
  --   saves the current cancellation type and sets it to deferred
  --   cancellation.   

  -- Remove a cleanup handler as pthread_cleanup_pop does, but also
  --   restores the cancellation type that was in effect when the matching
  --   pthread_cleanup_push_defer was called.   

  -- Function called to call the cleanup handler.  As an extern inline
  --   function the compiler is free to decide inlining the change when
  --   needed or fall back on the copy which must exist somewhere
  --   else.   

  -- Install a cleanup handler: ROUTINE will be called with arguments ARG
  --   when the thread is canceled or calls pthread_exit.  ROUTINE will also
  --   be called with arguments ARG when the matching pthread_cleanup_pop
  --   is executed with non-zero EXECUTE argument.
  --   pthread_cleanup_push and pthread_cleanup_pop are macros and must always
  --   be used in matching pairs at the same nesting level of braces.   

  -- Remove a cleanup handler installed by the matching pthread_cleanup_push.
  --   If EXECUTE is non-zero, the handler function is called.  

  -- Install a cleanup handler as pthread_cleanup_push does, but also
  --   saves the current cancellation type and sets it to deferred
  --   cancellation.   

  -- Remove a cleanup handler as pthread_cleanup_pop does, but also
  --   restores the cancellation type that was in effect when the matching
  --   pthread_cleanup_push_defer was called.   

  -- Install a cleanup handler: ROUTINE will be called with arguments ARG
  --   when the thread is canceled or calls pthread_exit.  ROUTINE will also
  --   be called with arguments ARG when the matching pthread_cleanup_pop
  --   is executed with non-zero EXECUTE argument.
  --   pthread_cleanup_push and pthread_cleanup_pop are macros and must always
  --   be used in matching pairs at the same nesting level of braces.   

  -- Remove a cleanup handler installed by the matching pthread_cleanup_push.
  --   If EXECUTE is non-zero, the handler function is called.  

  -- Install a cleanup handler as pthread_cleanup_push does, but also
  --   saves the current cancellation type and sets it to deferred
  --   cancellation.   

  -- Remove a cleanup handler as pthread_cleanup_pop does, but also
  --   restores the cancellation type that was in effect when the matching
  --   pthread_cleanup_push_defer was called.   

  -- Internal interface to initiate cleanup.   
  -- Function used in the macros.   
   --  skipped empty struct uu_jmp_buf_tag

  -- Mutex handling.   
  -- Initialize a mutex.   
   function pthread_mutex_init (arg1 : access bits_pthreadtypes_h.pthread_mutex_t; arg2 : access constant bits_pthreadtypes_h.pthread_mutexattr_t) return int;  -- /usr/include/pthread.h:740
   pragma Import (C, pthread_mutex_init, "pthread_mutex_init");

  -- Destroy a mutex.   
   function pthread_mutex_destroy (arg1 : access bits_pthreadtypes_h.pthread_mutex_t) return int;  -- /usr/include/pthread.h:745
   pragma Import (C, pthread_mutex_destroy, "pthread_mutex_destroy");

  -- Try locking a mutex.   
   function pthread_mutex_trylock (arg1 : access bits_pthreadtypes_h.pthread_mutex_t) return int;  -- /usr/include/pthread.h:749
   pragma Import (C, pthread_mutex_trylock, "pthread_mutex_trylock");

  -- Lock a mutex.   
   function pthread_mutex_lock (arg1 : access bits_pthreadtypes_h.pthread_mutex_t) return int;  -- /usr/include/pthread.h:753
   pragma Import (C, pthread_mutex_lock, "pthread_mutex_lock");

  -- Wait until lock becomes available, or specified time passes.  
   function pthread_mutex_timedlock (arg1 : access bits_pthreadtypes_h.pthread_mutex_t; arg2 : System.Address) return int;  -- /usr/include/pthread.h:758
   pragma Import (C, pthread_mutex_timedlock, "pthread_mutex_timedlock");

  -- Unlock a mutex.   
   function pthread_mutex_unlock (arg1 : access bits_pthreadtypes_h.pthread_mutex_t) return int;  -- /usr/include/pthread.h:764
   pragma Import (C, pthread_mutex_unlock, "pthread_mutex_unlock");

  -- Get the priority ceiling of MUTEX.   
   function pthread_mutex_getprioceiling (arg1 : access constant bits_pthreadtypes_h.pthread_mutex_t; arg2 : access int) return int;  -- /usr/include/pthread.h:769
   pragma Import (C, pthread_mutex_getprioceiling, "pthread_mutex_getprioceiling");

  -- Set the priority ceiling of MUTEX to PRIOCEILING, return old
  --   priority ceiling value in *OLD_CEILING.   

   function pthread_mutex_setprioceiling
     (arg1 : access bits_pthreadtypes_h.pthread_mutex_t;
      arg2 : int;
      arg3 : access int) return int;  -- /usr/include/pthread.h:776
   pragma Import (C, pthread_mutex_setprioceiling, "pthread_mutex_setprioceiling");

  -- Declare the state protected by MUTEX as consistent.   
   function pthread_mutex_consistent (arg1 : access bits_pthreadtypes_h.pthread_mutex_t) return int;  -- /usr/include/pthread.h:784
   pragma Import (C, pthread_mutex_consistent, "pthread_mutex_consistent");

  -- Functions for handling mutex attributes.   
  -- Initialize mutex attribute object ATTR with default attributes
  --   (kind is PTHREAD_MUTEX_TIMED_NP).   

   function pthread_mutexattr_init (arg1 : access bits_pthreadtypes_h.pthread_mutexattr_t) return int;  -- /usr/include/pthread.h:797
   pragma Import (C, pthread_mutexattr_init, "pthread_mutexattr_init");

  -- Destroy mutex attribute object ATTR.   
   function pthread_mutexattr_destroy (arg1 : access bits_pthreadtypes_h.pthread_mutexattr_t) return int;  -- /usr/include/pthread.h:801
   pragma Import (C, pthread_mutexattr_destroy, "pthread_mutexattr_destroy");

  -- Get the process-shared flag of the mutex attribute ATTR.   
   function pthread_mutexattr_getpshared (arg1 : access constant bits_pthreadtypes_h.pthread_mutexattr_t; arg2 : access int) return int;  -- /usr/include/pthread.h:805
   pragma Import (C, pthread_mutexattr_getpshared, "pthread_mutexattr_getpshared");

  -- Set the process-shared flag of the mutex attribute ATTR.   
   function pthread_mutexattr_setpshared (arg1 : access bits_pthreadtypes_h.pthread_mutexattr_t; arg2 : int) return int;  -- /usr/include/pthread.h:811
   pragma Import (C, pthread_mutexattr_setpshared, "pthread_mutexattr_setpshared");

  -- Return in *KIND the mutex kind attribute in *ATTR.   
   function pthread_mutexattr_gettype (arg1 : access constant bits_pthreadtypes_h.pthread_mutexattr_t; arg2 : access int) return int;  -- /usr/include/pthread.h:817
   pragma Import (C, pthread_mutexattr_gettype, "pthread_mutexattr_gettype");

  -- Set the mutex kind attribute in *ATTR to KIND (either PTHREAD_MUTEX_NORMAL,
  --   PTHREAD_MUTEX_RECURSIVE, PTHREAD_MUTEX_ERRORCHECK, or
  --   PTHREAD_MUTEX_DEFAULT).   

   function pthread_mutexattr_settype (arg1 : access bits_pthreadtypes_h.pthread_mutexattr_t; arg2 : int) return int;  -- /usr/include/pthread.h:824
   pragma Import (C, pthread_mutexattr_settype, "pthread_mutexattr_settype");

  -- Return in *PROTOCOL the mutex protocol attribute in *ATTR.   
   function pthread_mutexattr_getprotocol (arg1 : access constant bits_pthreadtypes_h.pthread_mutexattr_t; arg2 : access int) return int;  -- /usr/include/pthread.h:829
   pragma Import (C, pthread_mutexattr_getprotocol, "pthread_mutexattr_getprotocol");

  -- Set the mutex protocol attribute in *ATTR to PROTOCOL (either
  --   PTHREAD_PRIO_NONE, PTHREAD_PRIO_INHERIT, or PTHREAD_PRIO_PROTECT).   

   function pthread_mutexattr_setprotocol (arg1 : access bits_pthreadtypes_h.pthread_mutexattr_t; arg2 : int) return int;  -- /usr/include/pthread.h:836
   pragma Import (C, pthread_mutexattr_setprotocol, "pthread_mutexattr_setprotocol");

  -- Return in *PRIOCEILING the mutex prioceiling attribute in *ATTR.   
   function pthread_mutexattr_getprioceiling (arg1 : access constant bits_pthreadtypes_h.pthread_mutexattr_t; arg2 : access int) return int;  -- /usr/include/pthread.h:841
   pragma Import (C, pthread_mutexattr_getprioceiling, "pthread_mutexattr_getprioceiling");

  -- Set the mutex prioceiling attribute in *ATTR to PRIOCEILING.   
   function pthread_mutexattr_setprioceiling (arg1 : access bits_pthreadtypes_h.pthread_mutexattr_t; arg2 : int) return int;  -- /usr/include/pthread.h:847
   pragma Import (C, pthread_mutexattr_setprioceiling, "pthread_mutexattr_setprioceiling");

  -- Get the robustness flag of the mutex attribute ATTR.   
   function pthread_mutexattr_getrobust (arg1 : access constant bits_pthreadtypes_h.pthread_mutexattr_t; arg2 : access int) return int;  -- /usr/include/pthread.h:853
   pragma Import (C, pthread_mutexattr_getrobust, "pthread_mutexattr_getrobust");

  -- Set the robustness flag of the mutex attribute ATTR.   
   function pthread_mutexattr_setrobust (arg1 : access bits_pthreadtypes_h.pthread_mutexattr_t; arg2 : int) return int;  -- /usr/include/pthread.h:863
   pragma Import (C, pthread_mutexattr_setrobust, "pthread_mutexattr_setrobust");

  -- Functions for handling read-write locks.   
  -- Initialize read-write lock RWLOCK using attributes ATTR, or use
  --   the default values if later is NULL.   

   function pthread_rwlock_init (arg1 : access bits_pthreadtypes_h.pthread_rwlock_t; arg2 : access constant bits_pthreadtypes_h.pthread_rwlockattr_t) return int;  -- /usr/include/pthread.h:879
   pragma Import (C, pthread_rwlock_init, "pthread_rwlock_init");

  -- Destroy read-write lock RWLOCK.   
   function pthread_rwlock_destroy (arg1 : access bits_pthreadtypes_h.pthread_rwlock_t) return int;  -- /usr/include/pthread.h:884
   pragma Import (C, pthread_rwlock_destroy, "pthread_rwlock_destroy");

  -- Acquire read lock for RWLOCK.   
   function pthread_rwlock_rdlock (arg1 : access bits_pthreadtypes_h.pthread_rwlock_t) return int;  -- /usr/include/pthread.h:888
   pragma Import (C, pthread_rwlock_rdlock, "pthread_rwlock_rdlock");

  -- Try to acquire read lock for RWLOCK.   
   function pthread_rwlock_tryrdlock (arg1 : access bits_pthreadtypes_h.pthread_rwlock_t) return int;  -- /usr/include/pthread.h:892
   pragma Import (C, pthread_rwlock_tryrdlock, "pthread_rwlock_tryrdlock");

  -- Try to acquire read lock for RWLOCK or return after specfied time.   
   function pthread_rwlock_timedrdlock (arg1 : access bits_pthreadtypes_h.pthread_rwlock_t; arg2 : System.Address) return int;  -- /usr/include/pthread.h:897
   pragma Import (C, pthread_rwlock_timedrdlock, "pthread_rwlock_timedrdlock");

  -- Acquire write lock for RWLOCK.   
   function pthread_rwlock_wrlock (arg1 : access bits_pthreadtypes_h.pthread_rwlock_t) return int;  -- /usr/include/pthread.h:903
   pragma Import (C, pthread_rwlock_wrlock, "pthread_rwlock_wrlock");

  -- Try to acquire write lock for RWLOCK.   
   function pthread_rwlock_trywrlock (arg1 : access bits_pthreadtypes_h.pthread_rwlock_t) return int;  -- /usr/include/pthread.h:907
   pragma Import (C, pthread_rwlock_trywrlock, "pthread_rwlock_trywrlock");

  -- Try to acquire write lock for RWLOCK or return after specfied time.   
   function pthread_rwlock_timedwrlock (arg1 : access bits_pthreadtypes_h.pthread_rwlock_t; arg2 : System.Address) return int;  -- /usr/include/pthread.h:912
   pragma Import (C, pthread_rwlock_timedwrlock, "pthread_rwlock_timedwrlock");

  -- Unlock RWLOCK.   
   function pthread_rwlock_unlock (arg1 : access bits_pthreadtypes_h.pthread_rwlock_t) return int;  -- /usr/include/pthread.h:918
   pragma Import (C, pthread_rwlock_unlock, "pthread_rwlock_unlock");

  -- Functions for handling read-write lock attributes.   
  -- Initialize attribute object ATTR with default values.   
   function pthread_rwlockattr_init (arg1 : access bits_pthreadtypes_h.pthread_rwlockattr_t) return int;  -- /usr/include/pthread.h:925
   pragma Import (C, pthread_rwlockattr_init, "pthread_rwlockattr_init");

  -- Destroy attribute object ATTR.   
   function pthread_rwlockattr_destroy (arg1 : access bits_pthreadtypes_h.pthread_rwlockattr_t) return int;  -- /usr/include/pthread.h:929
   pragma Import (C, pthread_rwlockattr_destroy, "pthread_rwlockattr_destroy");

  -- Return current setting of process-shared attribute of ATTR in PSHARED.   
   function pthread_rwlockattr_getpshared (arg1 : access constant bits_pthreadtypes_h.pthread_rwlockattr_t; arg2 : access int) return int;  -- /usr/include/pthread.h:933
   pragma Import (C, pthread_rwlockattr_getpshared, "pthread_rwlockattr_getpshared");

  -- Set process-shared attribute of ATTR to PSHARED.   
   function pthread_rwlockattr_setpshared (arg1 : access bits_pthreadtypes_h.pthread_rwlockattr_t; arg2 : int) return int;  -- /usr/include/pthread.h:939
   pragma Import (C, pthread_rwlockattr_setpshared, "pthread_rwlockattr_setpshared");

  -- Return current setting of reader/writer preference.   
   function pthread_rwlockattr_getkind_np (arg1 : access constant bits_pthreadtypes_h.pthread_rwlockattr_t; arg2 : access int) return int;  -- /usr/include/pthread.h:944
   pragma Import (C, pthread_rwlockattr_getkind_np, "pthread_rwlockattr_getkind_np");

  -- Set reader/write preference.   
   function pthread_rwlockattr_setkind_np (arg1 : access bits_pthreadtypes_h.pthread_rwlockattr_t; arg2 : int) return int;  -- /usr/include/pthread.h:950
   pragma Import (C, pthread_rwlockattr_setkind_np, "pthread_rwlockattr_setkind_np");

  -- Functions for handling conditional variables.   
  -- Initialize condition variable COND using attributes ATTR, or use
  --   the default values if later is NULL.   

   function pthread_cond_init (arg1 : access bits_pthreadtypes_h.pthread_cond_t; arg2 : access constant bits_pthreadtypes_h.pthread_condattr_t) return int;  -- /usr/include/pthread.h:959
   pragma Import (C, pthread_cond_init, "pthread_cond_init");

  -- Destroy condition variable COND.   
   function pthread_cond_destroy (arg1 : access bits_pthreadtypes_h.pthread_cond_t) return int;  -- /usr/include/pthread.h:964
   pragma Import (C, pthread_cond_destroy, "pthread_cond_destroy");

  -- Wake up one thread waiting for condition variable COND.   
   function pthread_cond_signal (arg1 : access bits_pthreadtypes_h.pthread_cond_t) return int;  -- /usr/include/pthread.h:968
   pragma Import (C, pthread_cond_signal, "pthread_cond_signal");

  -- Wake up all threads waiting for condition variables COND.   
   function pthread_cond_broadcast (arg1 : access bits_pthreadtypes_h.pthread_cond_t) return int;  -- /usr/include/pthread.h:972
   pragma Import (C, pthread_cond_broadcast, "pthread_cond_broadcast");

  -- Wait for condition variable COND to be signaled or broadcast.
  --   MUTEX is assumed to be locked before.
  --   This function is a cancellation point and therefore not marked with
  --   __THROW.   

   function pthread_cond_wait (arg1 : access bits_pthreadtypes_h.pthread_cond_t; arg2 : access bits_pthreadtypes_h.pthread_mutex_t) return int;  -- /usr/include/pthread.h:980
   pragma Import (C, pthread_cond_wait, "pthread_cond_wait");

  -- Wait for condition variable COND to be signaled or broadcast until
  --   ABSTIME.  MUTEX is assumed to be locked before.  ABSTIME is an
  --   absolute time specification; zero is the beginning of the epoch
  --   (00:00:00 GMT, January 1, 1970).
  --   This function is a cancellation point and therefore not marked with
  --   __THROW.   

   function pthread_cond_timedwait
     (arg1 : access bits_pthreadtypes_h.pthread_cond_t;
      arg2 : access bits_pthreadtypes_h.pthread_mutex_t;
      arg3 : System.Address) return int;  -- /usr/include/pthread.h:991
   pragma Import (C, pthread_cond_timedwait, "pthread_cond_timedwait");

  -- Functions for handling condition variable attributes.   
  -- Initialize condition variable attribute ATTR.   
   function pthread_condattr_init (arg1 : access bits_pthreadtypes_h.pthread_condattr_t) return int;  -- /usr/include/pthread.h:999
   pragma Import (C, pthread_condattr_init, "pthread_condattr_init");

  -- Destroy condition variable attribute ATTR.   
   function pthread_condattr_destroy (arg1 : access bits_pthreadtypes_h.pthread_condattr_t) return int;  -- /usr/include/pthread.h:1003
   pragma Import (C, pthread_condattr_destroy, "pthread_condattr_destroy");

  -- Get the process-shared flag of the condition variable attribute ATTR.   
   function pthread_condattr_getpshared (arg1 : access constant bits_pthreadtypes_h.pthread_condattr_t; arg2 : access int) return int;  -- /usr/include/pthread.h:1007
   pragma Import (C, pthread_condattr_getpshared, "pthread_condattr_getpshared");

  -- Set the process-shared flag of the condition variable attribute ATTR.   
   function pthread_condattr_setpshared (arg1 : access bits_pthreadtypes_h.pthread_condattr_t; arg2 : int) return int;  -- /usr/include/pthread.h:1013
   pragma Import (C, pthread_condattr_setpshared, "pthread_condattr_setpshared");

  -- Get the clock selected for the conditon variable attribute ATTR.   
   function pthread_condattr_getclock (arg1 : access constant bits_pthreadtypes_h.pthread_condattr_t; arg2 : access bits_types_h.uu_clockid_t) return int;  -- /usr/include/pthread.h:1018
   pragma Import (C, pthread_condattr_getclock, "pthread_condattr_getclock");

  -- Set the clock selected for the conditon variable attribute ATTR.   
   function pthread_condattr_setclock (arg1 : access bits_pthreadtypes_h.pthread_condattr_t; arg2 : bits_types_h.uu_clockid_t) return int;  -- /usr/include/pthread.h:1024
   pragma Import (C, pthread_condattr_setclock, "pthread_condattr_setclock");

  -- Functions to handle spinlocks.   
  -- Initialize the spinlock LOCK.  If PSHARED is nonzero the spinlock can
  --   be shared between different processes.   

   function pthread_spin_init (arg1 : access bits_pthreadtypes_h.pthread_spinlock_t; arg2 : int) return int;  -- /usr/include/pthread.h:1035
   pragma Import (C, pthread_spin_init, "pthread_spin_init");

  -- Destroy the spinlock LOCK.   
   function pthread_spin_destroy (arg1 : access bits_pthreadtypes_h.pthread_spinlock_t) return int;  -- /usr/include/pthread.h:1039
   pragma Import (C, pthread_spin_destroy, "pthread_spin_destroy");

  -- Wait until spinlock LOCK is retrieved.   
   function pthread_spin_lock (arg1 : access bits_pthreadtypes_h.pthread_spinlock_t) return int;  -- /usr/include/pthread.h:1043
   pragma Import (C, pthread_spin_lock, "pthread_spin_lock");

  -- Try to lock spinlock LOCK.   
   function pthread_spin_trylock (arg1 : access bits_pthreadtypes_h.pthread_spinlock_t) return int;  -- /usr/include/pthread.h:1047
   pragma Import (C, pthread_spin_trylock, "pthread_spin_trylock");

  -- Release spinlock LOCK.   
   function pthread_spin_unlock (arg1 : access bits_pthreadtypes_h.pthread_spinlock_t) return int;  -- /usr/include/pthread.h:1051
   pragma Import (C, pthread_spin_unlock, "pthread_spin_unlock");

  -- Functions to handle barriers.   
  -- Initialize BARRIER with the attributes in ATTR.  The barrier is
  --   opened when COUNT waiters arrived.   

   function pthread_barrier_init
     (arg1 : access bits_pthreadtypes_h.pthread_barrier_t;
      arg2 : access constant bits_pthreadtypes_h.pthread_barrierattr_t;
      arg3 : unsigned) return int;  -- /usr/include/pthread.h:1059
   pragma Import (C, pthread_barrier_init, "pthread_barrier_init");

  -- Destroy a previously dynamically initialized barrier BARRIER.   
   function pthread_barrier_destroy (arg1 : access bits_pthreadtypes_h.pthread_barrier_t) return int;  -- /usr/include/pthread.h:1065
   pragma Import (C, pthread_barrier_destroy, "pthread_barrier_destroy");

  -- Wait on barrier BARRIER.   
   function pthread_barrier_wait (arg1 : access bits_pthreadtypes_h.pthread_barrier_t) return int;  -- /usr/include/pthread.h:1069
   pragma Import (C, pthread_barrier_wait, "pthread_barrier_wait");

  -- Initialize barrier attribute ATTR.   
   function pthread_barrierattr_init (arg1 : access bits_pthreadtypes_h.pthread_barrierattr_t) return int;  -- /usr/include/pthread.h:1074
   pragma Import (C, pthread_barrierattr_init, "pthread_barrierattr_init");

  -- Destroy previously dynamically initialized barrier attribute ATTR.   
   function pthread_barrierattr_destroy (arg1 : access bits_pthreadtypes_h.pthread_barrierattr_t) return int;  -- /usr/include/pthread.h:1078
   pragma Import (C, pthread_barrierattr_destroy, "pthread_barrierattr_destroy");

  -- Get the process-shared flag of the barrier attribute ATTR.   
   function pthread_barrierattr_getpshared (arg1 : access constant bits_pthreadtypes_h.pthread_barrierattr_t; arg2 : access int) return int;  -- /usr/include/pthread.h:1082
   pragma Import (C, pthread_barrierattr_getpshared, "pthread_barrierattr_getpshared");

  -- Set the process-shared flag of the barrier attribute ATTR.   
   function pthread_barrierattr_setpshared (arg1 : access bits_pthreadtypes_h.pthread_barrierattr_t; arg2 : int) return int;  -- /usr/include/pthread.h:1088
   pragma Import (C, pthread_barrierattr_setpshared, "pthread_barrierattr_setpshared");

  -- Functions for handling thread-specific data.   
  -- Create a key value identifying a location in the thread-specific
  --   data area.  Each thread maintains a distinct thread-specific data
  --   area.  DESTR_FUNCTION, if non-NULL, is called with the value
  --   associated to that key when the key is destroyed.
  --   DESTR_FUNCTION is not called if the value associated is NULL when
  --   the key is destroyed.   

   function pthread_key_create (arg1 : access bits_pthreadtypes_h.pthread_key_t; arg2 : access procedure (arg1 : System.Address)) return int;  -- /usr/include/pthread.h:1102
   pragma Import (C, pthread_key_create, "pthread_key_create");

  -- Destroy KEY.   
   function pthread_key_delete (arg1 : bits_pthreadtypes_h.pthread_key_t) return int;  -- /usr/include/pthread.h:1107
   pragma Import (C, pthread_key_delete, "pthread_key_delete");

  -- Return current value of the thread-specific data slot identified by KEY.   
   function pthread_getspecific (arg1 : bits_pthreadtypes_h.pthread_key_t) return System.Address;  -- /usr/include/pthread.h:1110
   pragma Import (C, pthread_getspecific, "pthread_getspecific");

  -- Store POINTER in the thread-specific data slot identified by KEY.  
   function pthread_setspecific (arg1 : bits_pthreadtypes_h.pthread_key_t; arg2 : System.Address) return int;  -- /usr/include/pthread.h:1113
   pragma Import (C, pthread_setspecific, "pthread_setspecific");

  -- Get ID of CPU-time clock for thread THREAD_ID.   
   function pthread_getcpuclockid (arg1 : bits_pthreadtypes_h.pthread_t; arg2 : access bits_types_h.uu_clockid_t) return int;  -- /usr/include/pthread.h:1119
   pragma Import (C, pthread_getcpuclockid, "pthread_getcpuclockid");

  -- Install handlers to be called when a new process is created with FORK.
  --   The PREPARE handler is called in the parent process just before performing
  --   FORK. The PARENT handler is called in the parent process just after FORK.
  --   The CHILD handler is called in the child process.  Each of the three
  --   handlers can be NULL, meaning that no handler needs to be called at that
  --   point.
  --   PTHREAD_ATFORK can be called several times, in which case the PREPARE
  --   handlers are called in LIFO order (last added with PTHREAD_ATFORK,
  --   first called before FORK), and the PARENT and CHILD handlers are called
  --   in FIFO (first added, first called).   

   function pthread_atfork
     (arg1 : access procedure;
      arg2 : access procedure;
      arg3 : access procedure) return int;  -- /usr/include/pthread.h:1136
   pragma Import (C, pthread_atfork, "pthread_atfork");

  -- Optimizations.   
end pthread_h;
