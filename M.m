function m = M(k, n, p)
    mi = k.*locML(k, n, p);
    m = sum(mi, 'all');
end

