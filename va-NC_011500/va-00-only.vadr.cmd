mkdir va-00-only
/Users/adithiv/VADR/vadr-install-dir/infernal/binaries/esl-reformat fasta NC_011500.only.fetch > va-00-only/va-00-only.vadr.in.fa
/Users/adithiv/VADR/vadr-install-dir/infernal/binaries/esl-seqstat --dna -a va-00-only/va-00-only.vadr.in.fa > va-00-only/va-00-only.vadr.seqstat
/Users/adithiv/VADR/vadr-install-dir/infernal/binaries/cmsearch  -T -10 --cpu 1 --trmF3 --noali --hmmonly --tblout va-00-only/va-00-only.vadr.std.cls.s0.tblout NC00.test/NC_011500.cm va-00-only/va-00-only.vadr.in.fa > va-00-only/va-00-only.vadr.std.cls.s0.stdout
cat va-00-only/va-00-only.vadr.std.cls.s0.stdout > va-00-only/va-00-only.vadr.std.cls.stdout
rm  va-00-only/va-00-only.vadr.std.cls.s0.stdout
cat va-00-only/va-00-only.vadr.std.cls.s0.tblout > va-00-only/va-00-only.vadr.std.cls.tblout
rm  va-00-only/va-00-only.vadr.std.cls.s0.tblout
grep -v ^# va-00-only/va-00-only.vadr.std.cls.tblout | sed 's/  */ /g' | sort -k 1,1 -k 3,3rn > va-00-only/va-00-only.vadr.std.cls.tblout.sort
/Users/adithiv/VADR/vadr-install-dir/infernal/binaries/cmfetch NC00.test/NC_011500.cm NC_011500 | /Users/adithiv/VADR/vadr-install-dir/infernal/binaries/cmsearch  -T -10 --cpu 1 --hmmonly  --noali  --tblout va-00-only/va-00-only.vadr.std.cdt.s0.tblout - va-00-only/va-00-only.vadr.NC_011500.fa > va-00-only/va-00-only.vadr.std.cdt.s0.stdout
cat va-00-only/va-00-only.vadr.std.cdt.s0.stdout > va-00-only/va-00-only.vadr.std.cdt.NC_011500.stdout
rm  va-00-only/va-00-only.vadr.std.cdt.s0.stdout
cat va-00-only/va-00-only.vadr.std.cdt.s0.tblout > va-00-only/va-00-only.vadr.std.cdt.NC_011500.tblout
rm  va-00-only/va-00-only.vadr.std.cdt.s0.tblout
cat va-00-only/va-00-only.vadr.std.cdt.NC_011500.tblout | grep -v ^# | sed 's/  */ /g' | sort -k 1,1 -k 15,15rn -k 16,16g > va-00-only/va-00-only.vadr.std.cdt.tblout.sort
/Users/adithiv/VADR/vadr-install-dir/infernal/binaries/cmfetch NC00.test/NC_011500.cm NC_011500 | /Users/adithiv/VADR/vadr-install-dir/infernal/binaries/cmalign  --dnaout --verbose --cpu 1 --ifile va-00-only/va-00-only.vadr.NC_011500.align.r1.s0.ifile -o va-00-only/va-00-only.vadr.NC_011500.align.r1.s0.stk --tau 0.001 --mxsize 4000.00 --sub --notrunc -g --fixedtau --flanktoins 0.1 --flankselfins 0.8 - va-00-only/va-00-only.vadr.NC_011500.a.fa > va-00-only/va-00-only.vadr.NC_011500.align.r1.s0.stdout 2>&1
cat va-00-only/va-00-only.vadr.NC_011500.align.r1.s0.stdout > va-00-only/va-00-only.vadr.NC_011500.align.stdout
rm  va-00-only/va-00-only.vadr.NC_011500.align.r1.s0.stdout
cat va-00-only/va-00-only.vadr.NC_011500.align.r1.s0.ifile > va-00-only/va-00-only.vadr.NC_011500.align.ifile
rm  va-00-only/va-00-only.vadr.NC_011500.align.r1.s0.ifile
cat va-00-only/va-00-only.vadr.NC_011500.CDS.1.fa >> va-00-only/va-00-only.vadr.NC_011500.pv.blastx.fa
/Users/adithiv/VADR/vadr-install-dir/ncbi-blast/bin/blastx -num_threads 1 -num_alignments 20 -query va-00-only/va-00-only.vadr.NC_011500.pv.blastx.fa -db NC00.test/NC_011500.vadr.protein.fa -seg no -out va-00-only/va-00-only.vadr.NC_011500.blastx.out
/Users/adithiv/VADR/vadr-install-dir/vadr/parse_blast.pl --program x --input va-00-only/va-00-only.vadr.NC_011500.blastx.out > va-00-only/va-00-only.vadr.NC_011500.blastx.summary.txt
rm  va-00-only/va-00-only.vadr.in.fa va-00-only/va-00-only.vadr.in.fa.ssi va-00-only/va-00-only.vadr.std.cls.tblout va-00-only/va-00-only.vadr.std.cls.stdout va-00-only/va-00-only.vadr.std.cls.tblout.sort va-00-only/va-00-only.vadr.NC_011500.fa va-00-only/va-00-only.vadr.std.cdt.NC_011500.tblout va-00-only/va-00-only.vadr.std.cdt.NC_011500.stdout va-00-only/va-00-only.vadr.std.cdt.tblout.sort va-00-only/va-00-only.vadr.NC_011500.a.fa va-00-only/va-00-only.vadr.NC_011500.align.stdout va-00-only/va-00-only.vadr.NC_011500.align.ifile va-00-only/va-00-only.vadr.NC_011500.CDS.1.fa va-00-only/va-00-only.vadr.NC_011500.align.r1.s0.stk va-00-only/va-00-only.vadr.NC_011500.pv.blastx.fa va-00-only/va-00-only.vadr.NC_011500.blastx.out va-00-only/va-00-only.vadr.NC_011500.blastx.summary.txt
# Mon Jun 17 12:09:10 EDT 2024
# Darwin Adithis-Laptop.local 23.0.0 Darwin Kernel Version 23.0.0: Fri Sep 15 14:42:57 PDT 2023; root:xnu-10002.1.13~1/RELEASE_ARM64_T8112 arm64
[ok]
