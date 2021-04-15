R1 = 9;
G1 = 7;
B1 = 8;
N1 = R1 + G1 + B1;
p = R1 / N1;
q = 1 - p;
for n = 6:3:12
    m = min(R1, n);
    Pk = zeros(1, m);
    F = 0;
    Fk = zeros(1, m + 1);
    for k = 0:m
        P = nchoosek(n, k) * p^k * q^(n - k);
        F = F + P;
        Fk(k + 1) = F;
        Pk(k + 1) = P;
    end
    %P(k)
    figure
    plot(0:k, Pk, '--', 'Color', '#4DBEEE');
    hold on;
    plot(0:k, Pk, '*', 'Color', '#A2142F');
    grid on;
    title(['n = ', num2str(n)]);
    xlabel("k");
    ylabel("P(k)");
    %F(k) n = 6
    if n == 6
    F = F + P;
    Fk(k + 2) = F;
    figure
    stairs(0:(k + 1), Fk);
    grid on;
    title(['n = ', num2str(n)]);
    xlabel("k");
    ylabel("F(k)");
    end
end
clear;