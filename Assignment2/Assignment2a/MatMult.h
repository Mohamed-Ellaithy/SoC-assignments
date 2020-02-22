#include <stdio.h>
#include <iostream>
#include <math.h>
using namespace std;

#ifndef MATMULT_H
#define MATMULT_H

template <class I>
void Fill_mat(I A[4][4], I B[4][4])
{
	int i, j;
	int x = 10;
	float y = 1;
  	for(i = 0; i < 4; ++i)
  	{
  		for(j = 0; j < 4; ++j)
  		{

  			A[i][j] = x;
  			x = x+10;
  		}
  	}

  	for(i = 0; i < 4; ++i)
  	{
  		for(j = 0; j < 4; ++j)
  		{
  			B[i][j] = y;
  			y=y+5;
  		}
  	}
}

template <typename I>
void Multiply(I A[4][4], I B[4][4], I res[4][4])
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

template <class F>
void Display(F res[4][4])
{
	int i,j;

  	for(i = 0; i < 4; ++i)
  		{
  			for(j = 0; j < 4; ++j)
  			{

  				cout<<res[i][j]<<"\t";
  			    if(j ==3)
  			    	cout<<endl<<endl;
  			}

  			}
}

#endif
