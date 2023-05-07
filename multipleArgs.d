// takes multiple values

void getSum(A...)(A args) {

	int sum = 0;

	foreach(x; args) {
		sum += x;
	}
	return sum;
}

// getSum(1,2,3)
