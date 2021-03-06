function obj = lu( obj )
%  LU - LU decompositions of hierarchical matrix.
%
%  Usage for obj = hmatrix :
%    obj = lu( obj )
%  Output
%    obj    :  LU decomposition of H-matrix

%  tree and options to be passed to MEX function of HLIB
tree = treemex( obj );
op = struct( 'htol', obj.htol, 'kmax', obj.kmax );
%  call MEX function 
[ obj.val, obj.lhs, obj.rhs, obj.stat ] = hmatlu( tree, obj.val, obj.lhs, obj.rhs, op );
%  clear persistent variables
clear hmatlu;
