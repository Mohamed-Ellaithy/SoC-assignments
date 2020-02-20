#include "MatrixMultiplication.h"
#include <stdio.h>
#include <iostream>
using namespace std;

int main()
{
  int A[4][4] = {
				  { 1, 2, 3, 4 },
				  { 5, 6, 7, 8 },
				  { 9, 10, 11, 12 },
				  { 13, 14, 15, 16 }
			    };
  int B[4][4]= {
				  { 10, 20, 30, 40 },
				  { 50, 60, 70, 80 },
				  { 90, 100, 110, 120 },
				  { 130, 140, 150, 160 }
			   };
  int res[4][4];
  int i, j, k;

// fill_mat(A,B);

  printf("\nMatrix A :\n");
  printf("----------\n");
  for (i = 0; i < 4; i++)
  {

    for (j = 0; j < 4; j++)
    {

      printf("%d ",*(*(A + i) + j));
      if(j == 3)
		cout << endl << endl;

    }

  }
  printf("----------------\n");

  printf("\nMatrix B :\n");
  printf("----------\n");

  for (i = 0; i < 4; i++)
  {

    for (j = 0; j < 4; j++)
    {

      printf("%d ", *(*(B + i) + j));
      if(j == 3)
		cout << endl << endl;

    }

  }
  printf("----------------\n");
  multiply(A,B,res);
  display(res);
  return 0;
}
