with Ada.Numerics.Big_Numbers.Big_Integers;
use Ada.Numerics.Big_Numbers.Big_Integers;

package Tasks.Heron_Estimation is

   --  Use Heron estimation to calculate square root for Big_Integer
   function Estimate_Sqrt
     (N : Big_Integer; Eps : Big_Integer) return Big_Integer;

end Tasks.Heron_Estimation;
