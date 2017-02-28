% [obj] = ginterp_eval0(obj)
%
% Compute u field, assuming that only the obj.newbc fields are constrained.
%
function [obj] = ginterp_eval0(obj)

  mark_bcs = zeros(obj.n,1);
  mark_bcs(obj.newbc) = 1;
  Ia = find(mark_bcs == 0);  % Indices of active dofs
  Ib = find(mark_bcs == 1);  % Indices of boundary dofs

  % TASK
  % ... fix this to fill in obj.u(Ia) given obj.u(Ib)
  obj.u(Ia) = 0;
  L11 = obj.L(Ia, Ia);
  L22 = obj.L(Ia, Ib);
  obj.u(Ia) =  -1 * L12 * obj.u(Ib) \ L11;
  % END TASK
end
