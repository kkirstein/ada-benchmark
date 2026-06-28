with AUnit.Test_Suites; use AUnit.Test_Suites;
with Tests.Fibonacci_Tests;

package body Tests.My_Suite is

   Result : aliased Test_Suite;
   Fib    : aliased Tests.Fibonacci_Tests.Fibonacci_Test;

   function Suite return Access_Test_Suite is
   begin
      Add_Test (Result'Access, Fib'Access);
      return Result'Access;
   end Suite;

end Tests.My_Suite;
