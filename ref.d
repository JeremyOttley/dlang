// dlang: making an argument a ref means that the variable can access outside of scope values

void changeMe(ref int f1) {
	f1 = 5;
}

int f1 = 10;

changeMe(f1); // returns s 5, if it weren't a ref, it would return 10
