% COMPOSITE TRAPEZOID

% Algoritma :
% INPUT : endpoints a, b; even positive integer n.
% OUTPUT : approximation I.
% Step 1 : Set h = (b-a)/n
% Step 2 : Set x = a:h:b
% Step 3 : Set I = (h/2) * (f(a) + 2*sum(f(x(2:end-1))) + f(b)).
% Step 4 : OUTPUT (I);
  % STOP.

f = @(x) x.*log(x); % definisi fungsi f(x)
a = 1; % batas bawah integral
b = 2; % batas bawah integral
n = 4; % jumlah subinterval


function [I] = composite_trapezoid(f, a, b, n)
  h = (b-a)/n;
  x = a:h:b;
  I = (h/2)*(f(a) + 2*sum(f(x(2:end-1))) + f(b));
endfunction

result = composite_trapezoid(f, a, b, n);
str = sprintf("Hasil Integral : %.9f", result);
disp(str);
