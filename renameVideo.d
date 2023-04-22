import std.algorithm : filter, map;
import std.array : array;
import std.file : dirEntries, SpanMode, DirEntry, rename, getcwd;
import std.stdio : writeln, stderr;
import std.path : baseName;
import std.regex;

string[] videoFiles() {
    auto videos = dirEntries("", "*.mp4", SpanMode.shallow)
        .filter!((video) => video.isFile)
        .map!((video) => baseName(video.name))
        .array;
    return videos;
}

int main(string[] args) {
    try {
        auto rgx = r"\[(.*?)\](\.mp4)".regex; 
        foreach(string video; videoFiles()) {
auto newName = matchAll(video, rgx).captures[1] ~ matchAll(video, rgx).captures[2];

       // rename(video, replaceAll(video, rgx, newName));
		video.rename(newName);
      }
        return 0;
    } catch(Exception ex) {
        stderr.writeln(ex.msg);
        return 1;
    }
}
