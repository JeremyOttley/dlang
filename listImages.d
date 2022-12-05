void main() {
	import std.algorithm : filter, map;
	import std.array : array;
	import std.file : DirEntry, dirEntries, SpanMode, isFile;
	import std.stdio : writeln;
	import std.path : baseName;
	return dirEntries("", "*.{jpg,jpeg,png,bmp}", SpanMode.breadth)
		.filter!((image) => image.isFile)
		.map!((image) => baseName(image.name))
		.array
		.writeln;
};
