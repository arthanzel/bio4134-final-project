function b = bound(ligand, kd, n)
    b = ligand^n / (kd + ligand^n);
end

