import std.stdio;
import std.algorithm;

/// Reverse a string
string reverseString(string s) {
    return s.dup.reverse;
}

void main(string[] args) {
    writefln("%s", reverseString(args[1]));
}
