R2 = 6;
G2 = 11;
B2 = 6;
n = G2 + B2;
Pk = zeros(1, R2 + 1);
F = 0;
Fk = zeros(1, R2 + 2);
M = 0;
D = 0;
for k = 0:R2
    P = 1;
    R = R2;
    rest = n;
    N2 = R2 + n;
    for i = k:-1:1
        P = P * R / N2;
        R = R - 1;
        N2 = N2 - 1;
    end
    for i = (n - k):-1:1
        P = P * rest / N2;
        rest = rest - 1;
        N2 = N2 - 1;
    end
    P = P * nchoosek(n, k);
    F = F + P;
    Fk(k + 1) = F;
    Pk(k + 1) = P;
    M = M + k * P;
    D = D + k * k * P;
end
F = F + P;
Fk(k + 2) = F;
D = D - M * M;
%P(k)
plot(0:k, Pk, '--', 'Color', '#4DBEEE');
hold on;
plot(0:k, Pk, '*', 'Color', '#A2142F');
grid on;
xlabel("k");
ylabel("P(k)");
%F(k)
figure
stairs(0:(k + 1), Fk);
grid on;
xlabel("k");
ylabel("F(k)");
clear R2 G2 B2 n k P F rest R i N2;