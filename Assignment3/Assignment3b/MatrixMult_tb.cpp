#include <stdio.h>
#include "MatrixMult.h"

int sc_main(int argc, char* argv [])

{
	const int size = 4;
	sc_signal<double> InA[size][size] ,InB[size][size];
	sc_signal<double> op[size][size];
	double x =10;
	double y =20;

	//Initializing the InputA and InputB matricies
	for(int i =0 ; i<size; i++)
	{
		for(int j=0 ; j<size; j++)
		{
			InA[i][j] = x;
			InB[i][j] = y;
			x = x+10;
			y = y+10;
		}
	}


	Matrixmult <double,size> uut ("uut");

	for(int i =0 ; i<size; i++)
	{
		for(int j=0 ; j<size; j++)
		{
			uut.InputA[i][j] (InA[i][j]);
			uut.InputB[i][j] (InB[i][j]);
		}
	}


	for(int i =0 ; i<size; i++)
	{
		for(int j=0 ; j<size; j++)
		{
				uut.Result[i][j] (op[i][j]);
		}
	}

	sc_start(200,SC_NS);
	printf("Output :\n");
	printf("----------------\n");

	for(int i =0 ; i<size; i++)
	{
		for(int j=0 ; j<size; j++)
		{
			cout << op[i][j] <<",\t";
		}
		cout<< '\n';
	}

	return 0;
}
