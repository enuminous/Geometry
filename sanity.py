#!/usr/bin/env python3
"""Exact arithmetic sanity checks, not Lean or metric-geometry verification."""
from fractions import Fraction as F

def check(label, condition):
    assert condition, label
    print("PASS", label)

scalar_div, grad, info_div = F(0), F(-8, 3), F(-4, 3)
check("conditional Bianchi arithmetic", info_div == scalar_div + grad / 2)
check("nonconservation witness", scalar_div == 0 and grad != 0 and info_div != 0)
t, i, j, k = [F(2), F(3)], [F(5), F(7)], [F(8), F(-3)], F(2, 3)
s = [a + k*b for a,b in zip(t,i)]
tprime = [a + k*b for a,b in zip(t,j)]
iprime = [a-b for a,b in zip(i,j)]
check("source reallocation", s == [a + k*b for a,b in zip(tprime,iprime)])
check("separate matter observation is not blind", t != tprime)
def R(x): return F(4) / (3*x*x)
check("nonconstant proposed curvature", R(F(1)) == F(4,3) and R(F(2)) == F(1,3))
