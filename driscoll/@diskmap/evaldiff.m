function fp = evaldiff(M,zp)
%EVALDIFF Derivative of Schwarz-Christoffel disk map at points.
%   EVALDIFF(M,ZP) computes the derivative of the Schwarz-Christoffel
%   disk map M at the points ZP.
%   
%   See also DISKMAP, EVAL.

%   Copyright 1998 by Toby Driscoll.
%   $Id: evaldiff.m 7 1998-05-10 04:37:19Z tad $

z = M.prevertex;
c = M.constant;
beta = angle(polygon(M)) - 1;

fp = dderiv(zp,z,beta,c);
