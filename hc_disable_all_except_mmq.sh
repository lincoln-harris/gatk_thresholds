#!/bin/bash

gatk HaplotypeCaller -R hg38-plus.fa -O vcf/A10_B000863_disable_all_except_mmq.vcf -I bam/A10_B000863_S250.homo.Aligned.out.sorted.readgroup.bam \
	--disable-read-filter GoodCigarReadFilter \
	--disable-read-filter NotSecondaryAlignmentReadFilter \
	--disable-read-filter MappedReadFilter \
	--disable-read-filter MappingQualityAvailableReadFilter \
	--disable-read-filter NonZeroReferenceLengthAlignmentReadFilter \
	--disable-read-filter NotDuplicateReadFilter \
	--disable-read-filter PassesVendorQualityCheckReadFilter \
	--disable-read-filter WellformedReadFilter
