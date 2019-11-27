path_atom = "./scripts/preprocess_cfg/atom/"
path_compound = "./scripts/preprocess_cfg/compound/"
path_statement = "./scripts/preprocess_cfg/statement/"

with open(path_statement + "variable.pl",'r') as f :
	full_rules = f.readlines()

print("Reading files....")

# Preprocessing Data
for i in range(len(full_rules)):
	full_rules[i] = full_rules[i].replace("\n","")
	full_rules[i] = full_rules[i].replace("\t","")
	full_rules[i] = full_rules[i].replace(".","")
	full_rules[i] = full_rules[i].replace('"',"'")


print(len(full_rules))
print(full_rules)
# Processing the data
processed_rules = []
for i in range(0,len(full_rules),2):
	processed_rules.append(full_rules[i].strip() + full_rules[i+1].strip())

# Pengubahan rules ke dalam bentuk dictionary
dict_rules = {}
for i in range(len(processed_rules)) :
	elem_split = processed_rules[i].split("-->")
	dict_rules[elem_split[0].strip()] = (elem_split[1].strip()) 

# Create new string 
string_rules = {}
for key,value in dict_rules.items():
	new_value = dict_rules[key].replace(";"," |")
	string_rules[key] = new_value

# Outputing the result
with open("processed.txt",'w') as f:
	for key, value in string_rules.items():
		print(f"{key} -> {value};",file = f)
	print("\n",file = f)
	for key in string_rules:
		print(f"{key} ",end="",file = f)


print("Finished ...")