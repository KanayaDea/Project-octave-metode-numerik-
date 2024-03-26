f = @(t, y) 1 + (t - y)^2;
a = 2;
b = 3;
n = 2;
alpha = 1;

function [t, w] = midpoint(f, a, b, n, alpha)
    h = (b-a)/n;
    t = a:h:b;
    w = zeros(1, n+1);
    w(1) = alpha;
    for i=1:n
        k1 = f(t(i), w(i));
        k2 = f(t(i)+h/2, w(i)+h/2*k1);
        w(i+1) = w(i) + h*k2;
    end
end

f = @(t, y) 1 + (t - y)^2;
a = 2;
b = 3;
n = 2;
alpha = 1;

[t, w] = midpoint(f, a, b, n, alpha);
actual = t + 1./(1-t);

% Menampilkan solusi perkiraan
disp('Solusi perkiraan menggunakan metode Mindpoint:');
disp("    t        Midpoint         y(t)")
disp("--------------------------------------")
for i=1:n+1
    fprintf("%.7f    %.7f      %.7f\n", t(i), w(i), actual(i));
end
