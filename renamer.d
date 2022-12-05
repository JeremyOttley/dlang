// generate random string

// array of image files in current directory
string[] imageFiles() {
	import std.algorithm : filter, map;
	import std.array : array;
	import std.file : dirEntries, SpanMode;
	import std.stdio : writeln;
	import std.path : baseName;
	auto images = dirEntries("", "*.{jpg,jpeg,png,bmp}", SpanMode.breadth)
		.filter!((image) => image.isFile)
		.map!((image) => baseName(image.name))
		.array;
	return images;
}

// for each image in imageFiles rename(orig, orig.baseName ~ orig.extension)
void main() {
	import std.stdio;
	import std.file : DirEntry; 
	foreach(DirEntry image; imageFiles()) {
		writeln(image.name);
	}
}
