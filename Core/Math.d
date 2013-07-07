module Dgame.Core.Math;

private import std.math : fabs;

@safe
bool fpEqual(T : float)(T a, T b) pure nothrow {
	return fabs(a - b) < T.epsilon;
} unittest {
	float f = 5f;
	
	assert(f == 5f);
	assert(fpEqual(f, 5f));
	
	float fValue1 = 1.345f;
	float fValue2 = 1.123f;
	float fTotal = fValue1 + fValue2; // should be 2.468f
	
	assert(fTotal != 2.468f);
	assert(fpEqual(fTotal, 2.468f));
}