with open("words.txt", "r") as f:
	words = f.readlines()
hasil = []
for word in words:
	for i in range(len(word)):
		cur = "char_"+word[i:-1]+" -> '"+word[i]+"'"
		if i != len(word)-2:
			cur += " char_"+word[i+1:-1]
		else:
			hasil.append(cur)
			break
		hasil.append(cur)
with open("hasil.txt", "w") as f:
	for h in hasil:
		print(h, file = f)