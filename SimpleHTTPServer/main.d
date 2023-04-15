//arsd-official:cgi

static import std.file;
import arsd.cgi;
import std.format;
import std.stdio;

void myHTTPServer(Cgi cgi) 
{
    string url = cgi.pathInfo;
    writefln("GET %s", url);
    switch(cgi.pathInfo) 
    {
        case "/style.css":
            cgi.setResponseContentType("text/css");
            cgi.write(std.file.read("views/style.css"));
            break;

        case "/":
            cgi.setResponseContentType("text/html");
            cgi.write(std.file.read("views/index.html"));
            break;

        default:
            cgi.setResponseStatus(404);
    }
    cgi.close();
}

mixin GenericMain!myHTTPServer;

//dub -- --port 8080
