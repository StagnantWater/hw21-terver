function P = locML(k, n, p)
    q = 1 - p;
    t = sqrt(n*p*q);
    x = (k - n * p) / t;
    fi = exp(-x.^2 / 2)/sqrt(2*pi);
    P = fi / t;
end