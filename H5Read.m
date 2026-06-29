
% file_path = '10x-Multiome-Pbmc10k-ATAC.h5ad';

% 读取 X 分组下的三个子数据集
data     = h5read(file_path, "/X/data");
indices  = h5read(file_path, "/X/indices");
indptr   = h5read(file_path, "/X/indptr");

% 计算行列数
n_cells = length(indptr) - 1;
n_genes = double(max(indices)) + 1;

% cell_type = h5read(file_path, "/obs/cell_type");  % 细胞类型
cell_type = h5read(file_path, "/obs/cell_type1");  % 细胞类型

% 调用函数还原为 MATLAB 稀疏矩阵
X_sparse = csr2sparse(data, indices, indptr, n_cells, n_genes);

% 可选：转稠密矩阵（数据量大慎用，易爆内存）
% X_dense = full(X_sparse);

clear data indices indptr

%% A
function S = csr2sparse(data, indices, indptr, n_rows, n_cols)
% 把 AnnData CSR 稀疏矩阵转为 MATLAB sparse 矩阵
row_idx = zeros(size(indices), 'double');

for r = 1:n_rows
    s = indptr(r) + 1;
    e = indptr(r+1);
    row_idx(s:e) = r;
end

% h5ad 索引从 0 开始，MATLAB 从 1 开始，所以 +1
col_idx = double(indices) + 1;
vals    = double(data);

S = sparse(row_idx, col_idx, vals, n_rows, n_cols);
end