tFinal = 15;
initials = [0 ; 0];
fn = @(t, y) unregulated_mrna(y, 1, 0.7, 1, 0.2);
[t, y] = ode45(fn, [0, tFinal], initials);

f1 = figure(1);
plot(t, y);
cttitle('mRNA and protein concentration for an unregulated gene');
l = legend('mRNA', 'Protein');
l.Location = 'northwest';
saveas(f1, 'figures/unregulated-sol.png');

f2 = figure(2);
r = [0.5, 1, 1.5, 2];
hold on;
for d = r
    fn = @(t, y) unregulated_nd_mrna(y, d);
    [t, y] = ode45(fn, [0, tFinal], initials)
    plot(y(:, 1), y(:, 2));
end
title('Phase plane of mRNA and protein concentration for various \gamma parameters');
xlabel('mRNA concentration (AU)');
ylabel('Protein concentration (AU)');
l = legend(num2str(r')); l.Location = 'northwest';
hold off;
saveas(f2, 'figures/unregulated-pp.png');

