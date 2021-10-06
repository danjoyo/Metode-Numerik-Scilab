//Nama   : Joko Danang Joyo
//NIM    : 118300091
//Kelas  : Metode Numerik -RA

//Metode Jacobi untuk Sistem Persamaan Linier

clear;
clc;
mprintf("Metode Jacobi untuk Sistem Persamaan Linier");
// Persamaan-persamaan 
// 3x+y-z = 5
// 4x+7y-3z= 20
// 2x-2y+5z= 10

// Bentuk matrix persamaan 
// Ax=B
// dimana X adalah
v = ['x' 'y' 'z';];
// sehingga matriks A adalah
A =[3 1 -1;
    4 7 -3;
    2 -2 5;];
// matriks B adalah hasil dari persamaan yaitu
B =[5; 20; 10;];

//nilai-nilai awal
galat=input("masukkan nilai batas error : ")
x=zeros(1,size(A,1)); //nilai awal matrix x
n=size(A,1);
err=1;
iterasi=1;
hasil=[iterasi x err];

//operasi Jacobian
while (err>=galat)
    x0=x;
    for i=1:n
        sigma=0;
        for j=1:n
            if j~=i
                sigma=sigma+A(i,j)*x0(j); //pivot sigma untuk kondisi j tidak sama dengan i
            end
        end
        x(i)=(1/A(i,i))*(B(i)-sigma);
    end
    iterasi=iterasi+1;
    err=abs((x-x0)/x);
    hasil=[hasil;iterasi x err]
end

//print hasil perhitungan
disp (hasil);
mprintf("Variabel-variabel persamaan")
disp(v);
mprintf("solusi variabel");
disp(x);
