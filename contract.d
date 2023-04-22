int fun(ref int a, int b)
in
{
    assert(a > 0);
    assert(b >= 0, "b cannot be negative!");
}
out (r)
{
    assert(r > 0, "return must be positive");
    assert(a != 0);
}
do
{
    // function body
}
