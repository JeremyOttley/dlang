// factorial

int fact(int num) {
	if (num == 1) {
		return 1;
	} else {
	  int result = num * fact(num -1);
	  return result;
	}
}
