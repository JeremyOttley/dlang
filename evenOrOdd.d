
class Math {
import std.math.remainder;

  bool even(int n) {
    return fmod(n, 2.0) == 0;
  }
  bool odd(int n) {
    return fmod(n, 2.0) != 0;
  }

  int toInt(string n) {
    import std.conv : to;
    return to!int(n);
  }

}

unittest {
  auto math = new Math();
  auto result = math.even(2) && math.odd(3);
  assert(result == true);
  assert(math.toInt("7") == 7);
}

void main(string[] args) {
  import std.stdio : writefln;
  auto math = new Math();
  auto result = math.even(math.toInt(args[1]));
  if (math.even(math.toInt(args[1]))) {
  writefln("Even!");
} else {
  writefln("Odd!");
}
}

