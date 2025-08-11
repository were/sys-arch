// All these three functions take the same type of argument essentially.

int foo(int *a) { return a[0]; }

int goo(int a[]) { return a[1]; }

int hoo(int a[100]) { return a[2]; }

// The following functions take a 2D array as an argument.
// But still, they are essentially the same.

int ioo(int a[100][100]) { return a[3][3]; }

int joo(int a[][100]) { return a[4][4]; }
