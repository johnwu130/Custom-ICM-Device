This is the InsightCM 9068 modified for multiple 9205 modules to do dynamic acquistion.
This time, I had to use some new definitions on the InsightCM server.

Definition files are included in \Server definitions\

First, module definition: 
NI_9205_Special.txt is just a variant of the stock NI 9232.txt, but with channel count extended to 16.  
Sample rates are limited to 100-1500, default 1000.
NI_9205_32.txt - same thing, just to 32 channels.
Next, device definition:
CMS-9068_9025.json
changed supported sample rates to match 9205_Special
under 9068-6-2 section, add both "NI 9205 Special" and "NI 9205_32_channel" to the supported module list.


This time the bitfile is: BOP_6_9068_M9205.lvbitx


FPGA - 
Started with Main_FPGA.vi, which has "9205 Read.vi" in it.
This VI has some FGV pattern generators, I was trying to get fancy and have different data
show up in different channels and different modules, so that when I use the test panel on the ICM server,
I can tell that I'm actually looking at a different channel.
FPGA ran out of space for this VI.  Had to resort to Main_FPGA 2.vi

Main_FPGA 2.vi has a "9205 Read 2.vi" in it.
Ripped out the pattern generators.

This time the bitfile is: BOP_6_9068_M9205.lvbitx.  Manually put this in cRIO.

Ran RT code, probed, bitfile successfully loaded.
Probed the FpgaAquisition923x thread (3rd subVI, counting from the top)
the "acquire" case never gets run.

Now I'm stuck.

4/10/2016

Jack noticed the array sizes on the FPGA weren't consistent.  Easy change.

4/20/2016