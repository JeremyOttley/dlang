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

int main(string[] args) {
    try {
        import std.file : DirEntry, rename;
        import std.regex;
        auto rgx = r"Screenshot\s\d{4}-\d{2}-\d{2}\s\d".regex; 
        foreach(string image; imageFiles()) {
	  	rename(image, replaceAll(image, rgx, ""));
	  }
        return 0;
    } catch(Exception ex) {
        import std.stdio : stderr;
        stderr.writeln(ex.msg);
        return 1;
    }
}
//"Screenshot 2022-11-29 121107.png" => "121107.png"
