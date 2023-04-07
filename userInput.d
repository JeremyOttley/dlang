import std.stdio : write, writeln, readln;
import std.string : strip;

void main() {

  char[] name;
  
  write("What's your name: ");
  readln(name);
  
  writeln("Hello ", name.strip);
}
