mkdir NC_011510
/net/intdev/oblast01/dnaorg/virseqannot/code/vadr-install-1.6.3/infernal/binaries/esl-reformat --informat afa  stockholm NC_011510/NC_011510.vadr.fa > NC_011510/NC_011510.vadr.stk
/net/intdev/oblast01/dnaorg/virseqannot/code/vadr-install-1.6.3/infernal/binaries/esl-reformat --informat fasta -d -u fasta NC_011510/NC_011510.vadr.fa > NC_011510/NC_011510.vadr.fa.tmp
/net/intdev/oblast01/dnaorg/virseqannot/code/vadr-install-1.6.3/ncbi-blast/bin/makeblastdb -in NC_011510/NC_011510.vadr.fa -dbtype nucl > /dev/null
rm NC_011510/NC_011510.vadr.fa.tmp
rm NC_011510/NC_011510.vadr.fa.tmp.ssi
/net/intdev/oblast01/dnaorg/virseqannot/code/vadr-install-1.6.3/infernal/binaries/esl-sfetch --index NC_011510/NC_011510.vadr.fa > /dev/null
/net/intdev/oblast01/dnaorg/virseqannot/code/vadr-install-1.6.3/infernal/binaries/esl-translate  -M -l 3 --watson NC_011510/NC_011510.vadr.cds.fa > NC_011510/NC_011510.vadr.cds.esl-translate.1.fa
rm NC_011510/NC_011510.vadr.cds.esl-translate.1.fa
rm NC_011510/NC_011510.vadr.cds.esl-translate.2.fa
rm NC_011510/NC_011510.vadr.cds.esl-translate.2.fa.ssi
/net/intdev/oblast01/dnaorg/virseqannot/code/vadr-install-1.6.3/ncbi-blast/bin/makeblastdb -in NC_011510/NC_011510.vadr.protein.fa -dbtype prot > /dev/null
/net/intdev/oblast01/dnaorg/virseqannot/code/vadr-install-1.6.3/infernal/binaries/esl-sfetch NC_011510/NC_011510.vadr.protein.fa NC_011510.2/10..2340:+ | /net/intdev/oblast01/dnaorg/virseqannot/code/vadr-install-1.6.3/infernal/binaries/hmmbuild -n NC_011510/10..2340:+ --informat afa NC_011510/NC_011510.vadr.1.hmm - > NC_011510/NC_011510.vadr.1.hmmbuild
cat NC_011510/NC_011510.vadr.1.hmm > NC_011510/NC_011510.vadr.protein.hmm
rm  NC_011510/NC_011510.vadr.1.hmm
cat NC_011510/NC_011510.vadr.1.hmmbuild > NC_011510/NC_011510.vadr.protein.hmmbuild
rm  NC_011510/NC_011510.vadr.1.hmmbuild
/net/intdev/oblast01/dnaorg/virseqannot/code/vadr-install-1.6.3/infernal/binaries/hmmpress NC_011510/NC_011510.vadr.protein.hmm > NC_011510/NC_011510.vadr.hmmpress
/net/intdev/oblast01/dnaorg/virseqannot/code/vadr-install-1.6.3/infernal/binaries/cmbuild -n NC_011510 --verbose  --noss --noh3pri NC_011510/NC_011510.vadr.cm NC_011510/NC_011510.vadr.stk > NC_011510/NC_011510.vadr.cmbuild
/net/intdev/oblast01/dnaorg/virseqannot/code/vadr-install-1.6.3/infernal/binaries/cmpress NC_011510/NC_011510.vadr.cm > NC_011510/NC_011510.vadr.cmpress
# Thu May 30 11:02:56 EDT 2024
# Linux cbbdev12 4.18.0-513.24.1.el8_9.x86_64 #1 SMP Mon Apr 8 11:23:13 EDT 2024 x86_64 x86_64 x86_64 GNU/Linux
[ok]
