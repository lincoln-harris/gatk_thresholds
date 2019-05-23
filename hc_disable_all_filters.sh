#!/bin/bash

gatk HaplotypeCaller -R hg38-plus.fa -O vcf/A11_B000861_disable_all_filters.vcf -I bam/A11_B000861_S83.homo.Aligned.out.sorted.readgroup.bam \
	--disable-read-filter MappingQualityReadFilter \
	--disable-read-filter GoodCigarReadFilter \
	--disable-read-filter NotSecondaryAlignmentReadFilter \
	--disable-read-filter MappedReadFilter \
	--disable-read-filter MappingQualityAvailableReadFilter \
	--disable-read-filter NonZeroReferenceLengthAlignmentReadFilter \
	--disable-read-filter NotDuplicateReadFilter \
	--disable-read-filter PassesVendorQualityCheckReadFilter \
	--disable-read-filter WellformedReadFilter