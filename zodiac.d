//arsd-official:dom
//arsd-official:characterencodings
//arsd-official:http

import std.stdio : write, writeln, writefln, readln;
import std.string : chomp;
import std.uni : asCapitalized;
import arsd.dom;
import commandr;

string base = "https://www.astrology.com/horoscope/daily/";

string normalize(string sign) {
  return base ~ sign ~ ".html";
}

Document getFortune(string sign) {
  string url = normalize(sign);
  auto document = Document.fromUrl(url);
  return document;
}

void main(string[] args) {
    auto a = new Program("wordcase", "v1.0")
          .summary("Cli Wordcase Changer")
          .author("J. M. Ottley <jeremy.ottley@gmail.com>")
          .add(new Command("s")
            .add(new Argument("sign", "Sign to fetch")))
          .parse(args);
        	    
    a
    .on("s", (args) {
		auto document = getFortune(args.arg("sign"));
		auto fortune = document.optionSelector("div#content p span").innerText;
		writeln("\n", args.arg("sign").asCapitalized, ":\n");
  		writeln("\t", fortune);
    });
}
