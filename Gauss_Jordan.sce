//Nama   : Joko Danang Joyo
//NIM    : 118300091
//Kelas  : Metode Numerik -RA
//Tugas minggu ke-4
//Metode Elinasi Gauss Jordan untuk Sistem Persamaan Linier
clear
clc

//////////  SOAL 1   ////////////////////
// Persamaan-persamaan 
// 2x1+3x2+4x3-5x4+7x5 = -35
// 8x1-2x2-3x3+9x4+3x5 = 53
// 4x2+6x3-3x4-2x5 = -33
// 5x1-7x2+8x3+3x4-9x5 = -19
// 3x1+5x2-2x3+4x4+6x5 = 27

// Bentuk matrix persamaan struktur truss
// Ax=B
// dimana X adalah
X = ['x1'; 'x2'; 'x3'; 'x4'; 'x5';];

// sehingga matriks A adalah
A =[2 3 4 -5 7;
    8 -2 -3 9 3;
    0 4 6 -3 -2;
    5 -7 8 3 -9;
    3 5  -2 4 6;];

// matriks B adalah hasil dari persamaan yaitu
B =[-35; 53; -33; -19; 27;];

// operasi matriks metode Gauss Jordan
Ag = [A B]; // mendefinisikan augment matriks yaitu [A | B]
disp('Bentuk Mantriks SPL');
disp(Ag);
//operasi pengulangan eliminasi masing-masing baris
for i=1:size(Ag,1) // size(Ag,1) untuk mengukur dimensi matriks (1 = baris matriks)
    Ag(i,:) = Ag(i,:)./Ag(i,i);
    for j=1:size(Ag,1)
        if j~=i 
            pivot = Ag(j,i)/Ag(i,i); //cell kunci untuk kondisi j tidak sama dengan i
            Ag(j,:)=Ag(j,:)-pivot*Ag(i,:);
        end
    end
end

//print hasil perhitungan
format(6)
disp('Gauss Jordan Method')
disp('Hasil matriks identitas:')
disp(Ag());
disp('Variabel x:')
disp(X);
disp('Solusi variabel x adalah:')
disp(Ag(:,6));
