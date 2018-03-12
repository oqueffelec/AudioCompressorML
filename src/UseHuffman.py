# from huffman import HuffmanCoding
from HuffmanCoding import HuffmanCoding

#input file path
path = "/Users/Octave/Documents/ASI4/PAO/PAO_compression/input.wav"

h = HuffmanCoding(path)

output_path = h.compress()
h.decompress(output_path)
