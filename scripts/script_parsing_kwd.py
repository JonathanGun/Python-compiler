with open("words.txt", "r") as f:
	words = f.readlines()
hasil = []
for word in words:
	for i in range(len(word)):
		cur = "char_"+word[i:-1]+" -> char_"+word[i]
		if i != len(word)-2:
			cur += " char_"+word[i+1:-1]
		else:
			break
		hasil.append(cur)
with open("hasil.txt", "w") as f:
	for i in range(26):
		c = chr(ord("a") + i)
		print("char_"+ c + " -> '" + c + "'", file = f)
		c = chr(ord("A") + i)
		print("char_" + c + " -> '" + c + "'", file = f)
	for h in hasil:
		print(h, file = f)