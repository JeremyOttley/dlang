import std.stdio;

void main() {

string lang = "French";

switch(lang) {
	case "Chile": case "Cuba":
		writeln("Hola");
		break;
	case "France":
		writeln("Bonjour");
		goto case;
	case "Japan":
		writeln("Konnichiwa");
		break;
	default:
		writeln("Hello");

}


}
