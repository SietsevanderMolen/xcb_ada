with Interfaces.C; use Interfaces.C;
with Interfaces.C.Extensions;
with System;

package bits_pthreadtypes_h is

   subtype pthread_t is unsigned_long;  -- /usr/include/bits/pthreadtypes.h:60

   subtype anon1016_anon1018_array is Interfaces.C.char_array (0 .. 55);
   type pthread_attr_t (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            uu_size : aliased anon1016_anon1018_array;  -- /usr/include/bits/pthreadtypes.h:65
         when others =>
            uu_align : aliased long;  -- /usr/include/bits/pthreadtypes.h:66
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, pthread_attr_t);
   pragma Unchecked_Union (pthread_attr_t);  -- /usr/include/bits/pthreadtypes.h:63

   type uu_pthread_internal_list is record
      uu_prev : access uu_pthread_internal_list;  -- /usr/include/bits/pthreadtypes.h:77
      uu_next : access uu_pthread_internal_list;  -- /usr/include/bits/pthreadtypes.h:78
   end record;
   pragma Convention (C_Pass_By_Copy, uu_pthread_internal_list);  -- /usr/include/bits/pthreadtypes.h:75

   subtype uu_pthread_list_t is uu_pthread_internal_list;

   type uu_pthread_mutex_s is record
      uu_lock : aliased int;  -- /usr/include/bits/pthreadtypes.h:94
      uu_count : aliased unsigned;  -- /usr/include/bits/pthreadtypes.h:95
      uu_owner : aliased int;  -- /usr/include/bits/pthreadtypes.h:96
      uu_nusers : aliased unsigned;  -- /usr/include/bits/pthreadtypes.h:98
      uu_kind : aliased int;  -- /usr/include/bits/pthreadtypes.h:102
      uu_spins : aliased int;  -- /usr/include/bits/pthreadtypes.h:104
      uu_list : aliased uu_pthread_list_t;  -- /usr/include/bits/pthreadtypes.h:105
   end record;
   pragma Convention (C_Pass_By_Copy, uu_pthread_mutex_s);  -- /usr/include/bits/pthreadtypes.h:92

   subtype anon1023_anon1026_array is Interfaces.C.char_array (0 .. 39);
   type anon_1023 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            uu_data : aliased uu_pthread_mutex_s;  -- /usr/include/bits/pthreadtypes.h:115
         when 1 =>
            uu_size : aliased anon1023_anon1026_array;  -- /usr/include/bits/pthreadtypes.h:116
         when others =>
            uu_align : aliased long;  -- /usr/include/bits/pthreadtypes.h:117
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon_1023);
   pragma Unchecked_Union (anon_1023);  -- /usr/include/bits/pthreadtypes.h:90

   subtype pthread_mutex_t_uu_size_array is Interfaces.C.char_array (0 .. 39);
   type pthread_mutex_t (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            uu_data : aliased uu_pthread_mutex_s;  -- /usr/include/bits/pthreadtypes.h:115
         when 1 =>
            uu_size : aliased pthread_mutex_t_uu_size_array;  -- /usr/include/bits/pthreadtypes.h:116
         when others =>
            uu_align : aliased long;  -- /usr/include/bits/pthreadtypes.h:117
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, pthread_mutex_t);
   pragma Unchecked_Union (pthread_mutex_t);  -- /usr/include/bits/pthreadtypes.h:118

   subtype pthread_mutexattr_t_uu_size_array is Interfaces.C.char_array (0 .. 3);
   type pthread_mutexattr_t (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            uu_size : aliased pthread_mutexattr_t_uu_size_array;  -- /usr/include/bits/pthreadtypes.h:122
         when others =>
            uu_align : aliased int;  -- /usr/include/bits/pthreadtypes.h:123
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, pthread_mutexattr_t);
   pragma Unchecked_Union (pthread_mutexattr_t);  -- /usr/include/bits/pthreadtypes.h:124

   type anon_1033 is record
      uu_lock : aliased int;  -- /usr/include/bits/pthreadtypes.h:133
      uu_futex : aliased unsigned;  -- /usr/include/bits/pthreadtypes.h:134
      uu_total_seq : aliased Extensions.unsigned_long_long;  -- /usr/include/bits/pthreadtypes.h:135
      uu_wakeup_seq : aliased Extensions.unsigned_long_long;  -- /usr/include/bits/pthreadtypes.h:136
      uu_woken_seq : aliased Extensions.unsigned_long_long;  -- /usr/include/bits/pthreadtypes.h:137
      uu_mutex : System.Address;  -- /usr/include/bits/pthreadtypes.h:138
      uu_nwaiters : aliased unsigned;  -- /usr/include/bits/pthreadtypes.h:139
      uu_broadcast_seq : aliased unsigned;  -- /usr/include/bits/pthreadtypes.h:140
   end record;
   pragma Convention (C_Pass_By_Copy, anon_1033);  -- /usr/include/bits/pthreadtypes.h:131

   type pthread_cond_t;
   type pthread_cond_t_uu_data_struct is record
      uu_lock : aliased int;  -- /usr/include/bits/pthreadtypes.h:133
      uu_futex : aliased unsigned;  -- /usr/include/bits/pthreadtypes.h:134
      uu_total_seq : aliased Extensions.unsigned_long_long;  -- /usr/include/bits/pthreadtypes.h:135
      uu_wakeup_seq : aliased Extensions.unsigned_long_long;  -- /usr/include/bits/pthreadtypes.h:136
      uu_woken_seq : aliased Extensions.unsigned_long_long;  -- /usr/include/bits/pthreadtypes.h:137
      uu_mutex : System.Address;  -- /usr/include/bits/pthreadtypes.h:138
      uu_nwaiters : aliased unsigned;  -- /usr/include/bits/pthreadtypes.h:139
      uu_broadcast_seq : aliased unsigned;  -- /usr/include/bits/pthreadtypes.h:140
   end record;
   pragma Convention (C_Pass_By_Copy, pthread_cond_t_uu_data_struct);
   subtype pthread_cond_t_uu_size_array is Interfaces.C.char_array (0 .. 47);
   type pthread_cond_t (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            uu_data : aliased anon_1033;  -- /usr/include/bits/pthreadtypes.h:141
         when 1 =>
            uu_size : aliased pthread_cond_t_uu_size_array;  -- /usr/include/bits/pthreadtypes.h:142
         when others =>
            uu_align : aliased Long_Long_Integer;  -- /usr/include/bits/pthreadtypes.h:143
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, pthread_cond_t);
   pragma Unchecked_Union (pthread_cond_t);  -- /usr/include/bits/pthreadtypes.h:144

   subtype pthread_condattr_t_uu_size_array is Interfaces.C.char_array (0 .. 3);
   type pthread_condattr_t (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            uu_size : aliased pthread_condattr_t_uu_size_array;  -- /usr/include/bits/pthreadtypes.h:148
         when others =>
            uu_align : aliased int;  -- /usr/include/bits/pthreadtypes.h:149
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, pthread_condattr_t);
   pragma Unchecked_Union (pthread_condattr_t);  -- /usr/include/bits/pthreadtypes.h:150

   subtype pthread_key_t is unsigned;  -- /usr/include/bits/pthreadtypes.h:154

   subtype pthread_once_t is int;  -- /usr/include/bits/pthreadtypes.h:158

   type anon_1044 is record
      uu_lock : aliased int;  -- /usr/include/bits/pthreadtypes.h:169
      uu_nr_readers : aliased unsigned;  -- /usr/include/bits/pthreadtypes.h:170
      uu_readers_wakeup : aliased unsigned;  -- /usr/include/bits/pthreadtypes.h:171
      uu_writer_wakeup : aliased unsigned;  -- /usr/include/bits/pthreadtypes.h:172
      uu_nr_readers_queued : aliased unsigned;  -- /usr/include/bits/pthreadtypes.h:173
      uu_nr_writers_queued : aliased unsigned;  -- /usr/include/bits/pthreadtypes.h:174
      uu_writer : aliased int;  -- /usr/include/bits/pthreadtypes.h:175
      uu_shared : aliased int;  -- /usr/include/bits/pthreadtypes.h:176
      uu_pad1 : aliased unsigned_long;  -- /usr/include/bits/pthreadtypes.h:177
      uu_pad2 : aliased unsigned_long;  -- /usr/include/bits/pthreadtypes.h:178
      uu_flags : aliased unsigned;  -- /usr/include/bits/pthreadtypes.h:181
   end record;
   pragma Convention (C_Pass_By_Copy, anon_1044);  -- /usr/include/bits/pthreadtypes.h:167

   type pthread_rwlock_t;
   type pthread_rwlock_t_uu_data_struct is record
      uu_lock : aliased int;  -- /usr/include/bits/pthreadtypes.h:169
      uu_nr_readers : aliased unsigned;  -- /usr/include/bits/pthreadtypes.h:170
      uu_readers_wakeup : aliased unsigned;  -- /usr/include/bits/pthreadtypes.h:171
      uu_writer_wakeup : aliased unsigned;  -- /usr/include/bits/pthreadtypes.h:172
      uu_nr_readers_queued : aliased unsigned;  -- /usr/include/bits/pthreadtypes.h:173
      uu_nr_writers_queued : aliased unsigned;  -- /usr/include/bits/pthreadtypes.h:174
      uu_writer : aliased int;  -- /usr/include/bits/pthreadtypes.h:175
      uu_shared : aliased int;  -- /usr/include/bits/pthreadtypes.h:176
      uu_pad1 : aliased unsigned_long;  -- /usr/include/bits/pthreadtypes.h:177
      uu_pad2 : aliased unsigned_long;  -- /usr/include/bits/pthreadtypes.h:178
      uu_flags : aliased unsigned;  -- /usr/include/bits/pthreadtypes.h:181
   end record;
   pragma Convention (C_Pass_By_Copy, pthread_rwlock_t_uu_data_struct);
   subtype pthread_rwlock_t_uu_size_array is Interfaces.C.char_array (0 .. 55);
   type pthread_rwlock_t (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            uu_data : aliased anon_1044;  -- /usr/include/bits/pthreadtypes.h:183
         when 1 =>
            uu_size : aliased pthread_rwlock_t_uu_size_array;  -- /usr/include/bits/pthreadtypes.h:202
         when others =>
            uu_align : aliased long;  -- /usr/include/bits/pthreadtypes.h:203
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, pthread_rwlock_t);
   pragma Unchecked_Union (pthread_rwlock_t);  -- /usr/include/bits/pthreadtypes.h:204

   subtype pthread_rwlockattr_t_uu_size_array is Interfaces.C.char_array (0 .. 7);
   type pthread_rwlockattr_t (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            uu_size : aliased pthread_rwlockattr_t_uu_size_array;  -- /usr/include/bits/pthreadtypes.h:208
         when others =>
            uu_align : aliased long;  -- /usr/include/bits/pthreadtypes.h:209
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, pthread_rwlockattr_t);
   pragma Unchecked_Union (pthread_rwlockattr_t);  -- /usr/include/bits/pthreadtypes.h:210

   subtype pthread_spinlock_t is int;  -- /usr/include/bits/pthreadtypes.h:216

   subtype pthread_barrier_t_uu_size_array is Interfaces.C.char_array (0 .. 31);
   type pthread_barrier_t (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            uu_size : aliased pthread_barrier_t_uu_size_array;  -- /usr/include/bits/pthreadtypes.h:223
         when others =>
            uu_align : aliased long;  -- /usr/include/bits/pthreadtypes.h:224
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, pthread_barrier_t);
   pragma Unchecked_Union (pthread_barrier_t);  -- /usr/include/bits/pthreadtypes.h:225

   subtype pthread_barrierattr_t_uu_size_array is Interfaces.C.char_array (0 .. 3);
   type pthread_barrierattr_t (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            uu_size : aliased pthread_barrierattr_t_uu_size_array;  -- /usr/include/bits/pthreadtypes.h:229
         when others =>
            uu_align : aliased int;  -- /usr/include/bits/pthreadtypes.h:230
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, pthread_barrierattr_t);
   pragma Unchecked_Union (pthread_barrierattr_t);  -- /usr/include/bits/pthreadtypes.h:231

end bits_pthreadtypes_h;
