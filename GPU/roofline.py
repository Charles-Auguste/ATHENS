#!/bin/python
import sys
import matplotlib.pyplot as mpl
import numpy as np
flops=2  # flops-> counting mulitply-add as two flops
gpuflops=68  # flops-> counting mulitply-add as two flops
beta=0.933*2*8
I=np.arange(0.0, 40000, 0.01)
markers_on=[100,200]
mpl.plot(I,np.minimum(flops,0.7*beta*I),label="1 core pi=2 GF/S, Beta=10 GB/s")
mpl.plot([0.083], [np.minimum(flops,0.7*beta*0.083)], 'ro',marker='*', markersize=10, color="red",label="Vector Addition CPU")
mpl.plot(I,np.minimum(gpuflops,0.7*beta*I),label="GPU pi=68 GF/S, Beta=10 GB/s")
mpl.plot([0.083], [np.minimum(gpuflops,0.7*beta*0.083)], 'ro',marker='*', markersize=10, color="blue",label="Vector Addition GPU")
mpl.xlabel("Op. Intensity (OPs/Bytes)")
mpl.ylabel("Perf. (Giga Flops/S)")
mpl.legend(loc='lower right',prop={'size':10})
mpl.xscale('log')
mpl.yscale('log')
mpl.xlim([0,40000])
mpl.grid(b=True,which='major',color='gray',alpha=0.5,linestyle='-')
mpl.savefig('roofline.pdf',format='pdf')
mpl.savefig('roofline.svg',format='svg')
mpl.show()

