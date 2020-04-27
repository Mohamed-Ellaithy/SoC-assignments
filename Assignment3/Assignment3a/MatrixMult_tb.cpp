#include <stdio.h>
#include "MatrixMult.h"

int sc_main(int argc, char* argv [])

{
	sc_signal<double> InA[4][4];
	sc_signal<int> InB[4][4];
	sc_signal<double> op[4][4];


	//Initializing the InputA and InputB matricies
	for(int i =0 ; i<4; i++)
	{
		for(int j=0 ; j<4; j++)
		{
			InA[i][j] = 2;
			InB[i][j] = 3;

		}
	}


	Matrixmult <double,int> uut ("uut");

	for(int i =0 ; i<4; i++)
	{
		for(int j=0 ; j<4; j++)
		{
			uut.InputA[i][j] (InA[i][j]);
			uut.InputB[i][j] (InB[i][j]);
		}
	}

	for(int i =0 ; i<4; i++)
	{
		for(int j=0 ; j<4; j++)
		{
				uut.Result[i][j] (op[i][j]);
		}
	}

	sc_start(200,SC_NS);
	printf("Output :\n");
	printf("----------------\n");

	for(int i =0 ; i<4; i++)
	{
		for(int j=0 ; j<4; j++)
		{
			cout << op[i][j] <<",\t";
		}
		cout<< '\n';
	}
	cout<< '\n';

	return 0;
}
