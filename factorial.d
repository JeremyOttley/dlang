import std.stdio : writeln, readln;
import std.conv : to;
import std.string : chomp;

int fact(int num) {
	if (num == 1) {
		return 1;
	} else {
	  int result = num * fact(num -1);
	  return result;
	}
}

void main() {
	writeln("Enter an integer: ");
	auto input = readln.chomp.to!int;
	fact(input).writeln;
}
