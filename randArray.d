import std.array : array;
import std.range : generate, takeExactly;

void main() {
  import std.stdio;
  
  int[] arr = generate!(() => uniform(0, 100)).takeExactly(10).array;
  writeln(arr.length); // 10
  assert(arr[0] >= 0 && arr[0] < 100);
}
