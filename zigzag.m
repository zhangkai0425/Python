%zigzag扫描的函数，最快的方式就是直接查表下标索引
function z = myzigzag(M)
zigzag = [ 0, 1, 8, 16, 9, 2, 3, 10, ...
17, 24, 32, 25, 18, 11, 4, 5, ...
12, 19, 26, 33, 40, 48, 41, 34, ...
27, 20, 13, 6, 7, 14, 21, 28, ...
35, 42, 49, 56, 57, 50, 43, 36, ...
29, 22, 15, 23, 30, 37, 44, 51, ...
58, 59, 52, 45, 38, 31, 39, 46, ...
53, 60, 61, 54, 47, 55, 62, 63];
zigzag = zigzag + 1;
A = reshape(M',1,64);%reshape得转置一下原矩阵才能得到正确的顺序
z = A(zigzag)
end


%zigzag逆扫描的函数，没有比查表更快的方法
function M = myizigzag(z)
zigzag = [ 0, 1, 8, 16, 9, 2, 3, 10, ...
17, 24, 32, 25, 18, 11, 4, 5, ...
12, 19, 26, 33, 40, 48, 41, 34, ...
27, 20, 13, 6, 7, 14, 21, 28, ...
35, 42, 49, 56, 57, 50, 43, 36, ...
29, 22, 15, 23, 30, 37, 44, 51, ...
58, 59, 52, 45, 38, 31, 39, 46, ...
53, 60, 61, 54, 47, 55, 62, 63];
zigzag = zigzag + 1;
N = zeros(64,1);
for i = 1:64
    N(zigzag(i)) = z(i);
end
M = reshape(N,8,8)';
end
