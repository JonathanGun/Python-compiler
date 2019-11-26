with open("words.txt", "r") as f:
	words = f.readlines()
hasil = []
for word in words:
	word = word.strip("\n")
	word = list(word)
	for i in range(len(word)):
		if not word[i].isalnum():
			word[i] = str(ord(word[i]))
	for i in range(len(word)):
		cur = "char_"+"".join(word[i:])+" --> char_"+"".join(word[i])
		if i != len(word)-1:
			cur += ",char_"+"".join(word[i+1:])
		else:	
			break
		hasil.append(cur)
sudah = set()
with open("hasil.txt", "w") as f:
	for h in hasil:
		if h not in sudah:
			print(h+".", file = f)
			sudah.add(h)
	for i in range(32, 127):
		if ord("a") <= i <= ord("z") or ord("A") <= i <= ord("Z") or ord("0") <= i <= ord("9"):
			print("char_"+ chr(i) + " --> \"" + chr(i) + "\""+".", file = f)
		else:
			print("char_"+ str(i) + " --> \"" + chr(i) + "\""+".", file = f)