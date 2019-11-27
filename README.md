# Python-compiler
A python "compiler" (grammar checker) by ITB Informatics Student

## Prerequisites
1. SWI-Prolog
2. Python

## Installing
1. clone/download repo ini
2. double klik 'cfg_semoga_fix_.pl'
3. pilih SWI-Prolog untuk menjalankan file tersebut
4. isi input1.txt dengan teks python yang ingin dicompile
5. ketik 'start(cfg).'

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
jika loading lama, coba jalankan yang cfg.pl

jika masih lama, kemungkinan besar verdict yang akan diberikan adalah syntax error, kecuali:
- nested function -> a(a(a(a()))) (lebih dari 4 maka waktu yang dibutuhkan akan eksponensial)
- karakter lain selain simbol yang ada di keyboard qwerty
