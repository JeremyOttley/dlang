// in values cannot be changed

// const values cannot be changed

// out controls 

void randFunc(in int x, const int y, out int f2) {
	x = 5; // will produce error
	y = 10; // will produce error
	f2 = 15; // will always be the same
}
