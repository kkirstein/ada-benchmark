with AUnit.Assertions; use AUnit.Assertions;

with Tasks.Fibonacci;

package body Tests.Fibonacci_Tests is

   package Fibonacci renames Tasks.Fibonacci;

   overriding
   function Name (T : Fibonacci_Test) return AUnit.Message_String is
      pragma Unreferenced (T);
   begin
      return Format ("Fibonacci Tests");
   end Name;

   procedure Test_Naive_0 (T : in out Test_Cases.Test_Case'Class) is
      pragma Unreferenced (T);
   begin
      Assert (Fibonacci.Fib_Naive (0) = 0, "Fib_Naive (0) should be 0");
   end Test_Naive_0;

   procedure Test_Naive_1 (T : in out Test_Cases.Test_Case'Class) is
      pragma Unreferenced (T);
   begin
      Assert (Fibonacci.Fib_Naive (1) = 1, "Fib_Naive (1) should be 1");
   end Test_Naive_1;

   procedure Test_Naive_5 (T : in out Test_Cases.Test_Case'Class) is
      pragma Unreferenced (T);
   begin
      Assert (Fibonacci.Fib_Naive (5) = 5, "Fib_Naive (5) should be 5");
   end Test_Naive_5;

   procedure Test_Naive_10 (T : in out Test_Cases.Test_Case'Class) is
      pragma Unreferenced (T);
   begin
      Assert (Fibonacci.Fib_Naive (10) = 55, "Fib_Naive (10) should be 55");
   end Test_Naive_10;

   overriding
   procedure Register_Tests (T : in out Fibonacci_Test) is
      use AUnit.Test_Cases.Registration;
   begin
      Register_Routine (T, Test_Naive_0'Access, "Test_Naive_0");
      Register_Routine (T, Test_Naive_1'Access, "Test_Naive_1");
      Register_Routine (T, Test_Naive_5'Access, "Test_Naive_5");
      Register_Routine (T, Test_Naive_10'Access, "Test_Naive_10");
   end Register_Tests;

end Tests.Fibonacci_Tests;
