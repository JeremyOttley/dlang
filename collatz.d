import std.stdio : readln, writeln, writefln;
import std.string : chomp;
import std.conv : to;

bool gtZero(int n) {
    return n >= 0;
}

bool isEven(int n) {
  return (n % 2 == 0);
}

bool isOdd(int n) {
  return !(isEven(n));
}

void collatz(int n) {
  if (isEven(n)) {
    writefln("%d", (n / 2));
  } else if (isOdd(n)) {
    writefln("%d", (n * 3) + 1);
  } else {
    writefln("%d", n);
  }
}

void main() {
  writeln("Enter integer: ");
  auto input = readln.chomp.to!int;
  collatz(input);
}
