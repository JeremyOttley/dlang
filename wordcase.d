import std.uni : toLower, toUpper, asCapitalized;
import std.stdio : writefln;
import commandr;

void main(string[] args) {
    auto a = new Program("wordcase", "v1.0")
          .summary("Cli Wordcase Changer")
          .author("J. M. Ottley <jeremy.ottley@gmail.com>")
          .add(new Command("t")
            .add(new Argument("s", "String to titlecase")))
          .add(new Command("u")
            .add(new Argument("s", "String to uppercase")))
          .add(new Command("l")
            .add(new Argument("s", "String to lowercase")))
          .parse(args);
          

    a
    .on("t", (args) {
        writefln("%s", args.arg("s").asCapitalized);
    }).on("u", (args) {
        writefln("%s", args.arg("s").toUpper);
    }).on("l", (args) {
        writefln("%s", args.arg("s").toLower);
    });
}
