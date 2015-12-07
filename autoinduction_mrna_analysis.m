tFinal = 25;
initials = [0 ; 0];
fn = @(t, y) autoinduction_mrna(y, 0.1, 0.9, 1, 0.2, 1, 1, 0.4);
[t, y] = ode45(fn, [0, tFinal], initials);
subplot(1, 2, 1);
plot(t, y);
subplot(1, 2, 2);
plot(y(:, 1), y(:, 2));