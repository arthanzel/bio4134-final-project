tFinal = 60;
initials = [0 0 0 0]';
fn = @(t, y) dual_mrna(y, 0.1, 0.9, 1, 0.7, 1, 1, 0.2, 0.1, 0.9, 1, 0.7, 1, 1, 0.2);
[t, y] = ode15s(fn, [0, tFinal], initials);
%subplot(1, 2, 1);
figure;
title('Solutions');
legend('A mRNA', 'A', 'B mRNA', 'B');
plot(t, y);
%subplot(1, 2, 2);
figure;
title('Phase plane');
plot(y(:, 2), y(:, 4));