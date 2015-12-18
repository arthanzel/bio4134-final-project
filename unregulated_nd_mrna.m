function xp = unregulated_nd_mrna(s, d)
    xp = [1 - s(1) ; s(1) - d * s(2)];
end