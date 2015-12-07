function xp = dual(s, a0, ai, akd, ad, an, b0, bi, bkd, bd, bn)
    ap = a0 + ai * unbound(s(2), bkd, bn) - ad * s(1);
    bp = b0 + bi *   bound(s(1), akd, an) - bd * s(2);
    xp = [ap ; bp];
end