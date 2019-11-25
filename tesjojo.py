n = int(input("Masukkan jumlah karakter di file: "))
ans = 0
j = 1
for i in range(n, -1, -1):
	ans += i*j
	j+= 1
print("jumlah iterasi:", ans/1000000, "juta")
print("jumlah perbandingan:", ans*256/1000000, "juta")
print("butuh waktu:", ans*256/100000000, "-", ans*256/10000000, "detik")