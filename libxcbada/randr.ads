with System,
     Interfaces;
with xcb;
with Ada.Unchecked_Conversion;

package randr is
   subtype xcb_randr_output_t is Interfaces.Unsigned_32;

   xcb_randr_id : xcb.xcb_extension_t;
   pragma Import (C, xcb_randr_id, "xcb_randr_id");
end randr;
