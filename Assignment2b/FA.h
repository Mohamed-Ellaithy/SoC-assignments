#include "systemc.h"

SC_MODULE (FA)
{
	sc_in <sc_logic> A,B,CarryIn;
	sc_out<sc_logic> Sum,CarryOut;

	void process();

	SC_CTOR (FA):
		A("InA"),
		B("InB"),
		CarryIn("InCin"),
		Sum("OutSum"),
		CarryOut("WHAT_THE_HELL_!!!")
	{
	SC_METHOD(process);
	sensitive << A << B << CarryIn;
	}



};
