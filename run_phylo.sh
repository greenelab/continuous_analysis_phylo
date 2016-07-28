mafft twist.fasta > mafft.seq
seqret mafft.seq infile -sformat fasta -osformat phylip
phylip dnapars <<EndOfOptions
Y
EndOfOptions
mv infile twist.aln
mv outtree intree
phylip drawtree <<EndOfOptions
V
N
Y
EndOfOptions
mv intree twist.newick
mv outfile twist.tree
mv twist.aln infile
phylip seqboot <<EndOfOptions
Y
15
EndOfOptions
mv infile twist.aln
mv outfile infile
phylip dnapars <<EndOfOptions
M
D
100
55
1
Y
EndOfOptions
mv infile twist-boot.aln
mv outfile twist-boot.out
mv outtree intree
phylip consense <<EndOfOptions
Y
EndOfOptions