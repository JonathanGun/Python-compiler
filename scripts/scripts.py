with open("words.txt", "r") as f:
	words = f.readlines()
hasil = []
for i in range(len(words)):
	words[i] = words[i].replace("\n","")	
with open("list.txt", "w") as f:
	print('[',file = f)
	for h in words:
		print(f"'{h}',", file = f)
	print(']',file = f)