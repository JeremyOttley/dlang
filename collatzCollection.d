import std.stdio : readln, write, writeln, writefln;
import std.string : chomp;
import std.conv : to;
import std.math;
import std.algorithm : map;
import std.array : array, split;

bool gtZero(int n) {
    return n > 0;
}

bool isEven(int n) {
  return (remainder(n, 2) == 0);
}

bool isOdd(int n) {
  return !(isEven(n));
}

int toInt(string n) {
    return n.to!int;
}

int collatz(int n) {
  if (isEven(n)) {
    return (n / 2);
  } else if (isOdd(n)) {
    return ((n * 3) + 1);
  } else {
    return n;
  }
}

  void main() {
  write("Enter a series of integers: ");
  auto input = readln.chomp.split(' ').map!((n) => toInt(n)).array;
  input.map!((n) => collatz(n)).writeln;
}
