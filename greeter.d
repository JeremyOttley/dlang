import std.stdio : write, writeln, readf;

void main() {

  write("Please enter your name: ");
  
  string name;
  
  readf("%s\n", &name);
  
  writeln("Hello ", name, "!");
}
