import std.stdio : writefln;
import std.algorithm : canFind, filter;
import std.array : array;

bool isVowel(dchar c) {
  auto vowels = ['a', 'A', 'e', 'E', 'i', 'I', 'o', 'O', 'u', 'U'];
  return vowels.canFind(c);
}

ulong countVowels(string word) {
  return word.filter!((c) => c.isVowel).array.length;
}

unittest {
  assert(false == isVowel('c'));
  assert(2 == countVowels("Jeremy"));
}

void main(string[] args) {
  writefln("%s", countVowels(args[1]));
}
