
string[] videoFiles() {
    import std.algorithm : filter, map;
    import std.array : array;
    import std.file : dirEntries, SpanMode;
    import std.stdio : writeln;
    import std.path : baseName;
    auto videos = dirEntries("", "*.mp4", SpanMode.breadth)
        .filter!((video) => video.isFile)
        .map!((video) => baseName(video.name))
        .array;
    return videos;
}

int main(string[] args) {
    try {
        import std.file : DirEntry, rename;
        import std.regex;
        auto rgx = r"\w+\[(\w+)\](\.mp4)".regex; 
        foreach(string video; videoFiles()) {
auto newName = matchAll(video, rgx).captures[1] ~ matchAll(video, rgx).captures[2];

        rename(video, replaceAll(video, rgx, newName));
      }
        return 0;
    } catch(Exception ex) {
        import std.stdio : stderr;
        stderr.writeln(ex.msg);
        return 1;
    }
}
