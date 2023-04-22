import std.stdio;
import std.file;
import std.path;
import std.algorithm;
import std.array;

void append2ToFileName()
{
    auto dir = dirEntries("", SpanMode.shallow)
		.filter!(a => a.isFile && !(a.name.extension != ".exe"))
		.map!(a => baseName(a.name))
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

