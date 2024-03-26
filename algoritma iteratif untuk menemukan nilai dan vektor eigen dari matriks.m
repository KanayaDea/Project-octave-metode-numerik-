%Nama : Kanaya Dea Thalita Akhmad
%NIM : 121450001

function algorithm_9_1()
  % matriks
  A = [2 1 1;
       1 2 1;
       1 1 2];
  n = length(A);
  # vektor
  x = [1; -1; 2];
  # iterasi
  N = 100;
  # batas batas_toleransi
  batas_toleransi = 1e-6;

  k = 1;
  for p=1:n
    if 1 <= p && p <= n && abs(x(p)) == norm(x, inf)
      break
    endif
  endfor
  x = x/x(p);
  fprintf("\titerasi\t\t vektor eigen\t\t\t\t nilai eigen")
  fprintf("\n")

  while k <= N
    y = A*x;
    syifarc = y(p);
    for p=1:n
      if 1 <= p && p <= n && abs(y(p)) == norm(y, inf)
        break
      endif
    endfor
    if y(p) == 0
      disp("vektor eigen: ")
      disp(x)
      disp("A memiliki nilai eigen 0, pilih vektor baru x dan mengulang kembali")
      return
    endif
    error = norm(x-(y/y(p)), inf);
    x = y/y(p);
    fprintf("\t%d\t\t", k)
    fprintf("(%f, %f, %f)\t\t", x(1), x(2), x(3))
    fprintf("%f", syifarc)
    if error < batas_toleransi
      return
    endif
    fprintf("\n")
    k = k+1;
  endwhile
endfunction

function algorithm_9_3()
  % matriks
  A = [2 1 1;
       1 2 1;
       1 1 2];
  n = length(A);
  # matriks I
  for i=1:n
    for j=1:n
      if i==j
        I(i,j) = 1;
      elseif
        I(i,j) = 0;
      endif
    endfor
  endfor
  # vektor
  x = [1; -1; 2];
  # iterasi
  N = 100;
  # batas batas_toleransi
  batas_toleransi = 1e-6;
  s = (x'*A*x)/(x'*x);
  k = 1;
  for p=1:n
    if 1 <= p && p <= n && abs(x(p)) == norm(x, inf)
      break
    endif
  endfor
  x = x/x(p);
  fprintf("\titerasi\t\t vektor eigen\t\t\t\t nilai eigen")
  fprintf("\n")

  while k <= N
    y = (A - s*I) \ x;
    if rcond(A - s*I) < eps
        disp('s is an eigenvalue');
        disp(s);
        return;
    endif
    u = y(p);
    for p=1:n
      if 1 <= p && p <= n && abs(y(p)) == norm(y, inf)
        break
      endif
    endfor
    error = norm(x-(y/y(p)), inf);
    x = y/y(p);
    fprintf("\t%d\t\t", k)
    fprintf("(%f, %f, %f)\t\t", x(1), x(2), x(3))
    syifarc = (1/u)+s;
    fprintf("%f", syifarc)
    if error < batas_toleransi
      return
    endif
    fprintf("\n")
    k = k + 1;
  endwhile
endfunction

fprintf("1. Algoritma 9.1 (power Method) \n2. Algoritma 9.3 (Inverse power Method)\n")
p = input("\nAlgoritma (1 or 2): ");
if p == 1
  algorithm_9_1()
elseif p == 2
  algorithm_9_3()
endif

