mkdir NC_011501
/net/intdev/oblast01/dnaorg/virseqannot/code/vadr-install-1.6.3/infernal/binaries/esl-reformat --informat afa  stockholm NC_011501/NC_011501.vadr.fa > NC_011501/NC_011501.vadr.stk
/net/intdev/oblast01/dnaorg/virseqannot/code/vadr-install-1.6.3/infernal/binaries/esl-reformat --informat fasta -d -u fasta NC_011501/NC_011501.vadr.fa > NC_011501/NC_011501.vadr.fa.tmp
/net/intdev/oblast01/dnaorg/virseqannot/code/vadr-install-1.6.3/ncbi-blast/bin/makeblastdb -in NC_011501/NC_011501.vadr.fa -dbtype nucl > /dev/null
rm NC_011501/NC_011501.vadr.fa.tmp
rm NC_011501/NC_011501.vadr.fa.tmp.ssi
/net/intdev/oblast01/dnaorg/virseqannot/code/vadr-install-1.6.3/infernal/binaries/esl-sfetch --index NC_011501/NC_011501.vadr.fa > /dev/null
/net/intdev/oblast01/dnaorg/virseqannot/code/vadr-install-1.6.3/infernal/binaries/esl-translate  -M -l 3 --watson NC_011501/NC_011501.vadr.cds.fa > NC_011501/NC_011501.vadr.cds.esl-translate.1.fa
rm NC_011501/NC_011501.vadr.cds.esl-translate.1.fa
rm NC_011501/NC_011501.vadr.cds.esl-translate.2.fa
rm NC_011501/NC_011501.vadr.cds.esl-translate.2.fa.ssi
/net/intdev/oblast01/dnaorg/virseqannot/code/vadr-install-1.6.3/ncbi-blast/bin/makeblastdb -in NC_011501/NC_011501.vadr.protein.fa -dbtype prot > /dev/null
/net/intdev/oblast01/dnaorg/virseqannot/code/vadr-install-1.6.3/infernal/binaries/esl-sfetch NC_011501/NC_011501.vadr.protein.fa NC_011501.2/26..973:+ | /net/intdev/oblast01/dnaorg/virseqannot/code/vadr-install-1.6.3/infernal/binaries/hmmbuild -n NC_011501/26..973:+ --informat afa NC_011501/NC_011501.vadr.1.hmm - > NC_011501/NC_011501.vadr.1.hmmbuild
cat NC_011501/NC_011501.vadr.1.hmm > NC_011501/NC_011501.vadr.protein.hmm
rm  NC_011501/NC_011501.vadr.1.hmm
cat NC_011501/NC_011501.vadr.1.hmmbuild > NC_011501/NC_011501.vadr.protein.hmmbuild
rm  NC_011501/NC_011501.vadr.1.hmmbuild
/net/intdev/oblast01/dnaorg/virseqannot/code/vadr-install-1.6.3/infernal/binaries/hmmpress NC_011501/NC_011501.vadr.protein.hmm > NC_011501/NC_011501.vadr.hmmpress
/net/intdev/oblast01/dnaorg/virseqannot/code/vadr-install-1.6.3/infernal/binaries/cmbuild -n NC_011501 --verbose  --noss --noh3pri NC_011501/NC_011501.vadr.cm NC_011501/NC_011501.vadr.stk > NC_011501/NC_011501.vadr.cmbuild
/net/intdev/oblast01/dnaorg/virseqannot/code/vadr-install-1.6.3/infernal/binaries/cmpress NC_011501/NC_011501.vadr.cm > NC_011501/NC_011501.vadr.cmpress
# Thu May 30 10:49:40 EDT 2024
# Linux cbbdev12 4.18.0-513.24.1.el8_9.x86_64 #1 SMP Mon Apr 8 11:23:13 EDT 2024 x86_64 x86_64 x86_64 GNU/Linux
[ok]
