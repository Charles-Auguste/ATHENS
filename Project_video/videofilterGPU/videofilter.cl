__kernel void videofilter(const unsigned nb_l,
                          const unsigned nb_c,
                          __global const unsigned char* E,
                          __global unsigned char *restrict S){


const int row = get_global_id(0);
const int col = get_global_id(1);
if(row !=0 && row != nb_l && col !=0 && col != nb_c){
int pixel_nb = row * nb_c + col;
S[pixel_nb] = (E[pixel_nb]+E[pixel_nb+1]+E[pixel_nb-1]
              +E[pixel_nb+nb_c]+E[pixel_nb+1+nb_c]+E[pixel_nb-1+nb_c]
              +E[pixel_nb-nb_c]+E[pixel_nb+1-nb_c]+E[pixel_nb-1-nb_c])/9;
}
else{
int pixel_nb = row * nb_c + col;
S[pixel_nb] = E[pixel_nb];
}
}
