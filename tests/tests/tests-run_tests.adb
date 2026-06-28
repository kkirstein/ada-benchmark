with Tests.My_Suite;
with AUnit.Run;
with AUnit.Reporter.Text;

procedure Tests.Run_Tests is
   procedure Runner is new AUnit.Run.Test_Runner (Tests.My_Suite.Suite);
   Reporter : AUnit.Reporter.Text.Text_Reporter;
begin
   Runner (Reporter);
end Tests.Run_Tests;
