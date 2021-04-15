#include <stdio.h>
#include "urn.hpp"

int main(void){
	FILE *p, *f;
	p = fopen("text", "w");
	f = fopen("t", "w");
	int R2, G2, B2, n;
	double M = 0, P, F = 0, D = 0;
	printf("R2 = ");
	scanf("%d", &R2);
	printf("G2 = ");
	scanf("%d", &G2);
	printf("B2 = ");
	scanf("%d", &B2);
	n = G2 + B2;
	Urn U2 = Urn(R2, G2, B2);
	for(int k = 0; k <= R2; k++){
		P = U2.P(k, n);
		F += P;
		//printf("P(%d) = %g\n", k, P);
		fprintf(f, "%d %lf ", k, F);
		fprintf(p, "%d %lf\n", k, P);
		M += k * P;
		D += k * k * P;
	}
	D -= M * M;
	printf("M(k) = %g\nD(k) = %g\n", M, D);
	return 0;
}
