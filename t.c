#include <stdio.h>

double combo(int n, int k){
	int t;
	double c = 1;
	for(t = 1; t <= k; t++)
		c *= (n - t + 1)/(double)t;
	return c;
}

int main(void){
	int R3, G3, B3, N3, k;
	double M = 0, P, D, C;
	FILE *out;
	out = fopen("task3.txt", "w");
	printf("R3 = ");
	scanf("%d", &R3);
	printf("G3 = ");
	scanf("%d", &G3);
	printf("B3 = ");
	scanf("%d", &B3);
	N3 = R3 + G3 + B3;
	C = combo(N3, R3);
	printf("The solution will be printed to task3.txt\n");
	for(k = R3; k <= N3; k++){
		P = combo(k - 1, R3 - 1)/C;
		M += k * P;
		D += k * k * P;
		fprintf(out, "P(%d) = %lf\n", k, P);
	}
	D -= M * M;
	fprintf(out, "M(k) = %g\nD(k) = %g\n", M, D);
	return 0;
}
