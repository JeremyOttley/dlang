import std.stdio;
import std.variant;

void main() {
    Algebraic!(string, int, bool) v = "D rocks!";
    v.visit!(
        (string s) => writeln("string: ", s),
        (int    n) => writeln("int: ", n),
        (bool   b) => writeln("bool: ", b),
    );
}
