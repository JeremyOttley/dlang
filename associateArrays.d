import std.stdio : writeln;

void main() {
	double[string] favNums =
	["AZero" : -459,
	"Euler" : 2.7182];

	favNums["PI"] = 3.14159;
	favNums["Golden"] = 1.61803;

	writeln(favNums.keys);
	writeln(favNums.values);

	if("AZero" in favNums) {
		favNums.remove("AZero");
	}
	writeln(favNums);

}
