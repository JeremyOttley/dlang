import std.string : format, chomp;
import std.stdio : write, readln, writeln;
import std.process : execute;

void main() {
  write("Channel: ");
  string channel = readln.chomp;
  string twitchUrl = format("https://twitch.tv/%s", channel);
  auto cmd = execute(["streamlink", twitchUrl, "best"]);
    if (cmd.status != 0)
      writeln("Command failed:\n", cmd.output);
    else writeln(cmd.output);
}
