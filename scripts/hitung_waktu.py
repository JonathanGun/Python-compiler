n = int(input("Masukkan jumlah karakter di file: "))
ans = 0
j = 1
jumlah_rule = 4100
jumlah_ascii = 256
# algo cyk i baris * j kolom
for i in range(n, -1, -1):
    ans += i * j
    j += 1
# dalam juta
ans /= 1000000
print("jumlah iterasi:", ans, "juta")
# tiap petak cyk mencari ke semua rule
ans *= jumlah_rule
# tiap rule mencari ke semua terminal
ans *= jumlah_ascii
print("jumlah perbandingan:", ans, "juta")
print("butuh waktu: +-", ans, "detik (10juta proses/detik)")
