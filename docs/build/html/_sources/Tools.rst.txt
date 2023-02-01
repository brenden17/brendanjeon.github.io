Tools
######


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


* `Git hub <https://github.com/fenderglass/Flye>`_
* `Tutorial <https://www.youtube.com/watch?v=nF83anOSYoA>`_
* `Tutorial <https://timkahlke.github.io/LongRead_tutorials/ASS_F.html>`_

miniasm
--------

Miniasm is a very fast OLC-based de novo assembler for noisy long reads. 

.. highlight:: bash
   :linenothreshold: 1

miniasm::

   conda install -c bioconda miniasm

* `Git hub <https://github.com/lh3/miniasm>`_
* `Tutorial <https://www.youtube.com/watch?v=f4sT5pEHoxU>`_

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

Porechop
--------
Porechop is a tool for finding and removing adapters from Oxford Nanopore reads. 

.. highlight:: bash
   :linenothreshold: 1

Porechop::

   conda install -c bioconda porechop
   porechop -i input_reads.fastq.gz -o output_reads.fastq.gz

* `Git hub <https://github.com/rrwick/Porechop>`_

Graph
======

VG
-----

* `CPANG <https://cpang.netlify.app/course-documentation>`_

minigraph
----------

* `Tutorial <https://timkahlke.github.io/LongRead_tutorials/ASS_M.html>`_


Samtools
=========

* `Offical doc <https://samtools.github.io/hts-specs/SAMv1.pdf>`_
* `How to use <https://hhj6212.github.io/biology/tech/2020/10/18/samtools.html>`_
