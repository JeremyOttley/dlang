import std.stdio : writefln;

struct userConfig {
	string directory = "Reddit/";
	string subreddit = "ultrahdwallpapers";
	long mindWidth = 1920;
	long minHeight = 1080;
	long Max = 100;
	long jsonLimit = 100;
	long loops = 5;
};

void main() {
	auto myConf = userConfig();
	writefln("Have you been on Reddit? Have you seen the %s subreddit before?", myConf.subreddit);
}
