import std.stdio : writefln;
import std.array : split;
import std.uni : isWhite;
import std.conv : text;

// text doesn't seem right
ulong countWords(string s) {
  //return text(s.split!isWhite).length;
  return text(s).length;
}

void main(string[] args) {
  writefln("%s", countWords(args[1]));
}


