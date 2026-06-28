with AUnit; use AUnit;
with AUnit.Test_Cases;

package Tests.Fibonacci_Tests is
   type Fibonacci_Test is new AUnit.Test_Cases.Test_Case with null record;

   procedure Register_Tests (T : in out Fibonacci_Test);
   function Name (T : Fibonacci_Test) return Message_String;

   -- Optional fixture hooks:
   --overriding
   --procedure Set_Up (T : in out Test_Case);
   --overriding
   --procedure Tear_Down (T : in out Test_Case);

end Tests.Fibonacci_Tests;
