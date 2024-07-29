download.file("https://courses.edx.org/assets/courseware/v1/f3b6df96b94a01d80e35e3cecf3d83f0/asset-v1:HarvardX+PH525.1x+3T2020+type@asset+block/assoctest.csv", "PH525.1x/assoctest.csv")

d <- read.csv("PH525.1x/assoctest.csv")


chisq.test(table(d))
fisher.test(table(d))
