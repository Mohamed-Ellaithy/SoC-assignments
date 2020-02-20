#include <stdio.h>
#include <iostream>
#include <hls_math.h>
#include <stdint.h>
#include "MatrixMultiplication.h"
using namespace std;

//void fill_mat(int A[4][4], int B[4][4])
//{
//	int i, j, x, y;
//  	for(i = 0; i < 4; ++i)
//  	{
//  		for(j = 0; j < 4; ++j)
//  		{
//  			cin >> x;
//  			A[i][j] = x;
//  		}
//  	}
//
//  	for(i = 0; i < 4; ++i)
//  	{
//  		for(j = 0; j < 4; ++j)
//  		{
//  			cin >> y;
//  			B[i][j] = x;
//  		}
//  	}
//}

void multiply(int A[4][4], int B[4][4], int res[4][4])
{
	int i, j, k;
  	for(i = 0; i < 4; ++i)
  	{
  		for(j = 0; j < 4; ++j)
  		{
  			res[i][j] = 0;
  		}
  	}

  	for(i = 0; i < 4; ++i)
  	{
  		for(j = 0; j < 4; ++j)
  		{
  			for(k=0; k<4; ++k)
  			{
  				res[i][j] += A[i][k] * B[k][j];
  			}
  		}
  	}

}

void display(int (*res)[4])
{
	int i,j;

	printf("\n\nThe result :\n");
	printf("----------\n");

  	for(i = 0; i < 4; ++i)
  		{
  			for(j = 0; j < 4; ++j)
  			{
  				printf("%d ",res[i][j]);
  				if(j == 3)
  					cout << endl << endl;
  			}
  		}
}



