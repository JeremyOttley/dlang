module greeter;

import std.getopt;
import std.stdio : writefln;

string name;

void greet(string name) {
	writefln("Hello, %s", name);
}

void main(string[] args) {
	auto helpInformation = getopt(
		args,
		"n", &name);

	greet(name);

	if (helpInformation.helpWanted) {
		defaultGetoptPrinter("Enter your name in string format.",
		helpInformation.options);
	}
}
