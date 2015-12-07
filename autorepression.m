function xp = autorepression(x, a0, ai, kd, d, n)
    xp = a0 + ai * unbound(x, kd, n) - d * x;
end