module listFiles;

import std.stdio;
import std.process;

void main() {
  auto cmd = execute(["ls", "-a"]);
  if (cmd.status != 0)
    writeln("Command failed:\n", cmd.output);
  else writeln(cmd.output);
}
