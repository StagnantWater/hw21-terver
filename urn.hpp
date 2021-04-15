#ifndef URN
#define URN

class Urn{
	private:
		int r;
		int g;
		int b;
		int all;
	public:
		Urn(int R, int G, int B){ r = R; g = G; b = B; all = r + g + b; };
		int R(){ return r; };
		int G(){ return g; };
		int B(){ return b; };
		int N(){ return all; };
		int combo(int n, int k);
		double P(int count, int exp);
};

double Urn::P(int count, int exp){
	int sum, red, rest;
	double result;
	sum = all;
	red = r;
	rest = all - red;
	result = 1;
	for(int i = count; i > 0; i--){
		result *= red/(double)sum;
		red--;
		sum--;
	}
	for(int i = exp - count; i > 0; i--){
		result *= rest/(double)sum;
		rest--;
		sum--;
	}
	result *= combo(exp, count);
	return result;
}

int Urn::combo(int n, int k){
	if(k == 0 || k == n)
		return 1;
	return combo(n - 1, k - 1) * n / k;
}

#endif
