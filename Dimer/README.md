#This is the extracting features proccess for MIALAB-IRPF method.

## Installation
	There is no installation needed, just make sure the following files is included:
	(1) extract_fre.sh
	(2) classify_by_fluency.sh
	(3) extract_fre.m
	(4) extract_frequency.sh
	(5) extract_only_seq.sh
        (6) frequency.m
        (7) list
        (8) main.m
        (9) main.sh
        (10) main1.m
        (11) main1.sh
        (12) mat2txt.m
	(13) README.md

## Externel sofeware tools
	After installation and before running compute jobs,The following externel sofeware tools is required:
	(1) ZDOCK
	(2) Naccess	


## Usage
(1)Generated the first 5000 structures of the protein-protein complex for each protein dimer according to the ZDOCK guide.
(2)Please put the "protein name_complex.i.pdb ( Using ZDOCK to genrated 5000 pdb for one protien dimer)"   in "shuju".
(3)Please put the "protein .pdb ( PDB)"  in "shuju".
(4)Then execute: nohup bash main1.sh & and nohup bash main.sh.

## Results
	A directory "results" which contains "residue position (A chain)" & "residue position (B chain)" & "contacts number "will be created after the compute jobs running out.

