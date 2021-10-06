//Nama   : Joko Danang Joyo
//NIM    : 118300091
//Kelas  : Metode Numerik -RA
//Newton Raphson Method untuk Akar-akar Persamaan

clear;
clc;
mprintf("Newton Raphson Method untuk Akar-akar Persamaan");

//fungsi persamaan
function y=fungsi(x)
    //fungsi y disesuaikan dengan persamaan yang akan diccari akarnya
    y=x^6-x-1;
endfunction
function yt=df(x)
    //yt merupakan turunan pertama fungsi y
    yt=6*(x^5)-1;
endfunction

//macro untuk kriteria iterasi
galat=input("masukkan nilai batas galat: ") //input batas galat yang diinginkan
itermax=input("masukkan batas iterasi maksimal: ") //input batas iterasi yang diinginkan
x0=input('masukkan nilai taksiran awal (x0): ') //input batas atas 

//nilai -nilai awal
f=fungsi(x0);
ft=df(x0);
err=1;
iterasi=1;
x1=0;
hasil=[iterasi x1 fungsi(x1) df(x1) err];

//operasi newton raphson
for i=1:itermax
    x1=x0-(f/ft);
    err=abs((x1-x0)/x1);
    x0=x1;
    iterasi=iterasi+1;
    f=fungsi(x0);
    ft=df(x0);
    hasil=[hasil; iterasi x1 fungsi(x1) df(x1) err];
    if (err<=galat || iterasi==itermax)
        break
    end
end

//print hasil perhitungan
mprintf("\n iterasi\tx1\t     f(x1)\tdf(x1)\t    error\n");
for i=1
    mprintf("\    %d\t    %.6f\t    %.4f\t%.2f\t   %.6f\n",hasil);
end
mprintf("\nhasil akar persamaannya mendekati:\n");
disp(x0);
