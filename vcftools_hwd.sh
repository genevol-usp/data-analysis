# Script para ilustrar a relação entre frequencias genotipcas e alelicas

# Definir diretorio com dados do 1000 Genomas
# definir arquivo a ser usado, phase 3
datadir=/raid/genevol/1kg/phase3/data/phase3_chr/
file=ALL.chr21.phase3_shapeit2_mvncall_integrated_v5a.20130502.genotypes.vcf.gz

# montar lista de amostras YRI para analise.
grep YRI  samples_all > yri_samples

# geracao de arquivo com hw e outro com frquencias
vcftools --gzvcf $datadir/$file --freq --max-alleles 2 --chr 21  --out chr21
vcftools --gzvcf $datadir/$file --chr 21 --max-alleles 2 --hardy  --out chr21
vcftools --gzvcf $datadir/$file --chr 21 --keep-only-indels --max-alleles 2 --hardy --out chr21_indels
