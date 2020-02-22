#include "Final.h"
#include <stdio.h>
#include <iostream>
using namespace std;

int main()
{

	I A[4][4];
	I B[4][4];
	I res[4][4];
	Fill_mat(A, B);
	printf("Matrix A : \n");
	printf("---------\n");
	Display(A);
	printf("Matrix B : \n");
	printf("---------\n");
	Display(B);
    Multiply_DummyFn(A,B,res);
    printf("Result : \n");
    printf("---------\n");
    Display(res);

  return 0;
}
