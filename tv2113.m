R1 = 9;
G1 = 7;
B1 = 8;
N3 = R1 + G1 + B1;
p = R1 / N3;
n = [25, 50, 100, 200, 400, 1000];
for i = 1:6
    xn = zeros(1, 201);
    yn = zeros(1, 201);
    for j = 1:201
        if j ~= 1
            xn(j) = xn(j - 1) + n(i)/200;
        end
        yn(j) = locML(xn(j), n(i), p);
    end
    figure
    plot(xn, yn);
    grid on;
    title(['n = ', num2str(n(i))]);
    xlabel("k");
    ylabel("P(k)");
end
clear;