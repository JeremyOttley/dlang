import std.json     : JSONValue, parseJSON;
import std.stdio    : writefln;
import std.net.curl : get;

void main()
{
    auto apiRequest = (string uri) => parseJSON(get(uri));
    auto character = apiRequest("https://character.totalpartykill.ca/basic/json");

    writefln("Character Description: %s", character["appearance"].str);
}
