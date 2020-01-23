# Python-compiler
Python "compiler" (grammar checker) written in SWIProlog using Definite Clause Grammar

## Prerequisites
1. SWI-Prolog
2. Python (optional)

## Installing
1. clone/download repo ini
2. double klik 'cfg.pl'
3. pilih SWI-Prolog untuk menjalankan file tersebut
4. isi input1.txt dengan teks python yang ingin dicompile
5. jangan lupa berikan 1 line kosong di akhir file
6. ketik 'start(cfg).' pada terminal SWI-Prolog yang muncul

## Verdict
```
Accepted
```
compile berhasil, tidak ada masalah pada file python tersebut
```
Syntax Error
```
compile gagal, ada kesalahan sintaks

## Troubleshooting
jika loading lama, kemungkinan besar verdict yang akan diberikan adalah syntax error, kecuali:
- nested function -> a(a(a(a()))) (lebih dari 4 maka waktu yang dibutuhkan akan eksponensial)
- karakter lain selain simbol yang ada di keyboard qwerty

## Acknowledgement
This project is not fully tested. Please issue if you found bugs.

We made this project to fulfill TBFO subject.
