import std.string;
import std.stdio;
import std.process;

// need a way to capture user input

void main() {
//user input goes here, binds to ch
  write("Channel: ");
  string channel = readln.strip;
  string twitchUrl = format("https://twitch.tv/%s", channel);
  auto cmd = execute(["streamlink", twitchUrl, "best"]);
    if (cmd.status != 0)
      writeln("Command failed:\n", cmd.output);
    else writeln(cmd.output);
}
