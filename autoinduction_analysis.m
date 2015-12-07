tFinal = 25;
x0 = 0;

%% Base case - varying x0
f1 = figure(1);
hold on;
fn = @(t, x) autoinduction(t, x, 0.1, 0.9, 1, 0.2, 1);
vals = [0 2 4 6];
for x0_ = vals
    [t, y] = ode45(fn, [0, tFinal], x0_);
    plot(t, y);
end
cttitle('Protein concentration over time given varying initial concentrations');
legend(num2str(vals'));
saveas(f1, 'figures/autoinduction-base.png');

%% Varying a0
f2 = figure(2);
hold on;
vals = 10 .^ fliplr(-4:0);
for a0 = vals
    fn = @(t, x) autoinduction(t, x, a0, 0.9, 1, 0.2, 1);
    [t, y] = ode45(fn, [0, tFinal], x0);
    plot(t, y);
end
cttitle('Protein concentration over time for varying values of \alpha_0');
legend(num2str(vals'));
saveas(f2, 'figures/autoinduction-a0.png');

%% Varying ai
f3 = figure(3);
hold on;
vals = 0:0.5:2;
for ai = vals
    fn = @(t, x) autoinduction(t, x, 0.1, ai, 1, 0.2, 1);
    [t, y] = ode45(fn, [0, tFinal], x0);
    plot(t, y);
end
cttitle('Protein concentration over time for varying values of \alpha');
legend(num2str(vals'));
saveas(f3, 'figures/autoinduction-ai.png');

%% Varying kd
f4 = figure(4);
hold on;
vals = 10 .^ (-2:2);
for kd = vals
    fn = @(t, x) autoinduction(t, x, 0.1, 0.9, kd, 0.2, 1);
    [t, y] = ode45(fn, [0, tFinal], x0);
    plot(t, y);
end
cttitle('Protein concentration over time for varying values of K_D');
legend(num2str(vals'));
saveas(f4, 'figures/autoinduction-kd.png');

%% Varying d
f5 = figure(5);
hold on;
vals = 0.1:0.2:1;
for d = vals
    fn = @(t, x) autoinduction(t, x, 0.1, 0.9, 1, d, 1);
    [t, y] = ode45(fn, [0, tFinal], x0);
    plot(t, y);
end
cttitle('Protein concentration over time for varying values of \delta');
legend(num2str(vals'));
saveas(f5, 'figures/autoinduction-d.png');

%% Varying n
f6 = figure(6);
hold on;
vals = 1:4;
for n = vals
    fn = @(t, x) autoinduction(t, x, 0.1, 0.9, 1, 0.2, n);
    [t, y] = ode45(fn, [0, tFinal], x0);
    plot(t, y);
end
cttitle('Protein concentration over time for varying values of n');
legend(num2str(vals'));
saveas(f6, 'figures/autoinduction-n.png');

%% Varying n (negative cooperativity
f7 = figure(7);
hold on;
vals = [1 1/2 1/4 1/8];
for n = vals
    fn = @(t, x) autoinduction(t, x, 0.1, 0.9, 1, 0.2, n);
    [t, y] = ode45(fn, [0, tFinal], x0);
    plot(t, y);
end
cttitle('Protein concentration over time for varying values of n (negative cooperativity)');
legend(num2str(vals'));
saveas(f7, 'figures/autoinduction-nneg.png');

%%
close all