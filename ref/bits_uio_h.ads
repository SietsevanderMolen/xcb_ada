with Interfaces.C; use Interfaces.C;
with System;
with stddef_h;

package bits_uio_h is

   --  unsupported macro: UIO_MAXIOV 1024
   type iovec is record
      iov_base : System.Address;  -- /usr/include/bits/uio.h:45
      iov_len : aliased stddef_h.size_t;  -- /usr/include/bits/uio.h:46
   end record;
   pragma Convention (C_Pass_By_Copy, iovec);  -- /usr/include/bits/uio.h:43

end bits_uio_h;
