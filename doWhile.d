import std.stdio;

void main() {
	int guess = 0;
	int secretNum = 7;

	do {
		write("Guess: ");
		readf("%d\n", &guess);
	} while (secret != guess);

	writeln("You guessed it!");
}
