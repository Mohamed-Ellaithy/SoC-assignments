#include <stdio.h>
#include "systemc.h"

template <class T,int size = 4>
SC_MODULE(Matrixmult)
{
	sc_in<T> InputA[size][size];
	sc_in<T> InputB[size][size];
	sc_out<T> Result[size][size];

	void compute();

	SC_HAS_PROCESS(Matrixmult);

	Matrixmult(sc_module_name name_,  bool debug_ = false) :
	    sc_module(name_)
	{
		SC_METHOD(compute);

		for(int i =0 ; i<size; i++)
		{
			for(int j =0 ; j<size; j++)
			{
				sensitive << InputA[i][j];
				sensitive << InputB[i][j];
			}
		}

	}
};

template <class T,int size>
void Matrixmult<T,size> ::compute(){

	int i, j, k;
	T Temp[size][size];

  	for(i = 0; i < size; ++i)
  	{
  		for(j = 0; j < size; ++j)
  		{
  			Result[i][j] = 0;
  		}
  	}

  	for(i = 0; i<size; ++i)
  	{
  		for(j = 0; j<size; ++j)
  		{
  			for(k=0; k<size; ++k)
  			{
  				Temp[i][j] = Temp[i][j] + InputA[i][k] * InputB[k][j];

  			}
  			Result[i][j] = Temp[i][j];

  		}
  	}
	return;
}


