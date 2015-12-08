function xp = unregulated_mrna(s, a0, dm, at, d)
    xp = [a0 - dm * s(1) ; at * s(1) - d * s(2)];
end