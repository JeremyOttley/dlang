import std.stdio : writefln;
import std.algorithm : reverse;
import std.array : split;
import std.uni : isWhite;

string reverseString(string s) {
    return s.dup.reverse;
}

bool isPalindrome(string s) {
    auto stringArray = s.split!isWhite;
    return s == reverseString(s);
}

unittest {
    assert("racecar" == reverseString("racecar"));
}

void main(string[] args) {
    writefln("%s", isPalindrome(args[1]));
}
