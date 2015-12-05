tFinal = 25;
x0 = 0;

%% Base case - varying x0
figure(1);
hold on;
fn = @(t, x) autoinduction(t, x, 0.1, 0.9, 1, 0.2, 1);
for x0_ = [0 2 4 6]
    [t, y] = ode45(fn, [0, tFinal], x0_);
    plot(t, y);
end
% saveas(fig, 'figures/test.png');

%% Varying a0
figure(2);
hold on;
for a0 = [0, 0.001 0.005 0.2 0.4 0.6]
    fn = @(t, x) autoinduction(t, x, a0, 0.9, 1, 0.2, 1);
    [t, y] = ode45(fn, [0, tFinal], x0);
    plot(t, y);
end

%% Varying ai