# ExplainableDataGeneration

********** Data Availability **********

The dataset used in this study is already published and obtained from public data repositories [1] (10x-Multiome-Pbmc10k, ATAC-Seq), which is downloaded from https://scglue.readthedocs.io/en/latest/data.html.

In addition, we also provide a preprocessed version using MATLAB, which can be downloaded from the following website:

https://pan.baidu.com/s/1XMR_o6vPU7RVCu0sur-1yg?pwd=4quu Password: 4quu


********** Code Availability **********

This demo is the implementation of the proposed EDG model on classification task.

The toolbox file of Support Vector Machines (SVM.zip) [2] and Optimal Transport (OPW-master.zip) [3] need to be decompressed. 

Please run the demo_classification.m, with Number indicating the sample number of original data. 

The parameter of Number indicates assuming the availability of only Number samples in real-world scenarios. In detail, we randomly select Number samples per category for training and data generation while using the remaining samples for testing, with the value of Number being 1, 2, 5, 10, 20, 50.

The experimental results with five repeats will be reported in SingleSample_Result, with the first column indicating the results on original data and the third column and subsequent columns indicating the results on generated data.


********** Update on 2026.6.30: **********

We have uploaded the 10 new single-cell datasets with corresponding implemented codes.

The 10 diverse single-cell datasets[4] spanning multiple species (human, mouse, and zebrafish), organs (kidney, mammary gland, liver, pancreas, lung, brain, testis, and fin), sequencing platforms (Drop-seq, 10x Genomics, CEL-Seq2, inDrop, and ScarTrace), and biological complexities (4–15 cell types, 1,337–23,184 cells, and 13,446–28,205 features). Specifically, the new benchmark includes Adam (mouse kidney)[5], Alemany-Fin (zebrafish fin)[6], Bach (mouse mammary gland)[7], Guo (human testis)[8], Karaiskos (mouse kidney)[9], Li-Mammary (mouse mammary gland)[10], MacParland (human liver)[11], Muraro (human pancreas)[12], Oihane (mouse brain)[13], and Zilionis (mouse lung)[14]. These datasets provide a comprehensive benchmark for assessing the effectiveness and stability of EDG in realistic biomedical applications. All datasets are already published and obtained from public data repositories[4] at https://cblast.gao-lab.org/download.

In addition, one can also download the datasets from the following website:

https://pan.baidu.com/s/1nYGQQk19bxVBHN_pZ2Nq1A?pwd=sdti Password: sdti 


The corresponding implemented codes are introduced as follows:

Please run the Demo_Classification_20_BioDataSets.m

H5Read.m is employed to read the H5 files directly.


********** References **********

[1] Cao, Z.J. and Gao, G., 2022. Multi-omics single-cell data integration and regulatory inference with graph-linked embedding. Nature Biotechnology, 40(10), pp.1458-1466.

[2] Hearst, M.A., Dumais, S.T., Osuna, E., Platt, J. and Scholkopf, B., 1998. Support vector machines. IEEE Intelligent Systems and their applications, 13(4), pp.18-28.

[3] Chang, W., Shi, Y., Tuan, H. and Wang, J., 2022. Unified optimal transport framework for universal domain adaptation. Advances in Neural Information Processing Systems, 35, pp.29512-29524.

[4] Cao, Z. J., Wei, L., Lu, S., Yang, D. C., & Gao, G. (2020). Searching large-scale scRNA-seq databases via unbiased cell embedding with Cell BLAST. Nature communications, 11(1), 3458.

[5] Adam, M., Potter, A. S., & Potter, S. S. (2017). Psychrophilic proteases dramatically reduce single-cell RNA-seq artifacts: a molecular atlas of kidney development. Development, 144(19), 3625-3632.

[6] Alemany, A., Florescu, M., Baron, C. S., Peterson-Maduro, J., & Van Oudenaarden, A. (2018). Whole-organism clone tracing using single-cell sequencing. Nature, 556(7699), 108-112.

[7] Bach, K., Pensa, S., Grzelak, M., Hadfield, J., Adams, D. J., Marioni, J. C., & Khaled, W. T. (2017). Differentiation dynamics of mammary epithelial cells revealed by single-cell RNA sequencing. Nature communications, 8(1), 1-11.

[8] Guo, J., Grow, E. J., Mlcochova, H., Maher, G. J., Lindskog, C., Nie, X., ... & Cairns, B. R. (2018). The adult human testis transcriptional cell atlas. Cell research, 28(12), 1141-1157.

[9] Karaiskos, N., Rahmatollahi, M., Boltengagen, A., Liu, H., Hoehne, M., Rinschen, M., ... & Müller, R. U. (2018). A single-cell transcriptome atlas of the mouse glomerulus. Journal of the American Society of Nephrology, 29(8), 2060-2068.

[10] Li, C. M. C., Shapiro, H., Tsiobikas, C., Selfors, L. M., Chen, H., Rosenbluth, J., ... & Brugge, J. S. (2020). Aging-associated alterations in mammary epithelia and stroma revealed by single-cell RNA sequencing. Cell reports, 33(13).

[11] MacParland, S. A., Liu, J. C., Ma, X. Z., Innes, B. T., Bartczak, A. M., Gage, B. K., ... & McGilvray, I. D. (2018). Single cell RNA sequencing of human liver reveals distinct intrahepatic macrophage populations. Nature communications, 9(1), 4383.

[12] Muraro, M. J., Dharmadhikari, G., Grün, D., Groen, N., Dielen, T., Jansen, E., ... & Van Oudenaarden, A. (2016). A single-cell transcriptome atlas of the human pancreas. Cell systems, 3(4), 385-394.

[13] Uriarte Huarte, O., Kyriakis, D., Heurtaux, T., Pires-Afonso, Y., Grzyb, K., Halder, R., ... & Michelucci, A. (2021). Single-cell transcriptomics and in situ morphological analyses reveal microglia heterogeneity across the nigrostriatal pathway. Frontiers in immunology, 12, 639613.

[14] Zilionis, R., Engblom, C., Pfirschke, C., Savova, V., Zemmour, D., Saatcioglu, H. D., ... & Klein, A. M. (2019). Single-cell transcriptomics of human and mouse lung cancers reveals conserved myeloid populations across individuals and species. Immunity, 50(5), 1317-1334.
