function xp = dual_mrna(s, a0, ai, akd, ad, an, at, adp, b0, bi, bkd, bd, bn, bt, bdp)
    amp = a0 + ai * unbound(s(4), bkd, bn) - ad * s(1);
    app = at * s(1) - adp * s(2);
    bmp = b0 + bi * bound(s(2), akd, an) - bd * s(3);
    bpp = bt * s(3) - bdp * s(4);
    xp = [amp ; app ; bmp ; bpp];
end