#include "FA.h"

void FA::process() {


	sc_logic aANDb,aXORb,cinANDaXORb;

	aANDb = A.read() & B.read();
	aXORb = A.read() ^ B.read();
	cinANDaXORb = CarryIn.read() & aXORb;


	Sum.write(aXORb ^ CarryIn.read());
	CarryOut.write(cinANDaXORb | aANDb);


}
