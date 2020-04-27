#include <stdio.h>
#include "systemc.h"

template <class T1, class T2>
SC_MODULE(Matrixmult)
{
	sc_in<T1> InputA[4][4];
	sc_in<T2> InputB[4][4];
	sc_out<T1> Result[4][4];

	void compute();

	SC_HAS_PROCESS(Matrixmult);

	Matrixmult(sc_module_name name_,  bool debug_ = false) :
	    sc_module(name_)
	{
		SC_METHOD(compute);

		for(int i =0 ; i<4; i++)
		{
			for(int j =0 ; j<4; j++)
			{
				sensitive << InputA[i][j];
				sensitive << InputB[i][j];
			}
		}

	}
};

template <class T1, class T2>
void Matrixmult<T1,T2> ::compute(){

	int i, j, k;
	T1 Temp[4][4];

  	for(i = 0; i < 4; ++i)
  	{
  		for(j = 0; j < 4; ++j)
  		{
  			Result[i][j] = 0;
  		}
  	}

  	for(i = 0; i<4; ++i)
  	{
  		for(j = 0; j<4; ++j)
  		{
  			for(k=0; k<4; ++k)
  			{
  				Temp[i][j] = Temp[i][j] + InputA[i][k] * InputB[k][j];

  			}
  			Result[i][j] = Temp[i][j];

  		}
  	}
	return;
}


