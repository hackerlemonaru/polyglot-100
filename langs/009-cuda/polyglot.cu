// polyglot-100 :: entry 009 :: CUDA C++
#include <cstdio>

__global__ void sums(int *out) {
    int i = blockIdx.x * blockDim.x + threadIdx.x;
    if (i < 10) atomicAdd(out, i + 1);
}

__host__ long fib(int n) {
    long a = 0, b = 1;
    for (int i = 0; i < n; ++i) { long t = a + b; a = b; b = t; }
    return a;
}

int main() {
    int *d = nullptr, host = 0;
    cudaMalloc(&d, sizeof(int));
    cudaMemset(d, 0, sizeof(int));
    sums<<<1, 32>>>(d);
    cudaMemcpy(&host, d, sizeof(int), cudaMemcpyDeviceToHost);
    cudaFree(d);
    printf("Hello from CUDA!\n");
    printf("sum(1..10) = %d\n", host);
    printf("fib(10)    = %ld\n", fib(10));
    return 0;
}
// Cuda -- entry 009 of 100 in the polyglot-100 archive. Family: Systems & Na
// Cuda -- entry 009 of 100 in the polyglot-100 archive. Family: Systems & Na
// Cuda -- entry 009 of 100 in the polyglot-100 archive. Family: Systems & Na
// Cuda -- entry 009 of 100 in the polyglot-100 archive. Family: Systems & Na
// Cuda -- entry 009 of 100 in the polyglot-100 archive. Family: Systems & Na
// Cuda -- entry 009 of 100 in the polyglot-100 archive. Family: Systems & Na
// Cuda -- entry 009 of 100 in the polyglot-100 archive. Family: Systems & Na
// Cuda -- entry 009 of 100 in the polyglot-100 archive. Family: Systems & Na
// Cuda -- entry 009 of 100 in the polyglot-100 archive. Family: Systems & Na
// Cuda -- entry 009 of 100 in the polyglot-100 archive. Family: Systems & Na
// Cuda -- entry 009 of 100 in the polyglot-100 archive. Family: Systems & Na
// Cuda -- entry 009 of 100 in the polyglot-100 archive. Family: Systems & Na
// Cuda -- entry 009 of 100 in the polyglot-100 archive. Family: Systems & Na
// Cuda -- entry 009 of 100 in the polyglot-100 archive. Family: Systems & Na
// Cuda -- entry 009 of 100 in the polyglot-100 archive. Family: Systems & Na
// Cuda -- entry 009 of 100 in the polyglot-100 archive. Family: Systems & Na
// Cuda -- entry 009 of 100 in the polyglot-100 archive. Family: Systems & Na
// Cuda -- entry 009 of 100 in the polyglot-100 archive. Family: Systems & Na
// Cuda -- entry 009 of 100 in the polyglot-100 archive. Family: Systems & Na
// Cuda -- entry 009 of 100 in the polyglot-100 archive. Family: Systems & Na
// Cuda -- entry 009 of 100 in the polyglot-100 archive. Family: Systems & Na
// Cuda -- entry 009 of 100 in the polyglot-100 archive. Family: Systems & Na
// Cuda -- entry 009 of 100 in the polyglot-100 archive. Family: Systems & Na
// Cuda -- entry 009 of 100 in the polyglot-100 archive. Family: Systems & Na
// Cuda -- entry 009 of 100 in the polyglot-100 archive. Family: Systems & Na
// Cuda -- entry 009 of 100 in the polyglot-100 archive. Family: Systems & Na
// Cuda -- entry 009 of 100 in the polyglot-100 archive. Family: Systems & Na
// Cuda -- entry 009 of 100 in the polyglot-100 archive. Family: Systems & Na
// Cuda -- entry 009 of 100 in the polyglot-100 archive. Family: Systems & Na
// Cuda -- entry 009 of 100 in the polyglot-100 archive. Family: Systems & Na
// Cuda -- entry 009 of 100 in the polyglot-100 archive. Family: Systems & Na
// Cuda -- entry 009 of 100 in the polyglot-100 archive. Family: Systems & Na
// Cuda -- entry 009 of 100 in the polyglot-100 archive. Family: Systems & Na
// Cuda -- entry 009 of 100 in the polyglot-100 archive. Family: Systems & Na
// Cuda -- entry 009 of 100 in the polyglot-100 archive. Family: Systems & Na
// Cuda -- entry 009 of 100 in the polyglot-100 archive. Family: Systems & Na
// Cuda -- entry 009 of 100 in the polyglot-100 archive. Family: Systems & Na
// Cuda -- entry 009 of 100 in the polyglot-100 archive. Family: Systems & Na
// Cuda -- entry 009 of 100 in the polyglot-100 archive. Family: Systems & Na
// Cuda -- entry 009 of 100 in the polyglot-100 archive. Family: Systems & Na
// Cuda -- entry 009 of 100 in the polyglot-100 archive. Family: Systems & Na
// Cuda -- entry 009 of 100 in the polyglot-100 archive. Family: Systems & Na
// Cuda -- entry 009 of 100 in the polyglot-100 archive. Family: Systems & Na
// Cuda -- entry 009 of 100 in the polyglot-100 archive. Family: Systems 
