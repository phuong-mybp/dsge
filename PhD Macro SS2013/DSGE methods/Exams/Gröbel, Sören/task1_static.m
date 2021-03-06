function [residual, g1, g2] = task1_static(y, x, params)
%
% Status : Computes static model for Dynare
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

residual = zeros( 8, 1);

%
% Model equations
%

lhs =y(1);
rhs =y(1)*params(2)+params(3)*y(2);
residual(1)= lhs-rhs;
lhs =y(2);
rhs =y(2)+(-(y(3)-y(1)-y(4)));
residual(2)= lhs-rhs;
lhs =y(3);
rhs =y(4)+params(6)*(y(3)-y(4))+(1-params(6))*(y(1)*params(5)+y(2)*params(4));
residual(3)= lhs-rhs;
lhs =y(4);
rhs =params(7)*y(7)+(1-params(8))/(1+params(1))*y(5);
residual(4)= lhs-rhs;
residual(5) = y(6);
lhs =y(7);
rhs =params(7)*y(7)+params(9)*x(1)+params(10)*y(8);
residual(6)= lhs-rhs;
lhs =y(5);
rhs =params(8)*y(5)+params(11)*x(3);
residual(7)= lhs-rhs;
lhs =y(8);
rhs =x(2);
residual(8)= lhs-rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
if nargout >= 2,
  g1 = zeros(8, 8);

  %
  % Jacobian matrix
  %

  g1(1,1)=1-params(2);
  g1(1,2)=(-params(3));
  g1(2,1)=(-1);
  g1(2,3)=1;
  g1(2,4)=(-1);
  g1(3,1)=(-((1-params(6))*params(5)));
  g1(3,2)=(-((1-params(6))*params(4)));
  g1(3,3)=1-params(6);
  g1(3,4)=(-(1-params(6)));
  g1(4,4)=1;
  g1(4,5)=(-((1-params(8))/(1+params(1))));
  g1(4,7)=(-params(7));
  g1(5,6)=1;
  g1(6,7)=1-params(7);
  g1(6,8)=(-params(10));
  g1(7,5)=1-params(8);
  g1(8,8)=1;
  if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
  end
end
if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],8,64);
end
end
