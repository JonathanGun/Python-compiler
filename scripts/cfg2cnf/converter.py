import os 
import sys 
path = "./output5.txt"
path_out = "./result5.txt"

dict_rules = {}

# Opening the file 
with open(path, 'r') as f:
	full_rules = f.readlines()

# Preprocessing
for i in range(len(full_rules)):
	full_rules[i] = full_rules[i].replace("\n","")
	full_rules[i] = full_rules[i].split("->")
	full_rules[i][1] = full_rules[i][1].split(" | ")
	dict_rules[full_rules[i][0]] = full_rules[i][1]

with open(path_out,'w') as f:
	for item in dict_rules["S "]:
		print(f'S -> {item.strip()}', file = f)
	for key, value in dict_rules.items():
		if key != "S " and key != "S0 ":
			for item in value:
				print(f"{key.strip()} -> {item.strip()}",file = f)