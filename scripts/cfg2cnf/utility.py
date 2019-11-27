import re
import itertools

kiri, kanan = 0, 1

def union(lst1, lst2):
    final_list = list(set().union(lst1, lst2))
    return final_list

"""
	Default setting untuk melakukan pengunduhan pemodelan grammar CFG
"""
def loadModel(modelPath):
	file = open(modelPath).read()
	K = (file.split("Variables:\n")[0].replace("Terminals:\n","").replace("\n",""))
	V = (file.split("Variables:\n")[1].split("Productions:\n")[0].replace("Variables:\n","").replace("\n",""))
	P = (file.split("Productions:\n")[1])

	return cleanAlphabet(K), cleanAlphabet(V), cleanProduction(P)

# mengbah bentuk produksi menjadi bentuk yang lebih bersih
def cleanProduction(expression):
	result = []
	# Setiap rule dipisahkan oleh sebuah newline
	rawRulse = expression.split('\n')
	# Traversal skema 1 :
	for rule in rawRulse:
		# Selama belum mencapai akhir rule
		if (rule != ""):
			leftSide = rule.split(' -> ')[0].replace(' ','')
			rightTerms = rule.split(' -> ')[1].split(' | ')
			for term in rightTerms:
				result.append( (leftSide, term.split(' ')) )
		else : # jika sudah di akhir rule dict
			break
	return result

"""
	Fungsi pembersih alpabet
"""
def cleanAlphabet(expression):
	return expression.replace('  ',' ').split(' ')

"""
	Menghilangkan suatu objek dari rule productions;
	dalam hal ini, untuk menghilangkan epsilon
"""
def destroy(target, productions):
	trash, ereased = [],[]
	for production in productions:
		if target in production[kanan] and len(production[kanan]) == 1:
			trash.append(production[kiri])
		else:
			ereased.append(production)
			
	return trash, ereased
 
def setupDict(productions, variables, terms):
	"""
		Create a new set - up for dictionary
	"""
	result = {}
	for production in productions:
		if production[kiri] in variables and production[kanan][0] in terms and len(production[kanan]) == 1:
			result[production[kanan][0]] = production[kiri]
	return result


def rewrite(target, production):
	result = []
	positions = [i for i,x in enumerate(production[kanan]) if x == target]
	for i in range(len(positions)+1):
 		for element in list(itertools.combinations(positions, i)):
 			tadan = [production[kanan][i] for i in range(len(production[kanan])) if i not in element]
 			if tadan != []:
 				result.append((production[kiri], tadan))
	return result

def tulisCantik(rules):
	"""
		Fungsi untuk mempermudah penulisan hasil konversi pada file
	"""
	dictionary = {}
	for rule in rules:
		if rule[kiri] in dictionary:
			dictionary[rule[kiri]] += ' | '+' '.join(rule[kanan])
		else:
			dictionary[rule[kiri]] = ' '.join(rule[kanan])
	result = ""
	for key in dictionary:
		result += key+" -> "+dictionary[key]+"\n"
	return result