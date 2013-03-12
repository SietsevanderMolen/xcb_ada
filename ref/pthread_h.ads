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
   type u_pthread_cleanup_buffer is record
      uu_routine : access procedure (arg1 : System.Address);  -- /usr/include/pthread.h:191
      uu_arg : System.Address;  -- /usr/include/pthread.h:192
      uu_canceltype : aliased int;  -- /usr/include/pthread.h:193
      uu_prev : access u_pthread_cleanup_buffer;  -- /usr/include/pthread.h:194
   end record;
   pragma Convention (C_Pass_By_Copy, u_pthread_cleanup_buffer);  -- /usr/include/pthread.h:189

   function pthread_create
     (arg1 : access bits_pthreadtypes_h.pthread_t;
      arg2 : access constant bits_pthreadtypes_h.pthread_attr_t;
      arg3 : access function (arg1 : System.Address) return System.Address;
      arg4 : System.Address) return int;  -- /usr/include/pthread.h:232
   pragma Import (C, pthread_create, "pthread_create");

   procedure pthread_exit (arg1 : System.Address);  -- /usr/include/pthread.h:241
   pragma Import (C, pthread_exit, "pthread_exit");

   function pthread_join (arg1 : bits_pthreadtypes_h.pthread_t; arg2 : System.Address) return int;  -- /usr/include/pthread.h:249
   pragma Import (C, pthread_join, "pthread_join");

   function pthread_detach (arg1 : bits_pthreadtypes_h.pthread_t) return int;  -- /usr/include/pthread.h:270
   pragma Import (C, pthread_detach, "pthread_detach");

   function pthread_self return bits_pthreadtypes_h.pthread_t;  -- /usr/include/pthread.h:274
   pragma Import (C, pthread_self, "pthread_self");

   function pthread_equal (arg1 : bits_pthreadtypes_h.pthread_t; arg2 : bits_pthreadtypes_h.pthread_t) return int;  -- /usr/include/pthread.h:277
   pragma Import (C, pthread_equal, "pthread_equal");

   function pthread_attr_init (arg1 : access bits_pthreadtypes_h.pthread_attr_t) return int;  -- /usr/include/pthread.h:286
   pragma Import (C, pthread_attr_init, "pthread_attr_init");

   function pthread_attr_destroy (arg1 : access bits_pthreadtypes_h.pthread_attr_t) return int;  -- /usr/include/pthread.h:289
   pragma Import (C, pthread_attr_destroy, "pthread_attr_destroy");

   function pthread_attr_getdetachstate (arg1 : access constant bits_pthreadtypes_h.pthread_attr_t; arg2 : access int) return int;  -- /usr/include/pthread.h:293
   pragma Import (C, pthread_attr_getdetachstate, "pthread_attr_getdetachstate");

   function pthread_attr_setdetachstate (arg1 : access bits_pthreadtypes_h.pthread_attr_t; arg2 : int) return int;  -- /usr/include/pthread.h:298
   pragma Import (C, pthread_attr_setdetachstate, "pthread_attr_setdetachstate");

   function pthread_attr_getguardsize (arg1 : access constant bits_pthreadtypes_h.pthread_attr_t; arg2 : access stddef_h.size_t) return int;  -- /usr/include/pthread.h:304
   pragma Import (C, pthread_attr_getguardsize, "pthread_attr_getguardsize");

   function pthread_attr_setguardsize (arg1 : access bits_pthreadtypes_h.pthread_attr_t; arg2 : stddef_h.size_t) return int;  -- /usr/include/pthread.h:309
   pragma Import (C, pthread_attr_setguardsize, "pthread_attr_setguardsize");

   function pthread_attr_getschedparam (arg1 : access constant bits_pthreadtypes_h.pthread_attr_t; arg2 : access bits_sched_h.sched_param) return int;  -- /usr/include/pthread.h:315
   pragma Import (C, pthread_attr_getschedparam, "pthread_attr_getschedparam");

   function pthread_attr_setschedparam (arg1 : access bits_pthreadtypes_h.pthread_attr_t; arg2 : System.Address) return int;  -- /usr/include/pthread.h:320
   pragma Import (C, pthread_attr_setschedparam, "pthread_attr_setschedparam");

   function pthread_attr_getschedpolicy (arg1 : access constant bits_pthreadtypes_h.pthread_attr_t; arg2 : access int) return int;  -- /usr/include/pthread.h:325
   pragma Import (C, pthread_attr_getschedpolicy, "pthread_attr_getschedpolicy");

   function pthread_attr_setschedpolicy (arg1 : access bits_pthreadtypes_h.pthread_attr_t; arg2 : int) return int;  -- /usr/include/pthread.h:330
   pragma Import (C, pthread_attr_setschedpolicy, "pthread_attr_setschedpolicy");

   function pthread_attr_getinheritsched (arg1 : access constant bits_pthreadtypes_h.pthread_attr_t; arg2 : access int) return int;  -- /usr/include/pthread.h:334
   pragma Import (C, pthread_attr_getinheritsched, "pthread_attr_getinheritsched");

   function pthread_attr_setinheritsched (arg1 : access bits_pthreadtypes_h.pthread_attr_t; arg2 : int) return int;  -- /usr/include/pthread.h:339
   pragma Import (C, pthread_attr_setinheritsched, "pthread_attr_setinheritsched");

   function pthread_attr_getscope (arg1 : access constant bits_pthreadtypes_h.pthread_attr_t; arg2 : access int) return int;  -- /usr/include/pthread.h:345
   pragma Import (C, pthread_attr_getscope, "pthread_attr_getscope");

   function pthread_attr_setscope (arg1 : access bits_pthreadtypes_h.pthread_attr_t; arg2 : int) return int;  -- /usr/include/pthread.h:350
   pragma Import (C, pthread_attr_setscope, "pthread_attr_setscope");

   function pthread_attr_getstackaddr (arg1 : access constant bits_pthreadtypes_h.pthread_attr_t; arg2 : System.Address) return int;  -- /usr/include/pthread.h:354
   pragma Import (C, pthread_attr_getstackaddr, "pthread_attr_getstackaddr");

   function pthread_attr_setstackaddr (arg1 : access bits_pthreadtypes_h.pthread_attr_t; arg2 : System.Address) return int;  -- /usr/include/pthread.h:362
   pragma Import (C, pthread_attr_setstackaddr, "pthread_attr_setstackaddr");

   function pthread_attr_getstacksize (arg1 : access constant bits_pthreadtypes_h.pthread_attr_t; arg2 : access stddef_h.size_t) return int;  -- /usr/include/pthread.h:367
   pragma Import (C, pthread_attr_getstacksize, "pthread_attr_getstacksize");

   function pthread_attr_setstacksize (arg1 : access bits_pthreadtypes_h.pthread_attr_t; arg2 : stddef_h.size_t) return int;  -- /usr/include/pthread.h:374
   pragma Import (C, pthread_attr_setstacksize, "pthread_attr_setstacksize");

   function pthread_attr_getstack
     (arg1 : access constant bits_pthreadtypes_h.pthread_attr_t;
      arg2 : System.Address;
      arg3 : access stddef_h.size_t) return int;  -- /usr/include/pthread.h:380
   pragma Import (C, pthread_attr_getstack, "pthread_attr_getstack");

   function pthread_attr_setstack
     (arg1 : access bits_pthreadtypes_h.pthread_attr_t;
      arg2 : System.Address;
      arg3 : stddef_h.size_t) return int;  -- /usr/include/pthread.h:388
   pragma Import (C, pthread_attr_setstack, "pthread_attr_setstack");

   function pthread_setschedparam
     (arg1 : bits_pthreadtypes_h.pthread_t;
      arg2 : int;
      arg3 : System.Address) return int;  -- /usr/include/pthread.h:420
   pragma Import (C, pthread_setschedparam, "pthread_setschedparam");

   function pthread_getschedparam
     (arg1 : bits_pthreadtypes_h.pthread_t;
      arg2 : access int;
      arg3 : access bits_sched_h.sched_param) return int;  -- /usr/include/pthread.h:425
   pragma Import (C, pthread_getschedparam, "pthread_getschedparam");

   function pthread_setschedprio (arg1 : bits_pthreadtypes_h.pthread_t; arg2 : int) return int;  -- /usr/include/pthread.h:431
   pragma Import (C, pthread_setschedprio, "pthread_setschedprio");

   function pthread_once (arg1 : access bits_pthreadtypes_h.pthread_once_t; arg2 : access procedure) return int;  -- /usr/include/pthread.h:485
   pragma Import (C, pthread_once, "pthread_once");

   function pthread_setcancelstate (arg1 : int; arg2 : access int) return int;  -- /usr/include/pthread.h:497
   pragma Import (C, pthread_setcancelstate, "pthread_setcancelstate");

   function pthread_setcanceltype (arg1 : int; arg2 : access int) return int;  -- /usr/include/pthread.h:501
   pragma Import (C, pthread_setcanceltype, "pthread_setcanceltype");

   function pthread_cancel (arg1 : bits_pthreadtypes_h.pthread_t) return int;  -- /usr/include/pthread.h:504
   pragma Import (C, pthread_cancel, "pthread_cancel");

   procedure pthread_testcancel;  -- /usr/include/pthread.h:509
   pragma Import (C, pthread_testcancel, "pthread_testcancel");

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

   type uu_pthread_cleanup_frame is record
      uu_cancel_routine : access procedure (arg1 : System.Address);  -- /usr/include/pthread.h:533
      uu_cancel_arg : System.Address;  -- /usr/include/pthread.h:534
      uu_do_it : aliased int;  -- /usr/include/pthread.h:535
      uu_cancel_type : aliased int;  -- /usr/include/pthread.h:536
   end record;
   pragma Convention (C_Pass_By_Copy, uu_pthread_cleanup_frame);  -- /usr/include/pthread.h:531

   --  skipped empty struct uu_jmp_buf_tag

   function pthread_mutex_init (arg1 : access bits_pthreadtypes_h.pthread_mutex_t; arg2 : access constant bits_pthreadtypes_h.pthread_mutexattr_t) return int;  -- /usr/include/pthread.h:740
   pragma Import (C, pthread_mutex_init, "pthread_mutex_init");

   function pthread_mutex_destroy (arg1 : access bits_pthreadtypes_h.pthread_mutex_t) return int;  -- /usr/include/pthread.h:745
   pragma Import (C, pthread_mutex_destroy, "pthread_mutex_destroy");

   function pthread_mutex_trylock (arg1 : access bits_pthreadtypes_h.pthread_mutex_t) return int;  -- /usr/include/pthread.h:749
   pragma Import (C, pthread_mutex_trylock, "pthread_mutex_trylock");

   function pthread_mutex_lock (arg1 : access bits_pthreadtypes_h.pthread_mutex_t) return int;  -- /usr/include/pthread.h:753
   pragma Import (C, pthread_mutex_lock, "pthread_mutex_lock");

   function pthread_mutex_timedlock (arg1 : access bits_pthreadtypes_h.pthread_mutex_t; arg2 : System.Address) return int;  -- /usr/include/pthread.h:758
   pragma Import (C, pthread_mutex_timedlock, "pthread_mutex_timedlock");

   function pthread_mutex_unlock (arg1 : access bits_pthreadtypes_h.pthread_mutex_t) return int;  -- /usr/include/pthread.h:764
   pragma Import (C, pthread_mutex_unlock, "pthread_mutex_unlock");

   function pthread_mutex_getprioceiling (arg1 : access constant bits_pthreadtypes_h.pthread_mutex_t; arg2 : access int) return int;  -- /usr/include/pthread.h:769
   pragma Import (C, pthread_mutex_getprioceiling, "pthread_mutex_getprioceiling");

   function pthread_mutex_setprioceiling
     (arg1 : access bits_pthreadtypes_h.pthread_mutex_t;
      arg2 : int;
      arg3 : access int) return int;  -- /usr/include/pthread.h:776
   pragma Import (C, pthread_mutex_setprioceiling, "pthread_mutex_setprioceiling");

   function pthread_mutex_consistent (arg1 : access bits_pthreadtypes_h.pthread_mutex_t) return int;  -- /usr/include/pthread.h:784
   pragma Import (C, pthread_mutex_consistent, "pthread_mutex_consistent");

   function pthread_mutexattr_init (arg1 : access bits_pthreadtypes_h.pthread_mutexattr_t) return int;  -- /usr/include/pthread.h:797
   pragma Import (C, pthread_mutexattr_init, "pthread_mutexattr_init");

   function pthread_mutexattr_destroy (arg1 : access bits_pthreadtypes_h.pthread_mutexattr_t) return int;  -- /usr/include/pthread.h:801
   pragma Import (C, pthread_mutexattr_destroy, "pthread_mutexattr_destroy");

   function pthread_mutexattr_getpshared (arg1 : access constant bits_pthreadtypes_h.pthread_mutexattr_t; arg2 : access int) return int;  -- /usr/include/pthread.h:805
   pragma Import (C, pthread_mutexattr_getpshared, "pthread_mutexattr_getpshared");

   function pthread_mutexattr_setpshared (arg1 : access bits_pthreadtypes_h.pthread_mutexattr_t; arg2 : int) return int;  -- /usr/include/pthread.h:811
   pragma Import (C, pthread_mutexattr_setpshared, "pthread_mutexattr_setpshared");

   function pthread_mutexattr_gettype (arg1 : access constant bits_pthreadtypes_h.pthread_mutexattr_t; arg2 : access int) return int;  -- /usr/include/pthread.h:817
   pragma Import (C, pthread_mutexattr_gettype, "pthread_mutexattr_gettype");

   function pthread_mutexattr_settype (arg1 : access bits_pthreadtypes_h.pthread_mutexattr_t; arg2 : int) return int;  -- /usr/include/pthread.h:824
   pragma Import (C, pthread_mutexattr_settype, "pthread_mutexattr_settype");

   function pthread_mutexattr_getprotocol (arg1 : access constant bits_pthreadtypes_h.pthread_mutexattr_t; arg2 : access int) return int;  -- /usr/include/pthread.h:829
   pragma Import (C, pthread_mutexattr_getprotocol, "pthread_mutexattr_getprotocol");

   function pthread_mutexattr_setprotocol (arg1 : access bits_pthreadtypes_h.pthread_mutexattr_t; arg2 : int) return int;  -- /usr/include/pthread.h:836
   pragma Import (C, pthread_mutexattr_setprotocol, "pthread_mutexattr_setprotocol");

   function pthread_mutexattr_getprioceiling (arg1 : access constant bits_pthreadtypes_h.pthread_mutexattr_t; arg2 : access int) return int;  -- /usr/include/pthread.h:841
   pragma Import (C, pthread_mutexattr_getprioceiling, "pthread_mutexattr_getprioceiling");

   function pthread_mutexattr_setprioceiling (arg1 : access bits_pthreadtypes_h.pthread_mutexattr_t; arg2 : int) return int;  -- /usr/include/pthread.h:847
   pragma Import (C, pthread_mutexattr_setprioceiling, "pthread_mutexattr_setprioceiling");

   function pthread_mutexattr_getrobust (arg1 : access constant bits_pthreadtypes_h.pthread_mutexattr_t; arg2 : access int) return int;  -- /usr/include/pthread.h:853
   pragma Import (C, pthread_mutexattr_getrobust, "pthread_mutexattr_getrobust");

   function pthread_mutexattr_setrobust (arg1 : access bits_pthreadtypes_h.pthread_mutexattr_t; arg2 : int) return int;  -- /usr/include/pthread.h:863
   pragma Import (C, pthread_mutexattr_setrobust, "pthread_mutexattr_setrobust");

   function pthread_rwlock_init (arg1 : access bits_pthreadtypes_h.pthread_rwlock_t; arg2 : access constant bits_pthreadtypes_h.pthread_rwlockattr_t) return int;  -- /usr/include/pthread.h:879
   pragma Import (C, pthread_rwlock_init, "pthread_rwlock_init");

   function pthread_rwlock_destroy (arg1 : access bits_pthreadtypes_h.pthread_rwlock_t) return int;  -- /usr/include/pthread.h:884
   pragma Import (C, pthread_rwlock_destroy, "pthread_rwlock_destroy");

   function pthread_rwlock_rdlock (arg1 : access bits_pthreadtypes_h.pthread_rwlock_t) return int;  -- /usr/include/pthread.h:888
   pragma Import (C, pthread_rwlock_rdlock, "pthread_rwlock_rdlock");

   function pthread_rwlock_tryrdlock (arg1 : access bits_pthreadtypes_h.pthread_rwlock_t) return int;  -- /usr/include/pthread.h:892
   pragma Import (C, pthread_rwlock_tryrdlock, "pthread_rwlock_tryrdlock");

   function pthread_rwlock_timedrdlock (arg1 : access bits_pthreadtypes_h.pthread_rwlock_t; arg2 : System.Address) return int;  -- /usr/include/pthread.h:897
   pragma Import (C, pthread_rwlock_timedrdlock, "pthread_rwlock_timedrdlock");

   function pthread_rwlock_wrlock (arg1 : access bits_pthreadtypes_h.pthread_rwlock_t) return int;  -- /usr/include/pthread.h:903
   pragma Import (C, pthread_rwlock_wrlock, "pthread_rwlock_wrlock");

   function pthread_rwlock_trywrlock (arg1 : access bits_pthreadtypes_h.pthread_rwlock_t) return int;  -- /usr/include/pthread.h:907
   pragma Import (C, pthread_rwlock_trywrlock, "pthread_rwlock_trywrlock");

   function pthread_rwlock_timedwrlock (arg1 : access bits_pthreadtypes_h.pthread_rwlock_t; arg2 : System.Address) return int;  -- /usr/include/pthread.h:912
   pragma Import (C, pthread_rwlock_timedwrlock, "pthread_rwlock_timedwrlock");

   function pthread_rwlock_unlock (arg1 : access bits_pthreadtypes_h.pthread_rwlock_t) return int;  -- /usr/include/pthread.h:918
   pragma Import (C, pthread_rwlock_unlock, "pthread_rwlock_unlock");

   function pthread_rwlockattr_init (arg1 : access bits_pthreadtypes_h.pthread_rwlockattr_t) return int;  -- /usr/include/pthread.h:925
   pragma Import (C, pthread_rwlockattr_init, "pthread_rwlockattr_init");

   function pthread_rwlockattr_destroy (arg1 : access bits_pthreadtypes_h.pthread_rwlockattr_t) return int;  -- /usr/include/pthread.h:929
   pragma Import (C, pthread_rwlockattr_destroy, "pthread_rwlockattr_destroy");

   function pthread_rwlockattr_getpshared (arg1 : access constant bits_pthreadtypes_h.pthread_rwlockattr_t; arg2 : access int) return int;  -- /usr/include/pthread.h:933
   pragma Import (C, pthread_rwlockattr_getpshared, "pthread_rwlockattr_getpshared");

   function pthread_rwlockattr_setpshared (arg1 : access bits_pthreadtypes_h.pthread_rwlockattr_t; arg2 : int) return int;  -- /usr/include/pthread.h:939
   pragma Import (C, pthread_rwlockattr_setpshared, "pthread_rwlockattr_setpshared");

   function pthread_rwlockattr_getkind_np (arg1 : access constant bits_pthreadtypes_h.pthread_rwlockattr_t; arg2 : access int) return int;  -- /usr/include/pthread.h:944
   pragma Import (C, pthread_rwlockattr_getkind_np, "pthread_rwlockattr_getkind_np");

   function pthread_rwlockattr_setkind_np (arg1 : access bits_pthreadtypes_h.pthread_rwlockattr_t; arg2 : int) return int;  -- /usr/include/pthread.h:950
   pragma Import (C, pthread_rwlockattr_setkind_np, "pthread_rwlockattr_setkind_np");

   function pthread_cond_init (arg1 : access bits_pthreadtypes_h.pthread_cond_t; arg2 : access constant bits_pthreadtypes_h.pthread_condattr_t) return int;  -- /usr/include/pthread.h:959
   pragma Import (C, pthread_cond_init, "pthread_cond_init");

   function pthread_cond_destroy (arg1 : access bits_pthreadtypes_h.pthread_cond_t) return int;  -- /usr/include/pthread.h:964
   pragma Import (C, pthread_cond_destroy, "pthread_cond_destroy");

   function pthread_cond_signal (arg1 : access bits_pthreadtypes_h.pthread_cond_t) return int;  -- /usr/include/pthread.h:968
   pragma Import (C, pthread_cond_signal, "pthread_cond_signal");

   function pthread_cond_broadcast (arg1 : access bits_pthreadtypes_h.pthread_cond_t) return int;  -- /usr/include/pthread.h:972
   pragma Import (C, pthread_cond_broadcast, "pthread_cond_broadcast");

   function pthread_cond_wait (arg1 : access bits_pthreadtypes_h.pthread_cond_t; arg2 : access bits_pthreadtypes_h.pthread_mutex_t) return int;  -- /usr/include/pthread.h:980
   pragma Import (C, pthread_cond_wait, "pthread_cond_wait");

   function pthread_cond_timedwait
     (arg1 : access bits_pthreadtypes_h.pthread_cond_t;
      arg2 : access bits_pthreadtypes_h.pthread_mutex_t;
      arg3 : System.Address) return int;  -- /usr/include/pthread.h:991
   pragma Import (C, pthread_cond_timedwait, "pthread_cond_timedwait");

   function pthread_condattr_init (arg1 : access bits_pthreadtypes_h.pthread_condattr_t) return int;  -- /usr/include/pthread.h:999
   pragma Import (C, pthread_condattr_init, "pthread_condattr_init");

   function pthread_condattr_destroy (arg1 : access bits_pthreadtypes_h.pthread_condattr_t) return int;  -- /usr/include/pthread.h:1003
   pragma Import (C, pthread_condattr_destroy, "pthread_condattr_destroy");

   function pthread_condattr_getpshared (arg1 : access constant bits_pthreadtypes_h.pthread_condattr_t; arg2 : access int) return int;  -- /usr/include/pthread.h:1007
   pragma Import (C, pthread_condattr_getpshared, "pthread_condattr_getpshared");

   function pthread_condattr_setpshared (arg1 : access bits_pthreadtypes_h.pthread_condattr_t; arg2 : int) return int;  -- /usr/include/pthread.h:1013
   pragma Import (C, pthread_condattr_setpshared, "pthread_condattr_setpshared");

   function pthread_condattr_getclock (arg1 : access constant bits_pthreadtypes_h.pthread_condattr_t; arg2 : access bits_types_h.uu_clockid_t) return int;  -- /usr/include/pthread.h:1018
   pragma Import (C, pthread_condattr_getclock, "pthread_condattr_getclock");

   function pthread_condattr_setclock (arg1 : access bits_pthreadtypes_h.pthread_condattr_t; arg2 : bits_types_h.uu_clockid_t) return int;  -- /usr/include/pthread.h:1024
   pragma Import (C, pthread_condattr_setclock, "pthread_condattr_setclock");

   function pthread_spin_init (arg1 : access bits_pthreadtypes_h.pthread_spinlock_t; arg2 : int) return int;  -- /usr/include/pthread.h:1035
   pragma Import (C, pthread_spin_init, "pthread_spin_init");

   function pthread_spin_destroy (arg1 : access bits_pthreadtypes_h.pthread_spinlock_t) return int;  -- /usr/include/pthread.h:1039
   pragma Import (C, pthread_spin_destroy, "pthread_spin_destroy");

   function pthread_spin_lock (arg1 : access bits_pthreadtypes_h.pthread_spinlock_t) return int;  -- /usr/include/pthread.h:1043
   pragma Import (C, pthread_spin_lock, "pthread_spin_lock");

   function pthread_spin_trylock (arg1 : access bits_pthreadtypes_h.pthread_spinlock_t) return int;  -- /usr/include/pthread.h:1047
   pragma Import (C, pthread_spin_trylock, "pthread_spin_trylock");

   function pthread_spin_unlock (arg1 : access bits_pthreadtypes_h.pthread_spinlock_t) return int;  -- /usr/include/pthread.h:1051
   pragma Import (C, pthread_spin_unlock, "pthread_spin_unlock");

   function pthread_barrier_init
     (arg1 : access bits_pthreadtypes_h.pthread_barrier_t;
      arg2 : access constant bits_pthreadtypes_h.pthread_barrierattr_t;
      arg3 : unsigned) return int;  -- /usr/include/pthread.h:1059
   pragma Import (C, pthread_barrier_init, "pthread_barrier_init");

   function pthread_barrier_destroy (arg1 : access bits_pthreadtypes_h.pthread_barrier_t) return int;  -- /usr/include/pthread.h:1065
   pragma Import (C, pthread_barrier_destroy, "pthread_barrier_destroy");

   function pthread_barrier_wait (arg1 : access bits_pthreadtypes_h.pthread_barrier_t) return int;  -- /usr/include/pthread.h:1069
   pragma Import (C, pthread_barrier_wait, "pthread_barrier_wait");

   function pthread_barrierattr_init (arg1 : access bits_pthreadtypes_h.pthread_barrierattr_t) return int;  -- /usr/include/pthread.h:1074
   pragma Import (C, pthread_barrierattr_init, "pthread_barrierattr_init");

   function pthread_barrierattr_destroy (arg1 : access bits_pthreadtypes_h.pthread_barrierattr_t) return int;  -- /usr/include/pthread.h:1078
   pragma Import (C, pthread_barrierattr_destroy, "pthread_barrierattr_destroy");

   function pthread_barrierattr_getpshared (arg1 : access constant bits_pthreadtypes_h.pthread_barrierattr_t; arg2 : access int) return int;  -- /usr/include/pthread.h:1082
   pragma Import (C, pthread_barrierattr_getpshared, "pthread_barrierattr_getpshared");

   function pthread_barrierattr_setpshared (arg1 : access bits_pthreadtypes_h.pthread_barrierattr_t; arg2 : int) return int;  -- /usr/include/pthread.h:1088
   pragma Import (C, pthread_barrierattr_setpshared, "pthread_barrierattr_setpshared");

   function pthread_key_create (arg1 : access bits_pthreadtypes_h.pthread_key_t; arg2 : access procedure (arg1 : System.Address)) return int;  -- /usr/include/pthread.h:1102
   pragma Import (C, pthread_key_create, "pthread_key_create");

   function pthread_key_delete (arg1 : bits_pthreadtypes_h.pthread_key_t) return int;  -- /usr/include/pthread.h:1107
   pragma Import (C, pthread_key_delete, "pthread_key_delete");

   function pthread_getspecific (arg1 : bits_pthreadtypes_h.pthread_key_t) return System.Address;  -- /usr/include/pthread.h:1110
   pragma Import (C, pthread_getspecific, "pthread_getspecific");

   function pthread_setspecific (arg1 : bits_pthreadtypes_h.pthread_key_t; arg2 : System.Address) return int;  -- /usr/include/pthread.h:1113
   pragma Import (C, pthread_setspecific, "pthread_setspecific");

   function pthread_getcpuclockid (arg1 : bits_pthreadtypes_h.pthread_t; arg2 : access bits_types_h.uu_clockid_t) return int;  -- /usr/include/pthread.h:1119
   pragma Import (C, pthread_getcpuclockid, "pthread_getcpuclockid");

   function pthread_atfork
     (arg1 : access procedure;
      arg2 : access procedure;
      arg3 : access procedure) return int;  -- /usr/include/pthread.h:1136
   pragma Import (C, pthread_atfork, "pthread_atfork");

end pthread_h;
