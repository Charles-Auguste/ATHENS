__kernel void matrix_product(const unsigned  N,
			__global const float *A, 
                        __global const float *B, 
                        __global float *restrict C){

const int row = get_global_id(0);
const int col = get_global_id(1);

float inter = 0.0f;

for (int k = 0; k < N; k++){
    inter += A[row * N + k] * B[k * N + col];
    }
C[row * N + col] = inter;
}


