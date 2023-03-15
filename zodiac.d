//arsd-official:dom
//arsd-official:characterencodings
//arsd-official:http

import std.stdio : write, writeln, readln;
import std.string : chomp;
import std.uni : asCapitalized;
import arsd.dom;

string base = "https://www.astrology.com/horoscope/daily/";

string normalize(string sign) {
  return base ~ sign ~ ".html";
}

Document getForutne(string sign) {
  string url = normalize(sign);
  auto document = Document.fromUrl(url);
  return document;
}

void main()
{
  write("What's your sign: \n");
  
  auto sign = readln.chomp;
  auto document = getFortune(sign);
  auto fortune = document.optionSelector("div#content p span").innerText;
  
  writeln("\n", sign.asCapitalized, ":\n");
  writeln("\t", fortune);
}
