#include "systemc.h"
#include "FA.h"
#include "Vector.h"

SC_MODULE (FA8bits)
{
	sc_in<sc_lv<8> > A;
	sc_in<sc_lv<8> > B;
	sc_out<sc_lv<9> > Total_Sum;
	sc_signal<sc_logic> A0,A1,A2,A3,A4,A5,A6,A7;
	sc_signal<sc_logic> B0,B1,B2,B3,B4,B5,B6,B7;
	sc_signal<sc_logic> Cin,C0,C1,C2,C3,C4,C5,C6,Cout;
	sc_signal<sc_logic> S0,S1,S2,S3,S4,S5,S6,S7;

	void AdditionProcess(){


		vectorIn VectorIn1("VectorIn");
		VectorIn1.A(A);
		VectorIn1.B(B);
		VectorIn1.A7(A7);
		VectorIn1.A6(A6);
		VectorIn1.A5(A5);
		VectorIn1.A4(A4);
		VectorIn1.A3(A3);
		VectorIn1.A2(A2);
		VectorIn1.A1(A1);
		VectorIn1.A0(A0);
		VectorIn1.B7(B7);
		VectorIn1.B6(B6);
		VectorIn1.B5(B5);
		VectorIn1.B4(B4);
		VectorIn1.B3(B3);
		VectorIn1.B2(B2);
		VectorIn1.B1(B1);
		VectorIn1.B0(B0);

		FA adder0("FA0");
		adder0.A(A0);
		adder0.B(B0);
		adder0.CarryIn(Cin = SC_LOGIC_0);
		adder0.Sum(S0);
		adder0.CarryOut(C0);

		FA adder1("FA1");
		adder1.A(A1);
		adder1.B(B1);
		adder1.CarryIn(C0);
		adder1.Sum(S1);
		adder1.CarryOut(C1);

		FA adder2("FA2");
		adder2.A(A2);
		adder2.B(B2);
		adder2.CarryIn(C1);
		adder2.Sum(S2);
		adder2.CarryOut(C2);

		FA adder3("FA3");
		adder3.A(A3);
		adder3.B(B3);
		adder3.CarryIn(C2);
		adder3.Sum(S3);
		adder3.CarryOut(C3);

		FA adder4("FA4");
		adder4.A(A4);
		adder4.B(B4);
		adder4.CarryIn(C3);
		adder4.Sum(S4);
		adder4.CarryOut(C4);

		FA adder5("FA5");
		adder5.A(A5);
		adder5.B(B5);
		adder5.CarryIn(C4);
		adder5.Sum(S5);
		adder5.CarryOut(C5);

		FA adder6("FA6");
		adder6.A(A6);
		adder6.B(B6);
		adder6.CarryIn(C5);
		adder6.Sum(S6);
		adder6.CarryOut(C6);

		FA adder7("FA7");
		adder7.A(A7);
		adder7.B(B7);
		adder7.CarryIn(C6);
		adder7.Sum(S7);
		adder7.CarryOut(Cout);

		vectorOut VectorOutS("Sum");
		VectorOutS.CarryOut(Cout);
		VectorOutS.O7(S7);
		VectorOutS.O6(S6);
		VectorOutS.O5(S5);
		VectorOutS.O4(S4);
		VectorOutS.O3(S3);
		VectorOutS.O2(S2);
		VectorOutS.O1(S1);
		VectorOutS.O0(S0);
		VectorOutS.V(Total_Sum);


	}

	SC_CTOR (FA8bits)
	{
		SC_METHOD (AdditionProcess);
		sensitive << A << B;
	}
};
