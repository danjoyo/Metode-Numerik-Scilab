//Nama   : Joko Danang Joyo
//NIM    : 118300091
//Kelas  : Metode Numerik -RA
//Bisection Method untuk Akar-akar Persamaan

clear;
clc;

function y=fungsi(x)
    //fungsi y disesuaikan dengan persamaan yang akan diccari akarnya
    y=x^2-3;
endfunction

disp("Bisection Method untuk Akar-akar Persamaan");
galat=input("masukkan nilai batas galat: ") //input batas galat yang diinginkan
itermax=input("masukkan batas iterasi maksimal: ") //input batas iterasi yang diinginkan

a=input('masukkan nilai batas atas (a) pada domain [a,b]: ') //input batas atas 
b=input('masukkan nilai batas bawah (b) pada domain [a,b]: ') //input batas bawah

//variabel yang diperlukan untuk perhitungan
iterasi=1;
x0=(a+b)/2;
err=abs(fungsi(x0));
//Matriks hasil perhitungan
hasil=[iterasi a b x0 fungsi(x0) err];

//Operasi Perhitungan
while (iterasi<=itermax && err>=galat) //Kondisi batas untuk memulai dan menyelesaikan iterasi
    if fungsi(a)*fungsi(x0)<0 //Cek kondisi f(a)*f(x)<0 maka b=x0, jika f(a)*f(x)>0 maka a=x0
    b=x0;
    xlama=x0;
    else 
    a=x0;
    xlama=x0;
    end
    x0=(a+b)/2; //Cek kembali nilai tengah (x0) yang baru
    err=abs((x0-xlama)/x0);//Cek nilai error yang baru
    iterasi=iterasi+1;//update nilai atau tahap iterasi yang baru
    hasil=[hasil;iterasi a b x0 fungsi(x0) err];//update baris matriks hasil yang baru
end

//print hasil perhitungan
mprintf("\n iterasi   a\t  b\t x0\tf(x0)\t\ error \n");
for i=1//loop untuk menampilkan matriks hasil
    mprintf("\  %d\t  %.2f\t %.2f\t%.2f\t%.2f\t%.4f \n", hasil)
end
mprintf("\nhasil akar persamaannya mendekati:\n");
disp(x0)




