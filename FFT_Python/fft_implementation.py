import numpy as np
import matplotlib.pyplot as plt

def discreteFT(fdata, N, fwd):
    X = [0]*(2*N)
    omega = 0.0
    k, ki, kr, n = 0, 0, 0, 0
    if(fwd):
        omega = 2.0 * np.pi/N
    else:
        omega = -1 * 2.0 * np.pi/n
    for k in range(0, N):

