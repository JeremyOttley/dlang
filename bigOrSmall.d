import std.uni;
import std.stdio : writeln;

bool smallWord(string s) {
  return s.length <= 4;

}

bool bigOrSmall(string s) {
    if (smallWord(s)) {
    return true;
  } else
    {
      return false;
    }
}

unittest {
  assert(smallWord("Jeremy") == false);
  assert(bigOrSmall("Jeremy") == false);
}


void main() {
  writeln(bigOrSmall("Jeremy"));
}


