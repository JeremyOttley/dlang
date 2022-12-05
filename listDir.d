void main() {
  import std.stdio : writeln;
  import std.file : DirEntry, dirEntries, SpanMode;
	foreach (DirEntry name; dirEntries("", SpanMode.breadth)) {
		writeln(name);
	}
}
