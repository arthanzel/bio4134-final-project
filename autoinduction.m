function xp = autoinduction(t, x, a0, ai, kd, d, n)
    hill = (x / (kd + x))^n;
    xp = a0 + ai * hill - d * x;
end