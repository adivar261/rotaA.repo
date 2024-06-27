mkdir NC_011504
/net/intdev/oblast01/dnaorg/virseqannot/code/vadr-install-1.6.3/infernal/binaries/esl-reformat --informat afa  stockholm NC_011504/NC_011504.vadr.fa > NC_011504/NC_011504.vadr.stk
/net/intdev/oblast01/dnaorg/virseqannot/code/vadr-install-1.6.3/infernal/binaries/esl-reformat --informat fasta -d -u fasta NC_011504/NC_011504.vadr.fa > NC_011504/NC_011504.vadr.fa.tmp
/net/intdev/oblast01/dnaorg/virseqannot/code/vadr-install-1.6.3/ncbi-blast/bin/makeblastdb -in NC_011504/NC_011504.vadr.fa -dbtype nucl > /dev/null
rm NC_011504/NC_011504.vadr.fa.tmp
rm NC_011504/NC_011504.vadr.fa.tmp.ssi
/net/intdev/oblast01/dnaorg/virseqannot/code/vadr-install-1.6.3/infernal/binaries/esl-sfetch --index NC_011504/NC_011504.vadr.fa > /dev/null
/net/intdev/oblast01/dnaorg/virseqannot/code/vadr-install-1.6.3/infernal/binaries/esl-translate  -M -l 3 --watson NC_011504/NC_011504.vadr.cds.fa > NC_011504/NC_011504.vadr.cds.esl-translate.1.fa
rm NC_011504/NC_011504.vadr.cds.esl-translate.1.fa
rm NC_011504/NC_011504.vadr.cds.esl-translate.2.fa
rm NC_011504/NC_011504.vadr.cds.esl-translate.2.fa.ssi
/net/intdev/oblast01/dnaorg/virseqannot/code/vadr-install-1.6.3/ncbi-blast/bin/makeblastdb -in NC_011504/NC_011504.vadr.protein.fa -dbtype prot > /dev/null
/net/intdev/oblast01/dnaorg/virseqannot/code/vadr-install-1.6.3/infernal/binaries/esl-sfetch NC_011504/NC_011504.vadr.protein.fa NC_011504.2/42..569:+ | /net/intdev/oblast01/dnaorg/virseqannot/code/vadr-install-1.6.3/infernal/binaries/hmmbuild -n NC_011504/42..569:+ --informat afa NC_011504/NC_011504.vadr.1.hmm - > NC_011504/NC_011504.vadr.1.hmmbuild
cat NC_011504/NC_011504.vadr.1.hmm > NC_011504/NC_011504.vadr.protein.hmm
rm  NC_011504/NC_011504.vadr.1.hmm
cat NC_011504/NC_011504.vadr.1.hmmbuild > NC_011504/NC_011504.vadr.protein.hmmbuild
rm  NC_011504/NC_011504.vadr.1.hmmbuild
/net/intdev/oblast01/dnaorg/virseqannot/code/vadr-install-1.6.3/infernal/binaries/hmmpress NC_011504/NC_011504.vadr.protein.hmm > NC_011504/NC_011504.vadr.hmmpress
/net/intdev/oblast01/dnaorg/virseqannot/code/vadr-install-1.6.3/infernal/binaries/cmbuild -n NC_011504 --verbose  --noss --noh3pri NC_011504/NC_011504.vadr.cm NC_011504/NC_011504.vadr.stk > NC_011504/NC_011504.vadr.cmbuild
/net/intdev/oblast01/dnaorg/virseqannot/code/vadr-install-1.6.3/infernal/binaries/cmpress NC_011504/NC_011504.vadr.cm > NC_011504/NC_011504.vadr.cmpress
# Thu May 30 10:52:25 EDT 2024
# Linux cbbdev12 4.18.0-513.24.1.el8_9.x86_64 #1 SMP Mon Apr 8 11:23:13 EDT 2024 x86_64 x86_64 x86_64 GNU/Linux
[ok]
