# Continuous Analysis Phylogentics Example

This is a sample repository showing the [Continuous Analysis Workflow](https://github.com/greenelab/continuous_analysis). This process is described in detail and available as a [pre-print](http://biorxiv.org/content/early/2016/06/01/056473).

In this example we use several tools to build phylogenies from alignments:

* [MAFFT](http://www.ebi.ac.uk/Tools/msa/mafft/)
* [EMBOSS Seqret](http://www.ebi.ac.uk/Tools/sfc/emboss_seqret/)
* [PHYLIP](http://evolution.genetics.washington.edu/phylip/)
	* [DNAPARS](http://evolution.genetics.washington.edu/phylip/doc/dnapars.html)
	* [Drawtree](http://evolution.genetics.washington.edu/phylip/doc/draw.html)
	* [Seqboot](http://evolution.genetics.washington.edu/phylip/doc/seqboot.html)
	* [Consense](http://evolution.genetics.washington.edu/phylip/doc/consense.html) 
* [ImageMagick](http://www.imagemagick.org/script/index.php)

## Sample Results

The full analysis is described below, here we show two of the useful artifacts generated through Continuous Analysis:

1. Change logs/synchronization between code and figures:
[Live Version](https://github.com/greenelab/continuous_analysis_phylo/commit/518fc9c446e7e1feb0f08e753a945e0b10adcdec#diff-81f3f2f12d4403ba083a558b76a9d056)

![](https://raw.githubusercontent.com/greenelab/continuous_analysis_phylo/master/references/compare.png)


2. Complete "audit" logs of the code run:
[Logs](https://raw.githubusercontent.com/greenelab/continuous_analysis_phylo/master/references/logs.txt)

![](https://raw.githubusercontent.com/greenelab/continuous_analysis_phylo/master/references/logs.png)

## Description of analysis
In this analysis we align 5 mRNA sequences and use these alignments to build phylogenies. Analysis code is available [here](https://github.com/greenelab/continuous_analysis_phylo/blob/master/run_phylo.sh)

1. We look at 5 mRNA sequences (findable at: http://www.ncbi.nlm.nih.gov/nuccore)
	* 	Twist - Fly (NM_079092, splice form A)
	* 	Twist1 - Human (NM_000474)
	* 	Twist1 - Mouse (NM_011658)
	* 	Twist2 - Human (NM_057179) - Added in second commit to see differences
	* 	Twist2 - Mouse (NM_007855) 

And load the sequences into twist.fasta

2. Align the sequences using MAFFT.
3. Convert to PHYLIP interleaved format using EMBOSS Seqret.
4. Calculate the maximum parsimony tree for the sequences using DNAPARS.
5. Draw a representation fo this tree using drawtree.
6. Use Seqboot to assess the robustness of the generated tree.
7. Determine the consensus tree from the bootstrapped trees.

We performed this process twice, once [without HumanTwist2 and once with HumanTwist2](https://github.com/greenelab/continuous_analysis_phylo/commit/9c9d07f2e9bbbedd5d3fe81c0f6c92acf48924d3). The difference is viewable at: [results](https://github.com/greenelab/continuous_analysis_phylo/commit/518fc9c446e7e1feb0f08e753a945e0b10adcdec).


## Feedback

Please feel free to email me - (brettbe) at med.upenn.edu with any feedback or raise a github issue with any comments or questions.

## Acknowledgements

We would like to thank Katie Siewert for providing the analysis design.

This work is supported by the Gordon and Betty Moore Foundation's Data-Driven Discovery Initiative through Grant GBMF4552 to C.S.G. as well as the Commonwealth Universal Research Enhancement (CURE) Program grant from the Pennsylvania Department of Health.
