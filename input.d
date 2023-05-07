import std.stdio;

//user input 1

void main() {
	char[] arrName;
	write("What's your name: ");
	readln(arrName);
	writeln("Hello ", strip(arrName))
}

//user input 2

void main() {
	write("Enter first and last name: ");
	string fName = strip(readln());
	string fN, lN;
	formattedRead(fName, "%s %s", fN, lN);
	writeln("Hello ", fN, " ", lN);
}
