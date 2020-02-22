#include "systemc.h"

SC_MODULE (vectorIn)
{
	sc_in<sc_lv<8> > A,B;
	sc_out<sc_logic> A7,A6,A5,A4,A3,A2,A1,A0;
	sc_out<sc_logic> B7,B6,B5,B4,B3,B2,B1,B0;



	void process()
	{
		sc_lv<8> tempA = A.read();
		sc_lv<8> tempB = B.read();

		A7.write(tempA[7]);
		A6.write(tempA[6]);
		A5.write(tempA[5]);
		A4.write(tempA[4]);
		A3.write(tempA[3]);
		A2.write(tempA[2]);
		A1.write(tempA[1]);
		A0.write(tempA[0]);
		B7.write(tempB[7]);
		B6.write(tempB[6]);
		B5.write(tempB[5]);
		B4.write(tempB[4]);
		B3.write(tempB[3]);
		B2.write(tempB[2]);
		B1.write(tempB[1]);
		B0.write(tempB[0]);
	}

	SC_CTOR (vectorIn):
		A("A"),
		B("B"),
		A7("A7"),
		A6("A6"),
		A5("A5"),
		A4("A4"),
		A3("A3"),
		A2("A2"),
		A1("A1"),
		A0("A0"),
		B7("B7"),
		B6("B6"),
		B5("B5"),
		B4("B4"),
		B3("B3"),
		B2("B2"),
		B1("B1"),
		B0("B0")

	{
		SC_METHOD (process);
		sensitive << A << B;
	}
};

SC_MODULE (vectorOut)
{
	sc_in<sc_logic> CarryOut,O7,O6,O5,O4,O3,O2,O1,O0;
	sc_out<sc_lv<9> > V;

	SC_CTOR (vectorOut):
		CarryOut("CarryOut"),
		O7("O7"),
		O6("O6"),
		O5("O5"),
		O4("O4"),
		O3("O3"),
		O2("O2"),
		O1("O1"),
		V("V")
	{
		SC_METHOD (process);
		sensitive << CarryOut << O7 << O6 << O5 << O4 << O3 << O2 << O1 << O0 << V;
	}

	void process()
	{
		sc_lv<9> temp;

		temp[8] = CarryOut.read();
		temp[7] = O7.read();
		temp[6] = O6.read();
		temp[5] = O5.read();
		temp[4] = O4.read();
		temp[3] = O3.read();
		temp[2] = O2.read();
		temp[1] = O1.read();
		temp[0] = O0.read();
		V.write(temp);
	}
};
