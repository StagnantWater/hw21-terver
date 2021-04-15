R1 = 9;
G1 = 7;
B1 = 8;
x = 0.49;

N1 = R1 + G1 + B1;
n = 1000;
p = R1/N1;
k12 = sqrt(n * p * (1 - p)) * x;
m = M(1:n, n, p);
start = m - k12;
fin = m + k12;