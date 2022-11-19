module FizzBuzz;

import std.stdio : write, writeln, writefln, readln;
import std.string : chomp;
import std.conv : to;

bool gtZero(int n) {
    return n >= 0;
}

void fizzBuzz(uint n) {
    foreach (x; 1 .. n + 1) {
        if (!(x % 15)) {
            writeln("FizzBuzz");
        } else if (!(x % 3)) {
            writeln("Fizz");
        } else if (!(x % 5)) {
            writeln("Buzz");
        } else {
            writeln(x);
        }
    }
}

void main() {
    write("Enter an integer: ");
    auto n = readln.chomp.to!int;
    fizzBuzz(n);
}
