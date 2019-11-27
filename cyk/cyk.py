import os.path
import argparse

def read_grammar(file):
    # file merupakan file yang berisi grammar yang akan diubah menjadi list of rule
    with open(file) as cfg:
        lines = cfg.readlines()
    return [x.replace("->", "").split() for x in lines]


class Node:
# Mengisi informasi mengenai non_terminal symbol dengan setiap class Node hanya dapat berisi 2 non_terminal atau 1 terminal
# Jika terdapat 2 non terminal diisi dalam kanan1 dan kanan2, Jika hanya 1 terminal akan diisi kanan1 dengan kanan2 sebagai None
    def __init__(self, symbol, kanan1, kanan2=None):
        self.symbol = symbol
        self.kanan1 = kanan1
        self.kanan2 = kanan2
    def __repr__(self):
        # Mengembalikkan representasi string sebuah object Node
        return self.symbol

class Parser:
# Parsing dengan algoritma CYK dengan grammar dalam CNF, grammar akan dibaca dari file
    def __init__(self, grammar, kata):
        # Membaca grammar yang merupakan CNF lalu parse kata dengan grammar yang telah dibaca
        self.tabel_parsing = None
        self.prods = {}
        self.grammar = None
        if os.path.isfile(grammar):
            self.grammar_from_file(grammar)
        self.__call__(kata)

    def __call__(self, kata, parse=False):
        # Melakukan parsing kata dengan grammar
        if os.path.isfile(kata):
            with open(kata) as inp:
                self.input = list(inp.read())
                for i in range(len(self.input)):
                    if self.input[i] == '\t':
                        self.input[i] = '\\t'
                    if self.input[i] == '\n':
                        self.input[i] = '\\n'
                    if self.input[i] == ' ':
                        self.input[i] = '`'
                print("Input:")
                print(self.input)
                if parse:
                    self.parse()
        else:
            self.input = list(kata)
            print("Input:")
            print(self.input)

    def grammar_from_file(self, grammar):
        #Membaca grammar CNF dari file lalu disimpan dalam self.grammar
        self.grammar = read_grammar(grammar)

    def parse(self):
        # Melakukan parsing mengikuti Algoritma CYK dengan menyimpan tabel dalam self.tabel_parsing
        length = len(self.input)
        # self.tabel_parsing[x][y] adalah list node di dalam baris x+1 dan kolom y+1 di dalam tabel
        # That cell covers the word below it and y more words after.
        self.tabel_parsing = [[[] for x in range(length - y)] for y in range(length)]

        for i, word in enumerate(self.input):
            # Mencari non terminal yang bisa membuat terminal di input string
            # setelah itu dimasukkan ke dalam parse table. 1 terminal bisa dibuat oleh banyak
            # non terminal, maka dari itu parse table akan berisi list dari non terminal.
            for rule in self.grammar:
                if f"'{word}'" == rule[1]:
                    self.tabel_parsing[0][i].append(Node(rule[0], word))
        for words_to_consider in range(2, length + 1):
            for sel_start in range(0, length - words_to_consider + 1):
                for size_kiri in range(1, words_to_consider):
                    size_kanan = words_to_consider - size_kiri

                    sel_kiri = self.tabel_parsing[size_kiri - 1][sel_start]
                    sel_kanan = self.tabel_parsing[size_kanan - 1][sel_start + size_kiri]

                    for rule in self.grammar:
                        node_kiri = [n for n in sel_kiri if n.symbol == rule[1]]
                        if node_kiri:
                            node_kanan = [n for n in sel_kanan if n.symbol == rule[2]]
                            self.tabel_parsing[words_to_consider - 1][sel_start].extend(
                                [Node(rule[0], left, right) for left in node_kiri for right in node_kanan]
                            )

    def tulis_tree(self, output=True):
        # menuliskan parse tree mulai dari start simbolnya.
        start_symbol = self.grammar[0][0]
        final_nodes = [n for n in self.tabel_parsing[-1][0] if n.symbol == start_symbol]
        # print(final_nodes)
        trees = [membuat_tree(node) for node in final_nodes]
        print("Parse tree:")
        for tree in trees:
            print(tree)
        print("Parse table:")
        for t in self.tabel_parsing:
            print(t)
        if final_nodes:
            if output:
                print("\nAccepted")
            else:
                return trees
        else:
            print("\nCompile Error!")


def membuat_tree(node):
    # Membuat parse tree dengan string representasinya
    if node.kanan2 is None:
        return f"[{node.symbol} '{node.kanan1}']"
    return f"[{node.symbol} {membuat_tree(node.kanan1)} {membuat_tree(node.kanan2)}]"


if __name__ == '__main__':
    argparser = argparse.ArgumentParser()
    argparser.add_argument("grammar",
                           help="File containing the grammar or string directly representing the grammar.")
    argparser.add_argument("kata",
                           help="File containing the kata or string directly representing the kata.")
    args = argparser.parse_args()
    CYK = Parser(args.grammar, args.kata)
    CYK.parse()
    CYK.tulis_tree()
