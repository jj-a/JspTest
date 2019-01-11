package net.testbean;

public class CalcBean {

	public int abs(int a) {
		return Math.abs(a);

	}

	public long fact(int a) {
		if (a == 0) return 1;
		else if(a<0) return a* fact(a+1);
		else return a * fact(a - 1);
	}
}
