import std.stdio : readln, writeln, writefln;
import std.string : chomp;
import std.conv : to;
import std.math;

bool gtZero(int n) {
    return n > 0;
}

bool isEven(int n) {
  return (remainder(n,2) == 0);
}

bool isOdd(int n) {
  return !(isEven(n));
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

unittest {
	assert(collatz(12) == 6);
}

void main() {
  writeln("Enter integer: ");
  auto input = readln.chomp.to!int;
  writefln("%d", collatz(input));
}
