function xp = autoinduction(~, x, a0, ai, kd, d, n)
    xp = a0 + ai * bound(x, kd, n) - d * x;
end