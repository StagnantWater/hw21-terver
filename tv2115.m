R1 = 9;
G1 = 7;
B1 = 8;

N1 = R1 + G1 + B1;
n = [100, 200, 400];
p = R1/N1;

P = [relDev(1:n(1), n(1), p, R1), relDev(1:n(2), n(2), p, R1), relDev(1:n(3), n(3), p, R1)];
figure
plot(n, P);
clear R1 G1 B1 N1 n p q;

function P = relDev(k, n, p, R1)
    k1=0:1:n;
    m = n*p;
    P = 0;
    Ploc = locML(k, n, p);
    for i = 1:n
        if (k1(1,i) >= m - R1) && (k1(1,i) <= m + R1)
            P = P + Ploc(1,i);
        end
    end
end