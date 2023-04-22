import std.stdio;
import std.file;
import std.path;
import std.algorithm;
import std.array;

bool notExe(string f) {
    return f.extension != ".exe";
}

void append2ToFileName()
{
    auto dir = dirEntries("", SpanMode.shallow)
		.filter!(a => a.isFile)
		.map!(a => baseName(a.name))
        .filter!(a => notExe(a))
		.array;

    foreach (entry; dir)
    {
            string fileName = stripExtension(entry);
            string newName = fileName ~ "2" ~ extension(entry);
            try 
            {
                rename(entry, newName);
            }
            catch (Exception e)
            {
                writeln("Error renaming file: ", e.msg);
            }
    }
}

void main()
{
    append2ToFileName();
}

