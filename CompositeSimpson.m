% COMPOSITE SIMPSON'S
% Algoritma :
% INPUT : endpoints a, b; even positive integer n.
% OUTPUT : approximation XI to I.
% Step 1 : Set h = (b − a)/n.
% Step 2 : Set XI0 = f (a) + f (b);
           % XI1 = 0; (Summation of f (x2i−1).)
           % XI2 = 0. (Summation of f (x2i).)
% Step : 3 For i = 1, ... , n − 1 do Steps 4 and 5.
      % Step 4 : Set X = a + ih.
      % Step 5 : If i is even then set XI2 = XI2 + f (X)
           % else set XI1 = XI1 + f (X).
% Step 6 : Set XI = h(XI0 + 2 · XI2 + 4 · XI1)/3.
% Step 7 : OUTPUT (XI);
  % STOP.

f = @(x) x*log(x); % definisi fungsi f(x)
a = 1; % batas bawah integral
b = 2; % batas atas integral
n = 4; % jumlah subinterval


function XI = composite_simpson_rule(f, a, b, n)
% Step 1
h = (b - a)/n;

% Step 2
XI0 = f(a) + f(b);
XI1 = 0;
XI2 = 0;

% Step 3
for i = 1:n-1
  % Step 4
  X = a + i*h;

  % Step 5
  if mod(i, 2) == 0
    XI2 = XI2 + f(X);
  else
    XI1 = XI1 + f(X);
  end
end

% Step 6
XI = h*(XI0 + 2*XI2 + 4*XI1)/3;

end

result = composite_simpson_rule(f, a, b, n);
str = sprintf("Hasil Integral : %.8f", result);
disp(str);
