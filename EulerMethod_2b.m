% Inisialisasi variabel
t0 = 1;        % Nilai awal t
y0 = 2;        % Nilai awal y
h = 0.5;       % Ukuran langkah

% Menghitung jumlah langkah
n = (2 - 1) / h;

% Fungsi untuk menghitung turunan y terhadap t
f = @(t, y) (1 + t) / (1 + y);

% Inisialisasi array
t = zeros(n+1, 1);
y = zeros(n+1, 1);

% Menetapkan nilai awal
t(1) = t0;
y(1) = y0;

% Iterasi menggunakan Metode Euler
for i = 1:n
    t(i+1) = t(i) + h;
    y(i+1) = y(i) + h * f(t(i), y(i));
end

% Menampilkan solusi perkiraan
disp('Solusi perkiraan menggunakan metode Euler:');
disp('   t        y');
disp([t y]);
