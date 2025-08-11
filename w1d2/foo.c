// clang -Xclang -ast-dump -fsyntax-only foo.c

int foo(int *a)
// Create a context scope 0
{
  int b = 0;   // 0.b
  {            // Create a context scope 1
    int b = 1; // 1.b
    b += 1;    // 1.b += 1
  } // Deconstructs 1
  b += 1;
  return b;
}
