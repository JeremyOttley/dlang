import std.stdio : writefln;

struct computer {
	string manufacturer = "Dell";
	string cpu = "Intel";
	float powerConsumption = 89.15;
	int ram = 32;
	int ssd = 250;
	int quantity = 1;
	float price = 16.00;
};

unittest {
    computer myComp = computer();
    assert(myComp.cpu == "Intel");
}

void main() {
	computer myComp = computer();
	writefln("I've been using %s products for far too long", myComp.cpu);
}
