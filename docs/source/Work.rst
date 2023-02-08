My work
*******

Work #1
========

Assembly & Graph
^^^^^^^^^^^^^^^^

.. image:: /images/assemble-process.png
   :alt: Assembly
   :width: 400px

from `Canadian Bioinforma-cs Workshops <https://drive.google.com/file/d/112CL9PitgRWsAyDasTTtJFJcBtwogLJp/view>`_


.. list-table:: ARS-UCD1.2 
   :name: table
   :widths: 20, 10, 10, 10, 10, 10, 10, 20
   :class: longtable
   :header-rows: 1
   :align: center
   :width: 66%

   * - Location/ext/script No.
     - Hiar_09 42G
     - Muscle_09 42G
     - Hiar_40 89G
     - Muscle_40 49G
     - Hiar_44 42G
     - Muscle_44 40G
     - Tool
   * - trim/trimmed.fastq/1. 
     - O
     - O
     - O
     - X
     - O
     - O
     - `Nanofilt <Tools.html#Nanofilt>`_
   * - asm/paf/2.
     - O
     - O
     - X
     - X
     - O
     - O
     - `minimap2 <Tools.html#minimap2>`_
   * - asm/gfa/3.
     - O
     - O
     - X
     - X
     - O
     - O
     - `miniasm <Tools.html#miniasm>`_
   * - asmfa/fa/4.
     - O
     - O
     - X
     - X
     - O
     - O
     - awk
   * - asmcontig/paf/5. 
     - O
     - O
     - X
     - X
     - O
     - O
     - `minimap2 <Tools.html#minimap2>`_
   * - consfa/fa/6. 
     - O
     - O
     - X
     - X
     - X
     - X
     - `racon <Tools.html#racon>`_
   * - diff/-/7.
     - X
     - X
     - X
     - X
     - X
     - X 
     - dnadiff
   * - graph/gaf/8.
     - X
     - X
     - X
     - X
     - X
     - X
     - `minigraph <Tools.html#minigraph>`_
   * - vcf/bed/9.
     - X
     - X
     - X
     - X
     - X
     - X
     - `gfatools <Tools.html#gfatools>`_

Assembly
^^^^^^^^

* `Fundamentals of Genome Assembly <https://www.youtube.com/watch?v=5wvGapmA5zM>`_ on youtube
* `Canadian Bioinforma-cs Workshops <https://drive.google.com/file/d/112CL9PitgRWsAyDasTTtJFJcBtwogLJp/view>`_
* `Genome Assembly from Roberts Lab <https://faculty.washington.edu/sr320/?p=13602>`_


Graph
^^^^^^^^

* `Building pangenome graphs <https://www.youtube.com/watch?v=PGLg4n1UhKc&t=622s>`_ on youtube
* `A Primer on Genome Graphs for Diverse Genomic Analyses <https://www.youtube.com/watch?v=VNVA55two68>`_ on youtube
* `Creating and using genome graphs with GenGraph: Jon Ambler <https://www.youtube.com/watch?v=QS1y2si51qU>`_ on youtube


Bash tips
^^^^^^^^^

* `Bash variables and command substitution <http://www.compciv.org/topics/bash/variables-and-substitution/>`_
* `Tutorial [kr] <https://inpa.tistory.com/entry/LINUX-%EC%89%98-%ED%94%84%EB%A1%9C%EA%B7%B8%EB%9E%98%EB%B0%8D-%ED%95%B5%EC%8B%AC-%EB%AC%B8%EB%B2%95-%EC%B4%9D%EC%A0%95%EB%A6%AC?category=890814>`_

Workshop
^^^^^^^^^

* `UC Davis Bioinformatics Core December 2018 Genome Assembly workshop <http://www.compciv.org/topics/bash/variables-and-substitution/>`_
* `Informatics on High-Throughput Sequencing Data <https://bioinformaticsdotca.github.io/htseq_2017>`_


Gits
^^^^^

* `clairemerot assembly_SV <https://github.com/clairemerot/assembly_SV/tree/main/01_scripts>`_
* `clairemerot paper <https://onlinelibrary.wiley.com/doi/10.1111/mec.16468>`_
