Tools
######

`FastQ Quality Scores <https://learn.gencore.bio.nyu.edu/ngs-file-formats/quality-scores/>`_


Assembler
==========

Assember...

Flye
-----

Flye is a de novo assembler.

.. highlight:: bash
   :linenothreshold: 1

bash::

   conda install -c bioconda flye
   flye --nano-raw \
   ~/course_data/precompiled/all_guppy.fastq \
   --genome-size 1m --out-dir ./flye_output


* `Flye github <https://github.com/fenderglass/Flye>`_
* `Flye youtube <https://www.youtube.com/watch?v=nF83anOSYoA>`_
* `Flye tutorial <https://timkahlke.github.io/LongRead_tutorials/ASS_F.html>`_

miniasm
--------

Miniasm is a very fast OLC-based de novo assembler for noisy long reads. 

.. highlight:: bash
   :linenothreshold: 1

miniasm::

   conda install -c bioconda miniasm

* `miniasm github <https://github.com/lh3/miniasm>`_
* `miniasm youtube <https://www.youtube.com/watch?v=f4sT5pEHoxU>`_

quickmerge
===========

Quickmerge will even work with hybrid assemblies made by combining long reads and Illumina short reads.

.. highlight:: bash
   :linenothreshold: 1

quickmerge::

   conda install -c conda-forge -c bioconda quickmerge
   # using wrapper
   merge_wrapper.py hybrid_assembly.fasta self_assembly.fasta


Trimmer
=========

Nanofilt
--------

Trimming and filtering Oxford Nanopore sequencing reads.

.. highlight:: bash
   :linenothreshold: 1

Nanofilt::

   NanoFilt –l 500 --headcrop 10 -q 10 < ./Q5705/data/${sample}_Blockchain_v6.0.1.fastq > ./Q5705/trimmed/${sample}_Blockchain_v6.0.1.trimmed.fastq

* `Nanofilt github <https://github.com/wdecoster/nanofilt>`_

Porechop
--------
Porechop is a tool for finding and removing adapters from Oxford Nanopore reads. 

.. highlight:: bash
   :linenothreshold: 1

Porechop::

   conda install -c bioconda porechop
   porechop -i input_reads.fastq.gz -o output_reads.fastq.gz

* `Porechop github <https://github.com/rrwick/Porechop>`_

Graph
======

VG
-----

* `VG CPANG 2018 <https://cpang.netlify.app/course-documentation>`_
* `VG CPANG 20192020 <https://cpang.netlify.app/>`_

minigraph
----------

* `minigraph tutorial <https://timkahlke.github.io/LongRead_tutorials/ASS_M.html>`_

pggb
----------

* `pggb github <https://pggb.readthedocs.io/en/latest/rst/quick_start.html>`_



Alignment
==========

minimap2
--------

* `Options [kr] <http://blog.genoglobe.com/2018/09/nanopore-sequencing-de-novo-assembly.html>`_
* `Nanopore sequencing de novo assembly [kr] <https://korbillgates.tistory.com/197>`_
* `Genome Assembly with Minimap2 and Miniasm <https://timkahlke.github.io/LongRead_tutorials/ASS_M.html>`_
* `Man page <https://lh3.github.io/minimap2/minimap2.html>`_

paftools
^^^^^^^^

paftools.js is a script that processes alignments in the PAF format, such as converting between formats, evaluating mapping accuracy, lifting over BED files based on alignment, and calling variants from assembly-to-assembly alignment. This script requires the k8 Javascript shell to run. On Linux or Mac, you can download the precompiled k8 binary with:


Winnowmap
---------

Winnowmap is a long-read mapping algorithm optimized for mapping ONT and PacBio reads to repetitive reference sequences. Winnowmap development began on top of minimap2 codebase, and since then we have incorporated the following two ideas to improve mapping accuracy within repeats.

* `Winnowmap github <https://github.com/marbl/Winnowmap>`_


MUMmer
------

`Options <https://manpages.debian.org/testing/mummer/dnadiff.1.en.html#OPTIONS>`_

dnadiff
^^^^^^^

`dnadiff readme <https://github.com/marbl/MUMmer3/blob/master/docs/dnadiff.README>`_


Consensus 
==========

Racon
------

Racon is a standalone consensus building tool that can be coupled with a fast assembler such as miniasm, which performs de novo assembly with error prone long reads without error corrections. This dramatically cut down the time needed for sequence assembly and consensus generation. Racon stands for Rapid Consensus and it can be used for PacBio and Oxford Nanopore data.

* `Racon github <https://github.com/isovic/racon>`_


Graph
======

Bandage
-------

`How to Use Assembly Graphs with Metagenomic Datasets <https://tylerbarnum.com/2018/02/26/how-to-use-assembly-graphs-with-metagenomic-datasets/>`_



SAM/BAM
=========

Samtools
---------

* `Samtools offical doc <https://samtools.github.io/hts-specs/SAMv1.pdf>`_
* `Samtools How to use <https://hhj6212.github.io/biology/tech/2020/10/18/samtools.html>`_


.. highlight:: bash
   :linenothreshold: 1

bash::

   samtools view -S –b ${sample}_trimmed.sam > ${sample}_trimmed.bam
   samtools sort –o ${sample}_trimmed.sorted.bam ${sample}_trimmed.bam
   samtools index ${sample}_trimmed.sorted.bam

   # get the total number of reads of a BAM file (may include unmapped and duplicated multi-aligned reads)
   samtools view -c SAMPLE.bam

   # counting only mapped (primary aligned) reads
   samtools view -c -F 260 SAMPLE.bam



SV Caller
=========

CuteSV
---------

* `cuteSV github <https://github.com/tjiangHIT/cuteSV>`_

Option 
.. highlight:: none

.. code-block:: rst
""""""

   > For ONT data:
   --max_cluster_bias_INS     100
   --diff_ratio_merging_INS   0.3
   --max_cluster_bias_DEL  100
   --diff_ratio_merging_DEL   0.3