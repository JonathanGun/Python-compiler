import os 
import sys 

"""
Setting up path files
"""
path = "./output.txt"
path_out = "./result.txt"

dict_rules = {}

# Opening the file 
with open(path, 'r') as f:
	full_rules = f.readlines()

# Preprocessing terhadap rules yang ada
"""
Hal yang dilakukan :
	1. menghilangkan newline
	2. membagi rules menjadi 2 bagian, pemroduksi dan hasil produksi
	3. membagi setiap bagian hasil produksi berdasarkan pemisah '|'
	4. mencatat setiap elemen dalam dict_rules
"""
for i in range(len(full_rules)):
	full_rules[i] = full_rules[i].replace("\n","")
	full_rules[i] = full_rules[i].split("->")
	full_rules[i][1] = full_rules[i][1].split(" | ")
	dict_rules[full_rules[i][0]] = full_rules[i][1]


"""
Contoh proses :
=====
Awal :
S -> A | B
=====
Akhir :
S -> A
S -> B
"""
# Membaca file awal, dan melakukan parsing 1 per 1 file
with open(path_out,'w') as f:
	for item in dict_rules["S "]:
		print(f'S -> {item.strip()}', file = f)
	for key, value in dict_rules.items():
		if key != "S " and key != "S0 ":
			for item in value:
				print(f"{key.strip()} -> {item.strip()}",file = f)
