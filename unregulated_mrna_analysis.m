tFinal = 15;
initials = [0 ; 0];
fn = @(t, y) unregulated_mrna(y, 1, 0.7, 1, 0.2);
[t, y] = ode45(fn, [0, tFinal], initials);

f1 = figure(1);
plot(t, y);
cttitle('mRNA and protein concentration for an unregulated gene');
l = legend('mRNA', 'Protein');
l.Location = 'northwest';
saveas(f1, 'unregulated-sol.png');

f2 = figure(2);
plot(y(:, 1), y(:, 2));
