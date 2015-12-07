function xp = autoinduction_mrna(s, a0RNA, ai, kd, dRNA, n, aPRO, dPRO)
    rnap = a0RNA + ai * bound(s(2), kd, n) - dRNA * s(1);
    prop = aPRO * s(1) - dPRO * s(2);
    xp = [rnap ; prop];
end