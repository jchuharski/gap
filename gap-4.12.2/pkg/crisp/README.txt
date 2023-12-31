                       The CRISP package
                         Version 1.4.6
                           15/12/2022

The GAP package CRISP provides algorithms for computing subgroups of
finite soluble groups related to a group class C. In particular, it
allows to compute C-radicals and C-injectors for Fitting classes (and
Fitting sets) C, C-residuals for formations C, and C-projectors for
Schunck classes C. In order to carry out these computations, the group
class C must be represented by an algorithm which can decide membership
in the group class. 

Moreover, CRISP contains algorithms for the computation of normal subgroups 
invariant under a prescribed set of automorphisms and belonging to a given 
group class.

This includes an improved method to compute the set of all normal subgroups 
of a finite soluble group, its characteristic subgroups, and the socle and 
p-socles for given primes p.

This version of CRISP requires at least GAP 4.5.

In order to install CRISP, you have to get the current package archive file 

'crisp-1.4.6.tar.bz2',

or any other package format suitable for your system.

You can download the current package archive from the packages section of 
www.gap-system.org.

To install CRISP, move the downloaded package archive file into the 
`pkg' directory in which you plan to install CRISP. Usually, this will be 
the directory 'pkg' in the GAP directory.

Then decompress the package archive. You should now have a directory
'crisp-1.4.6' in the 'pkg' directory. That's all. By default,
CRISP is automatically loaded when you start GAP, and should be listed
among the loaded packages.

If you already have a previous version of CRISP, you can delete that
directory.

To load the CRISP package manually, type

    LoadPackage ("crisp");

at the GAP prompt. If everything is ok, this should return `true'.

The development version of CRISP is available via GitHub, at
https://github.com/bh11/crisp.git.

Please do not hesitate to report any bugs or other problems/suggestions
via the GitHub issue tracker at https://github.com/bh11/crisp/issues">
or by e-mail to the author.

Burkhard Höfling
WWW:    http://www.icm.tu-bs.de/~bhoeflin
e-mail: b.hoefling@tu-bs.de

