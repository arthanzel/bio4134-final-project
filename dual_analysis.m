tFinal = 60;
initials = [0 ; 0];
fn = @(t, y) dual(y, 0.1, 0.9, 1, 0.2, 3, 0.1, 0.9, 1, 0.2, 1);
[t, y] = ode45(fn, [0, tFinal], initials);
subplot(1, 2, 1);
plot(t, y);
subplot(1, 2, 2);
plot(y(:, 1), y(:, 2));