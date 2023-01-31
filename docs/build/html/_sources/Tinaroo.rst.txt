Tinaroo
========

UQ's Research Computing Centre
*******************************

The Research Computing Centre (RCC) provides coordinated management and support of The University of Queensland’s sustained and substantial investment in eResearch. The RCC helps UQ researchers across disciplines make the most of the University’s eResearch technologies, such as High Performance Computing (HPC), data storage, data management, visualisation, workflow and videoconferencing. 

Specifically for the MME, the RCC coordinates access and support for 3 HPCs and the Research Data Manager (RDM).

Tinaroo
***************************

The `Tinaroo <https://rcc.uq.edu.au/tinaroo>`_ cluster is a major increase in capability for UQ. 

Request new acconut to RCC
***************************

Tinaroo does not appear on the QRIScompute request page, go `here <https://services.qriscloud.org.au/services/request/new/151270360cb54d0783bffd482b4651d2>`_.

Set up conda
*************

.. highlight:: bash
   :linenothreshold: 1

A cool bit of code::
   conda create -n tools python=3
   source activate tools

   conda install -c bioconda cutesv
   conda install -c bioconda vg
   conda install -c bioconda minigraph
   conda install -c bioconda samtools
   conda install -c bioconda tabix
   conda install -c bioconda snakemake


`Tinaroo user guide <http://www2.rcc.uq.edu.au/hpc/guides/index.html?secure/Tinaroo_userguide.html>`_



Change defualt docker image file location
*****************************************

.. highlight:: bash
   :linenothreshold: 1

A cool bit of code::
   sudo vi /etc/docker/daemon.json
   add "data-root":"/home/brendan/workspace/docker"
   sudo service docker restart
