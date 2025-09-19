RCC
***

My RDD
=======

* Q5705


UQ's Research Computing Centre
================================

The Research Computing Centre (RCC) provides coordinated management and support of The University of Queensland’s sustained and substantial investment in eResearch. The RCC helps UQ researchers across disciplines make the most of the University’s eResearch technologies, such as High Performance Computing (HPC), data storage, data management, visualisation, workflow and videoconferencing. 

Specifically for the MME, the RCC coordinates access and support for 3 HPCs and the Research Data Manager (RDM).


Create a new record on Research Data Manager (RDM)
===================================================

Go to `RDM Page <https://rdm.uq.edu.au/>`_ and create a new record.

When you want to use data on Tinaroo, check out this option.

.. image:: /images/createnewrecord.png
   :alt: create a new record
   :width: 600px


Bunya
======

See `Bunya user guide <https://github.com/UQ-RCC/hpc-docs/>`_


.. highlight:: bash
   :linenothreshold: 1

bash::

   ssh bunya.rcc.uq.edu.au
   module avail
   module load anaconda3
   conda env list
   source activate tools

SLURM
^^^^^^

See `Slurm user guide <https://github.com/UQ-RCC/hpc-docs/blob/main/Bunya-User-Guide.md#slurm-scripts>`_

.. highlight:: bash
   :linenothreshold: 1

bash::

   srun --pty /bin/bash #interactive
   sbatch 
   scancel
   squeue
   sinfo


Wiener
======

See `User guide <http://www2.rcc.uq.edu.au/hpc/guides/index.html?secure/Wiener_userguide.html>`_ and `here <https://rcc.uq.edu.au/wiener>`_


.. highlight:: bash
   :linenothreshold: 1

bash::

   ssh wiener.hpc.dc.uq.edu.au
   module avail
   module load anaconda3
   conda env list
   source activate tools



Tinaroo (OLD)
=============

The `Tinaroo <https://rcc.uq.edu.au/tinaroo>`_ cluster is a major increase in capability for UQ. 

See the `Document <https://rcc.uq.edu.au/filething/get/19257/BatchPBSPro.pdf?>`_.


Request a new acconut to RCC
----------------------------

Go `here <https://services.qriscloud.org.au/services/request/new/151270360cb54d0783bffd482b4651d2>`_ and fill up the form.

Set up conda
-------------

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


PBSPro
-------

PBSPro is the batch system used on Awoonga, FlashLite and Tinaroo.


`PBSPro user guide <http://www2.rcc.uq.edu.au/hpc/guides/index.html?secure/Batch_PBSPro.html>`_

.. highlight:: bash
   :linenothreshold: 1

bash::

   qsub helloworld.pbs
   qstat -aw1n
   qdel <JOB-ID>
   qstat -f <JOB-ID>


This a sample PBS, helloworld.pbs file.

.. highlight:: bash
   :linenothreshold: 1

bash::

   #!/bin/bash   
   #
   #PBS -l select=1:ncpus=1:mem=1GB                                                                      
   #PBS -l walltime=01:00:00
   #PBS -A UQ-QAAFI
   #PBS -N helloworld
   #
                                                                                                              
   source activate tools
   echo $HOSTNAME


.. important:: Resource requirements

   Set cpu, mem, walltime carefully

Tips
====

Change defualt docker image file location
-----------------------------------------

.. highlight:: bash
   :linenothreshold: 1

A cool bit of code::

   sudo vi /etc/docker/daemon.json
   add "data-root":"/home/brendan/workspace/docker"
   sudo service docker restart
