function vfield(odesys, xidx, yidx, step, num)
    r = 0:step:num;
    xdeltas = zeros(length(r));
    ydeltas = zeros(length(r));

    for xi = 1:length(r)
        x = r(xi);
        for yi = 1:length(r);
            y = r(yi);
            result = odesys(x, y);
            xdeltas(xi, yi) = result(xidx);
            ydeltas(xi, yi) = result(yidx);
        end
    end
    
    quiver(r, r, xdeltas, ydeltas, 0.7);
end

