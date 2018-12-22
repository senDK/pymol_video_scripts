## PyMOL Video Demo
The sqequence of scripts required to make the pymol video (
https://youtu.be/48eCSqm3t_8)
is added in the repo


## Prerequisitepackages

```
PyMol
FFMPEG
Python 2.7 and above
```
## Usage

```
Make sure the PDB file is in the current folder.

user@machine:~pymol_demo$ pymol Part_01_rock_whole_complex.pml

```
## Bash script to convert the PNG to AVI

An bash script to run in batch is provied.

```
#!/bin/bash

mencoder "mf://*.png" -o movie.avi -ovc lavc -lavcopts vcodec=mjpeg
#ffmpeg -i movie.avi -s 640x480 -b 1024k -vcodec mpeg1video -acodec copy lowquality12mb.avi
#ffmpeg -i movie.avi -s 640x480 -b 512k -vcodec mpeg1video -acodec copy lowquality6mb.avi


```

## Query table information 

The query table is inside *data* folder.


## References

Panigrahi, Rashmi, et al. "Ligand recognition by the TPR domain of the import factor Toc64 from Arabidopsis thaliana."
PloS one 8.12 (2013): e83461.

## New in the latest version

Version: 1.0.1
Date: 2018-06-01

* fixed some typos and paths


